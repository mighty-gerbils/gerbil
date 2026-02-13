(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1771025400)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx181199%_)
        (letrec ((_%expand-special181201%_
                  (lambda (_%hd181203%_ _%K181204%_ _%rest181205%_ _%r181206%_)
                    (_%K181204%_
                     _%rest181205%_
                     (cons (gx#core-expand-top _%hd181203%_) _%r181206%_)))))
          (gx#core-expand-block__0 _%stx181199%_ _%expand-special181201%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx180893%_)
        (letrec ((_%expand-special180895%_
                  (lambda (_%hd181017%_ _%K181018%_ _%rest181019%_ _%r181020%_)
                    (let* ((_%K181024%_
                            (lambda (_%e181022%_)
                              (_%K181018%_
                               _%rest181019%_
                               (cons _%e181022%_ _%r181020%_))))
                           (_%e181025181067%_ _%hd181017%_)
                           (_%E181062181071%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e181025181067%_)))
                           (_%E181058181083%_
                            (lambda ()
                              (if (gx#stx-pair? _%e181025181067%_)
                                  (let ((_%e181063181075%_
                                         (gx#syntax-e _%e181025181067%_)))
                                    (let ((_%hd181064181078%_
                                           (##car _%e181063181075%_))
                                          (_%tl181065181080%_
                                           (##cdr _%e181063181075%_)))
                                      (if (and (gx#identifier?
                                                _%hd181064181078%_)
                                               (gx#core-identifier=?
                                                _%hd181064181078%_
                                                '%#define-runtime))
                                          (_%K181024%_
                                           (gx#core-expand-define-runtime%
                                            _%hd181017%_))
                                          (_%E181062181071%_))))
                                  (_%E181062181071%_))))
                           (_%E181054181095%_
                            (lambda ()
                              (if (gx#stx-pair? _%e181025181067%_)
                                  (let ((_%e181059181087%_
                                         (gx#syntax-e _%e181025181067%_)))
                                    (let ((_%hd181060181090%_
                                           (##car _%e181059181087%_))
                                          (_%tl181061181092%_
                                           (##cdr _%e181059181087%_)))
                                      (if (and (gx#identifier?
                                                _%hd181060181090%_)
                                               (gx#core-identifier=?
                                                _%hd181060181090%_
                                                '%#define-alias))
                                          (_%K181024%_
                                           (gx#core-expand-define-alias%
                                            _%hd181017%_))
                                          (_%E181058181083%_))))
                                  (_%E181058181083%_))))
                           (_%E181044181107%_
                            (lambda ()
                              (if (gx#stx-pair? _%e181025181067%_)
                                  (let ((_%e181055181099%_
                                         (gx#syntax-e _%e181025181067%_)))
                                    (let ((_%hd181056181102%_
                                           (##car _%e181055181099%_))
                                          (_%tl181057181104%_
                                           (##cdr _%e181055181099%_)))
                                      (if (and (gx#identifier?
                                                _%hd181056181102%_)
                                               (gx#core-identifier=?
                                                _%hd181056181102%_
                                                '%#define-syntax))
                                          (_%K181024%_
                                           (gx#core-expand-define-syntax%
                                            _%hd181017%_))
                                          (_%E181054181095%_))))
                                  (_%E181054181095%_))))
                           (_%E181031181139%_
                            (lambda ()
                              (if (gx#stx-pair? _%e181025181067%_)
                                  (let ((_%e181045181111%_
                                         (gx#syntax-e _%e181025181067%_)))
                                    (let ((_%hd181046181114%_
                                           (##car _%e181045181111%_))
                                          (_%tl181047181116%_
                                           (##cdr _%e181045181111%_)))
                                      (if (and (gx#identifier?
                                                _%hd181046181114%_)
                                               (gx#core-identifier=?
                                                _%hd181046181114%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl181047181116%_)
                                              (let ((_%e181048181119%_
                                                     (gx#syntax-e
                                                      _%tl181047181116%_)))
                                                (let ((_%hd181049181122%_
                                                       (##car _%e181048181119%_))
                                                      (_%tl181050181124%_
                                                       (##cdr _%e181048181119%_)))
                                                  (let ((_%hd-bind181127%_
                                                         _%hd181049181122%_))
                                                    (if (gx#stx-pair?
                                                         _%tl181050181124%_)
                                                        (let ((_%e181051181129%_
                                                               (gx#syntax-e
                                                                _%tl181050181124%_)))
                                                          (let ((_%hd181052181132%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e181051181129%_))
                        (_%tl181053181134%_ (##cdr _%e181051181129%_)))
                    (let ((_%expr181137%_ _%hd181052181132%_))
                      (if (gx#stx-null? _%tl181053181134%_)
                          (if (gx#core-bind-values? _%hd-bind181127%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind181127%_)
                                (_%K181024%_ _%hd181017%_))
                              (_%E181044181107%_))
                          (_%E181044181107%_)))))
                (_%E181044181107%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E181044181107%_))
                                          (_%E181044181107%_))))
                                  (_%E181044181107%_))))
                           (_%E181027181183%_
                            (lambda ()
                              (if (gx#stx-pair? _%e181025181067%_)
                                  (let ((_%e181032181143%_
                                         (gx#syntax-e _%e181025181067%_)))
                                    (let ((_%hd181033181146%_
                                           (##car _%e181032181143%_))
                                          (_%tl181034181148%_
                                           (##cdr _%e181032181143%_)))
                                      (if (and (gx#identifier?
                                                _%hd181033181146%_)
                                               (gx#core-identifier=?
                                                _%hd181033181146%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl181034181148%_)
                                              (let ((_%e181035181151%_
                                                     (gx#syntax-e
                                                      _%tl181034181148%_)))
                                                (let ((_%hd181036181154%_
                                                       (##car _%e181035181151%_))
                                                      (_%tl181037181156%_
                                                       (##cdr _%e181035181151%_)))
                                                  (if (gx#stx-pair?
                                                       _%hd181036181154%_)
                                                      (let ((_%e181041181159%_
                                                             (gx#syntax-e
                                                              _%hd181036181154%_)))
                                                        (let ((_%hd181042181162%_
                                                               (##car _%e181041181159%_))
                                                              (_%tl181043181164%_
                                                               (##cdr _%e181041181159%_)))
                                                          (let ((_%id181167%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd181042181162%_))
                    (if (gx#stx-null? _%tl181043181164%_)
                        (if (gx#stx-pair? _%tl181037181156%_)
                            (let ((_%e181038181169%_
                                   (gx#syntax-e _%tl181037181156%_)))
                              (let ((_%hd181039181172%_
                                     (##car _%e181038181169%_))
                                    (_%tl181040181174%_
                                     (##cdr _%e181038181169%_)))
                                (let* ((_%expr181177%_ _%hd181039181172%_)
                                       (_%props181179%_ _%tl181040181174%_))
                                  (if (gx#identifier? _%id181167%_)
                                      (let ((_%bind181181%_
                                             (gx#core-bind-runtime!__0
                                              _%id181167%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind181181%_
                                         _%props181179%_)
                                        (_%K181024%_ _%hd181017%_))
                                      (_%E181031181139%_)))))
                            (_%E181031181139%_))
                        (_%E181031181139%_)))))
              (_%E181031181139%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E181031181139%_))
                                          (_%E181031181139%_))))
                                  (_%E181031181139%_))))
                           (_%E181026181195%_
                            (lambda ()
                              (if (gx#stx-pair? _%e181025181067%_)
                                  (let ((_%e181028181187%_
                                         (gx#syntax-e _%e181025181067%_)))
                                    (let ((_%hd181029181190%_
                                           (##car _%e181028181187%_))
                                          (_%tl181030181192%_
                                           (##cdr _%e181028181187%_)))
                                      (if (and (gx#identifier?
                                                _%hd181029181190%_)
                                               (gx#core-identifier=?
                                                _%hd181029181190%_
                                                '%#begin-syntax))
                                          (_%K181024%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd181017%_))
                                          (_%E181027181183%_))))
                                  (_%E181027181183%_)))))
                      (_%E181026181195%_))))
                 (_%eval-body180896%_
                  (lambda (_%rbody180904%_)
                    (let _%lp180906%_ ((_%rest180908%_ _%rbody180904%_)
                                       (_%body180909%_ '())
                                       (_%ebody180910%_ '()))
                      (let* ((_%rest180911180919%_ _%rest180908%_)
                             (_%else180913180927%_
                              (lambda ()
                                (values _%body180909%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody180910%_)
                                          (gx#stx-source _%stx180893%_))))))
                             (_%K180915181005%_
                              (lambda (_%rest180930%_ _%hd180931%_)
                                (let* ((_%e180932180949%_ _%hd180931%_)
                                       (_%E180944180953%_
                                        (lambda ()
                                          (_%lp180906%_
                                           _%rest180930%_
                                           (cons _%hd180931%_ _%body180909%_)
                                           (cons _%hd180931%_
                                                 _%ebody180910%_))))
                                       (_%E180934180965%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e180932180949%_)
                                              (let ((_%e180945180957%_
                                                     (gx#syntax-e
                                                      _%e180932180949%_)))
                                                (let ((_%hd180946180960%_
                                                       (##car _%e180945180957%_))
                                                      (_%tl180947180962%_
                                                       (##cdr _%e180945180957%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd180946180960%_)
                                                           (gx#core-identifier=?
                                                            _%hd180946180960%_
                                                            '%#begin-syntax))
                                                      (_%lp180906%_
                                                       _%rest180930%_
                                                       (cons _%hd180931%_
                                                             _%body180909%_)
                                                       _%ebody180910%_)
                                                      (_%E180944180953%_))))
                                              (_%E180944180953%_))))
                                       (_%E180933181001%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e180932180949%_)
                                              (let ((_%e180935180969%_
                                                     (gx#syntax-e
                                                      _%e180932180949%_)))
                                                (let ((_%hd180936180972%_
                                                       (##car _%e180935180969%_))
                                                      (_%tl180937180974%_
                                                       (##cdr _%e180935180969%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd180936180972%_)
                                                           (gx#core-identifier=?
                                                            _%hd180936180972%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl180937180974%_)
                                                          (let ((_%e180938180977%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl180937180974%_)))
                    (let ((_%hd180939180980%_ (##car _%e180938180977%_))
                          (_%tl180940180982%_ (##cdr _%e180938180977%_)))
                      (let ((_%hd-bind180985%_ _%hd180939180980%_))
                        (if (gx#stx-pair? _%tl180940180982%_)
                            (let ((_%e180941180987%_
                                   (gx#syntax-e _%tl180940180982%_)))
                              (let ((_%hd180942180990%_
                                     (##car _%e180941180987%_))
                                    (_%tl180943180992%_
                                     (##cdr _%e180941180987%_)))
                                (let* ((_%expr180995%_ _%hd180942180990%_)
                                       (_%ignore-props180997%_
                                        _%tl180943180992%_)
                                       (_%ehd180999%_
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#define-values)
                                               (cons (gx#core-quote-bind-values
                                                      _%hd-bind180985%_)
                                                     (cons (gx#core-expand-expression
                                                            _%expr180995%_)
                                                           '())))
                                         (gx#stx-source _%hd180931%_))))
                                  (_%lp180906%_
                                   _%rest180930%_
                                   (cons _%ehd180999%_ _%body180909%_)
                                   (cons _%ehd180999%_ _%ebody180910%_)))))
                            (_%E180934180965%_)))))
                  (_%E180934180965%_))
              (_%E180934180965%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E180934180965%_)))))
                                  (_%E180933181001%_)))))
                        (if (pair? _%rest180911180919%_)
                            (let ((_%hd180916181008%_
                                   (##car _%rest180911180919%_))
                                  (_%tl180917181010%_
                                   (##cdr _%rest180911180919%_)))
                              (let* ((_%hd181013%_ _%hd180916181008%_)
                                     (_%rest181015%_ _%tl180917181010%_))
                                (_%K180915181005%_
                                 _%rest181015%_
                                 _%hd181013%_)))
                            (_%else180913180927%_)))))))
          (call-with-parameters__1
           (lambda ()
             (let* ((_%rbody180899%_
                     (gx#core-expand-block__1
                      _%stx180893%_
                      _%expand-special180895%_
                      '#f))
                    (_g181232_ (_%eval-body180896%_ _%rbody180899%_)))
               (begin
                 (let ((_g181233_
                        (if (##values? _g181232_)
                            (##values-length _g181232_)
                            1)))
                   (if (not (##fx= _g181233_ 2))
                       (error "Context expects 2 values" _g181233_)))
                 (let ((_%expanded-body180901%_ (##values-ref _g181232_ 0))
                       (_%value180902%_ (##values-ref _g181232_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body180901%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value180902%_ '())))
                    (gx#stx-source _%stx180893%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx180863%_)
        (let* ((_%e180864180871%_ _%stx180863%_)
               (_%E180866180875%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180864180871%_)))
               (_%E180865180889%_
                (lambda ()
                  (if (gx#stx-pair? _%e180864180871%_)
                      (let ((_%e180867180879%_
                             (gx#syntax-e _%e180864180871%_)))
                        (let ((_%hd180868180882%_ (##car _%e180867180879%_))
                              (_%tl180869180884%_ (##cdr _%e180867180879%_)))
                          (let ((_%body180887%_ _%tl180869180884%_))
                            (if (gx#stx-list? _%body180887%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body180887%_)
                                 (gx#stx-source _%stx180863%_))
                                (_%E180866180875%_)))))
                      (_%E180866180875%_)))))
          (_%E180865180889%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx180861%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx180861%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx180807%_)
        (let* ((_%e180808180821%_ _%stx180807%_)
               (_%E180810180825%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180808180821%_)))
               (_%E180809180857%_
                (lambda ()
                  (if (gx#stx-pair? _%e180808180821%_)
                      (let ((_%e180811180829%_
                             (gx#syntax-e _%e180808180821%_)))
                        (let ((_%hd180812180832%_ (##car _%e180811180829%_))
                              (_%tl180813180834%_ (##cdr _%e180811180829%_)))
                          (if (gx#stx-pair? _%tl180813180834%_)
                              (let ((_%e180814180837%_
                                     (gx#syntax-e _%tl180813180834%_)))
                                (let ((_%hd180815180840%_
                                       (##car _%e180814180837%_))
                                      (_%tl180816180842%_
                                       (##cdr _%e180814180837%_)))
                                  (let ((_%ann180845%_ _%hd180815180840%_))
                                    (if (gx#stx-pair? _%tl180816180842%_)
                                        (let ((_%e180817180847%_
                                               (gx#syntax-e
                                                _%tl180816180842%_)))
                                          (let ((_%hd180818180850%_
                                                 (##car _%e180817180847%_))
                                                (_%tl180819180852%_
                                                 (##cdr _%e180817180847%_)))
                                            (let ((_%expr180855%_
                                                   _%hd180818180850%_))
                                              (if (gx#stx-null?
                                                   _%tl180819180852%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann180845%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr180855%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx180807%_))
                                                  (_%E180810180825%_)))))
                                        (_%E180810180825%_)))))
                              (_%E180810180825%_))))
                      (_%E180810180825%_)))))
          (_%E180809180857%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx180472%_ _%body180473%_)
        (letrec ((_%expand-special180475%_
                  (lambda (_%hd180802%_ _%K180803%_ _%rest180804%_ _%r180805%_)
                    (_%K180803%_
                     '()
                     (cons (_%expand-internal180476%_
                            _%hd180802%_
                            _%rest180804%_)
                           _%r180805%_))))
                 (_%expand-internal180476%_
                  (lambda (_%hd180798%_ _%rest180799%_)
                    (call-with-parameters__1
                     (lambda ()
                       (_%wrap-internal180478%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd180798%_ _%rest180799%_))
                          (gx#stx-source _%stx180472%_))
                         _%expand-internal-special180477%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj181216
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj181216)
                       __obj181216))))
                 (_%expand-internal-special180477%_
                  (lambda (_%hd180636%_ _%K180637%_ _%rest180638%_ _%r180639%_)
                    (let* ((_%e180640180678%_ _%hd180636%_)
                           (_%E180673180682%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e180640180678%_)))
                           (_%E180669180694%_
                            (lambda ()
                              (if (gx#stx-pair? _%e180640180678%_)
                                  (let ((_%e180674180686%_
                                         (gx#syntax-e _%e180640180678%_)))
                                    (let ((_%hd180675180689%_
                                           (##car _%e180674180686%_))
                                          (_%tl180676180691%_
                                           (##cdr _%e180674180686%_)))
                                      (if (and (gx#identifier?
                                                _%hd180675180689%_)
                                               (gx#core-identifier=?
                                                _%hd180675180689%_
                                                '%#declare))
                                          (_%K180637%_
                                           _%rest180638%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd180636%_)
                                                 _%r180639%_))
                                          (_%E180673180682%_))))
                                  (_%E180673180682%_))))
                           (_%E180665180706%_
                            (lambda ()
                              (if (gx#stx-pair? _%e180640180678%_)
                                  (let ((_%e180670180698%_
                                         (gx#syntax-e _%e180640180678%_)))
                                    (let ((_%hd180671180701%_
                                           (##car _%e180670180698%_))
                                          (_%tl180672180703%_
                                           (##cdr _%e180670180698%_)))
                                      (if (and (gx#identifier?
                                                _%hd180671180701%_)
                                               (gx#core-identifier=?
                                                _%hd180671180701%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd180636%_)
                                            (_%K180637%_
                                             _%rest180638%_
                                             _%r180639%_))
                                          (_%E180669180694%_))))
                                  (_%E180669180694%_))))
                           (_%E180655180718%_
                            (lambda ()
                              (if (gx#stx-pair? _%e180640180678%_)
                                  (let ((_%e180666180710%_
                                         (gx#syntax-e _%e180640180678%_)))
                                    (let ((_%hd180667180713%_
                                           (##car _%e180666180710%_))
                                          (_%tl180668180715%_
                                           (##cdr _%e180666180710%_)))
                                      (if (and (gx#identifier?
                                                _%hd180667180713%_)
                                               (gx#core-identifier=?
                                                _%hd180667180713%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd180636%_)
                                            (_%K180637%_
                                             _%rest180638%_
                                             _%r180639%_))
                                          (_%E180665180706%_))))
                                  (_%E180665180706%_))))
                           (_%E180642180750%_
                            (lambda ()
                              (if (gx#stx-pair? _%e180640180678%_)
                                  (let ((_%e180656180722%_
                                         (gx#syntax-e _%e180640180678%_)))
                                    (let ((_%hd180657180725%_
                                           (##car _%e180656180722%_))
                                          (_%tl180658180727%_
                                           (##cdr _%e180656180722%_)))
                                      (if (and (gx#identifier?
                                                _%hd180657180725%_)
                                               (gx#core-identifier=?
                                                _%hd180657180725%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl180658180727%_)
                                              (let ((_%e180659180730%_
                                                     (gx#syntax-e
                                                      _%tl180658180727%_)))
                                                (let ((_%hd180660180733%_
                                                       (##car _%e180659180730%_))
                                                      (_%tl180661180735%_
                                                       (##cdr _%e180659180730%_)))
                                                  (let ((_%hd-bind180738%_
                                                         _%hd180660180733%_))
                                                    (if (gx#stx-pair?
                                                         _%tl180661180735%_)
                                                        (let ((_%e180662180740%_
                                                               (gx#syntax-e
                                                                _%tl180661180735%_)))
                                                          (let ((_%hd180663180743%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e180662180740%_))
                        (_%tl180664180745%_ (##cdr _%e180662180740%_)))
                    (let ((_%expr180748%_ _%hd180663180743%_))
                      (if (gx#stx-null? _%tl180664180745%_)
                          (if (gx#core-bind-values? _%hd-bind180738%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind180738%_)
                                (_%K180637%_
                                 _%rest180638%_
                                 (cons _%hd180636%_ _%r180639%_)))
                              (_%E180655180718%_))
                          (_%E180655180718%_)))))
                (_%E180655180718%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E180655180718%_))
                                          (_%E180655180718%_))))
                                  (_%E180655180718%_))))
                           (_%E180641180794%_
                            (lambda ()
                              (if (gx#stx-pair? _%e180640180678%_)
                                  (let ((_%e180643180754%_
                                         (gx#syntax-e _%e180640180678%_)))
                                    (let ((_%hd180644180757%_
                                           (##car _%e180643180754%_))
                                          (_%tl180645180759%_
                                           (##cdr _%e180643180754%_)))
                                      (if (and (gx#identifier?
                                                _%hd180644180757%_)
                                               (gx#core-identifier=?
                                                _%hd180644180757%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl180645180759%_)
                                              (let ((_%e180646180762%_
                                                     (gx#syntax-e
                                                      _%tl180645180759%_)))
                                                (let ((_%hd180647180765%_
                                                       (##car _%e180646180762%_))
                                                      (_%tl180648180767%_
                                                       (##cdr _%e180646180762%_)))
                                                  (if (gx#stx-pair?
                                                       _%hd180647180765%_)
                                                      (let ((_%e180652180770%_
                                                             (gx#syntax-e
                                                              _%hd180647180765%_)))
                                                        (let ((_%hd180653180773%_
                                                               (##car _%e180652180770%_))
                                                              (_%tl180654180775%_
                                                               (##cdr _%e180652180770%_)))
                                                          (let ((_%id180778%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd180653180773%_))
                    (if (gx#stx-null? _%tl180654180775%_)
                        (if (gx#stx-pair? _%tl180648180767%_)
                            (let ((_%e180649180780%_
                                   (gx#syntax-e _%tl180648180767%_)))
                              (let ((_%hd180650180783%_
                                     (##car _%e180649180780%_))
                                    (_%tl180651180785%_
                                     (##cdr _%e180649180780%_)))
                                (let* ((_%expr180788%_ _%hd180650180783%_)
                                       (_%props180790%_ _%tl180651180785%_))
                                  (if (gx#identifier? _%id180778%_)
                                      (let ((_%bind180792%_
                                             (gx#core-bind-runtime!__0
                                              _%id180778%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind180792%_
                                         _%props180790%_)
                                        (_%K180637%_
                                         _%rest180638%_
                                         (cons _%hd180636%_ _%r180639%_)))
                                      (_%E180642180750%_)))))
                            (_%E180642180750%_))
                        (_%E180642180750%_)))))
              (_%E180642180750%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E180642180750%_))
                                          (_%E180642180750%_))))
                                  (_%E180642180750%_)))))
                      (_%E180641180794%_))))
                 (_%wrap-internal180478%_
                  (lambda (_%rbody180480%_)
                    (let _%lp180482%_ ((_%rest180484%_ _%rbody180480%_)
                                       (_%decls180485%_ '())
                                       (_%bind180486%_ '())
                                       (_%body180487%_ '()))
                      (let* ((_%e180488180495%_ _%rest180484%_)
                             (_%E180490180544%_
                              (lambda ()
                                (let* ((_%body180539%_
                                        (let* ((_%body180498180508%_
                                                _%body180487%_)
                                               (_%else180501180516%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body180487%_)
                                                   (gx#stx-source
                                                    _%stx180472%_)))))
                                          (let ((_%K180506180536%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx180472%_)))
                                                (_%K180503180522%_
                                                 (lambda (_%expr180520%_)
                                                   _%expr180520%_)))
                                            (let ((_%try-match180500180532%_
                                                   (lambda ()
                                                     (if (pair? _%body180498180508%_)
                                                         (let ((_%tl180505180527%_
                                                                (##cdr _%body180498180508%_))
                                                               (_%hd180504180525%_
                                                                (##car _%body180498180508%_)))
                                                           (if (null? _%tl180505180527%_)
                                                               (let ((_%expr180530%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd180504180525%_))
                         (_%K180503180522%_ _%expr180530%_))
                       (_%else180501180516%_)))
                 (_%else180501180516%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%body180498180508%_)
                                                  (_%K180506180536%_)
                                                  (_%try-match180500180532%_))))))
                                       (_%body180541%_
                                        (if (null? _%bind180486%_)
                                            _%body180539%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind180486%_
                                                         (cons _%body180539%_
                                                               '())))
                                             (gx#stx-source _%stx180472%_)))))
                                  (if (null? _%decls180485%_)
                                      _%body180541%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls180485%_
                                                   (cons _%body180541%_ '())))
                                       (gx#stx-source _%stx180472%_))))))
                             (_%E180489180632%_
                              (lambda ()
                                (if (gx#stx-pair? _%e180488180495%_)
                                    (let ((_%e180491180548%_
                                           (gx#syntax-e _%e180488180495%_)))
                                      (let ((_%hd180492180551%_
                                             (##car _%e180491180548%_))
                                            (_%tl180493180553%_
                                             (##cdr _%e180491180548%_)))
                                        (let* ((_%hd180556%_
                                                _%hd180492180551%_)
                                               (_%rest180558%_
                                                _%tl180493180553%_)
                                               (_%e180559180576%_ _%hd180556%_)
                                               (_%E180571180580%_
                                                (lambda ()
                                                  (if (null? _%bind180486%_)
                                                      (_%lp180482%_
                                                       _%rest180558%_
                                                       _%decls180485%_
                                                       _%bind180486%_
                                                       (cons _%hd180556%_
                                                             _%body180487%_))
                                                      (_%lp180482%_
                                                       _%rest180558%_
                                                       _%decls180485%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd180556%_ '()))
                     _%bind180486%_)
               _%body180487%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E180561180594%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e180559180576%_)
                                                      (let ((_%e180572180584%_
                                                             (gx#syntax-e
                                                              _%e180559180576%_)))
                                                        (let ((_%hd180573180587%_
                                                               (##car _%e180572180584%_))
                                                              (_%tl180574180589%_
                                                               (##cdr _%e180572180584%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd180573180587%_)
                           (gx#core-identifier=?
                            _%hd180573180587%_
                            '%#declare))
                      (let ((_%xdecls180592%_ _%tl180574180589%_))
                        (_%lp180482%_
                         _%rest180558%_
                         (gx#stx-foldr cons _%decls180485%_ _%xdecls180592%_)
                         _%bind180486%_
                         _%body180487%_))
                      (_%E180571180580%_))))
              (_%E180571180580%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E180560180628%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e180559180576%_)
                                                      (let ((_%e180562180598%_
                                                             (gx#syntax-e
                                                              _%e180559180576%_)))
                                                        (let ((_%hd180563180601%_
                                                               (##car _%e180562180598%_))
                                                              (_%tl180564180603%_
                                                               (##cdr _%e180562180598%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd180563180601%_)
                           (gx#core-identifier=?
                            _%hd180563180601%_
                            '%#define-values))
                      (if (gx#stx-pair? _%tl180564180603%_)
                          (let ((_%e180565180606%_
                                 (gx#syntax-e _%tl180564180603%_)))
                            (let ((_%hd180566180609%_
                                   (##car _%e180565180606%_))
                                  (_%tl180567180611%_
                                   (##cdr _%e180565180606%_)))
                              (let ((_%hd-bind180614%_ _%hd180566180609%_))
                                (if (gx#stx-pair? _%tl180567180611%_)
                                    (let ((_%e180568180616%_
                                           (gx#syntax-e _%tl180567180611%_)))
                                      (let ((_%hd180569180619%_
                                             (##car _%e180568180616%_))
                                            (_%tl180570180621%_
                                             (##cdr _%e180568180616%_)))
                                        (let* ((_%expr180624%_
                                                _%hd180569180619%_)
                                               (_%ignore-props180626%_
                                                _%tl180570180621%_))
                                          (_%lp180482%_
                                           _%rest180558%_
                                           _%decls180485%_
                                           (cons (cons (gx#core-quote-bind-values
                                                        _%hd-bind180614%_)
                                                       (cons (gx#core-expand-expression
                                                              _%expr180624%_)
                                                             '()))
                                                 _%bind180486%_)
                                           _%body180487%_))))
                                    (_%E180561180594%_)))))
                          (_%E180561180594%_))
                      (_%E180561180594%_))))
              (_%E180561180594%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%E180560180628%_))))
                                    (_%E180490180544%_)))))
                        (_%E180489180632%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body180473%_)
            (gx#stx-source _%stx180472%_))
           _%expand-special180475%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx180410%_)
        (let* ((_%e180411180418%_ _%stx180410%_)
               (_%E180413180422%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180411180418%_)))
               (_%E180412180468%_
                (lambda ()
                  (if (gx#stx-pair? _%e180411180418%_)
                      (let ((_%e180414180426%_
                             (gx#syntax-e _%e180411180418%_)))
                        (let ((_%hd180415180429%_ (##car _%e180414180426%_))
                              (_%tl180416180431%_ (##cdr _%e180414180426%_)))
                          (let ((_%body180434%_ _%tl180416180431%_))
                            (if (gx#stx-list? _%body180434%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl180436%_)
                                     (let* ((_%e180437180444%_ _%decl180436%_)
                                            (_%E180439180448%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e180437180444%_)))
                                            (_%E180438180464%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e180437180444%_)
                                                   (let ((_%e180440180452%_
                                                          (gx#syntax-e
                                                           _%e180437180444%_)))
                                                     (let ((_%hd180441180455%_
                                                            (##car _%e180440180452%_))
                                                           (_%tl180442180457%_
                                                            (##cdr _%e180440180452%_)))
                                                       (let* ((_%head180460%_
                                                               _%hd180441180455%_)
                                                              (_%args180462%_
                                                               _%tl180442180457%_))
                                                         (if (gx#stx-list?
                                                              _%args180462%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl180436%_)
                                                             (_%E180439180448%_)))))
                                                   (_%E180439180448%_)))))
                                       (_%E180438180464%_)))
                                   _%body180434%_))
                                 (gx#stx-source _%stx180410%_))
                                (_%E180413180422%_)))))
                      (_%E180413180422%_)))))
          (_%E180412180468%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx180314%_)
        (let* ((_%e180315180322%_ _%stx180314%_)
               (_%E180317180326%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180315180322%_)))
               (_%E180316180406%_
                (lambda ()
                  (if (gx#stx-pair? _%e180315180322%_)
                      (let ((_%e180318180330%_
                             (gx#syntax-e _%e180315180322%_)))
                        (let ((_%hd180319180333%_ (##car _%e180318180330%_))
                              (_%tl180320180335%_ (##cdr _%e180318180330%_)))
                          (let ((_%body180338%_ _%tl180320180335%_))
                            (let _%lp180340%_ ((_%rest180342%_ _%body180338%_)
                                               (_%r180343%_ '()))
                              (let* ((_%e180344180358%_ _%rest180342%_)
                                     (_%E180356180362%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx180314%_)))
                                     (_%E180346180366%_
                                      (lambda ()
                                        (if (gx#stx-null? _%e180344180358%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r180343%_))
                                             (gx#stx-source _%stx180314%_))
                                            (_%E180356180362%_))))
                                     (_%E180345180402%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e180344180358%_)
                                            (let ((_%e180347180370%_
                                                   (gx#syntax-e
                                                    _%e180344180358%_)))
                                              (let ((_%hd180348180373%_
                                                     (##car _%e180347180370%_))
                                                    (_%tl180349180375%_
                                                     (##cdr _%e180347180370%_)))
                                                (if (gx#stx-pair?
                                                     _%hd180348180373%_)
                                                    (let ((_%e180350180378%_
                                                           (gx#syntax-e
                                                            _%hd180348180373%_)))
                                                      (let ((_%hd180351180381%_
                                                             (##car _%e180350180378%_))
                                                            (_%tl180352180383%_
                                                             (##cdr _%e180350180378%_)))
                                                        (let ((_%id180386%_
                                                               _%hd180351180381%_))
                                                          (if (gx#stx-pair?
                                                               _%tl180352180383%_)
                                                              (let ((_%e180353180388%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl180352180383%_)))
                        (let ((_%hd180354180391%_ (##car _%e180353180388%_))
                              (_%tl180355180393%_ (##cdr _%e180353180388%_)))
                          (let ((_%eid180396%_ _%hd180354180391%_))
                            (if (gx#stx-null? _%tl180355180393%_)
                                (let ((_%rest180398%_ _%tl180349180375%_))
                                  (if (and (gx#identifier? _%id180386%_)
                                           (gx#identifier? _%eid180396%_))
                                      (let ((_%eid180400%_
                                             (gx#stx-e _%eid180396%_)))
                                        (gx#core-bind-extern!__0
                                         _%id180386%_
                                         _%eid180400%_)
                                        (_%lp180340%_
                                         _%rest180398%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id180386%_)
                                                     (cons _%eid180400%_ '()))
                                               _%r180343%_)))
                                      (_%E180346180366%_)))
                                (_%E180346180366%_)))))
                      (_%E180346180366%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E180346180366%_))))
                                            (_%E180346180366%_)))))
                                (_%E180345180402%_))))))
                      (_%E180317180326%_)))))
          (_%E180316180406%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx180203%_)
        (let* ((_%e180204180230%_ _%stx180203%_)
               (_%E180219180234%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180204180230%_)))
               (_%E180206180266%_
                (lambda ()
                  (if (gx#stx-pair? _%e180204180230%_)
                      (let ((_%e180220180238%_
                             (gx#syntax-e _%e180204180230%_)))
                        (let ((_%hd180221180241%_ (##car _%e180220180238%_))
                              (_%tl180222180243%_ (##cdr _%e180220180238%_)))
                          (if (gx#stx-pair? _%tl180222180243%_)
                              (let ((_%e180223180246%_
                                     (gx#syntax-e _%tl180222180243%_)))
                                (let ((_%hd180224180249%_
                                       (##car _%e180223180246%_))
                                      (_%tl180225180251%_
                                       (##cdr _%e180223180246%_)))
                                  (let ((_%hd180254%_ _%hd180224180249%_))
                                    (if (gx#stx-pair? _%tl180225180251%_)
                                        (let ((_%e180226180256%_
                                               (gx#syntax-e
                                                _%tl180225180251%_)))
                                          (let ((_%hd180227180259%_
                                                 (##car _%e180226180256%_))
                                                (_%tl180228180261%_
                                                 (##cdr _%e180226180256%_)))
                                            (let ((_%expr180264%_
                                                   _%hd180227180259%_))
                                              (if (gx#stx-null?
                                                   _%tl180228180261%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd180254%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd180254%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd180254%_)
                             (cons (gx#core-expand-expression _%expr180264%_)
                                   '())))
                 (gx#stx-source _%stx180203%_)))
              (_%E180219180234%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E180219180234%_)))))
                                        (_%E180219180234%_)))))
                              (_%E180219180234%_))))
                      (_%E180219180234%_))))
               (_%E180205180310%_
                (lambda ()
                  (if (gx#stx-pair? _%e180204180230%_)
                      (let ((_%e180207180270%_
                             (gx#syntax-e _%e180204180230%_)))
                        (let ((_%hd180208180273%_ (##car _%e180207180270%_))
                              (_%tl180209180275%_ (##cdr _%e180207180270%_)))
                          (if (gx#stx-pair? _%tl180209180275%_)
                              (let ((_%e180210180278%_
                                     (gx#syntax-e _%tl180209180275%_)))
                                (let ((_%hd180211180281%_
                                       (##car _%e180210180278%_))
                                      (_%tl180212180283%_
                                       (##cdr _%e180210180278%_)))
                                  (if (gx#stx-pair? _%hd180211180281%_)
                                      (let ((_%e180216180286%_
                                             (gx#syntax-e _%hd180211180281%_)))
                                        (let ((_%hd180217180289%_
                                               (##car _%e180216180286%_))
                                              (_%tl180218180291%_
                                               (##cdr _%e180216180286%_)))
                                          (let ((_%id180294%_
                                                 _%hd180217180289%_))
                                            (if (gx#stx-null?
                                                 _%tl180218180291%_)
                                                (if (gx#stx-pair?
                                                     _%tl180212180283%_)
                                                    (let ((_%e180213180296%_
                                                           (gx#syntax-e
                                                            _%tl180212180283%_)))
                                                      (let ((_%hd180214180299%_
                                                             (##car _%e180213180296%_))
                                                            (_%tl180215180301%_
                                                             (##cdr _%e180213180296%_)))
                                                        (let* ((_%expr180304%_
                                                                _%hd180214180299%_)
                                                               (_%props180306%_
                                                                _%tl180215180301%_))
                                                          (if (gx#identifier?
                                                               _%id180294%_)
                                                              (let ((_%bind180308%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#core-bind-runtime!__0 _%id180294%_)))
                        (gx#core-bind-runtime-properties!
                         _%bind180308%_
                         _%props180306%_)
                        (gx#core-quote-syntax__1
                         (cons (gx#core-quote-syntax__0 '%#define-values)
                               (cons (gx#core-quote-bind-values
                                      (cons _%id180294%_ '()))
                                     (cons (gx#core-expand-expression
                                            _%expr180304%_)
                                           '())))
                         (gx#stx-source _%stx180203%_)))
                      (_%E180206180266%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E180206180266%_))
                                                (_%E180206180266%_)))))
                                      (_%E180206180266%_))))
                              (_%E180206180266%_))))
                      (_%E180206180266%_)))))
          (_%E180205180310%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx180142%_)
        (let* ((_%e180143180156%_ _%stx180142%_)
               (_%E180145180160%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180143180156%_)))
               (_%E180144180199%_
                (lambda ()
                  (if (gx#stx-pair? _%e180143180156%_)
                      (let ((_%e180146180164%_
                             (gx#syntax-e _%e180143180156%_)))
                        (let ((_%hd180147180167%_ (##car _%e180146180164%_))
                              (_%tl180148180169%_ (##cdr _%e180146180164%_)))
                          (if (gx#stx-pair? _%tl180148180169%_)
                              (let ((_%e180149180172%_
                                     (gx#syntax-e _%tl180148180169%_)))
                                (let ((_%hd180150180175%_
                                       (##car _%e180149180172%_))
                                      (_%tl180151180177%_
                                       (##cdr _%e180149180172%_)))
                                  (let ((_%id180180%_ _%hd180150180175%_))
                                    (if (gx#stx-pair? _%tl180151180177%_)
                                        (let ((_%e180152180182%_
                                               (gx#syntax-e
                                                _%tl180151180177%_)))
                                          (let ((_%hd180153180185%_
                                                 (##car _%e180152180182%_))
                                                (_%tl180154180187%_
                                                 (##cdr _%e180152180182%_)))
                                            (let* ((_%binding-id180190%_
                                                    _%hd180153180185%_)
                                                   (_%props180192%_
                                                    _%tl180154180187%_))
                                              (if (and (gx#identifier?
                                                        _%id180180%_)
                                                       (gx#identifier?
                                                        _%binding-id180190%_)
                                                       (gx#stx-list?
                                                        _%props180192%_))
                                                  (let* ((_%eid180194%_
                                                          (gx#stx-e
                                                           _%binding-id180190%_))
                                                         (_%bind180196%_
                                                          (gx#core-bind-runtime-reference!__0
                                                           _%id180180%_
                                                           _%eid180194%_)))
                                                    (gx#core-bind-runtime-properties!
                                                     _%bind180196%_
                                                     _%props180192%_)
                                                    (gx#core-quote-syntax__0
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#define-runtime)
                                                           (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id180180%_)
                         (cons _%eid180194%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E180145180160%_)))))
                                        (_%E180145180160%_)))))
                              (_%E180145180160%_))))
                      (_%E180145180160%_)))))
          (_%E180144180199%_))))
    (define gx#core-bind-runtime-properties!
      (lambda (_%bind180077%_ _%props180078%_)
        (letrec ((_%eval-prop180080%_
                  (lambda (_%prop180140%_)
                    (gx#eval-expression+1 _%prop180140%_))))
          (let _%loop180082%_ ((_%rest180084%_ _%props180078%_)
                               (_%props180085%_ '()))
            (let* ((_%e180086180097%_ _%rest180084%_)
                   (_%E180095180101%_
                    (lambda ()
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e180086180097%_)))
                   (_%E180088180105%_
                    (lambda ()
                      (if (gx#stx-null? _%e180086180097%_)
                          (if (null? _%props180085%_)
                              '#!void
                              (##structure-set!
                               _%bind180077%_
                               (reverse! _%props180085%_)
                               '4
                               gx#binding::t
                               '#f))
                          (_%E180095180101%_))))
                   (_%E180087180136%_
                    (lambda ()
                      (if (gx#stx-pair? _%e180086180097%_)
                          (let ((_%e180089180109%_
                                 (gx#syntax-e _%e180086180097%_)))
                            (let ((_%hd180090180112%_
                                   (##car _%e180089180109%_))
                                  (_%tl180091180114%_
                                   (##cdr _%e180089180109%_)))
                              (let ((_%key180117%_ _%hd180090180112%_))
                                (if (gx#stx-pair? _%tl180091180114%_)
                                    (let ((_%e180092180119%_
                                           (gx#syntax-e _%tl180091180114%_)))
                                      (let ((_%hd180093180122%_
                                             (##car _%e180092180119%_))
                                            (_%tl180094180124%_
                                             (##cdr _%e180092180119%_)))
                                        (let* ((_%prop180127%_
                                                _%hd180093180122%_)
                                               (_%rest180129%_
                                                _%tl180094180124%_))
                                          (if (gx#stx-keyword? _%key180117%_)
                                              (let* ((_%key180131%_
                                                      (gx#stx-e _%key180117%_))
                                                     (_%$e180133%_
                                                      _%key180131%_))
                                                (if (eq? 'macro: _%$e180133%_)
                                                    (begin
                                                      (##structure-set!
                                                       _%bind180077%_
                                                       (if (gx#identifier?
                                                            _%prop180127%_)
                                                           (gx#core-quote-syntax__0
                                                            _%prop180127%_)
                                                           (gx#eval-expression+1
                                                            _%prop180127%_))
                                                       '6
                                                       gx#runtime-binding::t
                                                       '#f)
                                                      (_%loop180082%_
                                                       _%rest180129%_
                                                       _%props180085%_))
                                                    (if (eq? 'type:
                                                             _%$e180133%_)
                                                        (begin
                                                          (##structure-set!
                                                           _%bind180077%_
                                                           (gx#eval-expression+1
                                                            _%prop180127%_)
                                                           '5
                                                           gx#runtime-binding::t
                                                           '#f)
                                                          (_%loop180082%_
                                                           _%rest180129%_
                                                           _%props180085%_))
                                                        (_%loop180082%_
                                                         _%rest180129%_
                                                         (cons (gx#eval-expression+1
                                                                _%prop180127%_)
                                                               (cons _%key180131%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%props180085%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E180088180105%_)))))
                                    (_%E180088180105%_)))))
                          (_%E180088180105%_)))))
              (_%E180087180136%_))))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx180020%_)
        (let* ((_%e180021180034%_ _%stx180020%_)
               (_%E180023180038%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180021180034%_)))
               (_%E180022180073%_
                (lambda ()
                  (if (gx#stx-pair? _%e180021180034%_)
                      (let ((_%e180024180042%_
                             (gx#syntax-e _%e180021180034%_)))
                        (let ((_%hd180025180045%_ (##car _%e180024180042%_))
                              (_%tl180026180047%_ (##cdr _%e180024180042%_)))
                          (if (gx#stx-pair? _%tl180026180047%_)
                              (let ((_%e180027180050%_
                                     (gx#syntax-e _%tl180026180047%_)))
                                (let ((_%hd180028180053%_
                                       (##car _%e180027180050%_))
                                      (_%tl180029180055%_
                                       (##cdr _%e180027180050%_)))
                                  (let ((_%id180058%_ _%hd180028180053%_))
                                    (if (gx#stx-pair? _%tl180029180055%_)
                                        (let ((_%e180030180060%_
                                               (gx#syntax-e
                                                _%tl180029180055%_)))
                                          (let ((_%hd180031180063%_
                                                 (##car _%e180030180060%_))
                                                (_%tl180032180065%_
                                                 (##cdr _%e180030180060%_)))
                                            (let ((_%expr180068%_
                                                   _%hd180031180063%_))
                                              (if (gx#stx-null?
                                                   _%tl180032180065%_)
                                                  (if (gx#identifier?
                                                       _%id180058%_)
                                                      (let ((_g181234_
                                                             (gx#core-expand-expression+1
                                                              _%expr180068%_)))
                                                        (begin
                                                          (let ((_g181235_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g181234_)
                             (##values-length _g181234_)
                             1)))
                    (if (not (##fx= _g181235_ 2))
                        (error "Context expects 2 values" _g181235_)))
                  (let ((_%e-stx180070%_ (##values-ref _g181234_ 0))
                        (_%e180071%_ (##values-ref _g181234_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id180058%_ _%e180071%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id180058%_)
                                   (cons _%e-stx180070%_ '())))
                       (gx#stx-source _%stx180020%_))))))
              (_%E180023180038%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E180023180038%_)))))
                                        (_%E180023180038%_)))))
                              (_%E180023180038%_))))
                      (_%E180023180038%_)))))
          (_%E180022180073%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx179964%_)
        (let* ((_%e179965179978%_ _%stx179964%_)
               (_%E179967179982%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e179965179978%_)))
               (_%E179966180016%_
                (lambda ()
                  (if (gx#stx-pair? _%e179965179978%_)
                      (let ((_%e179968179986%_
                             (gx#syntax-e _%e179965179978%_)))
                        (let ((_%hd179969179989%_ (##car _%e179968179986%_))
                              (_%tl179970179991%_ (##cdr _%e179968179986%_)))
                          (if (gx#stx-pair? _%tl179970179991%_)
                              (let ((_%e179971179994%_
                                     (gx#syntax-e _%tl179970179991%_)))
                                (let ((_%hd179972179997%_
                                       (##car _%e179971179994%_))
                                      (_%tl179973179999%_
                                       (##cdr _%e179971179994%_)))
                                  (let ((_%id180002%_ _%hd179972179997%_))
                                    (if (gx#stx-pair? _%tl179973179999%_)
                                        (let ((_%e179974180004%_
                                               (gx#syntax-e
                                                _%tl179973179999%_)))
                                          (let ((_%hd179975180007%_
                                                 (##car _%e179974180004%_))
                                                (_%tl179976180009%_
                                                 (##cdr _%e179974180004%_)))
                                            (let ((_%alias-id180012%_
                                                   _%hd179975180007%_))
                                              (if (gx#stx-null?
                                                   _%tl179976180009%_)
                                                  (if (and (gx#identifier?
                                                            _%id180002%_)
                                                           (gx#identifier?
                                                            _%alias-id180012%_))
                                                      (let ((_%alias-id180014%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id180012%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id180002%_
                                                         _%alias-id180014%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id180002%_)
                             (cons _%alias-id180014%_ '())))))
              (_%E179967179982%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E179967179982%_)))))
                                        (_%E179967179982%_)))))
                              (_%E179967179982%_))))
                      (_%E179967179982%_)))))
          (_%E179966180016%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx179907%_ _%wrap?179908%_)
        (let* ((_%e179909179919%_ _%stx179907%_)
               (_%E179911179923%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e179909179919%_)))
               (_%E179910179950%_
                (lambda ()
                  (if (gx#stx-pair? _%e179909179919%_)
                      (let ((_%e179912179927%_
                             (gx#syntax-e _%e179909179919%_)))
                        (let ((_%hd179913179930%_ (##car _%e179912179927%_))
                              (_%tl179914179932%_ (##cdr _%e179912179927%_)))
                          (if (gx#stx-pair? _%tl179914179932%_)
                              (let ((_%e179915179935%_
                                     (gx#syntax-e _%tl179914179932%_)))
                                (let ((_%hd179916179938%_
                                       (##car _%e179915179935%_))
                                      (_%tl179917179940%_
                                       (##cdr _%e179915179935%_)))
                                  (let* ((_%hd179943%_ _%hd179916179938%_)
                                         (_%body179945%_ _%tl179917179940%_))
                                    (if (gx#core-bind-values? _%hd179943%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd179943%_)
                                           (let ((_%body179948%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd179943%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx179907%_
                                                               _%body179945%_)
                                                              '()))))
                                             (if _%wrap?179908%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body179948%_)
                                                  (gx#stx-source
                                                   _%stx179907%_))
                                                 _%body179948%_)))
                                         gx#current-expander-context
                                         (let ((__obj181217
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj181217)
                                           __obj181217))
                                        (_%E179911179923%_)))))
                              (_%E179911179923%_))))
                      (_%E179911179923%_)))))
          (_%E179910179950%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx179957%_)
        (let ((_%wrap?179959%_ '#t))
          (gx#core-expand-lambda%__% _%stx179957%_ _%wrap?179959%_))))
    (define gx#core-expand-lambda%
      (lambda _g181236_
        (let ((_g181237_ (##length _g181236_)))
          (cond ((##fx= _g181237_ 1)
                 (apply gx#core-expand-lambda%__0 _g181236_))
                ((##fx= _g181237_ 2)
                 (apply gx#core-expand-lambda%__% _g181236_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g181236_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx179871%_)
        (let* ((_%e179872179879%_ _%stx179871%_)
               (_%E179874179883%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e179872179879%_)))
               (_%E179873179902%_
                (lambda ()
                  (if (gx#stx-pair? _%e179872179879%_)
                      (let ((_%e179875179887%_
                             (gx#syntax-e _%e179872179879%_)))
                        (let ((_%hd179876179890%_ (##car _%e179875179887%_))
                              (_%tl179877179892%_ (##cdr _%e179875179887%_)))
                          (let ((_%clauses179895%_ _%tl179877179892%_))
                            (if (gx#stx-list? _%clauses179895%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause179897%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause179897%_)
                                       (let ((_%$e179899%_
                                              (gx#stx-source
                                               _%clause179897%_)))
                                         (if _%$e179899%_
                                             _%$e179899%_
                                             (gx#stx-source _%stx179871%_))))
                                      '#f))
                                   _%clauses179895%_))
                                 (gx#stx-source _%stx179871%_))
                                (_%E179874179883%_)))))
                      (_%E179874179883%_)))))
          (_%E179873179902%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx179825%_)
        (let* ((_%e179826179836%_ _%stx179825%_)
               (_%E179828179840%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e179826179836%_)))
               (_%E179827179867%_
                (lambda ()
                  (if (gx#stx-pair? _%e179826179836%_)
                      (let ((_%e179829179844%_
                             (gx#syntax-e _%e179826179836%_)))
                        (let ((_%hd179830179847%_ (##car _%e179829179844%_))
                              (_%tl179831179849%_ (##cdr _%e179829179844%_)))
                          (if (gx#stx-pair? _%tl179831179849%_)
                              (let ((_%e179832179852%_
                                     (gx#syntax-e _%tl179831179849%_)))
                                (let ((_%hd179833179855%_
                                       (##car _%e179832179852%_))
                                      (_%tl179834179857%_
                                       (##cdr _%e179832179852%_)))
                                  (let* ((_%hd179860%_ _%hd179833179855%_)
                                         (_%body179862%_ _%tl179834179857%_))
                                    (if (gx#core-expand-let-bind? _%hd179860%_)
                                        (let ((_%expressions179864%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd179860%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd179860%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd179860%_
                                                           _%expressions179864%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx179825%_
                         _%body179862%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx179825%_)))
                                           gx#current-expander-context
                                           (let ((__obj181218
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj181218)
                                             __obj181218)))
                                        (_%E179828179840%_)))))
                              (_%E179828179840%_))))
                      (_%E179828179840%_)))))
          (_%E179827179867%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx179770%_ _%form179771%_)
        (let* ((_%e179772179782%_ _%stx179770%_)
               (_%E179774179786%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e179772179782%_)))
               (_%E179773179811%_
                (lambda ()
                  (if (gx#stx-pair? _%e179772179782%_)
                      (let ((_%e179775179790%_
                             (gx#syntax-e _%e179772179782%_)))
                        (let ((_%hd179776179793%_ (##car _%e179775179790%_))
                              (_%tl179777179795%_ (##cdr _%e179775179790%_)))
                          (if (gx#stx-pair? _%tl179777179795%_)
                              (let ((_%e179778179798%_
                                     (gx#syntax-e _%tl179777179795%_)))
                                (let ((_%hd179779179801%_
                                       (##car _%e179778179798%_))
                                      (_%tl179780179803%_
                                       (##cdr _%e179778179798%_)))
                                  (let* ((_%hd179806%_ _%hd179779179801%_)
                                         (_%body179808%_ _%tl179780179803%_))
                                    (if (gx#core-expand-let-bind? _%hd179806%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd179806%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form179771%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd179806%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd179806%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx179770%_
                                                               _%body179808%_)
                                                              '())))
                                            (gx#stx-source _%stx179770%_)))
                                         gx#current-expander-context
                                         (let ((__obj181219
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj181219)
                                           __obj181219))
                                        (_%E179774179786%_)))))
                              (_%E179774179786%_))))
                      (_%E179774179786%_)))))
          (_%E179773179811%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx179818%_)
        (let ((_%form179820%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx179818%_ _%form179820%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g181238_
        (let ((_g181239_ (##length _g181238_)))
          (cond ((##fx= _g181239_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g181238_))
                ((##fx= _g181239_ 2)
                 (apply gx#core-expand-letrec-values%__% _g181238_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g181238_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx179767%_)
        (gx#core-expand-letrec-values%__% _%stx179767%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx179724%_)
        (if (gx#stx-list? _%stx179724%_)
            (gx#stx-andmap
             (lambda (_%bind179726%_)
               (let* ((_%e179727179737%_ _%bind179726%_)
                      (_%E179729179741%_ (lambda () '#f))
                      (_%E179728179763%_
                       (lambda ()
                         (if (gx#stx-pair? _%e179727179737%_)
                             (let ((_%e179730179745%_
                                    (gx#syntax-e _%e179727179737%_)))
                               (let ((_%hd179731179748%_
                                      (##car _%e179730179745%_))
                                     (_%tl179732179750%_
                                      (##cdr _%e179730179745%_)))
                                 (let ((_%hd179753%_ _%hd179731179748%_))
                                   (if (gx#stx-pair? _%tl179732179750%_)
                                       (let ((_%e179733179755%_
                                              (gx#syntax-e
                                               _%tl179732179750%_)))
                                         (let ((_%hd179734179758%_
                                                (##car _%e179733179755%_))
                                               (_%tl179735179760%_
                                                (##cdr _%e179733179755%_)))
                                           (if (gx#stx-null?
                                                _%tl179735179760%_)
                                               (gx#core-bind-values?
                                                _%hd179753%_)
                                               (_%E179729179741%_))))
                                       (_%E179729179741%_)))))
                             (_%E179729179741%_)))))
                 (_%E179728179763%_)))
             _%stx179724%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind179683%_)
        (let* ((_%e179684179694%_ _%bind179683%_)
               (_%E179686179698%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e179684179694%_)))
               (_%E179685179720%_
                (lambda ()
                  (if (gx#stx-pair? _%e179684179694%_)
                      (let ((_%e179687179702%_
                             (gx#syntax-e _%e179684179694%_)))
                        (let ((_%hd179688179705%_ (##car _%e179687179702%_))
                              (_%tl179689179707%_ (##cdr _%e179687179702%_)))
                          (if (gx#stx-pair? _%tl179689179707%_)
                              (let ((_%e179690179710%_
                                     (gx#syntax-e _%tl179689179707%_)))
                                (let ((_%hd179691179713%_
                                       (##car _%e179690179710%_))
                                      (_%tl179692179715%_
                                       (##cdr _%e179690179710%_)))
                                  (let ((_%expr179718%_ _%hd179691179713%_))
                                    (if (gx#stx-null? _%tl179692179715%_)
                                        (gx#core-expand-expression
                                         _%expr179718%_)
                                        (_%E179686179698%_)))))
                              (_%E179686179698%_))))
                      (_%E179686179698%_)))))
          (_%E179685179720%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind179642%_)
        (let* ((_%e179643179653%_ _%bind179642%_)
               (_%E179645179657%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e179643179653%_)))
               (_%E179644179679%_
                (lambda ()
                  (if (gx#stx-pair? _%e179643179653%_)
                      (let ((_%e179646179661%_
                             (gx#syntax-e _%e179643179653%_)))
                        (let ((_%hd179647179664%_ (##car _%e179646179661%_))
                              (_%tl179648179666%_ (##cdr _%e179646179661%_)))
                          (let ((_%hd179669%_ _%hd179647179664%_))
                            (if (gx#stx-pair? _%tl179648179666%_)
                                (let ((_%e179649179671%_
                                       (gx#syntax-e _%tl179648179666%_)))
                                  (let ((_%hd179650179674%_
                                         (##car _%e179649179671%_))
                                        (_%tl179651179676%_
                                         (##cdr _%e179649179671%_)))
                                    (if (gx#stx-null? _%tl179651179676%_)
                                        (gx#core-bind-values!__0 _%hd179669%_)
                                        (_%E179645179657%_))))
                                (_%E179645179657%_)))))
                      (_%E179645179657%_)))))
          (_%E179644179679%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind179600%_ _%expr179601%_)
        (let* ((_%e179602179612%_ _%bind179600%_)
               (_%E179604179616%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e179602179612%_)))
               (_%E179603179638%_
                (lambda ()
                  (if (gx#stx-pair? _%e179602179612%_)
                      (let ((_%e179605179620%_
                             (gx#syntax-e _%e179602179612%_)))
                        (let ((_%hd179606179623%_ (##car _%e179605179620%_))
                              (_%tl179607179625%_ (##cdr _%e179605179620%_)))
                          (let ((_%hd179628%_ _%hd179606179623%_))
                            (if (gx#stx-pair? _%tl179607179625%_)
                                (let ((_%e179608179630%_
                                       (gx#syntax-e _%tl179607179625%_)))
                                  (let ((_%hd179609179633%_
                                         (##car _%e179608179630%_))
                                        (_%tl179610179635%_
                                         (##cdr _%e179608179630%_)))
                                    (if (gx#stx-null? _%tl179610179635%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd179628%_)
                                              (cons _%expr179601%_ '()))
                                        (_%E179604179616%_))))
                                (_%E179604179616%_)))))
                      (_%E179604179616%_)))))
          (_%E179603179638%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx179554%_)
        (let* ((_%e179555179565%_ _%stx179554%_)
               (_%E179557179569%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e179555179565%_)))
               (_%E179556179596%_
                (lambda ()
                  (if (gx#stx-pair? _%e179555179565%_)
                      (let ((_%e179558179573%_
                             (gx#syntax-e _%e179555179565%_)))
                        (let ((_%hd179559179576%_ (##car _%e179558179573%_))
                              (_%tl179560179578%_ (##cdr _%e179558179573%_)))
                          (if (gx#stx-pair? _%tl179560179578%_)
                              (let ((_%e179561179581%_
                                     (gx#syntax-e _%tl179560179578%_)))
                                (let ((_%hd179562179584%_
                                       (##car _%e179561179581%_))
                                      (_%tl179563179586%_
                                       (##cdr _%e179561179581%_)))
                                  (let* ((_%hd179589%_ _%hd179562179584%_)
                                         (_%body179591%_ _%tl179563179586%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd179589%_)
                                        (let ((_%expanders179593%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd179589%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd179589%_
                                              _%expanders179593%_)
                                             (gx#core-expand-local-block
                                              _%stx179554%_
                                              _%body179591%_))
                                           gx#current-expander-context
                                           (let ((__obj181220
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj181220)
                                             __obj181220)))
                                        (_%E179557179569%_)))))
                              (_%E179557179569%_))))
                      (_%E179557179569%_)))))
          (_%E179556179596%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx179503%_)
        (let* ((_%e179504179514%_ _%stx179503%_)
               (_%E179506179518%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e179504179514%_)))
               (_%E179505179550%_
                (lambda ()
                  (if (gx#stx-pair? _%e179504179514%_)
                      (let ((_%e179507179522%_
                             (gx#syntax-e _%e179504179514%_)))
                        (let ((_%hd179508179525%_ (##car _%e179507179522%_))
                              (_%tl179509179527%_ (##cdr _%e179507179522%_)))
                          (if (gx#stx-pair? _%tl179509179527%_)
                              (let ((_%e179510179530%_
                                     (gx#syntax-e _%tl179509179527%_)))
                                (let ((_%hd179511179533%_
                                       (##car _%e179510179530%_))
                                      (_%tl179512179535%_
                                       (##cdr _%e179510179530%_)))
                                  (let* ((_%hd179538%_ _%hd179511179533%_)
                                         (_%body179540%_ _%tl179512179535%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd179538%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd179538%_
                                            (make-list
                                             (gx#stx-length _%hd179538%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g179542179545%_
                                                     _%g179543179547%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g179542179545%_
                                               _%g179543179547%_
                                               '#t))
                                            _%hd179538%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd179538%_))
                                           (gx#core-expand-local-block
                                            _%stx179503%_
                                            _%body179540%_))
                                         gx#current-expander-context
                                         (let ((__obj181221
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj181221)
                                           __obj181221))
                                        (_%E179506179518%_)))))
                              (_%E179506179518%_))))
                      (_%E179506179518%_)))))
          (_%E179505179550%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx179460%_)
        (if (gx#stx-list? _%stx179460%_)
            (gx#stx-andmap
             (lambda (_%bind179462%_)
               (let* ((_%e179463179473%_ _%bind179462%_)
                      (_%E179465179477%_ (lambda () '#f))
                      (_%E179464179499%_
                       (lambda ()
                         (if (gx#stx-pair? _%e179463179473%_)
                             (let ((_%e179466179481%_
                                    (gx#syntax-e _%e179463179473%_)))
                               (let ((_%hd179467179484%_
                                      (##car _%e179466179481%_))
                                     (_%tl179468179486%_
                                      (##cdr _%e179466179481%_)))
                                 (let ((_%hd179489%_ _%hd179467179484%_))
                                   (if (gx#stx-pair? _%tl179468179486%_)
                                       (let ((_%e179469179491%_
                                              (gx#syntax-e
                                               _%tl179468179486%_)))
                                         (let ((_%hd179470179494%_
                                                (##car _%e179469179491%_))
                                               (_%tl179471179496%_
                                                (##cdr _%e179469179491%_)))
                                           (if (gx#stx-null?
                                                _%tl179471179496%_)
                                               (gx#identifier? _%hd179489%_)
                                               (_%E179465179477%_))))
                                       (_%E179465179477%_)))))
                             (_%E179465179477%_)))))
                 (_%E179464179499%_)))
             _%stx179460%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind179416%_)
        (let* ((_%e179417179427%_ _%bind179416%_)
               (_%E179419179431%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e179417179427%_)))
               (_%E179418179456%_
                (lambda ()
                  (if (gx#stx-pair? _%e179417179427%_)
                      (let ((_%e179420179435%_
                             (gx#syntax-e _%e179417179427%_)))
                        (let ((_%hd179421179438%_ (##car _%e179420179435%_))
                              (_%tl179422179440%_ (##cdr _%e179420179435%_)))
                          (if (gx#stx-pair? _%tl179422179440%_)
                              (let ((_%e179423179443%_
                                     (gx#syntax-e _%tl179422179440%_)))
                                (let ((_%hd179424179446%_
                                       (##car _%e179423179443%_))
                                      (_%tl179425179448%_
                                       (##cdr _%e179423179443%_)))
                                  (let ((_%expr179451%_ _%hd179424179446%_))
                                    (if (gx#stx-null? _%tl179425179448%_)
                                        (let ((_g181240_
                                               (gx#core-expand-expression+1
                                                _%expr179451%_)))
                                          (begin
                                            (let ((_g181241_
                                                   (if (##values? _g181240_)
                                                       (##values-length
                                                        _g181240_)
                                                       1)))
                                              (if (not (##fx= _g181241_ 2))
                                                  (error "Context expects 2 values"
                                                         _g181241_)))
                                            (let ((_%_179453%_
                                                   (##values-ref _g181240_ 0))
                                                  (_%e179454%_
                                                   (##values-ref _g181240_ 1)))
                                              _%e179454%_)))
                                        (_%E179419179431%_)))))
                              (_%E179419179431%_))))
                      (_%E179419179431%_)))))
          (_%E179418179456%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind179361%_ _%e179362%_ _%rebind?179363%_)
        (let* ((_%e179364179374%_ _%bind179361%_)
               (_%E179366179378%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e179364179374%_)))
               (_%E179365179400%_
                (lambda ()
                  (if (gx#stx-pair? _%e179364179374%_)
                      (let ((_%e179367179382%_
                             (gx#syntax-e _%e179364179374%_)))
                        (let ((_%hd179368179385%_ (##car _%e179367179382%_))
                              (_%tl179369179387%_ (##cdr _%e179367179382%_)))
                          (let ((_%id179390%_ _%hd179368179385%_))
                            (if (gx#stx-pair? _%tl179369179387%_)
                                (let ((_%e179370179392%_
                                       (gx#syntax-e _%tl179369179387%_)))
                                  (let ((_%hd179371179395%_
                                         (##car _%e179370179392%_))
                                        (_%tl179372179397%_
                                         (##cdr _%e179370179392%_)))
                                    (if (gx#stx-null? _%tl179372179397%_)
                                        (gx#core-bind-syntax!__1
                                         _%id179390%_
                                         _%e179362%_
                                         _%rebind?179363%_)
                                        (_%E179366179378%_))))
                                (_%E179366179378%_)))))
                      (_%E179366179378%_)))))
          (_%E179365179400%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind179407%_ _%e179408%_)
        (let ((_%rebind?179410%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind179407%_
           _%e179408%_
           _%rebind?179410%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g181242_
        (let ((_g181243_ (##length _g181242_)))
          (cond ((##fx= _g181243_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g181242_))
                ((##fx= _g181243_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g181242_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g181242_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx179319%_)
        (let* ((_%e179320179330%_ _%stx179319%_)
               (_%E179322179334%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e179320179330%_)))
               (_%E179321179356%_
                (lambda ()
                  (if (gx#stx-pair? _%e179320179330%_)
                      (let ((_%e179323179338%_
                             (gx#syntax-e _%e179320179330%_)))
                        (let ((_%hd179324179341%_ (##car _%e179323179338%_))
                              (_%tl179325179343%_ (##cdr _%e179323179338%_)))
                          (if (gx#stx-pair? _%tl179325179343%_)
                              (let ((_%e179326179346%_
                                     (gx#syntax-e _%tl179325179343%_)))
                                (let ((_%hd179327179349%_
                                       (##car _%e179326179346%_))
                                      (_%tl179328179351%_
                                       (##cdr _%e179326179346%_)))
                                  (let ((_%expr179354%_ _%hd179327179349%_))
                                    (if (gx#stx-null? _%tl179328179351%_)
                                        (gx#core-expand-expression
                                         _%expr179354%_)
                                        (_%E179322179334%_)))))
                              (_%E179322179334%_))))
                      (_%E179322179334%_)))))
          (_%E179321179356%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx179278%_)
        (let* ((_%e179279179289%_ _%stx179278%_)
               (_%E179281179293%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e179279179289%_)))
               (_%E179280179315%_
                (lambda ()
                  (if (gx#stx-pair? _%e179279179289%_)
                      (let ((_%e179282179297%_
                             (gx#syntax-e _%e179279179289%_)))
                        (let ((_%hd179283179300%_ (##car _%e179282179297%_))
                              (_%tl179284179302%_ (##cdr _%e179282179297%_)))
                          (if (gx#stx-pair? _%tl179284179302%_)
                              (let ((_%e179285179305%_
                                     (gx#syntax-e _%tl179284179302%_)))
                                (let ((_%hd179286179308%_
                                       (##car _%e179285179305%_))
                                      (_%tl179287179310%_
                                       (##cdr _%e179285179305%_)))
                                  (let ((_%e179313%_ _%hd179286179308%_))
                                    (if (gx#stx-null? _%tl179287179310%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e179313%_)
                                                     '()))
                                         (gx#stx-source _%stx179278%_))
                                        (_%E179281179293%_)))))
                              (_%E179281179293%_))))
                      (_%E179281179293%_)))))
          (_%E179280179315%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx179237%_)
        (let* ((_%e179238179248%_ _%stx179237%_)
               (_%E179240179252%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e179238179248%_)))
               (_%E179239179274%_
                (lambda ()
                  (if (gx#stx-pair? _%e179238179248%_)
                      (let ((_%e179241179256%_
                             (gx#syntax-e _%e179238179248%_)))
                        (let ((_%hd179242179259%_ (##car _%e179241179256%_))
                              (_%tl179243179261%_ (##cdr _%e179241179256%_)))
                          (if (gx#stx-pair? _%tl179243179261%_)
                              (let ((_%e179244179264%_
                                     (gx#syntax-e _%tl179243179261%_)))
                                (let ((_%hd179245179267%_
                                       (##car _%e179244179264%_))
                                      (_%tl179246179269%_
                                       (##cdr _%e179244179264%_)))
                                  (let ((_%e179272%_ _%hd179245179267%_))
                                    (if (gx#stx-null? _%tl179246179269%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e179272%_)
                                                     '()))
                                         (gx#stx-source _%stx179237%_))
                                        (_%E179240179252%_)))))
                              (_%E179240179252%_))))
                      (_%E179240179252%_)))))
          (_%E179239179274%_))))
    (define gx#core-expand-call%
      (lambda (_%stx179131%_)
        (letrec ((_%expand-runtime-call179133%_
                  (lambda (_%rator-expr179234%_ _%args179235%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons*
                      '%#call
                      _%rator-expr179234%_
                      (gx#stx-map1 gx#core-expand-expression _%args179235%_))
                     (gx#stx-source _%stx179131%_)))))
          (let* ((_%e179134179144%_ _%stx179131%_)
                 (_%E179136179148%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e179134179144%_)))
                 (_%E179135179230%_
                  (lambda ()
                    (if (gx#stx-pair? _%e179134179144%_)
                        (let ((_%e179137179152%_
                               (gx#syntax-e _%e179134179144%_)))
                          (let ((_%hd179138179155%_ (##car _%e179137179152%_))
                                (_%tl179139179157%_ (##cdr _%e179137179152%_)))
                            (if (gx#stx-pair? _%tl179139179157%_)
                                (let ((_%e179140179160%_
                                       (gx#syntax-e _%tl179139179157%_)))
                                  (let ((_%hd179141179163%_
                                         (##car _%e179140179160%_))
                                        (_%tl179142179165%_
                                         (##cdr _%e179140179160%_)))
                                    (let* ((_%rator179168%_ _%hd179141179163%_)
                                           (_%args179170%_ _%tl179142179165%_))
                                      (if (gx#stx-list? _%args179170%_)
                                          (let* ((_%rator-expr179172%_
                                                  (gx#core-expand-expression
                                                   _%rator179168%_))
                                                 (_%e179173179183%_
                                                  _%rator-expr179172%_)
                                                 (_%E179175179187%_
                                                  (lambda ()
                                                    (_%expand-runtime-call179133%_
                                                     _%rator-expr179172%_
                                                     _%args179170%_)))
                                                 (_%E179174179226%_
                                                  (lambda ()
                                                    (if (gx#stx-pair?
                                                         _%e179173179183%_)
                                                        (let ((_%e179176179191%_
                                                               (gx#syntax-e
                                                                _%e179173179183%_)))
                                                          (let ((_%hd179177179194%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e179176179191%_))
                        (_%tl179178179196%_ (##cdr _%e179176179191%_)))
                    (if (and (gx#identifier? _%hd179177179194%_)
                             (gx#core-identifier=? _%hd179177179194%_ '%#ref))
                        (if (gx#stx-pair? _%tl179178179196%_)
                            (let ((_%e179179179199%_
                                   (gx#syntax-e _%tl179178179196%_)))
                              (let ((_%hd179180179202%_
                                     (##car _%e179179179199%_))
                                    (_%tl179181179204%_
                                     (##cdr _%e179179179199%_)))
                                (let ((_%id179207%_ _%hd179180179202%_))
                                  (if (gx#stx-null? _%tl179181179204%_)
                                      (let ((_%$e179209%_
                                             (gx#resolve-identifier__0
                                              _%id179207%_)))
                                        (if _%$e179209%_
                                            ((lambda (_%bind179212%_)
                                               (let _%again179214%_ ((_%bind179216%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%bind179212%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%$e179218%_
                                                        (if (##structure-instance-of?
                                                             _%bind179216%_
                                                             'gx#runtime-binding::t)
                                                            (##unchecked-structure-ref
                                                             _%bind179216%_
                                                             '6
                                                             '#f
                                                             '#f)
                                                            '#f)))
                                                   (if _%$e179218%_
                                                       ((lambda (_%macro179221%_)
                                                          (gx#core-expand-expression
                                                           (gx#stx-wrap-source
                                                            (cons _%macro179221%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%args179170%_)
                    (gx#stx-source _%stx179131%_))))
                _%$e179218%_)
               (if (##structure-direct-instance-of?
                    _%bind179216%_
                    'gx#import-binding::t)
                   (_%again179214%_
                    (##unchecked-structure-ref _%bind179216%_ '5 '#f '#f))
                   (_%expand-runtime-call179133%_
                    _%rator-expr179172%_
                    _%args179170%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%$e179209%_)
                                            (_%expand-runtime-call179133%_
                                             _%rator-expr179172%_
                                             _%args179170%_)))
                                      (_%E179175179187%_)))))
                            (_%E179175179187%_))
                        (_%E179175179187%_))))
                (_%E179175179187%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E179174179226%_))
                                          (_%E179136179148%_)))))
                                (_%E179136179148%_))))
                        (_%E179136179148%_)))))
            (_%E179135179230%_)))))
    (define gx#core-expand-if%
      (lambda (_%stx179064%_)
        (let* ((_%e179065179081%_ _%stx179064%_)
               (_%E179067179085%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e179065179081%_)))
               (_%E179066179127%_
                (lambda ()
                  (if (gx#stx-pair? _%e179065179081%_)
                      (let ((_%e179068179089%_
                             (gx#syntax-e _%e179065179081%_)))
                        (let ((_%hd179069179092%_ (##car _%e179068179089%_))
                              (_%tl179070179094%_ (##cdr _%e179068179089%_)))
                          (if (gx#stx-pair? _%tl179070179094%_)
                              (let ((_%e179071179097%_
                                     (gx#syntax-e _%tl179070179094%_)))
                                (let ((_%hd179072179100%_
                                       (##car _%e179071179097%_))
                                      (_%tl179073179102%_
                                       (##cdr _%e179071179097%_)))
                                  (let ((_%test179105%_ _%hd179072179100%_))
                                    (if (gx#stx-pair? _%tl179073179102%_)
                                        (let ((_%e179074179107%_
                                               (gx#syntax-e
                                                _%tl179073179102%_)))
                                          (let ((_%hd179075179110%_
                                                 (##car _%e179074179107%_))
                                                (_%tl179076179112%_
                                                 (##cdr _%e179074179107%_)))
                                            (let ((_%K179115%_
                                                   _%hd179075179110%_))
                                              (if (gx#stx-pair?
                                                   _%tl179076179112%_)
                                                  (let ((_%e179077179117%_
                                                         (gx#syntax-e
                                                          _%tl179076179112%_)))
                                                    (let ((_%hd179078179120%_
                                                           (##car _%e179077179117%_))
                                                          (_%tl179079179122%_
                                                           (##cdr _%e179077179117%_)))
                                                      (let ((_%E179125%_
                                                             _%hd179078179120%_))
                                                        (if (gx#stx-null?
                                                             _%tl179079179122%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test179105%_)
                                 (cons (gx#core-expand-expression _%K179115%_)
                                       (cons (gx#core-expand-expression
                                              _%E179125%_)
                                             '()))))
                     (gx#stx-source _%stx179064%_))
                    (_%E179067179085%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E179067179085%_)))))
                                        (_%E179067179085%_)))))
                              (_%E179067179085%_))))
                      (_%E179067179085%_)))))
          (_%E179066179127%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx179023%_)
        (let* ((_%e179024179034%_ _%stx179023%_)
               (_%E179026179038%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e179024179034%_)))
               (_%E179025179060%_
                (lambda ()
                  (if (gx#stx-pair? _%e179024179034%_)
                      (let ((_%e179027179042%_
                             (gx#syntax-e _%e179024179034%_)))
                        (let ((_%hd179028179045%_ (##car _%e179027179042%_))
                              (_%tl179029179047%_ (##cdr _%e179027179042%_)))
                          (if (gx#stx-pair? _%tl179029179047%_)
                              (let ((_%e179030179050%_
                                     (gx#syntax-e _%tl179029179047%_)))
                                (let ((_%hd179031179053%_
                                       (##car _%e179030179050%_))
                                      (_%tl179032179055%_
                                       (##cdr _%e179030179050%_)))
                                  (let ((_%id179058%_ _%hd179031179053%_))
                                    (if (gx#stx-null? _%tl179032179055%_)
                                        (if (gx#identifier? _%id179058%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id179058%_
                                                          _%stx179023%_)
                                                         '()))
                                             (gx#stx-source _%stx179023%_))
                                            (_%E179026179038%_))
                                        (_%E179026179038%_)))))
                              (_%E179026179038%_))))
                      (_%E179026179038%_)))))
          (_%E179025179060%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx178969%_)
        (let* ((_%e178970178983%_ _%stx178969%_)
               (_%E178972178987%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e178970178983%_)))
               (_%E178971179019%_
                (lambda ()
                  (if (gx#stx-pair? _%e178970178983%_)
                      (let ((_%e178973178991%_
                             (gx#syntax-e _%e178970178983%_)))
                        (let ((_%hd178974178994%_ (##car _%e178973178991%_))
                              (_%tl178975178996%_ (##cdr _%e178973178991%_)))
                          (if (gx#stx-pair? _%tl178975178996%_)
                              (let ((_%e178976178999%_
                                     (gx#syntax-e _%tl178975178996%_)))
                                (let ((_%hd178977179002%_
                                       (##car _%e178976178999%_))
                                      (_%tl178978179004%_
                                       (##cdr _%e178976178999%_)))
                                  (let ((_%id179007%_ _%hd178977179002%_))
                                    (if (gx#stx-pair? _%tl178978179004%_)
                                        (let ((_%e178979179009%_
                                               (gx#syntax-e
                                                _%tl178978179004%_)))
                                          (let ((_%hd178980179012%_
                                                 (##car _%e178979179009%_))
                                                (_%tl178981179014%_
                                                 (##cdr _%e178979179009%_)))
                                            (let ((_%expr179017%_
                                                   _%hd178980179012%_))
                                              (if (gx#stx-null?
                                                   _%tl178981179014%_)
                                                  (if (gx#identifier?
                                                       _%id179007%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id179007%_
                            _%stx178969%_)
                           (cons (gx#core-expand-expression _%expr179017%_)
                                 '())))
               (gx#stx-source _%stx178969%_))
              (_%E178972178987%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E178972178987%_)))))
                                        (_%E178972178987%_)))))
                              (_%E178972178987%_))))
                      (_%E178972178987%_)))))
          (_%E178971179019%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx178814%_)
        (letrec ((_%generate178816%_
                  (lambda (_%body178846%_)
                    (let _%lp178848%_ ((_%rest178850%_ _%body178846%_)
                                       (_%ns178851%_
                                        (gx#core-context-namespace__0))
                                       (_%r178852%_ '()))
                      (let* ((_%e178853178868%_ _%rest178850%_)
                             (_%E178866178872%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e178853178868%_)))
                             (_%E178862178876%_
                              (lambda ()
                                (if (gx#stx-null? _%e178853178868%_)
                                    (reverse _%r178852%_)
                                    (_%E178866178872%_))))
                             (_%E178855178933%_
                              (lambda ()
                                (if (gx#stx-pair? _%e178853178868%_)
                                    (let ((_%e178863178880%_
                                           (gx#syntax-e _%e178853178868%_)))
                                      (let ((_%hd178864178883%_
                                             (##car _%e178863178880%_))
                                            (_%tl178865178885%_
                                             (##cdr _%e178863178880%_)))
                                        (let* ((_%hd178888%_
                                                _%hd178864178883%_)
                                               (_%rest178890%_
                                                _%tl178865178885%_))
                                          (if (gx#identifier? _%hd178888%_)
                                              (_%lp178848%_
                                               _%rest178890%_
                                               _%ns178851%_
                                               (cons (cons _%hd178888%_
                                                           (cons (if _%ns178851%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd178888%_
                              _%ns178851%_
                              '"#"
                              _%hd178888%_)
                             _%hd178888%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r178852%_))
                                              (let* ((_%e178891178901%_
                                                      _%hd178888%_)
                                                     (_%E178893178905%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%e178891178901%_)))
                                                     (_%E178892178929%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e178891178901%_)
                                                            (let ((_%e178894178909%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e178891178901%_)))
                      (let ((_%hd178895178912%_ (##car _%e178894178909%_))
                            (_%tl178896178914%_ (##cdr _%e178894178909%_)))
                        (let ((_%id178917%_ _%hd178895178912%_))
                          (if (gx#stx-pair? _%tl178896178914%_)
                              (let ((_%e178897178919%_
                                     (gx#syntax-e _%tl178896178914%_)))
                                (let ((_%hd178898178922%_
                                       (##car _%e178897178919%_))
                                      (_%tl178899178924%_
                                       (##cdr _%e178897178919%_)))
                                  (let ((_%eid178927%_ _%hd178898178922%_))
                                    (if (gx#stx-null? _%tl178899178924%_)
                                        (if (and (gx#identifier? _%id178917%_)
                                                 (gx#identifier?
                                                  _%eid178927%_))
                                            (_%lp178848%_
                                             _%rest178890%_
                                             _%ns178851%_
                                             (cons (cons _%id178917%_
                                                         (cons _%eid178927%_
                                                               '()))
                                                   _%r178852%_))
                                            (_%E178893178905%_))
                                        (_%E178893178905%_)))))
                              (_%E178893178905%_)))))
                    (_%E178893178905%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E178892178929%_))))))
                                    (_%E178862178876%_))))
                             (_%E178854178965%_
                              (lambda ()
                                (if (gx#stx-pair? _%e178853178868%_)
                                    (let ((_%e178856178937%_
                                           (gx#syntax-e _%e178853178868%_)))
                                      (let ((_%hd178857178940%_
                                             (##car _%e178856178937%_))
                                            (_%tl178858178942%_
                                             (##cdr _%e178856178937%_)))
                                        (if (eq? (gx#stx-e _%hd178857178940%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl178858178942%_)
                                                (let ((_%e178859178945%_
                                                       (gx#syntax-e
                                                        _%tl178858178942%_)))
                                                  (let ((_%hd178860178948%_
                                                         (##car _%e178859178945%_))
                                                        (_%tl178861178950%_
                                                         (##cdr _%e178859178945%_)))
                                                    (let* ((_%ns178953%_
                                                            _%hd178860178948%_)
                                                           (_%rest178955%_
                                                            _%tl178861178950%_)
                                                           (_%ns178963%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns178953%_)
                        (symbol->string (gx#stx-e _%ns178953%_))
                        (if (or (gx#stx-string? _%ns178953%_)
                                (gx#stx-false? _%ns178953%_))
                            (gx#stx-e _%ns178953%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx178814%_
                             _%ns178953%_)))))
              (_%lp178848%_ _%rest178955%_ _%ns178963%_ _%r178852%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E178855178933%_))
                                            (_%E178855178933%_))))
                                    (_%E178855178933%_)))))
                        (_%E178854178965%_))))))
          (let* ((_%e178817178824%_ _%stx178814%_)
                 (_%E178819178828%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e178817178824%_)))
                 (_%E178818178842%_
                  (lambda ()
                    (if (gx#stx-pair? _%e178817178824%_)
                        (let ((_%e178820178832%_
                               (gx#syntax-e _%e178817178824%_)))
                          (let ((_%hd178821178835%_ (##car _%e178820178832%_))
                                (_%tl178822178837%_ (##cdr _%e178820178832%_)))
                            (let ((_%body178840%_ _%tl178822178837%_))
                              (if (gx#stx-list? _%body178840%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate178816%_ _%body178840%_))
                                  (_%E178819178828%_)))))
                        (_%E178819178828%_)))))
            (_%E178818178842%_)))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx178771%_)
        (let* ((_%e178772178782%_ _%stx178771%_)
               (_%E178774178786%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e178772178782%_)))
               (_%E178773178810%_
                (lambda ()
                  (if (gx#stx-pair? _%e178772178782%_)
                      (let ((_%e178775178790%_
                             (gx#syntax-e _%e178772178782%_)))
                        (let ((_%hd178776178793%_ (##car _%e178775178790%_))
                              (_%tl178777178795%_ (##cdr _%e178775178790%_)))
                          (if (gx#stx-pair? _%tl178777178795%_)
                              (let ((_%e178778178798%_
                                     (gx#syntax-e _%tl178777178795%_)))
                                (let ((_%hd178779178801%_
                                       (##car _%e178778178798%_))
                                      (_%tl178780178803%_
                                       (##cdr _%e178778178798%_)))
                                  (let* ((_%hd178806%_ _%hd178779178801%_)
                                         (_%body178808%_ _%tl178780178803%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd178806%_)
                                             (gx#stx-list? _%body178808%_)
                                             (not (gx#stx-null?
                                                   _%body178808%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd178806%_)
                                         _%body178808%_)
                                        (_%E178774178786%_)))))
                              (_%E178774178786%_))))
                      (_%E178774178786%_)))))
          (_%E178773178810%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx178707%_)
        (letrec ((_%generate178709%_
                  (lambda (_%clause178739%_)
                    (let* ((_%e178740178747%_ _%clause178739%_)
                           (_%E178742178751%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx178707%_
                               _%clause178739%_)))
                           (_%E178741178767%_
                            (lambda ()
                              (if (gx#stx-pair? _%e178740178747%_)
                                  (let ((_%e178743178755%_
                                         (gx#syntax-e _%e178740178747%_)))
                                    (let ((_%hd178744178758%_
                                           (##car _%e178743178755%_))
                                          (_%tl178745178760%_
                                           (##cdr _%e178743178755%_)))
                                      (let* ((_%hd178763%_ _%hd178744178758%_)
                                             (_%body178765%_
                                              _%tl178745178760%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd178763%_)
                                                 (gx#stx-list? _%body178765%_)
                                                 (not (gx#stx-null?
                                                       _%body178765%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd178763%_)
                                                   _%body178765%_)
                                             (gx#stx-source _%clause178739%_))
                                            (_%E178742178751%_)))))
                                  (_%E178742178751%_)))))
                      (_%E178741178767%_)))))
          (let* ((_%e178710178717%_ _%stx178707%_)
                 (_%E178712178721%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e178710178717%_)))
                 (_%E178711178735%_
                  (lambda ()
                    (if (gx#stx-pair? _%e178710178717%_)
                        (let ((_%e178713178725%_
                               (gx#syntax-e _%e178710178717%_)))
                          (let ((_%hd178714178728%_ (##car _%e178713178725%_))
                                (_%tl178715178730%_ (##cdr _%e178713178725%_)))
                            (let ((_%clauses178733%_ _%tl178715178730%_))
                              (if (gx#stx-list? _%clauses178733%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate178709%_
                                    _%clauses178733%_))
                                  (_%E178712178721%_)))))
                        (_%E178712178721%_)))))
            (_%E178711178735%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx178608%_ _%form178609%_)
        (letrec ((_%generate178611%_
                  (lambda (_%bind178654%_)
                    (let* ((_%e178655178665%_ _%bind178654%_)
                           (_%E178657178669%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx178608%_
                               _%bind178654%_)))
                           (_%E178656178693%_
                            (lambda ()
                              (if (gx#stx-pair? _%e178655178665%_)
                                  (let ((_%e178658178673%_
                                         (gx#syntax-e _%e178655178665%_)))
                                    (let ((_%hd178659178676%_
                                           (##car _%e178658178673%_))
                                          (_%tl178660178678%_
                                           (##cdr _%e178658178673%_)))
                                      (let ((_%ids178681%_ _%hd178659178676%_))
                                        (if (gx#stx-pair? _%tl178660178678%_)
                                            (let ((_%e178661178683%_
                                                   (gx#syntax-e
                                                    _%tl178660178678%_)))
                                              (let ((_%hd178662178686%_
                                                     (##car _%e178661178683%_))
                                                    (_%tl178663178688%_
                                                     (##cdr _%e178661178683%_)))
                                                (let ((_%expr178691%_
                                                       _%hd178662178686%_))
                                                  (if (gx#stx-null?
                                                       _%tl178663178688%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids178681%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids178681%_)
                        (cons _%expr178691%_ '()))
                  (_%E178657178669%_))
              (_%E178657178669%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E178657178669%_)))))
                                  (_%E178657178669%_)))))
                      (_%E178656178693%_)))))
          (let* ((_%e178612178622%_ _%stx178608%_)
                 (_%E178614178626%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e178612178622%_)))
                 (_%E178613178650%_
                  (lambda ()
                    (if (gx#stx-pair? _%e178612178622%_)
                        (let ((_%e178615178630%_
                               (gx#syntax-e _%e178612178622%_)))
                          (let ((_%hd178616178633%_ (##car _%e178615178630%_))
                                (_%tl178617178635%_ (##cdr _%e178615178630%_)))
                            (if (gx#stx-pair? _%tl178617178635%_)
                                (let ((_%e178618178638%_
                                       (gx#syntax-e _%tl178617178635%_)))
                                  (let ((_%hd178619178641%_
                                         (##car _%e178618178638%_))
                                        (_%tl178620178643%_
                                         (##cdr _%e178618178638%_)))
                                    (let* ((_%hd178646%_ _%hd178619178641%_)
                                           (_%body178648%_ _%tl178620178643%_))
                                      (if (and (gx#stx-list? _%hd178646%_)
                                               (gx#stx-list? _%body178648%_)
                                               (not (gx#stx-null?
                                                     _%body178648%_)))
                                          (gx#core-cons*
                                           _%form178609%_
                                           (gx#stx-map1
                                            _%generate178611%_
                                            _%hd178646%_)
                                           _%body178648%_)
                                          (_%E178614178626%_)))))
                                (_%E178614178626%_))))
                        (_%E178614178626%_)))))
            (_%E178613178650%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx178700%_)
        (let ((_%form178702%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx178700%_ _%form178702%_))))
    (define gx#macro-expand-let-values
      (lambda _g181244_
        (let ((_g181245_ (##length _g181244_)))
          (cond ((##fx= _g181245_ 1)
                 (apply gx#macro-expand-let-values__0 _g181244_))
                ((##fx= _g181245_ 2)
                 (apply gx#macro-expand-let-values__% _g181244_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g181244_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx178605%_)
        (gx#macro-expand-let-values__% _%stx178605%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx178603%_)
        (gx#macro-expand-let-values__% _%stx178603%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx178494%_)
        (let* ((_%e178495178521%_ _%stx178494%_)
               (_%E178507178525%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e178495178521%_)))
               (_%E178497178567%_
                (lambda ()
                  (if (gx#stx-pair? _%e178495178521%_)
                      (let ((_%e178508178529%_
                             (gx#syntax-e _%e178495178521%_)))
                        (let ((_%hd178509178532%_ (##car _%e178508178529%_))
                              (_%tl178510178534%_ (##cdr _%e178508178529%_)))
                          (if (gx#stx-pair? _%tl178510178534%_)
                              (let ((_%e178511178537%_
                                     (gx#syntax-e _%tl178510178534%_)))
                                (let ((_%hd178512178540%_
                                       (##car _%e178511178537%_))
                                      (_%tl178513178542%_
                                       (##cdr _%e178511178537%_)))
                                  (let ((_%test178545%_ _%hd178512178540%_))
                                    (if (gx#stx-pair? _%tl178513178542%_)
                                        (let ((_%e178514178547%_
                                               (gx#syntax-e
                                                _%tl178513178542%_)))
                                          (let ((_%hd178515178550%_
                                                 (##car _%e178514178547%_))
                                                (_%tl178516178552%_
                                                 (##cdr _%e178514178547%_)))
                                            (let ((_%K178555%_
                                                   _%hd178515178550%_))
                                              (if (gx#stx-pair?
                                                   _%tl178516178552%_)
                                                  (let ((_%e178517178557%_
                                                         (gx#syntax-e
                                                          _%tl178516178552%_)))
                                                    (let ((_%hd178518178560%_
                                                           (##car _%e178517178557%_))
                                                          (_%tl178519178562%_
                                                           (##cdr _%e178517178557%_)))
                                                      (let ((_%E178565%_
                                                             _%hd178518178560%_))
                                                        (if (gx#stx-null?
                                                             _%tl178519178562%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test178545%_
                                                             _%K178555%_
                                                             _%E178565%_)
                                                            (_%E178507178525%_)))))
                                                  (_%E178507178525%_)))))
                                        (_%E178507178525%_)))))
                              (_%E178507178525%_))))
                      (_%E178507178525%_))))
               (_%E178496178599%_
                (lambda ()
                  (if (gx#stx-pair? _%e178495178521%_)
                      (let ((_%e178498178571%_
                             (gx#syntax-e _%e178495178521%_)))
                        (let ((_%hd178499178574%_ (##car _%e178498178571%_))
                              (_%tl178500178576%_ (##cdr _%e178498178571%_)))
                          (if (gx#stx-pair? _%tl178500178576%_)
                              (let ((_%e178501178579%_
                                     (gx#syntax-e _%tl178500178576%_)))
                                (let ((_%hd178502178582%_
                                       (##car _%e178501178579%_))
                                      (_%tl178503178584%_
                                       (##cdr _%e178501178579%_)))
                                  (let ((_%test178587%_ _%hd178502178582%_))
                                    (if (gx#stx-pair? _%tl178503178584%_)
                                        (let ((_%e178504178589%_
                                               (gx#syntax-e
                                                _%tl178503178584%_)))
                                          (let ((_%hd178505178592%_
                                                 (##car _%e178504178589%_))
                                                (_%tl178506178594%_
                                                 (##cdr _%e178504178589%_)))
                                            (let ((_%K178597%_
                                                   _%hd178505178592%_))
                                              (if (gx#stx-null?
                                                   _%tl178506178594%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test178587%_
                                                   _%K178597%_
                                                   '#!void)
                                                  (_%E178497178567%_)))))
                                        (_%E178497178567%_)))))
                              (_%E178497178567%_))))
                      (_%E178497178567%_)))))
          (_%E178496178599%_))))
    (define gx#free-identifier=?
      (lambda (_%xid178479%_ _%yid178480%_)
        (let ((_%xe178482%_ (gx#resolve-identifier__0 _%xid178479%_))
              (_%ye178483%_ (gx#resolve-identifier__0 _%yid178480%_)))
          (if (and _%xe178482%_ _%ye178483%_)
              (let ((_%$e178486%_ (eq? _%xe178482%_ _%ye178483%_)))
                (if _%$e178486%_
                    _%$e178486%_
                    (if (##structure-instance-of? _%xe178482%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye178483%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe178482%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye178483%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe178482%_ _%ye178483%_)
                  '#f
                  (gx#stx-eq? _%xid178479%_ _%yid178480%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid178460%_ _%yid178461%_)
        (letrec ((_%context178463%_
                  (lambda (_%e178477%_)
                    (if (##structure-direct-instance-of?
                         _%e178477%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e178477%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks178464%_
                  (lambda (_%e178472%_)
                    (if (symbol? _%e178472%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e178472%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e178472%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e178472%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap178465%_
                  (lambda (_%e178470%_)
                    (if (symbol? _%e178470%_)
                        _%e178470%_
                        (gx#syntax-local-unwrap _%e178470%_)))))
          (let ((_%x178467%_ (_%unwrap178465%_ _%xid178460%_))
                (_%y178468%_ (_%unwrap178465%_ _%yid178461%_)))
            (if (gx#stx-eq? _%x178467%_ _%y178468%_)
                (if (eq? (_%context178463%_ _%x178467%_)
                         (_%context178463%_ _%y178468%_))
                    (equal? (_%marks178464%_ _%x178467%_)
                            (_%marks178464%_ _%y178468%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx178458%_)
        (if (gx#identifier? _%stx178458%_)
            (gx#core-identifier=? _%stx178458%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx178456%_)
        (if (gx#identifier? _%stx178456%_)
            (gx#core-identifier=? _%stx178456%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx178399%_ _%where178400%_)
        (let _%lp178402%_ ((_%rest178404%_ (gx#syntax->list _%stx178399%_)))
          (let* ((_%rest178405178413%_ _%rest178404%_)
                 (_%else178407178421%_ (lambda () '#t))
                 (_%K178409178434%_
                  (lambda (_%rest178424%_ _%hd178425%_)
                    (if (gx#identifier? _%hd178425%_)
                        (if (__find (lambda (_%g178427178429%_)
                                      (gx#bound-identifier=?
                                       _%g178427178429%_
                                       _%hd178425%_))
                                    _%rest178424%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where178400%_
                             _%hd178425%_)
                            (_%lp178402%_ _%rest178424%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where178400%_
                         _%hd178425%_)))))
            (if (pair? _%rest178405178413%_)
                (let ((_%hd178410178437%_ (##car _%rest178405178413%_))
                      (_%tl178411178439%_ (##cdr _%rest178405178413%_)))
                  (let* ((_%hd178442%_ _%hd178410178437%_)
                         (_%rest178444%_ _%tl178411178439%_))
                    (_%K178409178434%_ _%rest178444%_ _%hd178442%_)))
                (_%else178407178421%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx178449%_)
        (let ((_%where178451%_ _%stx178449%_))
          (gx#check-duplicate-identifiers__% _%stx178449%_ _%where178451%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g181246_
        (let ((_g181247_ (##length _g181246_)))
          (cond ((##fx= _g181247_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g181246_))
                ((##fx= _g181247_ 2)
                 (apply gx#check-duplicate-identifiers__% _g181246_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g181246_))))))
    (define gx#core-bind-values?
      (lambda (_%stx178391%_)
        (gx#stx-andmap
         (lambda (_%x178393%_)
           (let ((_%$e178395%_ (gx#identifier? _%x178393%_)))
             (if _%$e178395%_ _%$e178395%_ (gx#stx-false? _%x178393%_))))
         _%stx178391%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx178355%_ _%rebind?178356%_ _%phi178357%_ _%ctx178358%_)
        (gx#stx-for-each1
         (lambda (_%id178360%_)
           (if (gx#identifier? _%id178360%_)
               (gx#core-bind-runtime!__%
                _%id178360%_
                _%rebind?178356%_
                _%phi178357%_
                _%ctx178358%_)
               '#!void))
         _%stx178355%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx178365%_)
        (let* ((_%rebind?178367%_ '#f)
               (_%phi178369%_ (gx#current-expander-phi))
               (_%ctx178371%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx178365%_
           _%rebind?178367%_
           _%phi178369%_
           _%ctx178371%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx178373%_ _%rebind?178374%_)
        (let* ((_%phi178376%_ (gx#current-expander-phi))
               (_%ctx178378%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx178373%_
           _%rebind?178374%_
           _%phi178376%_
           _%ctx178378%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx178380%_ _%rebind?178381%_ _%phi178382%_)
        (let ((_%ctx178384%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx178380%_
           _%rebind?178381%_
           _%phi178382%_
           _%ctx178384%_))))
    (define gx#core-bind-values!
      (lambda _g181248_
        (let ((_g181249_ (##length _g181248_)))
          (cond ((##fx= _g181249_ 1) (apply gx#core-bind-values!__0 _g181248_))
                ((##fx= _g181249_ 2) (apply gx#core-bind-values!__1 _g181248_))
                ((##fx= _g181249_ 3) (apply gx#core-bind-values!__2 _g181248_))
                ((##fx= _g181249_ 4) (apply gx#core-bind-values!__% _g181248_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g181248_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx178350%_)
        (gx#stx-map1
         (lambda (_%x178352%_)
           (if (gx#identifier? _%x178352%_)
               (gx#core-quote-syntax__0 _%x178352%_)
               '#f))
         _%stx178350%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx178343%_)
        (if (gx#identifier? _%stx178343%_)
            (let* ((_%bind178345%_ (gx#resolve-identifier__0 _%stx178343%_))
                   (_%$e178347%_ (not _%bind178345%_)))
              (if _%$e178347%_
                  _%$e178347%_
                  (##structure-instance-of?
                   _%bind178345%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id178332%_ _%form178333%_)
        (let ((_%bind178335%_ (gx#resolve-identifier__0 _%id178332%_)))
          (if (##structure-instance-of? _%bind178335%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id178332%_)
              (if (not _%bind178335%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id178332%_)))
                      (gx#core-quote-syntax__0 _%id178332%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form178333%_
                       _%id178332%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form178333%_
                   _%id178332%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id178287%_ _%rebind?178288%_ _%phi178289%_ _%ctx178290%_)
        (let* ((_%key178292%_ (gx#core-identifier-key _%id178287%_))
               (_%eid178294%_
                (gx#make-binding-id__%
                 _%key178292%_
                 '#f
                 _%phi178289%_
                 _%ctx178290%_))
               (_%bind178300%_
                (if (##structure-instance-of?
                     _%ctx178290%_
                     'gx#module-context::t)
                    (let ((__obj181225
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
                       __obj181225
                       _%eid178294%_
                       _%key178292%_
                       _%phi178289%_
                       _%ctx178290%_)
                      __obj181225)
                    (if (##structure-instance-of?
                         _%ctx178290%_
                         'gx#top-context::t)
                        (let ((__obj181224
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj181224
                           _%eid178294%_
                           _%key178292%_
                           _%phi178289%_)
                          __obj181224)
                        (if (##structure-instance-of?
                             _%ctx178290%_
                             'gx#local-context::t)
                            (let ((__obj181223
                                   (##structure
                                    gx#local-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#local-binding:::init!
                               __obj181223
                               _%eid178294%_
                               _%key178292%_
                               _%phi178289%_)
                              __obj181223)
                            (let ((__obj181222
                                   (##structure
                                    gx#runtime-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#runtime-binding:::init!
                               __obj181222
                               _%eid178294%_
                               _%key178292%_
                               _%phi178289%_)
                              __obj181222))))))
          (gx#bind-identifier!__%
           _%id178287%_
           _%bind178300%_
           _%rebind?178288%_
           _%phi178289%_
           _%ctx178290%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id178306%_)
        (let* ((_%rebind?178308%_ '#f)
               (_%phi178310%_ (gx#current-expander-phi))
               (_%ctx178312%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id178306%_
           _%rebind?178308%_
           _%phi178310%_
           _%ctx178312%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id178314%_ _%rebind?178315%_)
        (let* ((_%phi178317%_ (gx#current-expander-phi))
               (_%ctx178319%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id178314%_
           _%rebind?178315%_
           _%phi178317%_
           _%ctx178319%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id178321%_ _%rebind?178322%_ _%phi178323%_)
        (let ((_%ctx178325%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id178321%_
           _%rebind?178322%_
           _%phi178323%_
           _%ctx178325%_))))
    (define gx#core-bind-runtime!
      (lambda _g181250_
        (let ((_g181251_ (##length _g181250_)))
          (cond ((##fx= _g181251_ 1)
                 (apply gx#core-bind-runtime!__0 _g181250_))
                ((##fx= _g181251_ 2)
                 (apply gx#core-bind-runtime!__1 _g181250_))
                ((##fx= _g181251_ 3)
                 (apply gx#core-bind-runtime!__2 _g181250_))
                ((##fx= _g181251_ 4)
                 (apply gx#core-bind-runtime!__% _g181250_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g181250_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id178239%_
               _%eid178240%_
               _%rebind?178241%_
               _%phi178242%_
               _%ctx178243%_)
        (let* ((_%key178245%_ (gx#core-identifier-key _%id178239%_))
               (_%bind178250%_
                (if (##structure-instance-of?
                     _%ctx178243%_
                     'gx#module-context::t)
                    (let ((__obj181228
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
                       __obj181228
                       _%eid178240%_
                       _%key178245%_
                       _%phi178242%_
                       _%ctx178243%_)
                      __obj181228)
                    (if (##structure-instance-of?
                         _%ctx178243%_
                         'gx#top-context::t)
                        (let ((__obj181227
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj181227
                           _%eid178240%_
                           _%key178245%_
                           _%phi178242%_)
                          __obj181227)
                        (let ((__obj181226
                               (##structure
                                gx#runtime-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#runtime-binding:::init!
                           __obj181226
                           _%eid178240%_
                           _%key178245%_
                           _%phi178242%_)
                          __obj181226)))))
          (gx#bind-identifier!__%
           _%id178239%_
           _%bind178250%_
           _%rebind?178241%_
           _%phi178242%_
           _%ctx178243%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id178256%_ _%eid178257%_)
        (let* ((_%rebind?178259%_ '#f)
               (_%phi178261%_ (gx#current-expander-phi))
               (_%ctx178263%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id178256%_
           _%eid178257%_
           _%rebind?178259%_
           _%phi178261%_
           _%ctx178263%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id178265%_ _%eid178266%_ _%rebind?178267%_)
        (let* ((_%phi178269%_ (gx#current-expander-phi))
               (_%ctx178271%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id178265%_
           _%eid178266%_
           _%rebind?178267%_
           _%phi178269%_
           _%ctx178271%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id178273%_ _%eid178274%_ _%rebind?178275%_ _%phi178276%_)
        (let ((_%ctx178278%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id178273%_
           _%eid178274%_
           _%rebind?178275%_
           _%phi178276%_
           _%ctx178278%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g181252_
        (let ((_g181253_ (##length _g181252_)))
          (cond ((##fx= _g181253_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g181252_))
                ((##fx= _g181253_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g181252_))
                ((##fx= _g181253_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g181252_))
                ((##fx= _g181253_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g181252_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g181252_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id178199%_
               _%eid178200%_
               _%rebind?178201%_
               _%phi178202%_
               _%ctx178203%_)
        (gx#bind-identifier!__%
         _%id178199%_
         (let ((__obj181229
                (##structure gx#extern-binding::t '#f '#f '#f '#f '#f '#f)))
           (gx#extern-binding:::init!
            __obj181229
            _%eid178200%_
            (gx#core-identifier-key _%id178199%_)
            _%phi178202%_)
           __obj181229)
         _%rebind?178201%_
         _%phi178202%_
         _%ctx178203%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id178208%_ _%eid178209%_)
        (let* ((_%rebind?178211%_ '#f)
               (_%phi178213%_ (gx#current-expander-phi))
               (_%ctx178215%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id178208%_
           _%eid178209%_
           _%rebind?178211%_
           _%phi178213%_
           _%ctx178215%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id178217%_ _%eid178218%_ _%rebind?178219%_)
        (let* ((_%phi178221%_ (gx#current-expander-phi))
               (_%ctx178223%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id178217%_
           _%eid178218%_
           _%rebind?178219%_
           _%phi178221%_
           _%ctx178223%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id178225%_ _%eid178226%_ _%rebind?178227%_ _%phi178228%_)
        (let ((_%ctx178230%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id178225%_
           _%eid178226%_
           _%rebind?178227%_
           _%phi178228%_
           _%ctx178230%_))))
    (define gx#core-bind-extern!
      (lambda _g181254_
        (let ((_g181255_ (##length _g181254_)))
          (cond ((##fx= _g181255_ 2) (apply gx#core-bind-extern!__0 _g181254_))
                ((##fx= _g181255_ 3) (apply gx#core-bind-extern!__1 _g181254_))
                ((##fx= _g181255_ 4) (apply gx#core-bind-extern!__2 _g181254_))
                ((##fx= _g181255_ 5) (apply gx#core-bind-extern!__% _g181254_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g181254_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id178153%_
               _%e178154%_
               _%rebind?178155%_
               _%phi178156%_
               _%ctx178157%_)
        (gx#bind-identifier!__%
         _%id178153%_
         (let ((_%key178162%_ (gx#core-identifier-key _%id178153%_))
               (_%e178163%_
                (if (or (##structure-instance-of? _%e178154%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e178154%_
                         'gx#expander-context::t))
                    _%e178154%_
                    (##structure
                     gx#user-expander::t
                     _%e178154%_
                     _%ctx178157%_
                     _%phi178156%_))))
           (let ((__obj181230
                  (##structure gx#syntax-binding::t '#f '#f '#f '#f '#f)))
             (gx#syntax-binding:::init!
              __obj181230
              (gx#make-binding-id__%
               _%key178162%_
               '#t
               _%phi178156%_
               _%ctx178157%_)
              _%key178162%_
              _%phi178156%_
              _%e178163%_)
             __obj181230))
         _%rebind?178155%_
         _%phi178156%_
         _%ctx178157%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id178168%_ _%e178169%_)
        (let* ((_%rebind?178171%_ '#f)
               (_%phi178173%_ (gx#current-expander-phi))
               (_%ctx178175%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id178168%_
           _%e178169%_
           _%rebind?178171%_
           _%phi178173%_
           _%ctx178175%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id178177%_ _%e178178%_ _%rebind?178179%_)
        (let* ((_%phi178181%_ (gx#current-expander-phi))
               (_%ctx178183%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id178177%_
           _%e178178%_
           _%rebind?178179%_
           _%phi178181%_
           _%ctx178183%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id178185%_ _%e178186%_ _%rebind?178187%_ _%phi178188%_)
        (let ((_%ctx178190%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id178185%_
           _%e178186%_
           _%rebind?178187%_
           _%phi178188%_
           _%ctx178190%_))))
    (define gx#core-bind-syntax!
      (lambda _g181256_
        (let ((_g181257_ (##length _g181256_)))
          (cond ((##fx= _g181257_ 2) (apply gx#core-bind-syntax!__0 _g181256_))
                ((##fx= _g181257_ 3) (apply gx#core-bind-syntax!__1 _g181256_))
                ((##fx= _g181257_ 4) (apply gx#core-bind-syntax!__2 _g181256_))
                ((##fx= _g181257_ 5) (apply gx#core-bind-syntax!__% _g181256_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g181256_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id178136%_ _%e178137%_ _%rebind?178138%_)
        (gx#core-bind-syntax!__%
         _%id178136%_
         _%e178137%_
         _%rebind?178138%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id178143%_ _%e178144%_)
        (let ((_%rebind?178146%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id178143%_
           _%e178144%_
           _%rebind?178146%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g181258_
        (let ((_g181259_ (##length _g181258_)))
          (cond ((##fx= _g181259_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g181258_))
                ((##fx= _g181259_ 3)
                 (apply gx#core-bind-root-syntax!__% _g181258_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g181258_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id178094%_
               _%alias-id178095%_
               _%rebind?178096%_
               _%phi178097%_
               _%ctx178098%_)
        (gx#bind-identifier!__%
         _%id178094%_
         (let* ((_%key178100%_ (gx#core-identifier-key _%id178094%_))
                (__obj181231
                 (##structure gx#alias-binding::t '#f '#f '#f '#f '#f)))
           (gx#alias-binding:::init!
            __obj181231
            (gx#make-binding-id__%
             _%key178100%_
             '#t
             _%phi178097%_
             _%ctx178098%_)
            _%key178100%_
            _%phi178097%_
            _%alias-id178095%_)
           __obj181231)
         _%rebind?178096%_
         _%phi178097%_
         _%ctx178098%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id178105%_ _%alias-id178106%_)
        (let* ((_%rebind?178108%_ '#f)
               (_%phi178110%_ (gx#current-expander-phi))
               (_%ctx178112%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id178105%_
           _%alias-id178106%_
           _%rebind?178108%_
           _%phi178110%_
           _%ctx178112%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id178114%_ _%alias-id178115%_ _%rebind?178116%_)
        (let* ((_%phi178118%_ (gx#current-expander-phi))
               (_%ctx178120%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id178114%_
           _%alias-id178115%_
           _%rebind?178116%_
           _%phi178118%_
           _%ctx178120%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id178122%_ _%alias-id178123%_ _%rebind?178124%_ _%phi178125%_)
        (let ((_%ctx178127%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id178122%_
           _%alias-id178123%_
           _%rebind?178124%_
           _%phi178125%_
           _%ctx178127%_))))
    (define gx#core-bind-alias!
      (lambda _g181260_
        (let ((_g181261_ (##length _g181260_)))
          (cond ((##fx= _g181261_ 2) (apply gx#core-bind-alias!__0 _g181260_))
                ((##fx= _g181261_ 3) (apply gx#core-bind-alias!__1 _g181260_))
                ((##fx= _g181261_ 4) (apply gx#core-bind-alias!__2 _g181260_))
                ((##fx= _g181261_ 5) (apply gx#core-bind-alias!__% _g181260_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g181260_))))))
    (define gx#make-binding-id__%
      (lambda (_%key178044%_ _%syntax?178045%_ _%phi178046%_ _%ctx178047%_)
        (if (uninterned-symbol? _%key178044%_)
            (##gensym 'L)
            (if (pair? _%key178044%_)
                (gensym (##car _%key178044%_))
                (if (##structure-instance-of? _%ctx178047%_ 'gx#top-context::t)
                    (let ((_%ns178052%_
                           (gx#core-context-namespace__% _%ctx178047%_)))
                      (if (and (fxzero? _%phi178046%_) (not _%syntax?178045%_))
                          (if _%ns178052%_
                              (make-symbol__1 _%ns178052%_ '"#" _%key178044%_)
                              _%key178044%_)
                          (if _%syntax?178045%_
                              (make-symbol__1
                               (let ((_%$e178056%_ _%ns178052%_))
                                 (if _%$e178056%_ _%$e178056%_ '""))
                               '"[:"
                               (number->string _%phi178046%_)
                               '":]#"
                               _%key178044%_)
                              (make-symbol__1
                               (let ((_%$e178060%_ _%ns178052%_))
                                 (if _%$e178060%_ _%$e178060%_ '""))
                               '"["
                               (number->string _%phi178046%_)
                               '"]#"
                               _%key178044%_))))
                    (gensym _%key178044%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key178067%_)
        (let* ((_%syntax?178069%_ '#f)
               (_%phi178071%_ (gx#current-expander-phi))
               (_%ctx178073%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key178067%_
           _%syntax?178069%_
           _%phi178071%_
           _%ctx178073%_))))
    (define gx#make-binding-id__1
      (lambda (_%key178075%_ _%syntax?178076%_)
        (let* ((_%phi178078%_ (gx#current-expander-phi))
               (_%ctx178080%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key178075%_
           _%syntax?178076%_
           _%phi178078%_
           _%ctx178080%_))))
    (define gx#make-binding-id__2
      (lambda (_%key178082%_ _%syntax?178083%_ _%phi178084%_)
        (let ((_%ctx178086%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key178082%_
           _%syntax?178083%_
           _%phi178084%_
           _%ctx178086%_))))
    (define gx#make-binding-id
      (lambda _g181262_
        (let ((_g181263_ (##length _g181262_)))
          (cond ((##fx= _g181263_ 1) (apply gx#make-binding-id__0 _g181262_))
                ((##fx= _g181263_ 2) (apply gx#make-binding-id__1 _g181262_))
                ((##fx= _g181263_ 3) (apply gx#make-binding-id__2 _g181262_))
                ((##fx= _g181263_ 4) (apply gx#make-binding-id__% _g181262_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g181262_))))))))
