(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1783878477)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx188192%_)
        (letrec ((_%expand-special188194%_
                  (lambda (_%hd188196%_ _%K188197%_ _%rest188198%_ _%r188199%_)
                    (_%K188197%_
                     _%rest188198%_
                     (cons (gx#core-expand-top _%hd188196%_) _%r188199%_)))))
          (gx#core-expand-block__0 _%stx188192%_ _%expand-special188194%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx187846%_)
        (letrec ((_%expand-special187848%_
                  (lambda (_%hd187968%_ _%K187969%_ _%rest187970%_ _%r187971%_)
                    (let* ((_%K*187975%_
                            (lambda (_%e187973%_)
                              (_%K187969%_
                               _%rest187970%_
                               (cons _%e187973%_ _%r187971%_))))
                           (_%$%e187976188028%_ _%hd187968%_)
                           (_%$%E188014188032%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e187976188028%_)))
                           (_%$%E188010188074%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e187976188028%_)
                                  (let ((_%$%e188015188036%_
                                         (gx#syntax-e _%$%e187976188028%_)))
                                    (let ((_%$%hd188016188039%_
                                           (##car _%$%e188015188036%_))
                                          (_%$%tl188017188041%_
                                           (##cdr _%$%e188015188036%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd188016188039%_)
                                               (gx#core-identifier=?
                                                _%$%hd188016188039%_
                                                '%#bind-runtime-properties!))
                                          (if (gx#stx-pair?
                                               _%$%tl188017188041%_)
                                              (let ((_%$%e188018188044%_
                                                     (gx#syntax-e
                                                      _%$%tl188017188041%_)))
                                                (let ((_%$%hd188019188047%_
                                                       (##car _%$%e188018188044%_))
                                                      (_%$%tl188020188049%_
                                                       (##cdr _%$%e188018188044%_)))
                                                  (if (gx#stx-pair?
                                                       _%$%hd188019188047%_)
                                                      (let ((_%$%e188024188052%_
                                                             (gx#syntax-e
                                                              _%$%hd188019188047%_)))
                                                        (let ((_%$%hd188025188055%_
                                                               (##car _%$%e188024188052%_))
                                                              (_%$%tl188026188057%_
                                                               (##cdr _%$%e188024188052%_)))
                                                          (let ((_%id188060%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%hd188025188055%_))
                    (if (gx#stx-null? _%$%tl188026188057%_)
                        (if (gx#stx-pair? _%$%tl188020188049%_)
                            (let ((_%$%e188021188062%_
                                   (gx#syntax-e _%$%tl188020188049%_)))
                              (let ((_%$%hd188022188065%_
                                     (##car _%$%e188021188062%_))
                                    (_%$%tl188023188067%_
                                     (##cdr _%$%e188021188062%_)))
                                (let ((_%props188070%_ _%$%hd188022188065%_))
                                  (if (gx#stx-null? _%$%tl188023188067%_)
                                      (let ((_%bind188072%_
                                             (gx#resolve-identifier__0
                                              _%id188060%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind188072%_
                                         _%props188070%_)
                                        (_%K187969%_
                                         _%rest187970%_
                                         _%r187971%_))
                                      (_%$%E188014188032%_)))))
                            (_%$%E188014188032%_))
                        (_%$%E188014188032%_)))))
              (_%$%E188014188032%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E188014188032%_))
                                          (_%$%E188014188032%_))))
                                  (_%$%E188014188032%_))))
                           (_%$%E188006188086%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e187976188028%_)
                                  (let ((_%$%e188011188078%_
                                         (gx#syntax-e _%$%e187976188028%_)))
                                    (let ((_%$%hd188012188081%_
                                           (##car _%$%e188011188078%_))
                                          (_%$%tl188013188083%_
                                           (##cdr _%$%e188011188078%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd188012188081%_)
                                               (gx#core-identifier=?
                                                _%$%hd188012188081%_
                                                '%#define-runtime))
                                          (_%K*187975%_
                                           (gx#core-expand-define-runtime%
                                            _%hd187968%_))
                                          (_%$%E188010188074%_))))
                                  (_%$%E188010188074%_))))
                           (_%$%E188002188098%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e187976188028%_)
                                  (let ((_%$%e188007188090%_
                                         (gx#syntax-e _%$%e187976188028%_)))
                                    (let ((_%$%hd188008188093%_
                                           (##car _%$%e188007188090%_))
                                          (_%$%tl188009188095%_
                                           (##cdr _%$%e188007188090%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd188008188093%_)
                                               (gx#core-identifier=?
                                                _%$%hd188008188093%_
                                                '%#define-alias))
                                          (_%K*187975%_
                                           (gx#core-expand-define-alias%
                                            _%hd187968%_))
                                          (_%$%E188006188086%_))))
                                  (_%$%E188006188086%_))))
                           (_%$%E187992188110%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e187976188028%_)
                                  (let ((_%$%e188003188102%_
                                         (gx#syntax-e _%$%e187976188028%_)))
                                    (let ((_%$%hd188004188105%_
                                           (##car _%$%e188003188102%_))
                                          (_%$%tl188005188107%_
                                           (##cdr _%$%e188003188102%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd188004188105%_)
                                               (gx#core-identifier=?
                                                _%$%hd188004188105%_
                                                '%#define-syntax))
                                          (_%K*187975%_
                                           (gx#core-expand-define-syntax%
                                            _%hd187968%_))
                                          (_%$%E188002188098%_))))
                                  (_%$%E188002188098%_))))
                           (_%$%E187982188142%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e187976188028%_)
                                  (let ((_%$%e187993188114%_
                                         (gx#syntax-e _%$%e187976188028%_)))
                                    (let ((_%$%hd187994188117%_
                                           (##car _%$%e187993188114%_))
                                          (_%$%tl187995188119%_
                                           (##cdr _%$%e187993188114%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd187994188117%_)
                                               (gx#core-identifier=?
                                                _%$%hd187994188117%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl187995188119%_)
                                              (let ((_%$%e187996188122%_
                                                     (gx#syntax-e
                                                      _%$%tl187995188119%_)))
                                                (let ((_%$%hd187997188125%_
                                                       (##car _%$%e187996188122%_))
                                                      (_%$%tl187998188127%_
                                                       (##cdr _%$%e187996188122%_)))
                                                  (let ((_%hd-bind188130%_
                                                         _%$%hd187997188125%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl187998188127%_)
                                                        (let ((_%$%e187999188132%_
                                                               (gx#syntax-e
                                                                _%$%tl187998188127%_)))
                                                          (let ((_%$%hd188000188135%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e187999188132%_))
                        (_%$%tl188001188137%_ (##cdr _%$%e187999188132%_)))
                    (let ((_%expr188140%_ _%$%hd188000188135%_))
                      (if (gx#stx-null? _%$%tl188001188137%_)
                          (if (gx#core-bind-values? _%hd-bind188130%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind188130%_)
                                (_%K*187975%_ _%hd187968%_))
                              (_%$%E187992188110%_))
                          (_%$%E187992188110%_)))))
                (_%$%E187992188110%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E187992188110%_))
                                          (_%$%E187992188110%_))))
                                  (_%$%E187992188110%_))))
                           (_%$%E187978188176%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e187976188028%_)
                                  (let ((_%$%e187983188146%_
                                         (gx#syntax-e _%$%e187976188028%_)))
                                    (let ((_%$%hd187984188149%_
                                           (##car _%$%e187983188146%_))
                                          (_%$%tl187985188151%_
                                           (##cdr _%$%e187983188146%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd187984188149%_)
                                               (gx#core-identifier=?
                                                _%$%hd187984188149%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl187985188151%_)
                                              (let ((_%$%e187986188154%_
                                                     (gx#syntax-e
                                                      _%$%tl187985188151%_)))
                                                (let ((_%$%hd187987188157%_
                                                       (##car _%$%e187986188154%_))
                                                      (_%$%tl187988188159%_
                                                       (##cdr _%$%e187986188154%_)))
                                                  (let ((_%hd-bind188162%_
                                                         _%$%hd187987188157%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl187988188159%_)
                                                        (let ((_%$%e187989188164%_
                                                               (gx#syntax-e
                                                                _%$%tl187988188159%_)))
                                                          (let ((_%$%hd187990188167%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e187989188164%_))
                        (_%$%tl187991188169%_ (##cdr _%$%e187989188164%_)))
                    (let* ((_%expr188172%_ _%$%hd187990188167%_)
                           (_%props188174%_ _%$%tl187991188169%_))
                      (if (and (gx#core-bind-values? _%hd-bind188162%_)
                               (gx#stx-list? _%props188174%_)
                               (not (gx#stx-null? _%props188174%_)))
                          (begin
                            (gx#core-bind-values!__0 _%hd-bind188162%_)
                            (_%K187969%_
                             (cons (gx#core-cons
                                    '%#bind-runtime-properties!
                                    (cons _%hd-bind188162%_
                                          (cons _%props188174%_ '())))
                                   _%rest187970%_)
                             (cons (gx#core-cons
                                    '%#define-values
                                    (cons _%hd-bind188162%_
                                          (cons _%expr188172%_ '())))
                                   _%r187971%_)))
                          (_%$%E187982188142%_)))))
                (_%$%E187982188142%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E187982188142%_))
                                          (_%$%E187982188142%_))))
                                  (_%$%E187982188142%_))))
                           (_%$%E187977188188%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e187976188028%_)
                                  (let ((_%$%e187979188180%_
                                         (gx#syntax-e _%$%e187976188028%_)))
                                    (let ((_%$%hd187980188183%_
                                           (##car _%$%e187979188180%_))
                                          (_%$%tl187981188185%_
                                           (##cdr _%$%e187979188180%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd187980188183%_)
                                               (gx#core-identifier=?
                                                _%$%hd187980188183%_
                                                '%#begin-syntax))
                                          (_%K*187975%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd187968%_))
                                          (_%$%E187978188176%_))))
                                  (_%$%E187978188176%_)))))
                      (_%$%E187977188188%_))))
                 (_%eval-body187849%_
                  (lambda (_%rbody187857%_)
                    (let _%lp187859%_ ((_%rest187861%_ _%rbody187857%_)
                                       (_%body187862%_ '())
                                       (_%ebody187863%_ '()))
                      (let* ((_%$%rest187864187872%_ _%rest187861%_)
                             (_%$%else187866187880%_
                              (lambda ()
                                (values _%body187862%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody187863%_)
                                          (gx#stx-source _%stx187846%_))))))
                             (_%$%K187868187956%_
                              (lambda (_%rest187883%_ _%hd187884%_)
                                (let* ((_%$%e187885187902%_ _%hd187884%_)
                                       (_%$%E187897187906%_
                                        (lambda ()
                                          (_%lp187859%_
                                           _%rest187883%_
                                           (cons _%hd187884%_ _%body187862%_)
                                           (cons _%hd187884%_
                                                 _%ebody187863%_))))
                                       (_%$%E187887187918%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e187885187902%_)
                                              (let ((_%$%e187898187910%_
                                                     (gx#syntax-e
                                                      _%$%e187885187902%_)))
                                                (let ((_%$%hd187899187913%_
                                                       (##car _%$%e187898187910%_))
                                                      (_%$%tl187900187915%_
                                                       (##cdr _%$%e187898187910%_)))
                                                  (if (and (gx#identifier?
                                                            _%$%hd187899187913%_)
                                                           (gx#core-identifier=?
                                                            _%$%hd187899187913%_
                                                            '%#begin-syntax))
                                                      (_%lp187859%_
                                                       _%rest187883%_
                                                       (cons _%hd187884%_
                                                             _%body187862%_)
                                                       _%ebody187863%_)
                                                      (_%$%E187897187906%_))))
                                              (_%$%E187897187906%_))))
                                       (_%$%E187886187952%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e187885187902%_)
                                              (let ((_%$%e187888187922%_
                                                     (gx#syntax-e
                                                      _%$%e187885187902%_)))
                                                (let ((_%$%hd187889187925%_
                                                       (##car _%$%e187888187922%_))
                                                      (_%$%tl187890187927%_
                                                       (##cdr _%$%e187888187922%_)))
                                                  (if (and (gx#identifier?
                                                            _%$%hd187889187925%_)
                                                           (gx#core-identifier=?
                                                            _%$%hd187889187925%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%$%tl187890187927%_)
                                                          (let ((_%$%e187891187930%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl187890187927%_)))
                    (let ((_%$%hd187892187933%_ (##car _%$%e187891187930%_))
                          (_%$%tl187893187935%_ (##cdr _%$%e187891187930%_)))
                      (let ((_%hd-bind187938%_ _%$%hd187892187933%_))
                        (if (gx#stx-pair? _%$%tl187893187935%_)
                            (let ((_%$%e187894187940%_
                                   (gx#syntax-e _%$%tl187893187935%_)))
                              (let ((_%$%hd187895187943%_
                                     (##car _%$%e187894187940%_))
                                    (_%$%tl187896187945%_
                                     (##cdr _%$%e187894187940%_)))
                                (let ((_%expr187948%_ _%$%hd187895187943%_))
                                  (if (gx#stx-null? _%$%tl187896187945%_)
                                      (let ((_%ehd187950%_
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#define-values)
                                                    (cons (gx#core-quote-bind-values
                                                           _%hd-bind187938%_)
                                                          (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%expr187948%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%hd187884%_))))
                                        (_%lp187859%_
                                         _%rest187883%_
                                         (cons _%ehd187950%_ _%body187862%_)
                                         (cons _%ehd187950%_ _%ebody187863%_)))
                                      (_%$%E187887187918%_)))))
                            (_%$%E187887187918%_)))))
                  (_%$%E187887187918%_))
              (_%$%E187887187918%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E187887187918%_)))))
                                  (_%$%E187886187952%_)))))
                        (if (pair? _%$%rest187864187872%_)
                            (let ((_%$%hd187869187959%_
                                   (##car _%$%rest187864187872%_))
                                  (_%$%tl187870187961%_
                                   (##cdr _%$%rest187864187872%_)))
                              (let* ((_%hd187964%_ _%$%hd187869187959%_)
                                     (_%rest187966%_ _%$%tl187870187961%_))
                                (_%$%K187868187956%_
                                 _%rest187966%_
                                 _%hd187964%_)))
                            (_%$%else187866187880%_)))))))
          (call-with-parameters__1
           (lambda ()
             (let* ((_%rbody187852%_
                     (gx#core-expand-block__1
                      _%stx187846%_
                      _%expand-special187848%_
                      '#f))
                    (_g188225_ (_%eval-body187849%_ _%rbody187852%_)))
               (begin
                 (let ((_g188226_
                        (if (##values? _g188225_)
                            (##values-length _g188225_)
                            1)))
                   (if (not (##fx= _g188226_ 2))
                       (error "Context expects 2 values" _g188226_)))
                 (let ((_%expanded-body187854%_ (##values-ref _g188225_ 0))
                       (_%value187855%_ (##values-ref _g188225_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body187854%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value187855%_ '())))
                    (gx#stx-source _%stx187846%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx187816%_)
        (let* ((_%$%e187817187824%_ _%stx187816%_)
               (_%$%E187819187828%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e187817187824%_)))
               (_%$%E187818187842%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e187817187824%_)
                      (let ((_%$%e187820187832%_
                             (gx#syntax-e _%$%e187817187824%_)))
                        (let ((_%$%hd187821187835%_
                               (##car _%$%e187820187832%_))
                              (_%$%tl187822187837%_
                               (##cdr _%$%e187820187832%_)))
                          (let ((_%body187840%_ _%$%tl187822187837%_))
                            (if (gx#stx-list? _%body187840%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body187840%_)
                                 (gx#stx-source _%stx187816%_))
                                (_%$%E187819187828%_)))))
                      (_%$%E187819187828%_)))))
          (_%$%E187818187842%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx187814%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx187814%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx187760%_)
        (let* ((_%$%e187761187774%_ _%stx187760%_)
               (_%$%E187763187778%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e187761187774%_)))
               (_%$%E187762187810%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e187761187774%_)
                      (let ((_%$%e187764187782%_
                             (gx#syntax-e _%$%e187761187774%_)))
                        (let ((_%$%hd187765187785%_
                               (##car _%$%e187764187782%_))
                              (_%$%tl187766187787%_
                               (##cdr _%$%e187764187782%_)))
                          (if (gx#stx-pair? _%$%tl187766187787%_)
                              (let ((_%$%e187767187790%_
                                     (gx#syntax-e _%$%tl187766187787%_)))
                                (let ((_%$%hd187768187793%_
                                       (##car _%$%e187767187790%_))
                                      (_%$%tl187769187795%_
                                       (##cdr _%$%e187767187790%_)))
                                  (let ((_%ann187798%_ _%$%hd187768187793%_))
                                    (if (gx#stx-pair? _%$%tl187769187795%_)
                                        (let ((_%$%e187770187800%_
                                               (gx#syntax-e
                                                _%$%tl187769187795%_)))
                                          (let ((_%$%hd187771187803%_
                                                 (##car _%$%e187770187800%_))
                                                (_%$%tl187772187805%_
                                                 (##cdr _%$%e187770187800%_)))
                                            (let ((_%expr187808%_
                                                   _%$%hd187771187803%_))
                                              (if (gx#stx-null?
                                                   _%$%tl187772187805%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann187798%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr187808%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx187760%_))
                                                  (_%$%E187763187778%_)))))
                                        (_%$%E187763187778%_)))))
                              (_%$%E187763187778%_))))
                      (_%$%E187763187778%_)))))
          (_%$%E187762187810%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx187385%_ _%body187386%_)
        (letrec ((_%expand-special187388%_
                  (lambda (_%hd187755%_ _%K187756%_ _%rest187757%_ _%r187758%_)
                    (_%K187756%_
                     '()
                     (cons (_%expand-internal187389%_
                            _%hd187755%_
                            _%rest187757%_)
                           _%r187758%_))))
                 (_%expand-internal187389%_
                  (lambda (_%hd187751%_ _%rest187752%_)
                    (call-with-parameters__1
                     (lambda ()
                       (_%wrap-internal187391%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd187751%_ _%rest187752%_))
                          (gx#stx-source _%stx187385%_))
                         _%expand-internal-special187390%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj188209
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj188209)
                       __obj188209))))
                 (_%expand-internal-special187390%_
                  (lambda (_%hd187547%_ _%K187548%_ _%rest187549%_ _%r187550%_)
                    (let* ((_%$%e187551187599%_ _%hd187547%_)
                           (_%$%E187594187603%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e187551187599%_)))
                           (_%$%E187581187615%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e187551187599%_)
                                  (let ((_%$%e187595187607%_
                                         (gx#syntax-e _%$%e187551187599%_)))
                                    (let ((_%$%hd187596187610%_
                                           (##car _%$%e187595187607%_))
                                          (_%$%tl187597187612%_
                                           (##cdr _%$%e187595187607%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd187596187610%_)
                                               (gx#core-identifier=?
                                                _%$%hd187596187610%_
                                                '%#declare))
                                          (_%K187548%_
                                           _%rest187549%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd187547%_)
                                                 _%r187550%_))
                                          (_%$%E187594187603%_))))
                                  (_%$%E187594187603%_))))
                           (_%$%E187577187657%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e187551187599%_)
                                  (let ((_%$%e187582187619%_
                                         (gx#syntax-e _%$%e187551187599%_)))
                                    (let ((_%$%hd187583187622%_
                                           (##car _%$%e187582187619%_))
                                          (_%$%tl187584187624%_
                                           (##cdr _%$%e187582187619%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd187583187622%_)
                                               (gx#core-identifier=?
                                                _%$%hd187583187622%_
                                                '%#bind-runtime-properties!))
                                          (if (gx#stx-pair?
                                               _%$%tl187584187624%_)
                                              (let ((_%$%e187585187627%_
                                                     (gx#syntax-e
                                                      _%$%tl187584187624%_)))
                                                (let ((_%$%hd187586187630%_
                                                       (##car _%$%e187585187627%_))
                                                      (_%$%tl187587187632%_
                                                       (##cdr _%$%e187585187627%_)))
                                                  (if (gx#stx-pair?
                                                       _%$%hd187586187630%_)
                                                      (let ((_%$%e187591187635%_
                                                             (gx#syntax-e
                                                              _%$%hd187586187630%_)))
                                                        (let ((_%$%hd187592187638%_
                                                               (##car _%$%e187591187635%_))
                                                              (_%$%tl187593187640%_
                                                               (##cdr _%$%e187591187635%_)))
                                                          (let ((_%id187643%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%hd187592187638%_))
                    (if (gx#stx-null? _%$%tl187593187640%_)
                        (if (gx#stx-pair? _%$%tl187587187632%_)
                            (let ((_%$%e187588187645%_
                                   (gx#syntax-e _%$%tl187587187632%_)))
                              (let ((_%$%hd187589187648%_
                                     (##car _%$%e187588187645%_))
                                    (_%$%tl187590187650%_
                                     (##cdr _%$%e187588187645%_)))
                                (let ((_%props187653%_ _%$%hd187589187648%_))
                                  (if (gx#stx-null? _%$%tl187590187650%_)
                                      (let ((_%bind187655%_
                                             (gx#resolve-identifier__0
                                              _%id187643%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind187655%_
                                         _%props187653%_)
                                        (_%K187548%_
                                         _%rest187549%_
                                         _%r187550%_))
                                      (_%$%E187581187615%_)))))
                            (_%$%E187581187615%_))
                        (_%$%E187581187615%_)))))
              (_%$%E187581187615%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E187581187615%_))
                                          (_%$%E187581187615%_))))
                                  (_%$%E187581187615%_))))
                           (_%$%E187573187669%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e187551187599%_)
                                  (let ((_%$%e187578187661%_
                                         (gx#syntax-e _%$%e187551187599%_)))
                                    (let ((_%$%hd187579187664%_
                                           (##car _%$%e187578187661%_))
                                          (_%$%tl187580187666%_
                                           (##cdr _%$%e187578187661%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd187579187664%_)
                                               (gx#core-identifier=?
                                                _%$%hd187579187664%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd187547%_)
                                            (_%K187548%_
                                             _%rest187549%_
                                             _%r187550%_))
                                          (_%$%E187577187657%_))))
                                  (_%$%E187577187657%_))))
                           (_%$%E187563187681%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e187551187599%_)
                                  (let ((_%$%e187574187673%_
                                         (gx#syntax-e _%$%e187551187599%_)))
                                    (let ((_%$%hd187575187676%_
                                           (##car _%$%e187574187673%_))
                                          (_%$%tl187576187678%_
                                           (##cdr _%$%e187574187673%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd187575187676%_)
                                               (gx#core-identifier=?
                                                _%$%hd187575187676%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd187547%_)
                                            (_%K187548%_
                                             _%rest187549%_
                                             _%r187550%_))
                                          (_%$%E187573187669%_))))
                                  (_%$%E187573187669%_))))
                           (_%$%E187553187713%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e187551187599%_)
                                  (let ((_%$%e187564187685%_
                                         (gx#syntax-e _%$%e187551187599%_)))
                                    (let ((_%$%hd187565187688%_
                                           (##car _%$%e187564187685%_))
                                          (_%$%tl187566187690%_
                                           (##cdr _%$%e187564187685%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd187565187688%_)
                                               (gx#core-identifier=?
                                                _%$%hd187565187688%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl187566187690%_)
                                              (let ((_%$%e187567187693%_
                                                     (gx#syntax-e
                                                      _%$%tl187566187690%_)))
                                                (let ((_%$%hd187568187696%_
                                                       (##car _%$%e187567187693%_))
                                                      (_%$%tl187569187698%_
                                                       (##cdr _%$%e187567187693%_)))
                                                  (let ((_%hd-bind187701%_
                                                         _%$%hd187568187696%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl187569187698%_)
                                                        (let ((_%$%e187570187703%_
                                                               (gx#syntax-e
                                                                _%$%tl187569187698%_)))
                                                          (let ((_%$%hd187571187706%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e187570187703%_))
                        (_%$%tl187572187708%_ (##cdr _%$%e187570187703%_)))
                    (let ((_%expr187711%_ _%$%hd187571187706%_))
                      (if (gx#stx-null? _%$%tl187572187708%_)
                          (if (gx#core-bind-values? _%hd-bind187701%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind187701%_)
                                (_%K187548%_
                                 _%rest187549%_
                                 (cons _%hd187547%_ _%r187550%_)))
                              (_%$%E187563187681%_))
                          (_%$%E187563187681%_)))))
                (_%$%E187563187681%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E187563187681%_))
                                          (_%$%E187563187681%_))))
                                  (_%$%E187563187681%_))))
                           (_%$%E187552187747%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e187551187599%_)
                                  (let ((_%$%e187554187717%_
                                         (gx#syntax-e _%$%e187551187599%_)))
                                    (let ((_%$%hd187555187720%_
                                           (##car _%$%e187554187717%_))
                                          (_%$%tl187556187722%_
                                           (##cdr _%$%e187554187717%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd187555187720%_)
                                               (gx#core-identifier=?
                                                _%$%hd187555187720%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl187556187722%_)
                                              (let ((_%$%e187557187725%_
                                                     (gx#syntax-e
                                                      _%$%tl187556187722%_)))
                                                (let ((_%$%hd187558187728%_
                                                       (##car _%$%e187557187725%_))
                                                      (_%$%tl187559187730%_
                                                       (##cdr _%$%e187557187725%_)))
                                                  (let ((_%hd-bind187733%_
                                                         _%$%hd187558187728%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl187559187730%_)
                                                        (let ((_%$%e187560187735%_
                                                               (gx#syntax-e
                                                                _%$%tl187559187730%_)))
                                                          (let ((_%$%hd187561187738%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e187560187735%_))
                        (_%$%tl187562187740%_ (##cdr _%$%e187560187735%_)))
                    (let* ((_%expr187743%_ _%$%hd187561187738%_)
                           (_%props187745%_ _%$%tl187562187740%_))
                      (if (and (gx#core-bind-values? _%hd-bind187733%_)
                               (gx#stx-list? _%props187745%_)
                               (not (gx#stx-null? _%props187745%_)))
                          (begin
                            (gx#core-bind-values!__0 _%hd-bind187733%_)
                            (_%K187548%_
                             (cons (gx#core-cons
                                    '%#bind-runtime-properties!
                                    (cons _%hd-bind187733%_
                                          (cons _%props187745%_ '())))
                                   _%rest187549%_)
                             (cons (gx#core-cons
                                    '%#define-values
                                    (cons _%hd-bind187733%_
                                          (cons _%expr187743%_ '())))
                                   _%r187550%_)))
                          (_%$%E187553187713%_)))))
                (_%$%E187553187713%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E187553187713%_))
                                          (_%$%E187553187713%_))))
                                  (_%$%E187553187713%_)))))
                      (_%$%E187552187747%_))))
                 (_%wrap-internal187391%_
                  (lambda (_%rbody187393%_)
                    (let _%lp187395%_ ((_%rest187397%_ _%rbody187393%_)
                                       (_%decls187398%_ '())
                                       (_%bind187399%_ '())
                                       (_%body187400%_ '()))
                      (let* ((_%$%e187401187408%_ _%rest187397%_)
                             (_%$%E187403187457%_
                              (lambda ()
                                (let* ((_%body187452%_
                                        (let* ((_%$%body187411187421%_
                                                _%body187400%_)
                                               (_%$%else187414187429%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body187400%_)
                                                   (gx#stx-source
                                                    _%stx187385%_)))))
                                          (let ((_%$%K187419187449%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx187385%_)))
                                                (_%$%K187416187435%_
                                                 (lambda (_%expr187433%_)
                                                   _%expr187433%_)))
                                            (let ((_%$%try-match187413187445%_
                                                   (lambda ()
                                                     (if (pair? _%$%body187411187421%_)
                                                         (let ((_%$%tl187418187440%_
                                                                (##cdr _%$%body187411187421%_))
                                                               (_%$%hd187417187438%_
                                                                (##car _%$%body187411187421%_)))
                                                           (if (null? _%$%tl187418187440%_)
                                                               (let ((_%expr187443%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%hd187417187438%_))
                         (_%$%K187416187435%_ _%expr187443%_))
                       (_%$%else187414187429%_)))
                 (_%$%else187414187429%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%$%body187411187421%_)
                                                  (_%$%K187419187449%_)
                                                  (_%$%try-match187413187445%_))))))
                                       (_%body187454%_
                                        (if (null? _%bind187399%_)
                                            _%body187452%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind187399%_
                                                         (cons _%body187452%_
                                                               '())))
                                             (gx#stx-source _%stx187385%_)))))
                                  (if (null? _%decls187398%_)
                                      _%body187454%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls187398%_
                                                   (cons _%body187454%_ '())))
                                       (gx#stx-source _%stx187385%_))))))
                             (_%$%E187402187543%_
                              (lambda ()
                                (if (gx#stx-pair? _%$%e187401187408%_)
                                    (let ((_%$%e187404187461%_
                                           (gx#syntax-e _%$%e187401187408%_)))
                                      (let ((_%$%hd187405187464%_
                                             (##car _%$%e187404187461%_))
                                            (_%$%tl187406187466%_
                                             (##cdr _%$%e187404187461%_)))
                                        (let* ((_%hd187469%_
                                                _%$%hd187405187464%_)
                                               (_%rest187471%_
                                                _%$%tl187406187466%_)
                                               (_%$%e187472187489%_
                                                _%hd187469%_)
                                               (_%$%E187484187493%_
                                                (lambda ()
                                                  (if (null? _%bind187399%_)
                                                      (_%lp187395%_
                                                       _%rest187471%_
                                                       _%decls187398%_
                                                       _%bind187399%_
                                                       (cons _%hd187469%_
                                                             _%body187400%_))
                                                      (_%lp187395%_
                                                       _%rest187471%_
                                                       _%decls187398%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd187469%_ '()))
                     _%bind187399%_)
               _%body187400%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%E187474187507%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%$%e187472187489%_)
                                                      (let ((_%$%e187485187497%_
                                                             (gx#syntax-e
                                                              _%$%e187472187489%_)))
                                                        (let ((_%$%hd187486187500%_
                                                               (##car _%$%e187485187497%_))
                                                              (_%$%tl187487187502%_
                                                               (##cdr _%$%e187485187497%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%hd187486187500%_)
                           (gx#core-identifier=?
                            _%$%hd187486187500%_
                            '%#declare))
                      (let ((_%xdecls187505%_ _%$%tl187487187502%_))
                        (_%lp187395%_
                         _%rest187471%_
                         (gx#stx-foldr cons _%decls187398%_ _%xdecls187505%_)
                         _%bind187399%_
                         _%body187400%_))
                      (_%$%E187484187493%_))))
              (_%$%E187484187493%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%E187473187539%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%$%e187472187489%_)
                                                      (let ((_%$%e187475187511%_
                                                             (gx#syntax-e
                                                              _%$%e187472187489%_)))
                                                        (let ((_%$%hd187476187514%_
                                                               (##car _%$%e187475187511%_))
                                                              (_%$%tl187477187516%_
                                                               (##cdr _%$%e187475187511%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%hd187476187514%_)
                           (gx#core-identifier=?
                            _%$%hd187476187514%_
                            '%#define-values))
                      (if (gx#stx-pair? _%$%tl187477187516%_)
                          (let ((_%$%e187478187519%_
                                 (gx#syntax-e _%$%tl187477187516%_)))
                            (let ((_%$%hd187479187522%_
                                   (##car _%$%e187478187519%_))
                                  (_%$%tl187480187524%_
                                   (##cdr _%$%e187478187519%_)))
                              (let ((_%hd-bind187527%_ _%$%hd187479187522%_))
                                (if (gx#stx-pair? _%$%tl187480187524%_)
                                    (let ((_%$%e187481187529%_
                                           (gx#syntax-e _%$%tl187480187524%_)))
                                      (let ((_%$%hd187482187532%_
                                             (##car _%$%e187481187529%_))
                                            (_%$%tl187483187534%_
                                             (##cdr _%$%e187481187529%_)))
                                        (let ((_%expr187537%_
                                               _%$%hd187482187532%_))
                                          (if (gx#stx-null?
                                               _%$%tl187483187534%_)
                                              (_%lp187395%_
                                               _%rest187471%_
                                               _%decls187398%_
                                               (cons (cons (gx#core-quote-bind-values
                                                            _%hd-bind187527%_)
                                                           (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%expr187537%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind187399%_)
                                               _%body187400%_)
                                              (_%$%E187474187507%_)))))
                                    (_%$%E187474187507%_)))))
                          (_%$%E187474187507%_))
                      (_%$%E187474187507%_))))
              (_%$%E187474187507%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%E187473187539%_))))
                                    (_%$%E187403187457%_)))))
                        (_%$%E187402187543%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body187386%_)
            (gx#stx-source _%stx187385%_))
           _%expand-special187388%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx187323%_)
        (let* ((_%$%e187324187331%_ _%stx187323%_)
               (_%$%E187326187335%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e187324187331%_)))
               (_%$%E187325187381%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e187324187331%_)
                      (let ((_%$%e187327187339%_
                             (gx#syntax-e _%$%e187324187331%_)))
                        (let ((_%$%hd187328187342%_
                               (##car _%$%e187327187339%_))
                              (_%$%tl187329187344%_
                               (##cdr _%$%e187327187339%_)))
                          (let ((_%body187347%_ _%$%tl187329187344%_))
                            (if (gx#stx-list? _%body187347%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl187349%_)
                                     (let* ((_%$%e187350187357%_
                                             _%decl187349%_)
                                            (_%$%E187352187361%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%$%e187350187357%_)))
                                            (_%$%E187351187377%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%$%e187350187357%_)
                                                   (let ((_%$%e187353187365%_
                                                          (gx#syntax-e
                                                           _%$%e187350187357%_)))
                                                     (let ((_%$%hd187354187368%_
                                                            (##car _%$%e187353187365%_))
                                                           (_%$%tl187355187370%_
                                                            (##cdr _%$%e187353187365%_)))
                                                       (let* ((_%head187373%_
                                                               _%$%hd187354187368%_)
                                                              (_%args187375%_
                                                               _%$%tl187355187370%_))
                                                         (if (gx#stx-list?
                                                              _%args187375%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl187349%_)
                                                             (_%$%E187352187361%_)))))
                                                   (_%$%E187352187361%_)))))
                                       (_%$%E187351187377%_)))
                                   _%body187347%_))
                                 (gx#stx-source _%stx187323%_))
                                (_%$%E187326187335%_)))))
                      (_%$%E187326187335%_)))))
          (_%$%E187325187381%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx187227%_)
        (let* ((_%$%e187228187235%_ _%stx187227%_)
               (_%$%E187230187239%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e187228187235%_)))
               (_%$%E187229187319%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e187228187235%_)
                      (let ((_%$%e187231187243%_
                             (gx#syntax-e _%$%e187228187235%_)))
                        (let ((_%$%hd187232187246%_
                               (##car _%$%e187231187243%_))
                              (_%$%tl187233187248%_
                               (##cdr _%$%e187231187243%_)))
                          (let ((_%body187251%_ _%$%tl187233187248%_))
                            (let _%lp187253%_ ((_%rest187255%_ _%body187251%_)
                                               (_%r187256%_ '()))
                              (let* ((_%$%e187257187271%_ _%rest187255%_)
                                     (_%$%E187269187275%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx187227%_)))
                                     (_%$%E187259187279%_
                                      (lambda ()
                                        (if (gx#stx-null? _%$%e187257187271%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r187256%_))
                                             (gx#stx-source _%stx187227%_))
                                            (_%$%E187269187275%_))))
                                     (_%$%E187258187315%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%$%e187257187271%_)
                                            (let ((_%$%e187260187283%_
                                                   (gx#syntax-e
                                                    _%$%e187257187271%_)))
                                              (let ((_%$%hd187261187286%_
                                                     (##car _%$%e187260187283%_))
                                                    (_%$%tl187262187288%_
                                                     (##cdr _%$%e187260187283%_)))
                                                (if (gx#stx-pair?
                                                     _%$%hd187261187286%_)
                                                    (let ((_%$%e187263187291%_
                                                           (gx#syntax-e
                                                            _%$%hd187261187286%_)))
                                                      (let ((_%$%hd187264187294%_
                                                             (##car _%$%e187263187291%_))
                                                            (_%$%tl187265187296%_
                                                             (##cdr _%$%e187263187291%_)))
                                                        (let ((_%id187299%_
                                                               _%$%hd187264187294%_))
                                                          (if (gx#stx-pair?
                                                               _%$%tl187265187296%_)
                                                              (let ((_%$%e187266187301%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%$%tl187265187296%_)))
                        (let ((_%$%hd187267187304%_
                               (##car _%$%e187266187301%_))
                              (_%$%tl187268187306%_
                               (##cdr _%$%e187266187301%_)))
                          (let ((_%eid187309%_ _%$%hd187267187304%_))
                            (if (gx#stx-null? _%$%tl187268187306%_)
                                (let ((_%rest187311%_ _%$%tl187262187288%_))
                                  (if (and (gx#identifier? _%id187299%_)
                                           (gx#identifier? _%eid187309%_))
                                      (let ((_%eid187313%_
                                             (gx#stx-e _%eid187309%_)))
                                        (gx#core-bind-extern!__0
                                         _%id187299%_
                                         _%eid187313%_)
                                        (_%lp187253%_
                                         _%rest187311%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id187299%_)
                                                     (cons _%eid187313%_ '()))
                                               _%r187256%_)))
                                      (_%$%E187259187279%_)))
                                (_%$%E187259187279%_)))))
                      (_%$%E187259187279%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E187259187279%_))))
                                            (_%$%E187259187279%_)))))
                                (_%$%E187258187315%_))))))
                      (_%$%E187230187239%_)))))
          (_%$%E187229187319%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx187129%_)
        (let* ((_%$%e187130187153%_ _%stx187129%_)
               (_%$%E187142187157%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e187130187153%_)))
               (_%$%E187132187189%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e187130187153%_)
                      (let ((_%$%e187143187161%_
                             (gx#syntax-e _%$%e187130187153%_)))
                        (let ((_%$%hd187144187164%_
                               (##car _%$%e187143187161%_))
                              (_%$%tl187145187166%_
                               (##cdr _%$%e187143187161%_)))
                          (if (gx#stx-pair? _%$%tl187145187166%_)
                              (let ((_%$%e187146187169%_
                                     (gx#syntax-e _%$%tl187145187166%_)))
                                (let ((_%$%hd187147187172%_
                                       (##car _%$%e187146187169%_))
                                      (_%$%tl187148187174%_
                                       (##cdr _%$%e187146187169%_)))
                                  (let ((_%hd187177%_ _%$%hd187147187172%_))
                                    (if (gx#stx-pair? _%$%tl187148187174%_)
                                        (let ((_%$%e187149187179%_
                                               (gx#syntax-e
                                                _%$%tl187148187174%_)))
                                          (let ((_%$%hd187150187182%_
                                                 (##car _%$%e187149187179%_))
                                                (_%$%tl187151187184%_
                                                 (##cdr _%$%e187149187179%_)))
                                            (let ((_%expr187187%_
                                                   _%$%hd187150187182%_))
                                              (if (gx#stx-null?
                                                   _%$%tl187151187184%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd187177%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd187177%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd187177%_)
                             (cons (gx#core-expand-expression _%expr187187%_)
                                   '())))
                 (gx#stx-source _%stx187129%_)))
              (_%$%E187142187157%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E187142187157%_)))))
                                        (_%$%E187142187157%_)))))
                              (_%$%E187142187157%_))))
                      (_%$%E187142187157%_))))
               (_%$%E187131187223%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e187130187153%_)
                      (let ((_%$%e187133187193%_
                             (gx#syntax-e _%$%e187130187153%_)))
                        (let ((_%$%hd187134187196%_
                               (##car _%$%e187133187193%_))
                              (_%$%tl187135187198%_
                               (##cdr _%$%e187133187193%_)))
                          (if (gx#stx-pair? _%$%tl187135187198%_)
                              (let ((_%$%e187136187201%_
                                     (gx#syntax-e _%$%tl187135187198%_)))
                                (let ((_%$%hd187137187204%_
                                       (##car _%$%e187136187201%_))
                                      (_%$%tl187138187206%_
                                       (##cdr _%$%e187136187201%_)))
                                  (let ((_%hd187209%_ _%$%hd187137187204%_))
                                    (if (gx#stx-pair? _%$%tl187138187206%_)
                                        (let ((_%$%e187139187211%_
                                               (gx#syntax-e
                                                _%$%tl187138187206%_)))
                                          (let ((_%$%hd187140187214%_
                                                 (##car _%$%e187139187211%_))
                                                (_%$%tl187141187216%_
                                                 (##cdr _%$%e187139187211%_)))
                                            (let* ((_%expr187219%_
                                                    _%$%hd187140187214%_)
                                                   (_%props187221%_
                                                    _%$%tl187141187216%_))
                                              (if (and (gx#stx-list?
                                                        _%props187221%_)
                                                       (not (gx#stx-null?
                                                             _%props187221%_)))
                                                  (gx#core-cons
                                                   '%#begin
                                                   (cons (gx#core-cons
                                                          '%#define-values
                                                          (cons _%hd187209%_
                                                                (cons _%expr187219%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
                 (cons (gx#core-cons
                        '%#bind-runtime-properties!
                        (cons _%hd187209%_ (cons _%props187221%_ '())))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E187132187189%_)))))
                                        (_%$%E187132187189%_)))))
                              (_%$%E187132187189%_))))
                      (_%$%E187132187189%_)))))
          (_%$%E187131187223%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx187068%_)
        (let* ((_%$%e187069187082%_ _%stx187068%_)
               (_%$%E187071187086%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e187069187082%_)))
               (_%$%E187070187125%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e187069187082%_)
                      (let ((_%$%e187072187090%_
                             (gx#syntax-e _%$%e187069187082%_)))
                        (let ((_%$%hd187073187093%_
                               (##car _%$%e187072187090%_))
                              (_%$%tl187074187095%_
                               (##cdr _%$%e187072187090%_)))
                          (if (gx#stx-pair? _%$%tl187074187095%_)
                              (let ((_%$%e187075187098%_
                                     (gx#syntax-e _%$%tl187074187095%_)))
                                (let ((_%$%hd187076187101%_
                                       (##car _%$%e187075187098%_))
                                      (_%$%tl187077187103%_
                                       (##cdr _%$%e187075187098%_)))
                                  (let ((_%id187106%_ _%$%hd187076187101%_))
                                    (if (gx#stx-pair? _%$%tl187077187103%_)
                                        (let ((_%$%e187078187108%_
                                               (gx#syntax-e
                                                _%$%tl187077187103%_)))
                                          (let ((_%$%hd187079187111%_
                                                 (##car _%$%e187078187108%_))
                                                (_%$%tl187080187113%_
                                                 (##cdr _%$%e187078187108%_)))
                                            (let* ((_%binding-id187116%_
                                                    _%$%hd187079187111%_)
                                                   (_%props187118%_
                                                    _%$%tl187080187113%_))
                                              (if (and (gx#identifier?
                                                        _%id187106%_)
                                                       (gx#identifier?
                                                        _%binding-id187116%_)
                                                       (gx#stx-list?
                                                        _%props187118%_))
                                                  (let* ((_%eid187120%_
                                                          (gx#stx-e
                                                           _%binding-id187116%_))
                                                         (_%bind187122%_
                                                          (gx#core-bind-runtime-reference!__0
                                                           _%id187106%_
                                                           _%eid187120%_)))
                                                    (gx#core-bind-runtime-properties!
                                                     _%bind187122%_
                                                     _%props187118%_)
                                                    (gx#core-quote-syntax__0
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#define-runtime)
                                                           (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id187106%_)
                         (cons _%eid187120%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E187071187086%_)))))
                                        (_%$%E187071187086%_)))))
                              (_%$%E187071187086%_))))
                      (_%$%E187071187086%_)))))
          (_%$%E187070187125%_))))
    (define gx#core-expand-bind-runtime-properties%
      (lambda (_%stx187001%_)
        (let* ((_%$%e187002187018%_ _%stx187001%_)
               (_%$%E187004187022%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e187002187018%_)))
               (_%$%E187003187064%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e187002187018%_)
                      (let ((_%$%e187005187026%_
                             (gx#syntax-e _%$%e187002187018%_)))
                        (let ((_%$%hd187006187029%_
                               (##car _%$%e187005187026%_))
                              (_%$%tl187007187031%_
                               (##cdr _%$%e187005187026%_)))
                          (if (gx#stx-pair? _%$%tl187007187031%_)
                              (let ((_%$%e187008187034%_
                                     (gx#syntax-e _%$%tl187007187031%_)))
                                (let ((_%$%hd187009187037%_
                                       (##car _%$%e187008187034%_))
                                      (_%$%tl187010187039%_
                                       (##cdr _%$%e187008187034%_)))
                                  (if (gx#stx-pair? _%$%hd187009187037%_)
                                      (let ((_%$%e187014187042%_
                                             (gx#syntax-e
                                              _%$%hd187009187037%_)))
                                        (let ((_%$%hd187015187045%_
                                               (##car _%$%e187014187042%_))
                                              (_%$%tl187016187047%_
                                               (##cdr _%$%e187014187042%_)))
                                          (let ((_%id187050%_
                                                 _%$%hd187015187045%_))
                                            (if (gx#stx-null?
                                                 _%$%tl187016187047%_)
                                                (if (gx#stx-pair?
                                                     _%$%tl187010187039%_)
                                                    (let ((_%$%e187011187052%_
                                                           (gx#syntax-e
                                                            _%$%tl187010187039%_)))
                                                      (let ((_%$%hd187012187055%_
                                                             (##car _%$%e187011187052%_))
                                                            (_%$%tl187013187057%_
                                                             (##cdr _%$%e187011187052%_)))
                                                        (let ((_%props187060%_
                                                               _%$%hd187012187055%_))
                                                          (if (gx#stx-null?
                                                               _%$%tl187013187057%_)
                                                              (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%id187050%_)
                               (gx#stx-list? _%props187060%_))
                          (let ((_%bind187062%_
                                 (gx#resolve-identifier__0 _%id187050%_)))
                            (if (##structure-instance-of?
                                 _%bind187062%_
                                 'gx#runtime-binding::t)
                                '#!void
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; expected runtime binding"
                                 _%stx187001%_
                                 _%id187050%_
                                 _%bind187062%_))
                            (gx#core-bind-runtime-properties!
                             _%bind187062%_
                             _%props187060%_)
                            (gx#core-cons '%#begin '()))
                          (_%$%E187004187022%_))
                      (_%$%E187004187022%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E187004187022%_))
                                                (_%$%E187004187022%_)))))
                                      (_%$%E187004187022%_))))
                              (_%$%E187004187022%_))))
                      (_%$%E187004187022%_)))))
          (_%$%E187003187064%_))))
    (define gx#core-bind-runtime-properties!
      (lambda (_%bind186936%_ _%props186937%_)
        (letrec ((_%eval-prop186939%_
                  (lambda (_%prop186999%_)
                    (gx#eval-expression+1 _%prop186999%_))))
          (let _%loop186941%_ ((_%rest186943%_ _%props186937%_)
                               (_%props186944%_ '()))
            (let* ((_%$%e186945186956%_ _%rest186943%_)
                   (_%$%E186954186960%_
                    (lambda ()
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%$%e186945186956%_)))
                   (_%$%E186947186964%_
                    (lambda ()
                      (if (gx#stx-null? _%$%e186945186956%_)
                          (if (null? _%props186944%_)
                              '#!void
                              (##structure-set!
                               _%bind186936%_
                               (reverse! _%props186944%_)
                               '4
                               gx#binding::t
                               '#f))
                          (_%$%E186954186960%_))))
                   (_%$%E186946186995%_
                    (lambda ()
                      (if (gx#stx-pair? _%$%e186945186956%_)
                          (let ((_%$%e186948186968%_
                                 (gx#syntax-e _%$%e186945186956%_)))
                            (let ((_%$%hd186949186971%_
                                   (##car _%$%e186948186968%_))
                                  (_%$%tl186950186973%_
                                   (##cdr _%$%e186948186968%_)))
                              (let ((_%key186976%_ _%$%hd186949186971%_))
                                (if (gx#stx-pair? _%$%tl186950186973%_)
                                    (let ((_%$%e186951186978%_
                                           (gx#syntax-e _%$%tl186950186973%_)))
                                      (let ((_%$%hd186952186981%_
                                             (##car _%$%e186951186978%_))
                                            (_%$%tl186953186983%_
                                             (##cdr _%$%e186951186978%_)))
                                        (let* ((_%prop186986%_
                                                _%$%hd186952186981%_)
                                               (_%rest186988%_
                                                _%$%tl186953186983%_))
                                          (if (gx#stx-keyword? _%key186976%_)
                                              (let* ((_%key186990%_
                                                      (gx#stx-e _%key186976%_))
                                                     (_%$e186992%_
                                                      _%key186990%_))
                                                (if (eq? 'macro: _%$e186992%_)
                                                    (begin
                                                      (##structure-set!
                                                       _%bind186936%_
                                                       (if (gx#identifier?
                                                            _%prop186986%_)
                                                           (gx#core-quote-syntax__0
                                                            _%prop186986%_)
                                                           (gx#eval-expression+1
                                                            _%prop186986%_))
                                                       '6
                                                       gx#runtime-binding::t
                                                       '#f)
                                                      (_%loop186941%_
                                                       _%rest186988%_
                                                       _%props186944%_))
                                                    (if (eq? 'type:
                                                             _%$e186992%_)
                                                        (begin
                                                          (##structure-set!
                                                           _%bind186936%_
                                                           (gx#eval-expression+1
                                                            _%prop186986%_)
                                                           '5
                                                           gx#runtime-binding::t
                                                           '#f)
                                                          (_%loop186941%_
                                                           _%rest186988%_
                                                           _%props186944%_))
                                                        (_%loop186941%_
                                                         _%rest186988%_
                                                         (cons (gx#eval-expression+1
                                                                _%prop186986%_)
                                                               (cons _%key186990%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%props186944%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E186947186964%_)))))
                                    (_%$%E186947186964%_)))))
                          (_%$%E186947186964%_)))))
              (_%$%E186946186995%_))))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx186879%_)
        (let* ((_%$%e186880186893%_ _%stx186879%_)
               (_%$%E186882186897%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e186880186893%_)))
               (_%$%E186881186932%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e186880186893%_)
                      (let ((_%$%e186883186901%_
                             (gx#syntax-e _%$%e186880186893%_)))
                        (let ((_%$%hd186884186904%_
                               (##car _%$%e186883186901%_))
                              (_%$%tl186885186906%_
                               (##cdr _%$%e186883186901%_)))
                          (if (gx#stx-pair? _%$%tl186885186906%_)
                              (let ((_%$%e186886186909%_
                                     (gx#syntax-e _%$%tl186885186906%_)))
                                (let ((_%$%hd186887186912%_
                                       (##car _%$%e186886186909%_))
                                      (_%$%tl186888186914%_
                                       (##cdr _%$%e186886186909%_)))
                                  (let ((_%id186917%_ _%$%hd186887186912%_))
                                    (if (gx#stx-pair? _%$%tl186888186914%_)
                                        (let ((_%$%e186889186919%_
                                               (gx#syntax-e
                                                _%$%tl186888186914%_)))
                                          (let ((_%$%hd186890186922%_
                                                 (##car _%$%e186889186919%_))
                                                (_%$%tl186891186924%_
                                                 (##cdr _%$%e186889186919%_)))
                                            (let ((_%expr186927%_
                                                   _%$%hd186890186922%_))
                                              (if (gx#stx-null?
                                                   _%$%tl186891186924%_)
                                                  (if (gx#identifier?
                                                       _%id186917%_)
                                                      (let ((_g188227_
                                                             (gx#core-expand-expression+1
                                                              _%expr186927%_)))
                                                        (begin
                                                          (let ((_g188228_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g188227_)
                             (##values-length _g188227_)
                             1)))
                    (if (not (##fx= _g188228_ 2))
                        (error "Context expects 2 values" _g188228_)))
                  (let ((_%e-stx186929%_ (##values-ref _g188227_ 0))
                        (_%e186930%_ (##values-ref _g188227_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id186917%_ _%e186930%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id186917%_)
                                   (cons _%e-stx186929%_ '())))
                       (gx#stx-source _%stx186879%_))))))
              (_%$%E186882186897%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E186882186897%_)))))
                                        (_%$%E186882186897%_)))))
                              (_%$%E186882186897%_))))
                      (_%$%E186882186897%_)))))
          (_%$%E186881186932%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx186823%_)
        (let* ((_%$%e186824186837%_ _%stx186823%_)
               (_%$%E186826186841%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e186824186837%_)))
               (_%$%E186825186875%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e186824186837%_)
                      (let ((_%$%e186827186845%_
                             (gx#syntax-e _%$%e186824186837%_)))
                        (let ((_%$%hd186828186848%_
                               (##car _%$%e186827186845%_))
                              (_%$%tl186829186850%_
                               (##cdr _%$%e186827186845%_)))
                          (if (gx#stx-pair? _%$%tl186829186850%_)
                              (let ((_%$%e186830186853%_
                                     (gx#syntax-e _%$%tl186829186850%_)))
                                (let ((_%$%hd186831186856%_
                                       (##car _%$%e186830186853%_))
                                      (_%$%tl186832186858%_
                                       (##cdr _%$%e186830186853%_)))
                                  (let ((_%id186861%_ _%$%hd186831186856%_))
                                    (if (gx#stx-pair? _%$%tl186832186858%_)
                                        (let ((_%$%e186833186863%_
                                               (gx#syntax-e
                                                _%$%tl186832186858%_)))
                                          (let ((_%$%hd186834186866%_
                                                 (##car _%$%e186833186863%_))
                                                (_%$%tl186835186868%_
                                                 (##cdr _%$%e186833186863%_)))
                                            (let ((_%alias-id186871%_
                                                   _%$%hd186834186866%_))
                                              (if (gx#stx-null?
                                                   _%$%tl186835186868%_)
                                                  (if (and (gx#identifier?
                                                            _%id186861%_)
                                                           (gx#identifier?
                                                            _%alias-id186871%_))
                                                      (let ((_%alias-id186873%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id186871%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id186861%_
                                                         _%alias-id186873%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id186861%_)
                             (cons _%alias-id186873%_ '())))))
              (_%$%E186826186841%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E186826186841%_)))))
                                        (_%$%E186826186841%_)))))
                              (_%$%E186826186841%_))))
                      (_%$%E186826186841%_)))))
          (_%$%E186825186875%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx186766%_ _%wrap?186767%_)
        (let* ((_%$%e186768186778%_ _%stx186766%_)
               (_%$%E186770186782%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e186768186778%_)))
               (_%$%E186769186809%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e186768186778%_)
                      (let ((_%$%e186771186786%_
                             (gx#syntax-e _%$%e186768186778%_)))
                        (let ((_%$%hd186772186789%_
                               (##car _%$%e186771186786%_))
                              (_%$%tl186773186791%_
                               (##cdr _%$%e186771186786%_)))
                          (if (gx#stx-pair? _%$%tl186773186791%_)
                              (let ((_%$%e186774186794%_
                                     (gx#syntax-e _%$%tl186773186791%_)))
                                (let ((_%$%hd186775186797%_
                                       (##car _%$%e186774186794%_))
                                      (_%$%tl186776186799%_
                                       (##cdr _%$%e186774186794%_)))
                                  (let* ((_%hd186802%_ _%$%hd186775186797%_)
                                         (_%body186804%_ _%$%tl186776186799%_))
                                    (if (gx#core-bind-values? _%hd186802%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd186802%_)
                                           (let ((_%body186807%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd186802%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx186766%_
                                                               _%body186804%_)
                                                              '()))))
                                             (if _%wrap?186767%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body186807%_)
                                                  (gx#stx-source
                                                   _%stx186766%_))
                                                 _%body186807%_)))
                                         gx#current-expander-context
                                         (let ((__obj188210
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj188210)
                                           __obj188210))
                                        (_%$%E186770186782%_)))))
                              (_%$%E186770186782%_))))
                      (_%$%E186770186782%_)))))
          (_%$%E186769186809%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx186816%_)
        (let ((_%wrap?186818%_ '#t))
          (gx#core-expand-lambda%__% _%stx186816%_ _%wrap?186818%_))))
    (define gx#core-expand-lambda%
      (lambda _g188229_
        (let ((_g188230_ (##length _g188229_)))
          (cond ((##fx= _g188230_ 1)
                 (apply gx#core-expand-lambda%__0 _g188229_))
                ((##fx= _g188230_ 2)
                 (apply gx#core-expand-lambda%__% _g188229_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g188229_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx186730%_)
        (let* ((_%$%e186731186738%_ _%stx186730%_)
               (_%$%E186733186742%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e186731186738%_)))
               (_%$%E186732186761%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e186731186738%_)
                      (let ((_%$%e186734186746%_
                             (gx#syntax-e _%$%e186731186738%_)))
                        (let ((_%$%hd186735186749%_
                               (##car _%$%e186734186746%_))
                              (_%$%tl186736186751%_
                               (##cdr _%$%e186734186746%_)))
                          (let ((_%clauses186754%_ _%$%tl186736186751%_))
                            (if (gx#stx-list? _%clauses186754%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause186756%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause186756%_)
                                       (let ((_%$e186758%_
                                              (gx#stx-source
                                               _%clause186756%_)))
                                         (if _%$e186758%_
                                             _%$e186758%_
                                             (gx#stx-source _%stx186730%_))))
                                      '#f))
                                   _%clauses186754%_))
                                 (gx#stx-source _%stx186730%_))
                                (_%$%E186733186742%_)))))
                      (_%$%E186733186742%_)))))
          (_%$%E186732186761%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx186684%_)
        (let* ((_%$%e186685186695%_ _%stx186684%_)
               (_%$%E186687186699%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e186685186695%_)))
               (_%$%E186686186726%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e186685186695%_)
                      (let ((_%$%e186688186703%_
                             (gx#syntax-e _%$%e186685186695%_)))
                        (let ((_%$%hd186689186706%_
                               (##car _%$%e186688186703%_))
                              (_%$%tl186690186708%_
                               (##cdr _%$%e186688186703%_)))
                          (if (gx#stx-pair? _%$%tl186690186708%_)
                              (let ((_%$%e186691186711%_
                                     (gx#syntax-e _%$%tl186690186708%_)))
                                (let ((_%$%hd186692186714%_
                                       (##car _%$%e186691186711%_))
                                      (_%$%tl186693186716%_
                                       (##cdr _%$%e186691186711%_)))
                                  (let* ((_%hd186719%_ _%$%hd186692186714%_)
                                         (_%body186721%_ _%$%tl186693186716%_))
                                    (if (gx#core-expand-let-bind? _%hd186719%_)
                                        (let ((_%expressions186723%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd186719%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd186719%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd186719%_
                                                           _%expressions186723%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx186684%_
                         _%body186721%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx186684%_)))
                                           gx#current-expander-context
                                           (let ((__obj188211
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj188211)
                                             __obj188211)))
                                        (_%$%E186687186699%_)))))
                              (_%$%E186687186699%_))))
                      (_%$%E186687186699%_)))))
          (_%$%E186686186726%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx186629%_ _%form186630%_)
        (let* ((_%$%e186631186641%_ _%stx186629%_)
               (_%$%E186633186645%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e186631186641%_)))
               (_%$%E186632186670%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e186631186641%_)
                      (let ((_%$%e186634186649%_
                             (gx#syntax-e _%$%e186631186641%_)))
                        (let ((_%$%hd186635186652%_
                               (##car _%$%e186634186649%_))
                              (_%$%tl186636186654%_
                               (##cdr _%$%e186634186649%_)))
                          (if (gx#stx-pair? _%$%tl186636186654%_)
                              (let ((_%$%e186637186657%_
                                     (gx#syntax-e _%$%tl186636186654%_)))
                                (let ((_%$%hd186638186660%_
                                       (##car _%$%e186637186657%_))
                                      (_%$%tl186639186662%_
                                       (##cdr _%$%e186637186657%_)))
                                  (let* ((_%hd186665%_ _%$%hd186638186660%_)
                                         (_%body186667%_ _%$%tl186639186662%_))
                                    (if (gx#core-expand-let-bind? _%hd186665%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd186665%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form186630%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd186665%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd186665%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx186629%_
                                                               _%body186667%_)
                                                              '())))
                                            (gx#stx-source _%stx186629%_)))
                                         gx#current-expander-context
                                         (let ((__obj188212
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj188212)
                                           __obj188212))
                                        (_%$%E186633186645%_)))))
                              (_%$%E186633186645%_))))
                      (_%$%E186633186645%_)))))
          (_%$%E186632186670%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx186677%_)
        (let ((_%form186679%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx186677%_ _%form186679%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g188231_
        (let ((_g188232_ (##length _g188231_)))
          (cond ((##fx= _g188232_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g188231_))
                ((##fx= _g188232_ 2)
                 (apply gx#core-expand-letrec-values%__% _g188231_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g188231_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx186626%_)
        (gx#core-expand-letrec-values%__% _%stx186626%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx186583%_)
        (if (gx#stx-list? _%stx186583%_)
            (gx#stx-andmap
             (lambda (_%bind186585%_)
               (let* ((_%$%e186586186596%_ _%bind186585%_)
                      (_%$%E186588186600%_ (lambda () '#f))
                      (_%$%E186587186622%_
                       (lambda ()
                         (if (gx#stx-pair? _%$%e186586186596%_)
                             (let ((_%$%e186589186604%_
                                    (gx#syntax-e _%$%e186586186596%_)))
                               (let ((_%$%hd186590186607%_
                                      (##car _%$%e186589186604%_))
                                     (_%$%tl186591186609%_
                                      (##cdr _%$%e186589186604%_)))
                                 (let ((_%hd186612%_ _%$%hd186590186607%_))
                                   (if (gx#stx-pair? _%$%tl186591186609%_)
                                       (let ((_%$%e186592186614%_
                                              (gx#syntax-e
                                               _%$%tl186591186609%_)))
                                         (let ((_%$%hd186593186617%_
                                                (##car _%$%e186592186614%_))
                                               (_%$%tl186594186619%_
                                                (##cdr _%$%e186592186614%_)))
                                           (if (gx#stx-null?
                                                _%$%tl186594186619%_)
                                               (gx#core-bind-values?
                                                _%hd186612%_)
                                               (_%$%E186588186600%_))))
                                       (_%$%E186588186600%_)))))
                             (_%$%E186588186600%_)))))
                 (_%$%E186587186622%_)))
             _%stx186583%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind186542%_)
        (let* ((_%$%e186543186553%_ _%bind186542%_)
               (_%$%E186545186557%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e186543186553%_)))
               (_%$%E186544186579%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e186543186553%_)
                      (let ((_%$%e186546186561%_
                             (gx#syntax-e _%$%e186543186553%_)))
                        (let ((_%$%hd186547186564%_
                               (##car _%$%e186546186561%_))
                              (_%$%tl186548186566%_
                               (##cdr _%$%e186546186561%_)))
                          (if (gx#stx-pair? _%$%tl186548186566%_)
                              (let ((_%$%e186549186569%_
                                     (gx#syntax-e _%$%tl186548186566%_)))
                                (let ((_%$%hd186550186572%_
                                       (##car _%$%e186549186569%_))
                                      (_%$%tl186551186574%_
                                       (##cdr _%$%e186549186569%_)))
                                  (let ((_%expr186577%_ _%$%hd186550186572%_))
                                    (if (gx#stx-null? _%$%tl186551186574%_)
                                        (gx#core-expand-expression
                                         _%expr186577%_)
                                        (_%$%E186545186557%_)))))
                              (_%$%E186545186557%_))))
                      (_%$%E186545186557%_)))))
          (_%$%E186544186579%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind186501%_)
        (let* ((_%$%e186502186512%_ _%bind186501%_)
               (_%$%E186504186516%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e186502186512%_)))
               (_%$%E186503186538%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e186502186512%_)
                      (let ((_%$%e186505186520%_
                             (gx#syntax-e _%$%e186502186512%_)))
                        (let ((_%$%hd186506186523%_
                               (##car _%$%e186505186520%_))
                              (_%$%tl186507186525%_
                               (##cdr _%$%e186505186520%_)))
                          (let ((_%hd186528%_ _%$%hd186506186523%_))
                            (if (gx#stx-pair? _%$%tl186507186525%_)
                                (let ((_%$%e186508186530%_
                                       (gx#syntax-e _%$%tl186507186525%_)))
                                  (let ((_%$%hd186509186533%_
                                         (##car _%$%e186508186530%_))
                                        (_%$%tl186510186535%_
                                         (##cdr _%$%e186508186530%_)))
                                    (if (gx#stx-null? _%$%tl186510186535%_)
                                        (gx#core-bind-values!__0 _%hd186528%_)
                                        (_%$%E186504186516%_))))
                                (_%$%E186504186516%_)))))
                      (_%$%E186504186516%_)))))
          (_%$%E186503186538%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind186459%_ _%expr186460%_)
        (let* ((_%$%e186461186471%_ _%bind186459%_)
               (_%$%E186463186475%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e186461186471%_)))
               (_%$%E186462186497%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e186461186471%_)
                      (let ((_%$%e186464186479%_
                             (gx#syntax-e _%$%e186461186471%_)))
                        (let ((_%$%hd186465186482%_
                               (##car _%$%e186464186479%_))
                              (_%$%tl186466186484%_
                               (##cdr _%$%e186464186479%_)))
                          (let ((_%hd186487%_ _%$%hd186465186482%_))
                            (if (gx#stx-pair? _%$%tl186466186484%_)
                                (let ((_%$%e186467186489%_
                                       (gx#syntax-e _%$%tl186466186484%_)))
                                  (let ((_%$%hd186468186492%_
                                         (##car _%$%e186467186489%_))
                                        (_%$%tl186469186494%_
                                         (##cdr _%$%e186467186489%_)))
                                    (if (gx#stx-null? _%$%tl186469186494%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd186487%_)
                                              (cons _%expr186460%_ '()))
                                        (_%$%E186463186475%_))))
                                (_%$%E186463186475%_)))))
                      (_%$%E186463186475%_)))))
          (_%$%E186462186497%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx186413%_)
        (let* ((_%$%e186414186424%_ _%stx186413%_)
               (_%$%E186416186428%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e186414186424%_)))
               (_%$%E186415186455%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e186414186424%_)
                      (let ((_%$%e186417186432%_
                             (gx#syntax-e _%$%e186414186424%_)))
                        (let ((_%$%hd186418186435%_
                               (##car _%$%e186417186432%_))
                              (_%$%tl186419186437%_
                               (##cdr _%$%e186417186432%_)))
                          (if (gx#stx-pair? _%$%tl186419186437%_)
                              (let ((_%$%e186420186440%_
                                     (gx#syntax-e _%$%tl186419186437%_)))
                                (let ((_%$%hd186421186443%_
                                       (##car _%$%e186420186440%_))
                                      (_%$%tl186422186445%_
                                       (##cdr _%$%e186420186440%_)))
                                  (let* ((_%hd186448%_ _%$%hd186421186443%_)
                                         (_%body186450%_ _%$%tl186422186445%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd186448%_)
                                        (let ((_%expanders186452%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd186448%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd186448%_
                                              _%expanders186452%_)
                                             (gx#core-expand-local-block
                                              _%stx186413%_
                                              _%body186450%_))
                                           gx#current-expander-context
                                           (let ((__obj188213
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj188213)
                                             __obj188213)))
                                        (_%$%E186416186428%_)))))
                              (_%$%E186416186428%_))))
                      (_%$%E186416186428%_)))))
          (_%$%E186415186455%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx186362%_)
        (let* ((_%$%e186363186373%_ _%stx186362%_)
               (_%$%E186365186377%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e186363186373%_)))
               (_%$%E186364186409%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e186363186373%_)
                      (let ((_%$%e186366186381%_
                             (gx#syntax-e _%$%e186363186373%_)))
                        (let ((_%$%hd186367186384%_
                               (##car _%$%e186366186381%_))
                              (_%$%tl186368186386%_
                               (##cdr _%$%e186366186381%_)))
                          (if (gx#stx-pair? _%$%tl186368186386%_)
                              (let ((_%$%e186369186389%_
                                     (gx#syntax-e _%$%tl186368186386%_)))
                                (let ((_%$%hd186370186392%_
                                       (##car _%$%e186369186389%_))
                                      (_%$%tl186371186394%_
                                       (##cdr _%$%e186369186389%_)))
                                  (let* ((_%hd186397%_ _%$%hd186370186392%_)
                                         (_%body186399%_ _%$%tl186371186394%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd186397%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd186397%_
                                            (make-list
                                             (gx#stx-length _%hd186397%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%$%g186401186404%_
                                                     _%$%g186402186406%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%$%g186401186404%_
                                               _%$%g186402186406%_
                                               '#t))
                                            _%hd186397%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd186397%_))
                                           (gx#core-expand-local-block
                                            _%stx186362%_
                                            _%body186399%_))
                                         gx#current-expander-context
                                         (let ((__obj188214
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj188214)
                                           __obj188214))
                                        (_%$%E186365186377%_)))))
                              (_%$%E186365186377%_))))
                      (_%$%E186365186377%_)))))
          (_%$%E186364186409%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx186319%_)
        (if (gx#stx-list? _%stx186319%_)
            (gx#stx-andmap
             (lambda (_%bind186321%_)
               (let* ((_%$%e186322186332%_ _%bind186321%_)
                      (_%$%E186324186336%_ (lambda () '#f))
                      (_%$%E186323186358%_
                       (lambda ()
                         (if (gx#stx-pair? _%$%e186322186332%_)
                             (let ((_%$%e186325186340%_
                                    (gx#syntax-e _%$%e186322186332%_)))
                               (let ((_%$%hd186326186343%_
                                      (##car _%$%e186325186340%_))
                                     (_%$%tl186327186345%_
                                      (##cdr _%$%e186325186340%_)))
                                 (let ((_%hd186348%_ _%$%hd186326186343%_))
                                   (if (gx#stx-pair? _%$%tl186327186345%_)
                                       (let ((_%$%e186328186350%_
                                              (gx#syntax-e
                                               _%$%tl186327186345%_)))
                                         (let ((_%$%hd186329186353%_
                                                (##car _%$%e186328186350%_))
                                               (_%$%tl186330186355%_
                                                (##cdr _%$%e186328186350%_)))
                                           (if (gx#stx-null?
                                                _%$%tl186330186355%_)
                                               (gx#identifier? _%hd186348%_)
                                               (_%$%E186324186336%_))))
                                       (_%$%E186324186336%_)))))
                             (_%$%E186324186336%_)))))
                 (_%$%E186323186358%_)))
             _%stx186319%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind186275%_)
        (let* ((_%$%e186276186286%_ _%bind186275%_)
               (_%$%E186278186290%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e186276186286%_)))
               (_%$%E186277186315%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e186276186286%_)
                      (let ((_%$%e186279186294%_
                             (gx#syntax-e _%$%e186276186286%_)))
                        (let ((_%$%hd186280186297%_
                               (##car _%$%e186279186294%_))
                              (_%$%tl186281186299%_
                               (##cdr _%$%e186279186294%_)))
                          (if (gx#stx-pair? _%$%tl186281186299%_)
                              (let ((_%$%e186282186302%_
                                     (gx#syntax-e _%$%tl186281186299%_)))
                                (let ((_%$%hd186283186305%_
                                       (##car _%$%e186282186302%_))
                                      (_%$%tl186284186307%_
                                       (##cdr _%$%e186282186302%_)))
                                  (let ((_%expr186310%_ _%$%hd186283186305%_))
                                    (if (gx#stx-null? _%$%tl186284186307%_)
                                        (let ((_g188233_
                                               (gx#core-expand-expression+1
                                                _%expr186310%_)))
                                          (begin
                                            (let ((_g188234_
                                                   (if (##values? _g188233_)
                                                       (##values-length
                                                        _g188233_)
                                                       1)))
                                              (if (not (##fx= _g188234_ 2))
                                                  (error "Context expects 2 values"
                                                         _g188234_)))
                                            (let ((_%_186312%_
                                                   (##values-ref _g188233_ 0))
                                                  (_%e186313%_
                                                   (##values-ref _g188233_ 1)))
                                              _%e186313%_)))
                                        (_%$%E186278186290%_)))))
                              (_%$%E186278186290%_))))
                      (_%$%E186278186290%_)))))
          (_%$%E186277186315%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind186220%_ _%e186221%_ _%rebind?186222%_)
        (let* ((_%$%e186223186233%_ _%bind186220%_)
               (_%$%E186225186237%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e186223186233%_)))
               (_%$%E186224186259%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e186223186233%_)
                      (let ((_%$%e186226186241%_
                             (gx#syntax-e _%$%e186223186233%_)))
                        (let ((_%$%hd186227186244%_
                               (##car _%$%e186226186241%_))
                              (_%$%tl186228186246%_
                               (##cdr _%$%e186226186241%_)))
                          (let ((_%id186249%_ _%$%hd186227186244%_))
                            (if (gx#stx-pair? _%$%tl186228186246%_)
                                (let ((_%$%e186229186251%_
                                       (gx#syntax-e _%$%tl186228186246%_)))
                                  (let ((_%$%hd186230186254%_
                                         (##car _%$%e186229186251%_))
                                        (_%$%tl186231186256%_
                                         (##cdr _%$%e186229186251%_)))
                                    (if (gx#stx-null? _%$%tl186231186256%_)
                                        (gx#core-bind-syntax!__1
                                         _%id186249%_
                                         _%e186221%_
                                         _%rebind?186222%_)
                                        (_%$%E186225186237%_))))
                                (_%$%E186225186237%_)))))
                      (_%$%E186225186237%_)))))
          (_%$%E186224186259%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind186266%_ _%e186267%_)
        (let ((_%rebind?186269%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind186266%_
           _%e186267%_
           _%rebind?186269%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g188235_
        (let ((_g188236_ (##length _g188235_)))
          (cond ((##fx= _g188236_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g188235_))
                ((##fx= _g188236_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g188235_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g188235_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx186178%_)
        (let* ((_%$%e186179186189%_ _%stx186178%_)
               (_%$%E186181186193%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e186179186189%_)))
               (_%$%E186180186215%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e186179186189%_)
                      (let ((_%$%e186182186197%_
                             (gx#syntax-e _%$%e186179186189%_)))
                        (let ((_%$%hd186183186200%_
                               (##car _%$%e186182186197%_))
                              (_%$%tl186184186202%_
                               (##cdr _%$%e186182186197%_)))
                          (if (gx#stx-pair? _%$%tl186184186202%_)
                              (let ((_%$%e186185186205%_
                                     (gx#syntax-e _%$%tl186184186202%_)))
                                (let ((_%$%hd186186186208%_
                                       (##car _%$%e186185186205%_))
                                      (_%$%tl186187186210%_
                                       (##cdr _%$%e186185186205%_)))
                                  (let ((_%expr186213%_ _%$%hd186186186208%_))
                                    (if (gx#stx-null? _%$%tl186187186210%_)
                                        (gx#core-expand-expression
                                         _%expr186213%_)
                                        (_%$%E186181186193%_)))))
                              (_%$%E186181186193%_))))
                      (_%$%E186181186193%_)))))
          (_%$%E186180186215%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx186137%_)
        (let* ((_%$%e186138186148%_ _%stx186137%_)
               (_%$%E186140186152%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e186138186148%_)))
               (_%$%E186139186174%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e186138186148%_)
                      (let ((_%$%e186141186156%_
                             (gx#syntax-e _%$%e186138186148%_)))
                        (let ((_%$%hd186142186159%_
                               (##car _%$%e186141186156%_))
                              (_%$%tl186143186161%_
                               (##cdr _%$%e186141186156%_)))
                          (if (gx#stx-pair? _%$%tl186143186161%_)
                              (let ((_%$%e186144186164%_
                                     (gx#syntax-e _%$%tl186143186161%_)))
                                (let ((_%$%hd186145186167%_
                                       (##car _%$%e186144186164%_))
                                      (_%$%tl186146186169%_
                                       (##cdr _%$%e186144186164%_)))
                                  (let ((_%e186172%_ _%$%hd186145186167%_))
                                    (if (gx#stx-null? _%$%tl186146186169%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e186172%_)
                                                     '()))
                                         (gx#stx-source _%stx186137%_))
                                        (_%$%E186140186152%_)))))
                              (_%$%E186140186152%_))))
                      (_%$%E186140186152%_)))))
          (_%$%E186139186174%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx186096%_)
        (let* ((_%$%e186097186107%_ _%stx186096%_)
               (_%$%E186099186111%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e186097186107%_)))
               (_%$%E186098186133%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e186097186107%_)
                      (let ((_%$%e186100186115%_
                             (gx#syntax-e _%$%e186097186107%_)))
                        (let ((_%$%hd186101186118%_
                               (##car _%$%e186100186115%_))
                              (_%$%tl186102186120%_
                               (##cdr _%$%e186100186115%_)))
                          (if (gx#stx-pair? _%$%tl186102186120%_)
                              (let ((_%$%e186103186123%_
                                     (gx#syntax-e _%$%tl186102186120%_)))
                                (let ((_%$%hd186104186126%_
                                       (##car _%$%e186103186123%_))
                                      (_%$%tl186105186128%_
                                       (##cdr _%$%e186103186123%_)))
                                  (let ((_%e186131%_ _%$%hd186104186126%_))
                                    (if (gx#stx-null? _%$%tl186105186128%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e186131%_)
                                                     '()))
                                         (gx#stx-source _%stx186096%_))
                                        (_%$%E186099186111%_)))))
                              (_%$%E186099186111%_))))
                      (_%$%E186099186111%_)))))
          (_%$%E186098186133%_))))
    (define gx#core-expand-call%
      (lambda (_%stx185990%_)
        (letrec ((_%expand-runtime-call185992%_
                  (lambda (_%rator-expr186093%_ _%args186094%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons*
                      '%#call
                      _%rator-expr186093%_
                      (gx#stx-map1 gx#core-expand-expression _%args186094%_))
                     (gx#stx-source _%stx185990%_)))))
          (let* ((_%$%e185993186003%_ _%stx185990%_)
                 (_%$%E185995186007%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e185993186003%_)))
                 (_%$%E185994186089%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e185993186003%_)
                        (let ((_%$%e185996186011%_
                               (gx#syntax-e _%$%e185993186003%_)))
                          (let ((_%$%hd185997186014%_
                                 (##car _%$%e185996186011%_))
                                (_%$%tl185998186016%_
                                 (##cdr _%$%e185996186011%_)))
                            (if (gx#stx-pair? _%$%tl185998186016%_)
                                (let ((_%$%e185999186019%_
                                       (gx#syntax-e _%$%tl185998186016%_)))
                                  (let ((_%$%hd186000186022%_
                                         (##car _%$%e185999186019%_))
                                        (_%$%tl186001186024%_
                                         (##cdr _%$%e185999186019%_)))
                                    (let* ((_%rator186027%_
                                            _%$%hd186000186022%_)
                                           (_%args186029%_
                                            _%$%tl186001186024%_))
                                      (if (gx#stx-list? _%args186029%_)
                                          (let* ((_%rator-expr186031%_
                                                  (gx#core-expand-expression
                                                   _%rator186027%_))
                                                 (_%$%e186032186042%_
                                                  _%rator-expr186031%_)
                                                 (_%$%E186034186046%_
                                                  (lambda ()
                                                    (_%expand-runtime-call185992%_
                                                     _%rator-expr186031%_
                                                     _%args186029%_)))
                                                 (_%$%E186033186085%_
                                                  (lambda ()
                                                    (if (gx#stx-pair?
                                                         _%$%e186032186042%_)
                                                        (let ((_%$%e186035186050%_
                                                               (gx#syntax-e
                                                                _%$%e186032186042%_)))
                                                          (let ((_%$%hd186036186053%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e186035186050%_))
                        (_%$%tl186037186055%_ (##cdr _%$%e186035186050%_)))
                    (if (and (gx#identifier? _%$%hd186036186053%_)
                             (gx#core-identifier=?
                              _%$%hd186036186053%_
                              '%#ref))
                        (if (gx#stx-pair? _%$%tl186037186055%_)
                            (let ((_%$%e186038186058%_
                                   (gx#syntax-e _%$%tl186037186055%_)))
                              (let ((_%$%hd186039186061%_
                                     (##car _%$%e186038186058%_))
                                    (_%$%tl186040186063%_
                                     (##cdr _%$%e186038186058%_)))
                                (let ((_%id186066%_ _%$%hd186039186061%_))
                                  (if (gx#stx-null? _%$%tl186040186063%_)
                                      (let ((_%$e186068%_
                                             (gx#resolve-identifier__0
                                              _%id186066%_)))
                                        (if _%$e186068%_
                                            (let _%again186073%_ ((_%bind186075%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e186068%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_%$e186077%_
                                                     (if (##structure-instance-of?
                                                          _%bind186075%_
                                                          'gx#runtime-binding::t)
                                                         (##unchecked-structure-ref
                                                          _%bind186075%_
                                                          '6
                                                          '#f
                                                          '#f)
                                                         '#f)))
                                                (if _%$e186077%_
                                                    (gx#core-expand-expression
                                                     (gx#stx-wrap-source
                                                      (cons _%$e186077%_
                                                            _%args186029%_)
                                                      (gx#stx-source
                                                       _%stx185990%_)))
                                                    (if (##structure-direct-instance-of?
                                                         _%bind186075%_
                                                         'gx#import-binding::t)
                                                        (_%again186073%_
                                                         (##unchecked-structure-ref
                                                          _%bind186075%_
                                                          '5
                                                          '#f
                                                          '#f))
                                                        (_%expand-runtime-call185992%_
                                                         _%rator-expr186031%_
                                                         _%args186029%_)))))
                                            (_%expand-runtime-call185992%_
                                             _%rator-expr186031%_
                                             _%args186029%_)))
                                      (_%$%E186034186046%_)))))
                            (_%$%E186034186046%_))
                        (_%$%E186034186046%_))))
                (_%$%E186034186046%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%E186033186085%_))
                                          (_%$%E185995186007%_)))))
                                (_%$%E185995186007%_))))
                        (_%$%E185995186007%_)))))
            (_%$%E185994186089%_)))))
    (define gx#core-expand-if%
      (lambda (_%stx185923%_)
        (let* ((_%$%e185924185940%_ _%stx185923%_)
               (_%$%E185926185944%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e185924185940%_)))
               (_%$%E185925185986%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e185924185940%_)
                      (let ((_%$%e185927185948%_
                             (gx#syntax-e _%$%e185924185940%_)))
                        (let ((_%$%hd185928185951%_
                               (##car _%$%e185927185948%_))
                              (_%$%tl185929185953%_
                               (##cdr _%$%e185927185948%_)))
                          (if (gx#stx-pair? _%$%tl185929185953%_)
                              (let ((_%$%e185930185956%_
                                     (gx#syntax-e _%$%tl185929185953%_)))
                                (let ((_%$%hd185931185959%_
                                       (##car _%$%e185930185956%_))
                                      (_%$%tl185932185961%_
                                       (##cdr _%$%e185930185956%_)))
                                  (let ((_%test185964%_ _%$%hd185931185959%_))
                                    (if (gx#stx-pair? _%$%tl185932185961%_)
                                        (let ((_%$%e185933185966%_
                                               (gx#syntax-e
                                                _%$%tl185932185961%_)))
                                          (let ((_%$%hd185934185969%_
                                                 (##car _%$%e185933185966%_))
                                                (_%$%tl185935185971%_
                                                 (##cdr _%$%e185933185966%_)))
                                            (let ((_%K185974%_
                                                   _%$%hd185934185969%_))
                                              (if (gx#stx-pair?
                                                   _%$%tl185935185971%_)
                                                  (let ((_%$%e185936185976%_
                                                         (gx#syntax-e
                                                          _%$%tl185935185971%_)))
                                                    (let ((_%$%hd185937185979%_
                                                           (##car _%$%e185936185976%_))
                                                          (_%$%tl185938185981%_
                                                           (##cdr _%$%e185936185976%_)))
                                                      (let ((_%E185984%_
                                                             _%$%hd185937185979%_))
                                                        (if (gx#stx-null?
                                                             _%$%tl185938185981%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test185964%_)
                                 (cons (gx#core-expand-expression _%K185974%_)
                                       (cons (gx#core-expand-expression
                                              _%E185984%_)
                                             '()))))
                     (gx#stx-source _%stx185923%_))
                    (_%$%E185926185944%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E185926185944%_)))))
                                        (_%$%E185926185944%_)))))
                              (_%$%E185926185944%_))))
                      (_%$%E185926185944%_)))))
          (_%$%E185925185986%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx185882%_)
        (let* ((_%$%e185883185893%_ _%stx185882%_)
               (_%$%E185885185897%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e185883185893%_)))
               (_%$%E185884185919%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e185883185893%_)
                      (let ((_%$%e185886185901%_
                             (gx#syntax-e _%$%e185883185893%_)))
                        (let ((_%$%hd185887185904%_
                               (##car _%$%e185886185901%_))
                              (_%$%tl185888185906%_
                               (##cdr _%$%e185886185901%_)))
                          (if (gx#stx-pair? _%$%tl185888185906%_)
                              (let ((_%$%e185889185909%_
                                     (gx#syntax-e _%$%tl185888185906%_)))
                                (let ((_%$%hd185890185912%_
                                       (##car _%$%e185889185909%_))
                                      (_%$%tl185891185914%_
                                       (##cdr _%$%e185889185909%_)))
                                  (let ((_%id185917%_ _%$%hd185890185912%_))
                                    (if (gx#stx-null? _%$%tl185891185914%_)
                                        (if (gx#identifier? _%id185917%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id185917%_
                                                          _%stx185882%_)
                                                         '()))
                                             (gx#stx-source _%stx185882%_))
                                            (_%$%E185885185897%_))
                                        (_%$%E185885185897%_)))))
                              (_%$%E185885185897%_))))
                      (_%$%E185885185897%_)))))
          (_%$%E185884185919%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx185828%_)
        (let* ((_%$%e185829185842%_ _%stx185828%_)
               (_%$%E185831185846%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e185829185842%_)))
               (_%$%E185830185878%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e185829185842%_)
                      (let ((_%$%e185832185850%_
                             (gx#syntax-e _%$%e185829185842%_)))
                        (let ((_%$%hd185833185853%_
                               (##car _%$%e185832185850%_))
                              (_%$%tl185834185855%_
                               (##cdr _%$%e185832185850%_)))
                          (if (gx#stx-pair? _%$%tl185834185855%_)
                              (let ((_%$%e185835185858%_
                                     (gx#syntax-e _%$%tl185834185855%_)))
                                (let ((_%$%hd185836185861%_
                                       (##car _%$%e185835185858%_))
                                      (_%$%tl185837185863%_
                                       (##cdr _%$%e185835185858%_)))
                                  (let ((_%id185866%_ _%$%hd185836185861%_))
                                    (if (gx#stx-pair? _%$%tl185837185863%_)
                                        (let ((_%$%e185838185868%_
                                               (gx#syntax-e
                                                _%$%tl185837185863%_)))
                                          (let ((_%$%hd185839185871%_
                                                 (##car _%$%e185838185868%_))
                                                (_%$%tl185840185873%_
                                                 (##cdr _%$%e185838185868%_)))
                                            (let ((_%expr185876%_
                                                   _%$%hd185839185871%_))
                                              (if (gx#stx-null?
                                                   _%$%tl185840185873%_)
                                                  (if (gx#identifier?
                                                       _%id185866%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id185866%_
                            _%stx185828%_)
                           (cons (gx#core-expand-expression _%expr185876%_)
                                 '())))
               (gx#stx-source _%stx185828%_))
              (_%$%E185831185846%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E185831185846%_)))))
                                        (_%$%E185831185846%_)))))
                              (_%$%E185831185846%_))))
                      (_%$%E185831185846%_)))))
          (_%$%E185830185878%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx185673%_)
        (letrec ((_%generate185675%_
                  (lambda (_%body185705%_)
                    (let _%lp185707%_ ((_%rest185709%_ _%body185705%_)
                                       (_%ns185710%_
                                        (gx#core-context-namespace__0))
                                       (_%r185711%_ '()))
                      (let* ((_%$%e185712185727%_ _%rest185709%_)
                             (_%$%E185725185731%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%$%e185712185727%_)))
                             (_%$%E185721185735%_
                              (lambda ()
                                (if (gx#stx-null? _%$%e185712185727%_)
                                    (reverse _%r185711%_)
                                    (_%$%E185725185731%_))))
                             (_%$%E185714185792%_
                              (lambda ()
                                (if (gx#stx-pair? _%$%e185712185727%_)
                                    (let ((_%$%e185722185739%_
                                           (gx#syntax-e _%$%e185712185727%_)))
                                      (let ((_%$%hd185723185742%_
                                             (##car _%$%e185722185739%_))
                                            (_%$%tl185724185744%_
                                             (##cdr _%$%e185722185739%_)))
                                        (let* ((_%hd185747%_
                                                _%$%hd185723185742%_)
                                               (_%rest185749%_
                                                _%$%tl185724185744%_))
                                          (if (gx#identifier? _%hd185747%_)
                                              (_%lp185707%_
                                               _%rest185749%_
                                               _%ns185710%_
                                               (cons (cons _%hd185747%_
                                                           (cons (if _%ns185710%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd185747%_
                              _%ns185710%_
                              '"#"
                              _%hd185747%_)
                             _%hd185747%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r185711%_))
                                              (let* ((_%$%e185750185760%_
                                                      _%hd185747%_)
                                                     (_%$%E185752185764%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%$%e185750185760%_)))
                                                     (_%$%E185751185788%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%$%e185750185760%_)
                                                            (let ((_%$%e185753185768%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%e185750185760%_)))
                      (let ((_%$%hd185754185771%_ (##car _%$%e185753185768%_))
                            (_%$%tl185755185773%_ (##cdr _%$%e185753185768%_)))
                        (let ((_%id185776%_ _%$%hd185754185771%_))
                          (if (gx#stx-pair? _%$%tl185755185773%_)
                              (let ((_%$%e185756185778%_
                                     (gx#syntax-e _%$%tl185755185773%_)))
                                (let ((_%$%hd185757185781%_
                                       (##car _%$%e185756185778%_))
                                      (_%$%tl185758185783%_
                                       (##cdr _%$%e185756185778%_)))
                                  (let ((_%eid185786%_ _%$%hd185757185781%_))
                                    (if (gx#stx-null? _%$%tl185758185783%_)
                                        (if (and (gx#identifier? _%id185776%_)
                                                 (gx#identifier?
                                                  _%eid185786%_))
                                            (_%lp185707%_
                                             _%rest185749%_
                                             _%ns185710%_
                                             (cons (cons _%id185776%_
                                                         (cons _%eid185786%_
                                                               '()))
                                                   _%r185711%_))
                                            (_%$%E185752185764%_))
                                        (_%$%E185752185764%_)))))
                              (_%$%E185752185764%_)))))
                    (_%$%E185752185764%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%E185751185788%_))))))
                                    (_%$%E185721185735%_))))
                             (_%$%E185713185824%_
                              (lambda ()
                                (if (gx#stx-pair? _%$%e185712185727%_)
                                    (let ((_%$%e185715185796%_
                                           (gx#syntax-e _%$%e185712185727%_)))
                                      (let ((_%$%hd185716185799%_
                                             (##car _%$%e185715185796%_))
                                            (_%$%tl185717185801%_
                                             (##cdr _%$%e185715185796%_)))
                                        (if (eq? (gx#stx-e
                                                  _%$%hd185716185799%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%$%tl185717185801%_)
                                                (let ((_%$%e185718185804%_
                                                       (gx#syntax-e
                                                        _%$%tl185717185801%_)))
                                                  (let ((_%$%hd185719185807%_
                                                         (##car _%$%e185718185804%_))
                                                        (_%$%tl185720185809%_
                                                         (##cdr _%$%e185718185804%_)))
                                                    (let* ((_%ns185812%_
                                                            _%$%hd185719185807%_)
                                                           (_%rest185814%_
                                                            _%$%tl185720185809%_)
                                                           (_%ns185822%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns185812%_)
                        (symbol->string (gx#stx-e _%ns185812%_))
                        (if (or (gx#stx-string? _%ns185812%_)
                                (gx#stx-false? _%ns185812%_))
                            (gx#stx-e _%ns185812%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx185673%_
                             _%ns185812%_)))))
              (_%lp185707%_ _%rest185814%_ _%ns185822%_ _%r185711%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%E185714185792%_))
                                            (_%$%E185714185792%_))))
                                    (_%$%E185714185792%_)))))
                        (_%$%E185713185824%_))))))
          (let* ((_%$%e185676185683%_ _%stx185673%_)
                 (_%$%E185678185687%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e185676185683%_)))
                 (_%$%E185677185701%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e185676185683%_)
                        (let ((_%$%e185679185691%_
                               (gx#syntax-e _%$%e185676185683%_)))
                          (let ((_%$%hd185680185694%_
                                 (##car _%$%e185679185691%_))
                                (_%$%tl185681185696%_
                                 (##cdr _%$%e185679185691%_)))
                            (let ((_%body185699%_ _%$%tl185681185696%_))
                              (if (gx#stx-list? _%body185699%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate185675%_ _%body185699%_))
                                  (_%$%E185678185687%_)))))
                        (_%$%E185678185687%_)))))
            (_%$%E185677185701%_)))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx185630%_)
        (let* ((_%$%e185631185641%_ _%stx185630%_)
               (_%$%E185633185645%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e185631185641%_)))
               (_%$%E185632185669%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e185631185641%_)
                      (let ((_%$%e185634185649%_
                             (gx#syntax-e _%$%e185631185641%_)))
                        (let ((_%$%hd185635185652%_
                               (##car _%$%e185634185649%_))
                              (_%$%tl185636185654%_
                               (##cdr _%$%e185634185649%_)))
                          (if (gx#stx-pair? _%$%tl185636185654%_)
                              (let ((_%$%e185637185657%_
                                     (gx#syntax-e _%$%tl185636185654%_)))
                                (let ((_%$%hd185638185660%_
                                       (##car _%$%e185637185657%_))
                                      (_%$%tl185639185662%_
                                       (##cdr _%$%e185637185657%_)))
                                  (let* ((_%hd185665%_ _%$%hd185638185660%_)
                                         (_%body185667%_ _%$%tl185639185662%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd185665%_)
                                             (gx#stx-list? _%body185667%_)
                                             (not (gx#stx-null?
                                                   _%body185667%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd185665%_)
                                         _%body185667%_)
                                        (_%$%E185633185645%_)))))
                              (_%$%E185633185645%_))))
                      (_%$%E185633185645%_)))))
          (_%$%E185632185669%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx185566%_)
        (letrec ((_%generate185568%_
                  (lambda (_%clause185598%_)
                    (let* ((_%$%e185599185606%_ _%clause185598%_)
                           (_%$%E185601185610%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx185566%_
                               _%clause185598%_)))
                           (_%$%E185600185626%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e185599185606%_)
                                  (let ((_%$%e185602185614%_
                                         (gx#syntax-e _%$%e185599185606%_)))
                                    (let ((_%$%hd185603185617%_
                                           (##car _%$%e185602185614%_))
                                          (_%$%tl185604185619%_
                                           (##cdr _%$%e185602185614%_)))
                                      (let* ((_%hd185622%_
                                              _%$%hd185603185617%_)
                                             (_%body185624%_
                                              _%$%tl185604185619%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd185622%_)
                                                 (gx#stx-list? _%body185624%_)
                                                 (not (gx#stx-null?
                                                       _%body185624%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd185622%_)
                                                   _%body185624%_)
                                             (gx#stx-source _%clause185598%_))
                                            (_%$%E185601185610%_)))))
                                  (_%$%E185601185610%_)))))
                      (_%$%E185600185626%_)))))
          (let* ((_%$%e185569185576%_ _%stx185566%_)
                 (_%$%E185571185580%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e185569185576%_)))
                 (_%$%E185570185594%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e185569185576%_)
                        (let ((_%$%e185572185584%_
                               (gx#syntax-e _%$%e185569185576%_)))
                          (let ((_%$%hd185573185587%_
                                 (##car _%$%e185572185584%_))
                                (_%$%tl185574185589%_
                                 (##cdr _%$%e185572185584%_)))
                            (let ((_%clauses185592%_ _%$%tl185574185589%_))
                              (if (gx#stx-list? _%clauses185592%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate185568%_
                                    _%clauses185592%_))
                                  (_%$%E185571185580%_)))))
                        (_%$%E185571185580%_)))))
            (_%$%E185570185594%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx185467%_ _%form185468%_)
        (letrec ((_%generate185470%_
                  (lambda (_%bind185513%_)
                    (let* ((_%$%e185514185524%_ _%bind185513%_)
                           (_%$%E185516185528%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx185467%_
                               _%bind185513%_)))
                           (_%$%E185515185552%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e185514185524%_)
                                  (let ((_%$%e185517185532%_
                                         (gx#syntax-e _%$%e185514185524%_)))
                                    (let ((_%$%hd185518185535%_
                                           (##car _%$%e185517185532%_))
                                          (_%$%tl185519185537%_
                                           (##cdr _%$%e185517185532%_)))
                                      (let ((_%ids185540%_
                                             _%$%hd185518185535%_))
                                        (if (gx#stx-pair? _%$%tl185519185537%_)
                                            (let ((_%$%e185520185542%_
                                                   (gx#syntax-e
                                                    _%$%tl185519185537%_)))
                                              (let ((_%$%hd185521185545%_
                                                     (##car _%$%e185520185542%_))
                                                    (_%$%tl185522185547%_
                                                     (##cdr _%$%e185520185542%_)))
                                                (let ((_%expr185550%_
                                                       _%$%hd185521185545%_))
                                                  (if (gx#stx-null?
                                                       _%$%tl185522185547%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids185540%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids185540%_)
                        (cons _%expr185550%_ '()))
                  (_%$%E185516185528%_))
              (_%$%E185516185528%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%E185516185528%_)))))
                                  (_%$%E185516185528%_)))))
                      (_%$%E185515185552%_)))))
          (let* ((_%$%e185471185481%_ _%stx185467%_)
                 (_%$%E185473185485%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e185471185481%_)))
                 (_%$%E185472185509%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e185471185481%_)
                        (let ((_%$%e185474185489%_
                               (gx#syntax-e _%$%e185471185481%_)))
                          (let ((_%$%hd185475185492%_
                                 (##car _%$%e185474185489%_))
                                (_%$%tl185476185494%_
                                 (##cdr _%$%e185474185489%_)))
                            (if (gx#stx-pair? _%$%tl185476185494%_)
                                (let ((_%$%e185477185497%_
                                       (gx#syntax-e _%$%tl185476185494%_)))
                                  (let ((_%$%hd185478185500%_
                                         (##car _%$%e185477185497%_))
                                        (_%$%tl185479185502%_
                                         (##cdr _%$%e185477185497%_)))
                                    (let* ((_%hd185505%_ _%$%hd185478185500%_)
                                           (_%body185507%_
                                            _%$%tl185479185502%_))
                                      (if (and (gx#stx-list? _%hd185505%_)
                                               (gx#stx-list? _%body185507%_)
                                               (not (gx#stx-null?
                                                     _%body185507%_)))
                                          (gx#core-cons*
                                           _%form185468%_
                                           (gx#stx-map1
                                            _%generate185470%_
                                            _%hd185505%_)
                                           _%body185507%_)
                                          (_%$%E185473185485%_)))))
                                (_%$%E185473185485%_))))
                        (_%$%E185473185485%_)))))
            (_%$%E185472185509%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx185559%_)
        (let ((_%form185561%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx185559%_ _%form185561%_))))
    (define gx#macro-expand-let-values
      (lambda _g188237_
        (let ((_g188238_ (##length _g188237_)))
          (cond ((##fx= _g188238_ 1)
                 (apply gx#macro-expand-let-values__0 _g188237_))
                ((##fx= _g188238_ 2)
                 (apply gx#macro-expand-let-values__% _g188237_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g188237_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx185464%_)
        (gx#macro-expand-let-values__% _%stx185464%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx185462%_)
        (gx#macro-expand-let-values__% _%stx185462%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx185353%_)
        (let* ((_%$%e185354185380%_ _%stx185353%_)
               (_%$%E185366185384%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e185354185380%_)))
               (_%$%E185356185426%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e185354185380%_)
                      (let ((_%$%e185367185388%_
                             (gx#syntax-e _%$%e185354185380%_)))
                        (let ((_%$%hd185368185391%_
                               (##car _%$%e185367185388%_))
                              (_%$%tl185369185393%_
                               (##cdr _%$%e185367185388%_)))
                          (if (gx#stx-pair? _%$%tl185369185393%_)
                              (let ((_%$%e185370185396%_
                                     (gx#syntax-e _%$%tl185369185393%_)))
                                (let ((_%$%hd185371185399%_
                                       (##car _%$%e185370185396%_))
                                      (_%$%tl185372185401%_
                                       (##cdr _%$%e185370185396%_)))
                                  (let ((_%test185404%_ _%$%hd185371185399%_))
                                    (if (gx#stx-pair? _%$%tl185372185401%_)
                                        (let ((_%$%e185373185406%_
                                               (gx#syntax-e
                                                _%$%tl185372185401%_)))
                                          (let ((_%$%hd185374185409%_
                                                 (##car _%$%e185373185406%_))
                                                (_%$%tl185375185411%_
                                                 (##cdr _%$%e185373185406%_)))
                                            (let ((_%K185414%_
                                                   _%$%hd185374185409%_))
                                              (if (gx#stx-pair?
                                                   _%$%tl185375185411%_)
                                                  (let ((_%$%e185376185416%_
                                                         (gx#syntax-e
                                                          _%$%tl185375185411%_)))
                                                    (let ((_%$%hd185377185419%_
                                                           (##car _%$%e185376185416%_))
                                                          (_%$%tl185378185421%_
                                                           (##cdr _%$%e185376185416%_)))
                                                      (let ((_%E185424%_
                                                             _%$%hd185377185419%_))
                                                        (if (gx#stx-null?
                                                             _%$%tl185378185421%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test185404%_
                                                             _%K185414%_
                                                             _%E185424%_)
                                                            (_%$%E185366185384%_)))))
                                                  (_%$%E185366185384%_)))))
                                        (_%$%E185366185384%_)))))
                              (_%$%E185366185384%_))))
                      (_%$%E185366185384%_))))
               (_%$%E185355185458%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e185354185380%_)
                      (let ((_%$%e185357185430%_
                             (gx#syntax-e _%$%e185354185380%_)))
                        (let ((_%$%hd185358185433%_
                               (##car _%$%e185357185430%_))
                              (_%$%tl185359185435%_
                               (##cdr _%$%e185357185430%_)))
                          (if (gx#stx-pair? _%$%tl185359185435%_)
                              (let ((_%$%e185360185438%_
                                     (gx#syntax-e _%$%tl185359185435%_)))
                                (let ((_%$%hd185361185441%_
                                       (##car _%$%e185360185438%_))
                                      (_%$%tl185362185443%_
                                       (##cdr _%$%e185360185438%_)))
                                  (let ((_%test185446%_ _%$%hd185361185441%_))
                                    (if (gx#stx-pair? _%$%tl185362185443%_)
                                        (let ((_%$%e185363185448%_
                                               (gx#syntax-e
                                                _%$%tl185362185443%_)))
                                          (let ((_%$%hd185364185451%_
                                                 (##car _%$%e185363185448%_))
                                                (_%$%tl185365185453%_
                                                 (##cdr _%$%e185363185448%_)))
                                            (let ((_%K185456%_
                                                   _%$%hd185364185451%_))
                                              (if (gx#stx-null?
                                                   _%$%tl185365185453%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test185446%_
                                                   _%K185456%_
                                                   '#!void)
                                                  (_%$%E185356185426%_)))))
                                        (_%$%E185356185426%_)))))
                              (_%$%E185356185426%_))))
                      (_%$%E185356185426%_)))))
          (_%$%E185355185458%_))))
    (define gx#free-identifier=?
      (lambda (_%xid185338%_ _%yid185339%_)
        (let ((_%xe185341%_ (gx#resolve-identifier__0 _%xid185338%_))
              (_%ye185342%_ (gx#resolve-identifier__0 _%yid185339%_)))
          (if (and _%xe185341%_ _%ye185342%_)
              (let ((_%$e185345%_ (eq? _%xe185341%_ _%ye185342%_)))
                (if _%$e185345%_
                    _%$e185345%_
                    (if (##structure-instance-of? _%xe185341%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye185342%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe185341%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye185342%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe185341%_ _%ye185342%_)
                  '#f
                  (gx#stx-eq? _%xid185338%_ _%yid185339%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid185319%_ _%yid185320%_)
        (letrec ((_%context185322%_
                  (lambda (_%e185336%_)
                    (if (##structure-direct-instance-of?
                         _%e185336%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e185336%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks185323%_
                  (lambda (_%e185331%_)
                    (if (symbol? _%e185331%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e185331%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e185331%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e185331%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap185324%_
                  (lambda (_%e185329%_)
                    (if (symbol? _%e185329%_)
                        _%e185329%_
                        (gx#syntax-local-unwrap _%e185329%_)))))
          (let ((_%x185326%_ (_%unwrap185324%_ _%xid185319%_))
                (_%y185327%_ (_%unwrap185324%_ _%yid185320%_)))
            (if (gx#stx-eq? _%x185326%_ _%y185327%_)
                (if (eq? (_%context185322%_ _%x185326%_)
                         (_%context185322%_ _%y185327%_))
                    (equal? (_%marks185323%_ _%x185326%_)
                            (_%marks185323%_ _%y185327%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx185317%_)
        (if (gx#identifier? _%stx185317%_)
            (gx#core-identifier=? _%stx185317%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx185315%_)
        (if (gx#identifier? _%stx185315%_)
            (gx#core-identifier=? _%stx185315%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx185258%_ _%where185259%_)
        (let _%lp185261%_ ((_%rest185263%_ (gx#syntax->list _%stx185258%_)))
          (let* ((_%$%rest185264185272%_ _%rest185263%_)
                 (_%$%else185266185280%_ (lambda () '#t))
                 (_%$%K185268185293%_
                  (lambda (_%rest185283%_ _%hd185284%_)
                    (if (gx#identifier? _%hd185284%_)
                        (if (__find (lambda (_%$%g185286185288%_)
                                      (gx#bound-identifier=?
                                       _%$%g185286185288%_
                                       _%hd185284%_))
                                    _%rest185283%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where185259%_
                             _%hd185284%_)
                            (_%lp185261%_ _%rest185283%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where185259%_
                         _%hd185284%_)))))
            (if (pair? _%$%rest185264185272%_)
                (let ((_%$%hd185269185296%_ (##car _%$%rest185264185272%_))
                      (_%$%tl185270185298%_ (##cdr _%$%rest185264185272%_)))
                  (let* ((_%hd185301%_ _%$%hd185269185296%_)
                         (_%rest185303%_ _%$%tl185270185298%_))
                    (_%$%K185268185293%_ _%rest185303%_ _%hd185301%_)))
                (_%$%else185266185280%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx185308%_)
        (let ((_%where185310%_ _%stx185308%_))
          (gx#check-duplicate-identifiers__% _%stx185308%_ _%where185310%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g188239_
        (let ((_g188240_ (##length _g188239_)))
          (cond ((##fx= _g188240_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g188239_))
                ((##fx= _g188240_ 2)
                 (apply gx#check-duplicate-identifiers__% _g188239_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g188239_))))))
    (define gx#core-bind-values?
      (lambda (_%stx185250%_)
        (gx#stx-andmap
         (lambda (_%x185252%_)
           (let ((_%$e185254%_ (gx#identifier? _%x185252%_)))
             (if _%$e185254%_ _%$e185254%_ (gx#stx-false? _%x185252%_))))
         _%stx185250%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx185214%_ _%rebind?185215%_ _%phi185216%_ _%ctx185217%_)
        (gx#stx-for-each1
         (lambda (_%id185219%_)
           (if (gx#identifier? _%id185219%_)
               (gx#core-bind-runtime!__%
                _%id185219%_
                _%rebind?185215%_
                _%phi185216%_
                _%ctx185217%_)
               '#!void))
         _%stx185214%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx185224%_)
        (let* ((_%rebind?185226%_ '#f)
               (_%phi185228%_ (gx#current-expander-phi))
               (_%ctx185230%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx185224%_
           _%rebind?185226%_
           _%phi185228%_
           _%ctx185230%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx185232%_ _%rebind?185233%_)
        (let* ((_%phi185235%_ (gx#current-expander-phi))
               (_%ctx185237%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx185232%_
           _%rebind?185233%_
           _%phi185235%_
           _%ctx185237%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx185239%_ _%rebind?185240%_ _%phi185241%_)
        (let ((_%ctx185243%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx185239%_
           _%rebind?185240%_
           _%phi185241%_
           _%ctx185243%_))))
    (define gx#core-bind-values!
      (lambda _g188241_
        (let ((_g188242_ (##length _g188241_)))
          (cond ((##fx= _g188242_ 1) (apply gx#core-bind-values!__0 _g188241_))
                ((##fx= _g188242_ 2) (apply gx#core-bind-values!__1 _g188241_))
                ((##fx= _g188242_ 3) (apply gx#core-bind-values!__2 _g188241_))
                ((##fx= _g188242_ 4) (apply gx#core-bind-values!__% _g188241_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g188241_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx185209%_)
        (gx#stx-map1
         (lambda (_%x185211%_)
           (if (gx#identifier? _%x185211%_)
               (gx#core-quote-syntax__0 _%x185211%_)
               '#f))
         _%stx185209%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx185202%_)
        (if (gx#identifier? _%stx185202%_)
            (let* ((_%bind185204%_ (gx#resolve-identifier__0 _%stx185202%_))
                   (_%$e185206%_ (not _%bind185204%_)))
              (if _%$e185206%_
                  _%$e185206%_
                  (##structure-instance-of?
                   _%bind185204%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id185191%_ _%form185192%_)
        (let ((_%bind185194%_ (gx#resolve-identifier__0 _%id185191%_)))
          (if (##structure-instance-of? _%bind185194%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id185191%_)
              (if (not _%bind185194%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id185191%_)))
                      (gx#core-quote-syntax__0 _%id185191%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form185192%_
                       _%id185191%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form185192%_
                   _%id185191%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id185146%_ _%rebind?185147%_ _%phi185148%_ _%ctx185149%_)
        (let* ((_%key185151%_ (gx#core-identifier-key _%id185146%_))
               (_%eid185153%_
                (gx#make-binding-id__%
                 _%key185151%_
                 '#f
                 _%phi185148%_
                 _%ctx185149%_))
               (_%bind185159%_
                (if (##structure-instance-of?
                     _%ctx185149%_
                     'gx#module-context::t)
                    (let ((__obj188218
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
                       __obj188218
                       _%eid185153%_
                       _%key185151%_
                       _%phi185148%_
                       _%ctx185149%_)
                      __obj188218)
                    (if (##structure-instance-of?
                         _%ctx185149%_
                         'gx#top-context::t)
                        (let ((__obj188217
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj188217
                           _%eid185153%_
                           _%key185151%_
                           _%phi185148%_)
                          __obj188217)
                        (if (##structure-instance-of?
                             _%ctx185149%_
                             'gx#local-context::t)
                            (let ((__obj188216
                                   (##structure
                                    gx#local-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#local-binding:::init!
                               __obj188216
                               _%eid185153%_
                               _%key185151%_
                               _%phi185148%_)
                              __obj188216)
                            (let ((__obj188215
                                   (##structure
                                    gx#runtime-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#runtime-binding:::init!
                               __obj188215
                               _%eid185153%_
                               _%key185151%_
                               _%phi185148%_)
                              __obj188215))))))
          (gx#bind-identifier!__%
           _%id185146%_
           _%bind185159%_
           _%rebind?185147%_
           _%phi185148%_
           _%ctx185149%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id185165%_)
        (let* ((_%rebind?185167%_ '#f)
               (_%phi185169%_ (gx#current-expander-phi))
               (_%ctx185171%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id185165%_
           _%rebind?185167%_
           _%phi185169%_
           _%ctx185171%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id185173%_ _%rebind?185174%_)
        (let* ((_%phi185176%_ (gx#current-expander-phi))
               (_%ctx185178%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id185173%_
           _%rebind?185174%_
           _%phi185176%_
           _%ctx185178%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id185180%_ _%rebind?185181%_ _%phi185182%_)
        (let ((_%ctx185184%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id185180%_
           _%rebind?185181%_
           _%phi185182%_
           _%ctx185184%_))))
    (define gx#core-bind-runtime!
      (lambda _g188243_
        (let ((_g188244_ (##length _g188243_)))
          (cond ((##fx= _g188244_ 1)
                 (apply gx#core-bind-runtime!__0 _g188243_))
                ((##fx= _g188244_ 2)
                 (apply gx#core-bind-runtime!__1 _g188243_))
                ((##fx= _g188244_ 3)
                 (apply gx#core-bind-runtime!__2 _g188243_))
                ((##fx= _g188244_ 4)
                 (apply gx#core-bind-runtime!__% _g188243_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g188243_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id185098%_
               _%eid185099%_
               _%rebind?185100%_
               _%phi185101%_
               _%ctx185102%_)
        (let* ((_%key185104%_ (gx#core-identifier-key _%id185098%_))
               (_%bind185109%_
                (if (##structure-instance-of?
                     _%ctx185102%_
                     'gx#module-context::t)
                    (let ((__obj188221
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
                       __obj188221
                       _%eid185099%_
                       _%key185104%_
                       _%phi185101%_
                       _%ctx185102%_)
                      __obj188221)
                    (if (##structure-instance-of?
                         _%ctx185102%_
                         'gx#top-context::t)
                        (let ((__obj188220
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj188220
                           _%eid185099%_
                           _%key185104%_
                           _%phi185101%_)
                          __obj188220)
                        (let ((__obj188219
                               (##structure
                                gx#runtime-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#runtime-binding:::init!
                           __obj188219
                           _%eid185099%_
                           _%key185104%_
                           _%phi185101%_)
                          __obj188219)))))
          (gx#bind-identifier!__%
           _%id185098%_
           _%bind185109%_
           _%rebind?185100%_
           _%phi185101%_
           _%ctx185102%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id185115%_ _%eid185116%_)
        (let* ((_%rebind?185118%_ '#f)
               (_%phi185120%_ (gx#current-expander-phi))
               (_%ctx185122%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id185115%_
           _%eid185116%_
           _%rebind?185118%_
           _%phi185120%_
           _%ctx185122%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id185124%_ _%eid185125%_ _%rebind?185126%_)
        (let* ((_%phi185128%_ (gx#current-expander-phi))
               (_%ctx185130%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id185124%_
           _%eid185125%_
           _%rebind?185126%_
           _%phi185128%_
           _%ctx185130%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id185132%_ _%eid185133%_ _%rebind?185134%_ _%phi185135%_)
        (let ((_%ctx185137%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id185132%_
           _%eid185133%_
           _%rebind?185134%_
           _%phi185135%_
           _%ctx185137%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g188245_
        (let ((_g188246_ (##length _g188245_)))
          (cond ((##fx= _g188246_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g188245_))
                ((##fx= _g188246_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g188245_))
                ((##fx= _g188246_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g188245_))
                ((##fx= _g188246_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g188245_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g188245_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id185058%_
               _%eid185059%_
               _%rebind?185060%_
               _%phi185061%_
               _%ctx185062%_)
        (gx#bind-identifier!__%
         _%id185058%_
         (let ((__obj188222
                (##structure gx#extern-binding::t '#f '#f '#f '#f '#f '#f)))
           (gx#extern-binding:::init!
            __obj188222
            _%eid185059%_
            (gx#core-identifier-key _%id185058%_)
            _%phi185061%_)
           __obj188222)
         _%rebind?185060%_
         _%phi185061%_
         _%ctx185062%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id185067%_ _%eid185068%_)
        (let* ((_%rebind?185070%_ '#f)
               (_%phi185072%_ (gx#current-expander-phi))
               (_%ctx185074%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id185067%_
           _%eid185068%_
           _%rebind?185070%_
           _%phi185072%_
           _%ctx185074%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id185076%_ _%eid185077%_ _%rebind?185078%_)
        (let* ((_%phi185080%_ (gx#current-expander-phi))
               (_%ctx185082%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id185076%_
           _%eid185077%_
           _%rebind?185078%_
           _%phi185080%_
           _%ctx185082%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id185084%_ _%eid185085%_ _%rebind?185086%_ _%phi185087%_)
        (let ((_%ctx185089%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id185084%_
           _%eid185085%_
           _%rebind?185086%_
           _%phi185087%_
           _%ctx185089%_))))
    (define gx#core-bind-extern!
      (lambda _g188247_
        (let ((_g188248_ (##length _g188247_)))
          (cond ((##fx= _g188248_ 2) (apply gx#core-bind-extern!__0 _g188247_))
                ((##fx= _g188248_ 3) (apply gx#core-bind-extern!__1 _g188247_))
                ((##fx= _g188248_ 4) (apply gx#core-bind-extern!__2 _g188247_))
                ((##fx= _g188248_ 5) (apply gx#core-bind-extern!__% _g188247_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g188247_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id185012%_
               _%e185013%_
               _%rebind?185014%_
               _%phi185015%_
               _%ctx185016%_)
        (gx#bind-identifier!__%
         _%id185012%_
         (let ((_%key185021%_ (gx#core-identifier-key _%id185012%_))
               (_%e185022%_
                (if (or (##structure-instance-of? _%e185013%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e185013%_
                         'gx#expander-context::t))
                    _%e185013%_
                    (##structure
                     gx#user-expander::t
                     _%e185013%_
                     _%ctx185016%_
                     _%phi185015%_))))
           (let ((__obj188223
                  (##structure gx#syntax-binding::t '#f '#f '#f '#f '#f)))
             (gx#syntax-binding:::init!
              __obj188223
              (gx#make-binding-id__%
               _%key185021%_
               '#t
               _%phi185015%_
               _%ctx185016%_)
              _%key185021%_
              _%phi185015%_
              _%e185022%_)
             __obj188223))
         _%rebind?185014%_
         _%phi185015%_
         _%ctx185016%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id185027%_ _%e185028%_)
        (let* ((_%rebind?185030%_ '#f)
               (_%phi185032%_ (gx#current-expander-phi))
               (_%ctx185034%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id185027%_
           _%e185028%_
           _%rebind?185030%_
           _%phi185032%_
           _%ctx185034%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id185036%_ _%e185037%_ _%rebind?185038%_)
        (let* ((_%phi185040%_ (gx#current-expander-phi))
               (_%ctx185042%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id185036%_
           _%e185037%_
           _%rebind?185038%_
           _%phi185040%_
           _%ctx185042%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id185044%_ _%e185045%_ _%rebind?185046%_ _%phi185047%_)
        (let ((_%ctx185049%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id185044%_
           _%e185045%_
           _%rebind?185046%_
           _%phi185047%_
           _%ctx185049%_))))
    (define gx#core-bind-syntax!
      (lambda _g188249_
        (let ((_g188250_ (##length _g188249_)))
          (cond ((##fx= _g188250_ 2) (apply gx#core-bind-syntax!__0 _g188249_))
                ((##fx= _g188250_ 3) (apply gx#core-bind-syntax!__1 _g188249_))
                ((##fx= _g188250_ 4) (apply gx#core-bind-syntax!__2 _g188249_))
                ((##fx= _g188250_ 5) (apply gx#core-bind-syntax!__% _g188249_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g188249_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id184995%_ _%e184996%_ _%rebind?184997%_)
        (gx#core-bind-syntax!__%
         _%id184995%_
         _%e184996%_
         _%rebind?184997%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id185002%_ _%e185003%_)
        (let ((_%rebind?185005%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id185002%_
           _%e185003%_
           _%rebind?185005%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g188251_
        (let ((_g188252_ (##length _g188251_)))
          (cond ((##fx= _g188252_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g188251_))
                ((##fx= _g188252_ 3)
                 (apply gx#core-bind-root-syntax!__% _g188251_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g188251_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id184953%_
               _%alias-id184954%_
               _%rebind?184955%_
               _%phi184956%_
               _%ctx184957%_)
        (gx#bind-identifier!__%
         _%id184953%_
         (let* ((_%key184959%_ (gx#core-identifier-key _%id184953%_))
                (__obj188224
                 (##structure gx#alias-binding::t '#f '#f '#f '#f '#f)))
           (gx#alias-binding:::init!
            __obj188224
            (gx#make-binding-id__%
             _%key184959%_
             '#t
             _%phi184956%_
             _%ctx184957%_)
            _%key184959%_
            _%phi184956%_
            _%alias-id184954%_)
           __obj188224)
         _%rebind?184955%_
         _%phi184956%_
         _%ctx184957%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id184964%_ _%alias-id184965%_)
        (let* ((_%rebind?184967%_ '#f)
               (_%phi184969%_ (gx#current-expander-phi))
               (_%ctx184971%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id184964%_
           _%alias-id184965%_
           _%rebind?184967%_
           _%phi184969%_
           _%ctx184971%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id184973%_ _%alias-id184974%_ _%rebind?184975%_)
        (let* ((_%phi184977%_ (gx#current-expander-phi))
               (_%ctx184979%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id184973%_
           _%alias-id184974%_
           _%rebind?184975%_
           _%phi184977%_
           _%ctx184979%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id184981%_ _%alias-id184982%_ _%rebind?184983%_ _%phi184984%_)
        (let ((_%ctx184986%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id184981%_
           _%alias-id184982%_
           _%rebind?184983%_
           _%phi184984%_
           _%ctx184986%_))))
    (define gx#core-bind-alias!
      (lambda _g188253_
        (let ((_g188254_ (##length _g188253_)))
          (cond ((##fx= _g188254_ 2) (apply gx#core-bind-alias!__0 _g188253_))
                ((##fx= _g188254_ 3) (apply gx#core-bind-alias!__1 _g188253_))
                ((##fx= _g188254_ 4) (apply gx#core-bind-alias!__2 _g188253_))
                ((##fx= _g188254_ 5) (apply gx#core-bind-alias!__% _g188253_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g188253_))))))
    (define gx#make-binding-id__%
      (lambda (_%key184903%_ _%syntax?184904%_ _%phi184905%_ _%ctx184906%_)
        (if (uninterned-symbol? _%key184903%_)
            (##gensym 'L)
            (if (pair? _%key184903%_)
                (gensym (##car _%key184903%_))
                (if (##structure-instance-of? _%ctx184906%_ 'gx#top-context::t)
                    (let ((_%ns184911%_
                           (gx#core-context-namespace__% _%ctx184906%_)))
                      (if (and (fxzero? _%phi184905%_) (not _%syntax?184904%_))
                          (if _%ns184911%_
                              (make-symbol__1 _%ns184911%_ '"#" _%key184903%_)
                              _%key184903%_)
                          (if _%syntax?184904%_
                              (make-symbol__1
                               (let ((_%$e184915%_ _%ns184911%_))
                                 (if _%$e184915%_ _%$e184915%_ '""))
                               '"[:"
                               (number->string _%phi184905%_)
                               '":]#"
                               _%key184903%_)
                              (make-symbol__1
                               (let ((_%$e184919%_ _%ns184911%_))
                                 (if _%$e184919%_ _%$e184919%_ '""))
                               '"["
                               (number->string _%phi184905%_)
                               '"]#"
                               _%key184903%_))))
                    (gensym _%key184903%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key184926%_)
        (let* ((_%syntax?184928%_ '#f)
               (_%phi184930%_ (gx#current-expander-phi))
               (_%ctx184932%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key184926%_
           _%syntax?184928%_
           _%phi184930%_
           _%ctx184932%_))))
    (define gx#make-binding-id__1
      (lambda (_%key184934%_ _%syntax?184935%_)
        (let* ((_%phi184937%_ (gx#current-expander-phi))
               (_%ctx184939%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key184934%_
           _%syntax?184935%_
           _%phi184937%_
           _%ctx184939%_))))
    (define gx#make-binding-id__2
      (lambda (_%key184941%_ _%syntax?184942%_ _%phi184943%_)
        (let ((_%ctx184945%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key184941%_
           _%syntax?184942%_
           _%phi184943%_
           _%ctx184945%_))))
    (define gx#make-binding-id
      (lambda _g188255_
        (let ((_g188256_ (##length _g188255_)))
          (cond ((##fx= _g188256_ 1) (apply gx#make-binding-id__0 _g188255_))
                ((##fx= _g188256_ 2) (apply gx#make-binding-id__1 _g188255_))
                ((##fx= _g188256_ 3) (apply gx#make-binding-id__2 _g188255_))
                ((##fx= _g188256_ 4) (apply gx#make-binding-id__% _g188255_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g188255_))))))))
