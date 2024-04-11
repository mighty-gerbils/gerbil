(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1712823027)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx123326%_)
        (letrec ((_%expand-special123328%_
                  (lambda (_%hd123330%_ _%K123331%_ _%rest123332%_ _%r123333%_)
                    (_%K123331%_
                     _%rest123332%_
                     (cons (gx#core-expand-top _%hd123330%_) _%r123333%_)))))
          (gx#core-expand-block__0 _%stx123326%_ _%expand-special123328%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx123079%_)
        (letrec ((_%expand-special123081%_
                  (lambda (_%hd123201%_ _%K123202%_ _%rest123203%_ _%r123204%_)
                    (let* ((_%K123208%_
                            (lambda (_%e123206%_)
                              (_%K123202%_
                               _%rest123203%_
                               (cons _%e123206%_ _%r123204%_))))
                           (_%e123209123238%_ _%hd123201%_)
                           (_%E123233123242%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e123209123238%_)))
                           (_%E123229123254%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123209123238%_)
                                  (let ((_%e123234123246%_
                                         (gx#syntax-e _%e123209123238%_)))
                                    (let ((_%hd123235123249%_
                                           (##car _%e123234123246%_))
                                          (_%tl123236123251%_
                                           (##cdr _%e123234123246%_)))
                                      (if (and (gx#identifier?
                                                _%hd123235123249%_)
                                               (gx#core-identifier=?
                                                _%hd123235123249%_
                                                '%#define-runtime))
                                          (if '#t
                                              (_%K123208%_
                                               (gx#core-expand-define-runtime%
                                                _%hd123201%_))
                                              (_%E123233123242%_))
                                          (_%E123233123242%_))))
                                  (_%E123233123242%_))))
                           (_%E123225123266%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123209123238%_)
                                  (let ((_%e123230123258%_
                                         (gx#syntax-e _%e123209123238%_)))
                                    (let ((_%hd123231123261%_
                                           (##car _%e123230123258%_))
                                          (_%tl123232123263%_
                                           (##cdr _%e123230123258%_)))
                                      (if (and (gx#identifier?
                                                _%hd123231123261%_)
                                               (gx#core-identifier=?
                                                _%hd123231123261%_
                                                '%#define-alias))
                                          (if '#t
                                              (_%K123208%_
                                               (gx#core-expand-define-alias%
                                                _%hd123201%_))
                                              (_%E123229123254%_))
                                          (_%E123229123254%_))))
                                  (_%E123229123254%_))))
                           (_%E123215123278%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123209123238%_)
                                  (let ((_%e123226123270%_
                                         (gx#syntax-e _%e123209123238%_)))
                                    (let ((_%hd123227123273%_
                                           (##car _%e123226123270%_))
                                          (_%tl123228123275%_
                                           (##cdr _%e123226123270%_)))
                                      (if (and (gx#identifier?
                                                _%hd123227123273%_)
                                               (gx#core-identifier=?
                                                _%hd123227123273%_
                                                '%#define-syntax))
                                          (if '#t
                                              (_%K123208%_
                                               (gx#core-expand-define-syntax%
                                                _%hd123201%_))
                                              (_%E123225123266%_))
                                          (_%E123225123266%_))))
                                  (_%E123225123266%_))))
                           (_%E123211123310%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123209123238%_)
                                  (let ((_%e123216123282%_
                                         (gx#syntax-e _%e123209123238%_)))
                                    (let ((_%hd123217123285%_
                                           (##car _%e123216123282%_))
                                          (_%tl123218123287%_
                                           (##cdr _%e123216123282%_)))
                                      (if (and (gx#identifier?
                                                _%hd123217123285%_)
                                               (gx#core-identifier=?
                                                _%hd123217123285%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl123218123287%_)
                                              (let ((_%e123219123290%_
                                                     (gx#syntax-e
                                                      _%tl123218123287%_)))
                                                (let ((_%hd123220123293%_
                                                       (##car _%e123219123290%_))
                                                      (_%tl123221123295%_
                                                       (##cdr _%e123219123290%_)))
                                                  (let ((_%hd-bind123298%_
                                                         _%hd123220123293%_))
                                                    (if (gx#stx-pair?
                                                         _%tl123221123295%_)
                                                        (let ((_%e123222123300%_
                                                               (gx#syntax-e
                                                                _%tl123221123295%_)))
                                                          (let ((_%hd123223123303%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e123222123300%_))
                        (_%tl123224123305%_ (##cdr _%e123222123300%_)))
                    (let ((_%expr123308%_ _%hd123223123303%_))
                      (if (gx#stx-null? _%tl123224123305%_)
                          (if (gx#core-bind-values? _%hd-bind123298%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind123298%_)
                                (_%K123208%_ _%hd123201%_))
                              (_%E123215123278%_))
                          (_%E123215123278%_)))))
                (_%E123215123278%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123215123278%_))
                                          (_%E123215123278%_))))
                                  (_%E123215123278%_))))
                           (_%E123210123322%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123209123238%_)
                                  (let ((_%e123212123314%_
                                         (gx#syntax-e _%e123209123238%_)))
                                    (let ((_%hd123213123317%_
                                           (##car _%e123212123314%_))
                                          (_%tl123214123319%_
                                           (##cdr _%e123212123314%_)))
                                      (if (and (gx#identifier?
                                                _%hd123213123317%_)
                                               (gx#core-identifier=?
                                                _%hd123213123317%_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_%K123208%_
                                               (gx#core-expand-begin-syntax%
                                                _%hd123201%_))
                                              (_%E123211123310%_))
                                          (_%E123211123310%_))))
                                  (_%E123211123310%_)))))
                      (_%E123210123322%_))))
                 (_%eval-body123082%_
                  (lambda (_%rbody123090%_)
                    (let _%lp123092%_ ((_%rest123094%_ _%rbody123090%_)
                                       (_%body123095%_ '())
                                       (_%ebody123096%_ '()))
                      (let* ((_%rest123097123105%_ _%rest123094%_)
                             (_%else123099123113%_
                              (lambda ()
                                (values _%body123095%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody123096%_)
                                          (gx#stx-source _%stx123079%_))))))
                             (_%K123101123189%_
                              (lambda (_%rest123116%_ _%hd123117%_)
                                (let* ((_%e123118123135%_ _%hd123117%_)
                                       (_%E123130123139%_
                                        (lambda ()
                                          (_%lp123092%_
                                           _%rest123116%_
                                           (cons _%hd123117%_ _%body123095%_)
                                           (cons _%hd123117%_
                                                 _%ebody123096%_))))
                                       (_%E123120123151%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e123118123135%_)
                                              (let ((_%e123131123143%_
                                                     (gx#syntax-e
                                                      _%e123118123135%_)))
                                                (let ((_%hd123132123146%_
                                                       (##car _%e123131123143%_))
                                                      (_%tl123133123148%_
                                                       (##cdr _%e123131123143%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd123132123146%_)
                                                           (gx#core-identifier=?
                                                            _%hd123132123146%_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_%lp123092%_
                                                           _%rest123116%_
                                                           (cons _%hd123117%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%body123095%_)
                   _%ebody123096%_)
                  (_%E123130123139%_))
              (_%E123130123139%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123130123139%_))))
                                       (_%E123119123185%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e123118123135%_)
                                              (let ((_%e123121123155%_
                                                     (gx#syntax-e
                                                      _%e123118123135%_)))
                                                (let ((_%hd123122123158%_
                                                       (##car _%e123121123155%_))
                                                      (_%tl123123123160%_
                                                       (##cdr _%e123121123155%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd123122123158%_)
                                                           (gx#core-identifier=?
                                                            _%hd123122123158%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl123123123160%_)
                                                          (let ((_%e123124123163%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl123123123160%_)))
                    (let ((_%hd123125123166%_ (##car _%e123124123163%_))
                          (_%tl123126123168%_ (##cdr _%e123124123163%_)))
                      (let ((_%hd-bind123171%_ _%hd123125123166%_))
                        (if (gx#stx-pair? _%tl123126123168%_)
                            (let ((_%e123127123173%_
                                   (gx#syntax-e _%tl123126123168%_)))
                              (let ((_%hd123128123176%_
                                     (##car _%e123127123173%_))
                                    (_%tl123129123178%_
                                     (##cdr _%e123127123173%_)))
                                (let ((_%expr123181%_ _%hd123128123176%_))
                                  (if (gx#stx-null? _%tl123129123178%_)
                                      (if '#t
                                          (let ((_%ehd123183%_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _%hd-bind123171%_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr123181%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source
                                                   _%hd123117%_))))
                                            (_%lp123092%_
                                             _%rest123116%_
                                             (cons _%ehd123183%_
                                                   _%body123095%_)
                                             (cons _%ehd123183%_
                                                   _%ebody123096%_)))
                                          (_%E123120123151%_))
                                      (_%E123120123151%_)))))
                            (_%E123120123151%_)))))
                  (_%E123120123151%_))
              (_%E123120123151%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123120123151%_)))))
                                  (_%E123119123185%_)))))
                        (if (##pair? _%rest123097123105%_)
                            (let ((_%hd123102123192%_
                                   (##car _%rest123097123105%_))
                                  (_%tl123103123194%_
                                   (##cdr _%rest123097123105%_)))
                              (let* ((_%hd123197%_ _%hd123102123192%_)
                                     (_%rest123199%_ _%tl123103123194%_))
                                (_%K123101123189%_
                                 _%rest123199%_
                                 _%hd123197%_)))
                            (_%else123099123113%_)))))))
          (__call-with-parameters
           (lambda ()
             (let* ((_%rbody123085%_
                     (gx#core-expand-block__1
                      _%stx123079%_
                      _%expand-special123081%_
                      '#f))
                    (_g123349_ (_%eval-body123082%_ _%rbody123085%_)))
               (begin
                 (let ((_g123350_
                        (if (##values? _g123349_)
                            (##vector-length _g123349_)
                            1)))
                   (if (not (##fx= _g123350_ 2))
                       (error "Context expects 2 values" _g123350_)))
                 (let ((_%expanded-body123087%_ (##vector-ref _g123349_ 0))
                       (_%value123088%_ (##vector-ref _g123349_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body123087%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value123088%_ '())))
                    (gx#stx-source _%stx123079%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx123049%_)
        (let* ((_%e123050123057%_ _%stx123049%_)
               (_%E123052123061%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123050123057%_)))
               (_%E123051123075%_
                (lambda ()
                  (if (gx#stx-pair? _%e123050123057%_)
                      (let ((_%e123053123065%_
                             (gx#syntax-e _%e123050123057%_)))
                        (let ((_%hd123054123068%_ (##car _%e123053123065%_))
                              (_%tl123055123070%_ (##cdr _%e123053123065%_)))
                          (let ((_%body123073%_ _%tl123055123070%_))
                            (if (gx#stx-list? _%body123073%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body123073%_)
                                 (gx#stx-source _%stx123049%_))
                                (_%E123052123061%_)))))
                      (_%E123052123061%_)))))
          (_%E123051123075%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx123047%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx123047%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx122993%_)
        (let* ((_%e122994123007%_ _%stx122993%_)
               (_%E122996123011%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122994123007%_)))
               (_%E122995123043%_
                (lambda ()
                  (if (gx#stx-pair? _%e122994123007%_)
                      (let ((_%e122997123015%_
                             (gx#syntax-e _%e122994123007%_)))
                        (let ((_%hd122998123018%_ (##car _%e122997123015%_))
                              (_%tl122999123020%_ (##cdr _%e122997123015%_)))
                          (if (gx#stx-pair? _%tl122999123020%_)
                              (let ((_%e123000123023%_
                                     (gx#syntax-e _%tl122999123020%_)))
                                (let ((_%hd123001123026%_
                                       (##car _%e123000123023%_))
                                      (_%tl123002123028%_
                                       (##cdr _%e123000123023%_)))
                                  (let ((_%ann123031%_ _%hd123001123026%_))
                                    (if (gx#stx-pair? _%tl123002123028%_)
                                        (let ((_%e123003123033%_
                                               (gx#syntax-e
                                                _%tl123002123028%_)))
                                          (let ((_%hd123004123036%_
                                                 (##car _%e123003123033%_))
                                                (_%tl123005123038%_
                                                 (##cdr _%e123003123033%_)))
                                            (let ((_%expr123041%_
                                                   _%hd123004123036%_))
                                              (if (gx#stx-null?
                                                   _%tl123005123038%_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _%ann123031%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _%expr123041%_)
                                 '())))
               (gx#stx-source _%stx122993%_))
              (_%E122996123011%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E122996123011%_)))))
                                        (_%E122996123011%_)))))
                              (_%E122996123011%_))))
                      (_%E122996123011%_)))))
          (_%E122995123043%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx122717%_ _%body122718%_)
        (letrec ((_%expand-special122720%_
                  (lambda (_%hd122988%_ _%K122989%_ _%rest122990%_ _%r122991%_)
                    (_%K122989%_
                     '()
                     (cons (_%expand-internal122721%_
                            _%hd122988%_
                            _%rest122990%_)
                           _%r122991%_))))
                 (_%expand-internal122721%_
                  (lambda (_%hd122984%_ _%rest122985%_)
                    (__call-with-parameters
                     (lambda ()
                       (_%wrap-internal122723%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd122984%_ _%rest122985%_))
                          (gx#stx-source _%stx122717%_))
                         _%expand-internal-special122722%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj123343
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj123343)
                       __obj123343))))
                 (_%expand-internal-special122722%_
                  (lambda (_%hd122879%_ _%K122880%_ _%rest122881%_ _%r122882%_)
                    (let* ((_%e122883122908%_ _%hd122879%_)
                           (_%E122903122912%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e122883122908%_)))
                           (_%E122899122924%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122883122908%_)
                                  (let ((_%e122904122916%_
                                         (gx#syntax-e _%e122883122908%_)))
                                    (let ((_%hd122905122919%_
                                           (##car _%e122904122916%_))
                                          (_%tl122906122921%_
                                           (##cdr _%e122904122916%_)))
                                      (if (and (gx#identifier?
                                                _%hd122905122919%_)
                                               (gx#core-identifier=?
                                                _%hd122905122919%_
                                                '%#declare))
                                          (if '#t
                                              (_%K122880%_
                                               _%rest122881%_
                                               (cons (gx#core-expand-declare%
                                                      _%hd122879%_)
                                                     _%r122882%_))
                                              (_%E122903122912%_))
                                          (_%E122903122912%_))))
                                  (_%E122903122912%_))))
                           (_%E122895122936%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122883122908%_)
                                  (let ((_%e122900122928%_
                                         (gx#syntax-e _%e122883122908%_)))
                                    (let ((_%hd122901122931%_
                                           (##car _%e122900122928%_))
                                          (_%tl122902122933%_
                                           (##cdr _%e122900122928%_)))
                                      (if (and (gx#identifier?
                                                _%hd122901122931%_)
                                               (gx#core-identifier=?
                                                _%hd122901122931%_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _%hd122879%_)
                                                (_%K122880%_
                                                 _%rest122881%_
                                                 _%r122882%_))
                                              (_%E122899122924%_))
                                          (_%E122899122924%_))))
                                  (_%E122899122924%_))))
                           (_%E122885122948%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122883122908%_)
                                  (let ((_%e122896122940%_
                                         (gx#syntax-e _%e122883122908%_)))
                                    (let ((_%hd122897122943%_
                                           (##car _%e122896122940%_))
                                          (_%tl122898122945%_
                                           (##cdr _%e122896122940%_)))
                                      (if (and (gx#identifier?
                                                _%hd122897122943%_)
                                               (gx#core-identifier=?
                                                _%hd122897122943%_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _%hd122879%_)
                                                (_%K122880%_
                                                 _%rest122881%_
                                                 _%r122882%_))
                                              (_%E122895122936%_))
                                          (_%E122895122936%_))))
                                  (_%E122895122936%_))))
                           (_%E122884122980%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122883122908%_)
                                  (let ((_%e122886122952%_
                                         (gx#syntax-e _%e122883122908%_)))
                                    (let ((_%hd122887122955%_
                                           (##car _%e122886122952%_))
                                          (_%tl122888122957%_
                                           (##cdr _%e122886122952%_)))
                                      (if (and (gx#identifier?
                                                _%hd122887122955%_)
                                               (gx#core-identifier=?
                                                _%hd122887122955%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl122888122957%_)
                                              (let ((_%e122889122960%_
                                                     (gx#syntax-e
                                                      _%tl122888122957%_)))
                                                (let ((_%hd122890122963%_
                                                       (##car _%e122889122960%_))
                                                      (_%tl122891122965%_
                                                       (##cdr _%e122889122960%_)))
                                                  (let ((_%hd-bind122968%_
                                                         _%hd122890122963%_))
                                                    (if (gx#stx-pair?
                                                         _%tl122891122965%_)
                                                        (let ((_%e122892122970%_
                                                               (gx#syntax-e
                                                                _%tl122891122965%_)))
                                                          (let ((_%hd122893122973%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e122892122970%_))
                        (_%tl122894122975%_ (##cdr _%e122892122970%_)))
                    (let ((_%expr122978%_ _%hd122893122973%_))
                      (if (gx#stx-null? _%tl122894122975%_)
                          (if (gx#core-bind-values? _%hd-bind122968%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind122968%_)
                                (_%K122880%_
                                 _%rest122881%_
                                 (cons _%hd122879%_ _%r122882%_)))
                              (_%E122885122948%_))
                          (_%E122885122948%_)))))
                (_%E122885122948%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E122885122948%_))
                                          (_%E122885122948%_))))
                                  (_%E122885122948%_)))))
                      (_%E122884122980%_))))
                 (_%wrap-internal122723%_
                  (lambda (_%rbody122725%_)
                    (let _%lp122727%_ ((_%rest122729%_ _%rbody122725%_)
                                       (_%decls122730%_ '())
                                       (_%bind122731%_ '())
                                       (_%body122732%_ '()))
                      (let* ((_%e122733122740%_ _%rest122729%_)
                             (_%E122735122789%_
                              (lambda ()
                                (let* ((_%body122784%_
                                        (let* ((_%body122743122753%_
                                                _%body122732%_)
                                               (_%else122746122761%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body122732%_)
                                                   (gx#stx-source
                                                    _%stx122717%_)))))
                                          (let ((_%K122751122781%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx122717%_)))
                                                (_%K122748122767%_
                                                 (lambda (_%expr122765%_)
                                                   _%expr122765%_)))
                                            (let ((_%try-match122745122777%_
                                                   (lambda ()
                                                     (if (##pair? _%body122743122753%_)
                                                         (let ((_%tl122750122772%_
                                                                (##cdr _%body122743122753%_))
                                                               (_%hd122749122770%_
                                                                (##car _%body122743122753%_)))
                                                           (if (##null? _%tl122750122772%_)
                                                               (let ((_%expr122775%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd122749122770%_))
                         (_%K122748122767%_ _%expr122775%_))
                       (_%else122746122761%_)))
                 (_%else122746122761%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _%body122743122753%_)
                                                  (_%K122751122781%_)
                                                  (_%try-match122745122777%_))))))
                                       (_%body122786%_
                                        (if (null? _%bind122731%_)
                                            _%body122784%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind122731%_
                                                         (cons _%body122784%_
                                                               '())))
                                             (gx#stx-source _%stx122717%_)))))
                                  (if (null? _%decls122730%_)
                                      _%body122786%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls122730%_
                                                   (cons _%body122786%_ '())))
                                       (gx#stx-source _%stx122717%_))))))
                             (_%E122734122875%_
                              (lambda ()
                                (if (gx#stx-pair? _%e122733122740%_)
                                    (let ((_%e122736122793%_
                                           (gx#syntax-e _%e122733122740%_)))
                                      (let ((_%hd122737122796%_
                                             (##car _%e122736122793%_))
                                            (_%tl122738122798%_
                                             (##cdr _%e122736122793%_)))
                                        (let* ((_%hd122801%_
                                                _%hd122737122796%_)
                                               (_%rest122803%_
                                                _%tl122738122798%_))
                                          (if '#t
                                              (let* ((_%e122804122821%_
                                                      _%hd122801%_)
                                                     (_%E122816122825%_
                                                      (lambda ()
                                                        (if (null? _%bind122731%_)
                                                            (_%lp122727%_
                                                             _%rest122803%_
                                                             _%decls122730%_
                                                             _%bind122731%_
                                                             (cons _%hd122801%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body122732%_))
                    (_%lp122727%_
                     _%rest122803%_
                     _%decls122730%_
                     (cons (cons '#f (cons _%hd122801%_ '())) _%bind122731%_)
                     _%body122732%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E122806122839%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e122804122821%_)
                                                            (let ((_%e122817122829%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e122804122821%_)))
                      (let ((_%hd122818122832%_ (##car _%e122817122829%_))
                            (_%tl122819122834%_ (##cdr _%e122817122829%_)))
                        (if (and (gx#identifier? _%hd122818122832%_)
                                 (gx#core-identifier=?
                                  _%hd122818122832%_
                                  '%#declare))
                            (let ((_%xdecls122837%_ _%tl122819122834%_))
                              (if '#t
                                  (_%lp122727%_
                                   _%rest122803%_
                                   (gx#stx-foldr
                                    cons
                                    _%decls122730%_
                                    _%xdecls122837%_)
                                   _%bind122731%_
                                   _%body122732%_)
                                  (_%E122816122825%_)))
                            (_%E122816122825%_))))
                    (_%E122816122825%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E122805122871%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e122804122821%_)
                                                            (let ((_%e122807122843%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e122804122821%_)))
                      (let ((_%hd122808122846%_ (##car _%e122807122843%_))
                            (_%tl122809122848%_ (##cdr _%e122807122843%_)))
                        (if (and (gx#identifier? _%hd122808122846%_)
                                 (gx#core-identifier=?
                                  _%hd122808122846%_
                                  '%#define-values))
                            (if (gx#stx-pair? _%tl122809122848%_)
                                (let ((_%e122810122851%_
                                       (gx#syntax-e _%tl122809122848%_)))
                                  (let ((_%hd122811122854%_
                                         (##car _%e122810122851%_))
                                        (_%tl122812122856%_
                                         (##cdr _%e122810122851%_)))
                                    (let ((_%hd-bind122859%_
                                           _%hd122811122854%_))
                                      (if (gx#stx-pair? _%tl122812122856%_)
                                          (let ((_%e122813122861%_
                                                 (gx#syntax-e
                                                  _%tl122812122856%_)))
                                            (let ((_%hd122814122864%_
                                                   (##car _%e122813122861%_))
                                                  (_%tl122815122866%_
                                                   (##cdr _%e122813122861%_)))
                                              (let ((_%expr122869%_
                                                     _%hd122814122864%_))
                                                (if (gx#stx-null?
                                                     _%tl122815122866%_)
                                                    (if '#t
                                                        (_%lp122727%_
                                                         _%rest122803%_
                                                         _%decls122730%_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd-bind122859%_)
                             (cons (gx#core-expand-expression _%expr122869%_)
                                   '()))
                       _%bind122731%_)
                 _%body122732%_)
                (_%E122806122839%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E122806122839%_)))))
                                          (_%E122806122839%_)))))
                                (_%E122806122839%_))
                            (_%E122806122839%_))))
                    (_%E122806122839%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E122805122871%_))
                                              (_%E122735122789%_)))))
                                    (_%E122735122789%_)))))
                        (_%E122734122875%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body122718%_)
            (gx#stx-source _%stx122717%_))
           _%expand-special122720%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx122655%_)
        (let* ((_%e122656122663%_ _%stx122655%_)
               (_%E122658122667%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122656122663%_)))
               (_%E122657122713%_
                (lambda ()
                  (if (gx#stx-pair? _%e122656122663%_)
                      (let ((_%e122659122671%_
                             (gx#syntax-e _%e122656122663%_)))
                        (let ((_%hd122660122674%_ (##car _%e122659122671%_))
                              (_%tl122661122676%_ (##cdr _%e122659122671%_)))
                          (let ((_%body122679%_ _%tl122661122676%_))
                            (if (gx#stx-list? _%body122679%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl122681%_)
                                     (let* ((_%e122682122689%_ _%decl122681%_)
                                            (_%E122684122693%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e122682122689%_)))
                                            (_%E122683122709%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e122682122689%_)
                                                   (let ((_%e122685122697%_
                                                          (gx#syntax-e
                                                           _%e122682122689%_)))
                                                     (let ((_%hd122686122700%_
                                                            (##car _%e122685122697%_))
                                                           (_%tl122687122702%_
                                                            (##cdr _%e122685122697%_)))
                                                       (let* ((_%head122705%_
                                                               _%hd122686122700%_)
                                                              (_%args122707%_
                                                               _%tl122687122702%_))
                                                         (if (gx#stx-list?
                                                              _%args122707%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl122681%_)
                                                             (_%E122684122693%_)))))
                                                   (_%E122684122693%_)))))
                                       (_%E122683122709%_)))
                                   _%body122679%_))
                                 (gx#stx-source _%stx122655%_))
                                (_%E122658122667%_)))))
                      (_%E122658122667%_)))))
          (_%E122657122713%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx122559%_)
        (let* ((_%e122560122567%_ _%stx122559%_)
               (_%E122562122571%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122560122567%_)))
               (_%E122561122651%_
                (lambda ()
                  (if (gx#stx-pair? _%e122560122567%_)
                      (let ((_%e122563122575%_
                             (gx#syntax-e _%e122560122567%_)))
                        (let ((_%hd122564122578%_ (##car _%e122563122575%_))
                              (_%tl122565122580%_ (##cdr _%e122563122575%_)))
                          (let ((_%body122583%_ _%tl122565122580%_))
                            (if '#t
                                (let _%lp122585%_ ((_%rest122587%_
                                                    _%body122583%_)
                                                   (_%r122588%_ '()))
                                  (let* ((_%e122589122603%_ _%rest122587%_)
                                         (_%E122601122607%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _%stx122559%_)))
                                         (_%E122591122611%_
                                          (lambda ()
                                            (if (gx#stx-null?
                                                 _%e122589122603%_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _%r122588%_))
                                                     (gx#stx-source
                                                      _%stx122559%_))
                                                    (_%E122601122607%_))
                                                (_%E122601122607%_))))
                                         (_%E122590122647%_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 _%e122589122603%_)
                                                (let ((_%e122592122615%_
                                                       (gx#syntax-e
                                                        _%e122589122603%_)))
                                                  (let ((_%hd122593122618%_
                                                         (##car _%e122592122615%_))
                                                        (_%tl122594122620%_
                                                         (##cdr _%e122592122615%_)))
                                                    (if (gx#stx-pair?
                                                         _%hd122593122618%_)
                                                        (let ((_%e122595122623%_
                                                               (gx#syntax-e
                                                                _%hd122593122618%_)))
                                                          (let ((_%hd122596122626%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e122595122623%_))
                        (_%tl122597122628%_ (##cdr _%e122595122623%_)))
                    (let ((_%id122631%_ _%hd122596122626%_))
                      (if (gx#stx-pair? _%tl122597122628%_)
                          (let ((_%e122598122633%_
                                 (gx#syntax-e _%tl122597122628%_)))
                            (let ((_%hd122599122636%_
                                   (##car _%e122598122633%_))
                                  (_%tl122600122638%_
                                   (##cdr _%e122598122633%_)))
                              (let ((_%eid122641%_ _%hd122599122636%_))
                                (if (gx#stx-null? _%tl122600122638%_)
                                    (let ((_%rest122643%_ _%tl122594122620%_))
                                      (if (and (gx#identifier? _%id122631%_)
                                               (gx#identifier? _%eid122641%_))
                                          (let ((_%eid122645%_
                                                 (gx#stx-e _%eid122641%_)))
                                            (gx#core-bind-extern!__0
                                             _%id122631%_
                                             _%eid122645%_)
                                            (_%lp122585%_
                                             _%rest122643%_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _%id122631%_)
                                                         (cons _%eid122645%_
                                                               '()))
                                                   _%r122588%_)))
                                          (_%E122591122611%_)))
                                    (_%E122591122611%_)))))
                          (_%E122591122611%_)))))
                (_%E122591122611%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E122591122611%_)))))
                                    (_%E122590122647%_)))
                                (_%E122562122571%_)))))
                      (_%E122562122571%_)))))
          (_%E122561122651%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx122505%_)
        (let* ((_%e122506122519%_ _%stx122505%_)
               (_%E122508122523%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122506122519%_)))
               (_%E122507122555%_
                (lambda ()
                  (if (gx#stx-pair? _%e122506122519%_)
                      (let ((_%e122509122527%_
                             (gx#syntax-e _%e122506122519%_)))
                        (let ((_%hd122510122530%_ (##car _%e122509122527%_))
                              (_%tl122511122532%_ (##cdr _%e122509122527%_)))
                          (if (gx#stx-pair? _%tl122511122532%_)
                              (let ((_%e122512122535%_
                                     (gx#syntax-e _%tl122511122532%_)))
                                (let ((_%hd122513122538%_
                                       (##car _%e122512122535%_))
                                      (_%tl122514122540%_
                                       (##cdr _%e122512122535%_)))
                                  (let ((_%hd122543%_ _%hd122513122538%_))
                                    (if (gx#stx-pair? _%tl122514122540%_)
                                        (let ((_%e122515122545%_
                                               (gx#syntax-e
                                                _%tl122514122540%_)))
                                          (let ((_%hd122516122548%_
                                                 (##car _%e122515122545%_))
                                                (_%tl122517122550%_
                                                 (##cdr _%e122515122545%_)))
                                            (let ((_%expr122553%_
                                                   _%hd122516122548%_))
                                              (if (gx#stx-null?
                                                   _%tl122517122550%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd122543%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd122543%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd122543%_)
                             (cons (gx#core-expand-expression _%expr122553%_)
                                   '())))
                 (gx#stx-source _%stx122505%_)))
              (_%E122508122523%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E122508122523%_)))))
                                        (_%E122508122523%_)))))
                              (_%E122508122523%_))))
                      (_%E122508122523%_)))))
          (_%E122507122555%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx122449%_)
        (let* ((_%e122450122463%_ _%stx122449%_)
               (_%E122452122467%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122450122463%_)))
               (_%E122451122501%_
                (lambda ()
                  (if (gx#stx-pair? _%e122450122463%_)
                      (let ((_%e122453122471%_
                             (gx#syntax-e _%e122450122463%_)))
                        (let ((_%hd122454122474%_ (##car _%e122453122471%_))
                              (_%tl122455122476%_ (##cdr _%e122453122471%_)))
                          (if (gx#stx-pair? _%tl122455122476%_)
                              (let ((_%e122456122479%_
                                     (gx#syntax-e _%tl122455122476%_)))
                                (let ((_%hd122457122482%_
                                       (##car _%e122456122479%_))
                                      (_%tl122458122484%_
                                       (##cdr _%e122456122479%_)))
                                  (let ((_%id122487%_ _%hd122457122482%_))
                                    (if (gx#stx-pair? _%tl122458122484%_)
                                        (let ((_%e122459122489%_
                                               (gx#syntax-e
                                                _%tl122458122484%_)))
                                          (let ((_%hd122460122492%_
                                                 (##car _%e122459122489%_))
                                                (_%tl122461122494%_
                                                 (##cdr _%e122459122489%_)))
                                            (let ((_%binding-id122497%_
                                                   _%hd122460122492%_))
                                              (if (gx#stx-null?
                                                   _%tl122461122494%_)
                                                  (if (and (gx#identifier?
                                                            _%id122487%_)
                                                           (gx#identifier?
                                                            _%binding-id122497%_))
                                                      (let ((_%eid122499%_
                                                             (gx#stx-e
                                                              _%binding-id122497%_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _%id122487%_
                                                         _%eid122499%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id122487%_)
                             (cons _%eid122499%_ '())))))
              (_%E122452122467%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E122452122467%_)))))
                                        (_%E122452122467%_)))))
                              (_%E122452122467%_))))
                      (_%E122452122467%_)))))
          (_%E122451122501%_))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx122392%_)
        (let* ((_%e122393122406%_ _%stx122392%_)
               (_%E122395122410%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122393122406%_)))
               (_%E122394122445%_
                (lambda ()
                  (if (gx#stx-pair? _%e122393122406%_)
                      (let ((_%e122396122414%_
                             (gx#syntax-e _%e122393122406%_)))
                        (let ((_%hd122397122417%_ (##car _%e122396122414%_))
                              (_%tl122398122419%_ (##cdr _%e122396122414%_)))
                          (if (gx#stx-pair? _%tl122398122419%_)
                              (let ((_%e122399122422%_
                                     (gx#syntax-e _%tl122398122419%_)))
                                (let ((_%hd122400122425%_
                                       (##car _%e122399122422%_))
                                      (_%tl122401122427%_
                                       (##cdr _%e122399122422%_)))
                                  (let ((_%id122430%_ _%hd122400122425%_))
                                    (if (gx#stx-pair? _%tl122401122427%_)
                                        (let ((_%e122402122432%_
                                               (gx#syntax-e
                                                _%tl122401122427%_)))
                                          (let ((_%hd122403122435%_
                                                 (##car _%e122402122432%_))
                                                (_%tl122404122437%_
                                                 (##cdr _%e122402122432%_)))
                                            (let ((_%expr122440%_
                                                   _%hd122403122435%_))
                                              (if (gx#stx-null?
                                                   _%tl122404122437%_)
                                                  (if (gx#identifier?
                                                       _%id122430%_)
                                                      (let ((_g123351_
                                                             (gx#core-expand-expression+1
                                                              _%expr122440%_)))
                                                        (begin
                                                          (let ((_g123352_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g123351_)
                             (##vector-length _g123351_)
                             1)))
                    (if (not (##fx= _g123352_ 2))
                        (error "Context expects 2 values" _g123352_)))
                  (let ((_%e-stx122442%_ (##vector-ref _g123351_ 0))
                        (_%e122443%_ (##vector-ref _g123351_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id122430%_ _%e122443%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id122430%_)
                                   (cons _%e-stx122442%_ '())))
                       (gx#stx-source _%stx122392%_))))))
              (_%E122395122410%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E122395122410%_)))))
                                        (_%E122395122410%_)))))
                              (_%E122395122410%_))))
                      (_%E122395122410%_)))))
          (_%E122394122445%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx122336%_)
        (let* ((_%e122337122350%_ _%stx122336%_)
               (_%E122339122354%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122337122350%_)))
               (_%E122338122388%_
                (lambda ()
                  (if (gx#stx-pair? _%e122337122350%_)
                      (let ((_%e122340122358%_
                             (gx#syntax-e _%e122337122350%_)))
                        (let ((_%hd122341122361%_ (##car _%e122340122358%_))
                              (_%tl122342122363%_ (##cdr _%e122340122358%_)))
                          (if (gx#stx-pair? _%tl122342122363%_)
                              (let ((_%e122343122366%_
                                     (gx#syntax-e _%tl122342122363%_)))
                                (let ((_%hd122344122369%_
                                       (##car _%e122343122366%_))
                                      (_%tl122345122371%_
                                       (##cdr _%e122343122366%_)))
                                  (let ((_%id122374%_ _%hd122344122369%_))
                                    (if (gx#stx-pair? _%tl122345122371%_)
                                        (let ((_%e122346122376%_
                                               (gx#syntax-e
                                                _%tl122345122371%_)))
                                          (let ((_%hd122347122379%_
                                                 (##car _%e122346122376%_))
                                                (_%tl122348122381%_
                                                 (##cdr _%e122346122376%_)))
                                            (let ((_%alias-id122384%_
                                                   _%hd122347122379%_))
                                              (if (gx#stx-null?
                                                   _%tl122348122381%_)
                                                  (if (and (gx#identifier?
                                                            _%id122374%_)
                                                           (gx#identifier?
                                                            _%alias-id122384%_))
                                                      (let ((_%alias-id122386%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id122384%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id122374%_
                                                         _%alias-id122386%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id122374%_)
                             (cons _%alias-id122386%_ '())))))
              (_%E122339122354%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E122339122354%_)))))
                                        (_%E122339122354%_)))))
                              (_%E122339122354%_))))
                      (_%E122339122354%_)))))
          (_%E122338122388%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx122279%_ _%wrap?122280%_)
        (let* ((_%e122281122291%_ _%stx122279%_)
               (_%E122283122295%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122281122291%_)))
               (_%E122282122322%_
                (lambda ()
                  (if (gx#stx-pair? _%e122281122291%_)
                      (let ((_%e122284122299%_
                             (gx#syntax-e _%e122281122291%_)))
                        (let ((_%hd122285122302%_ (##car _%e122284122299%_))
                              (_%tl122286122304%_ (##cdr _%e122284122299%_)))
                          (if (gx#stx-pair? _%tl122286122304%_)
                              (let ((_%e122287122307%_
                                     (gx#syntax-e _%tl122286122304%_)))
                                (let ((_%hd122288122310%_
                                       (##car _%e122287122307%_))
                                      (_%tl122289122312%_
                                       (##cdr _%e122287122307%_)))
                                  (let* ((_%hd122315%_ _%hd122288122310%_)
                                         (_%body122317%_ _%tl122289122312%_))
                                    (if (gx#core-bind-values? _%hd122315%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd122315%_)
                                           (let ((_%body122320%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd122315%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx122279%_
                                                               _%body122317%_)
                                                              '()))))
                                             (if _%wrap?122280%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body122320%_)
                                                  (gx#stx-source
                                                   _%stx122279%_))
                                                 _%body122320%_)))
                                         gx#current-expander-context
                                         (let ((__obj123344
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj123344)
                                           __obj123344))
                                        (_%E122283122295%_)))))
                              (_%E122283122295%_))))
                      (_%E122283122295%_)))))
          (_%E122282122322%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx122329%_)
        (let ((_%wrap?122331%_ '#t))
          (gx#core-expand-lambda%__% _%stx122329%_ _%wrap?122331%_))))
    (define gx#core-expand-lambda%
      (lambda _g123354_
        (let ((_g123353_ (##length _g123354_)))
          (cond ((##fx= _g123353_ 1)
                 (apply gx#core-expand-lambda%__0 _g123354_))
                ((##fx= _g123353_ 2)
                 (apply gx#core-expand-lambda%__% _g123354_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g123354_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx122243%_)
        (let* ((_%e122244122251%_ _%stx122243%_)
               (_%E122246122255%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122244122251%_)))
               (_%E122245122274%_
                (lambda ()
                  (if (gx#stx-pair? _%e122244122251%_)
                      (let ((_%e122247122259%_
                             (gx#syntax-e _%e122244122251%_)))
                        (let ((_%hd122248122262%_ (##car _%e122247122259%_))
                              (_%tl122249122264%_ (##cdr _%e122247122259%_)))
                          (let ((_%clauses122267%_ _%tl122249122264%_))
                            (if (gx#stx-list? _%clauses122267%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause122269%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause122269%_)
                                       (let ((_%$e122271%_
                                              (gx#stx-source
                                               _%clause122269%_)))
                                         (if _%$e122271%_
                                             _%$e122271%_
                                             (gx#stx-source _%stx122243%_))))
                                      '#f))
                                   _%clauses122267%_))
                                 (gx#stx-source _%stx122243%_))
                                (_%E122246122255%_)))))
                      (_%E122246122255%_)))))
          (_%E122245122274%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx122197%_)
        (let* ((_%e122198122208%_ _%stx122197%_)
               (_%E122200122212%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122198122208%_)))
               (_%E122199122239%_
                (lambda ()
                  (if (gx#stx-pair? _%e122198122208%_)
                      (let ((_%e122201122216%_
                             (gx#syntax-e _%e122198122208%_)))
                        (let ((_%hd122202122219%_ (##car _%e122201122216%_))
                              (_%tl122203122221%_ (##cdr _%e122201122216%_)))
                          (if (gx#stx-pair? _%tl122203122221%_)
                              (let ((_%e122204122224%_
                                     (gx#syntax-e _%tl122203122221%_)))
                                (let ((_%hd122205122227%_
                                       (##car _%e122204122224%_))
                                      (_%tl122206122229%_
                                       (##cdr _%e122204122224%_)))
                                  (let* ((_%hd122232%_ _%hd122205122227%_)
                                         (_%body122234%_ _%tl122206122229%_))
                                    (if (gx#core-expand-let-bind? _%hd122232%_)
                                        (let ((_%expressions122236%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd122232%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd122232%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd122232%_
                                                           _%expressions122236%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx122197%_
                         _%body122234%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx122197%_)))
                                           gx#current-expander-context
                                           (let ((__obj123345
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj123345)
                                             __obj123345)))
                                        (_%E122200122212%_)))))
                              (_%E122200122212%_))))
                      (_%E122200122212%_)))))
          (_%E122199122239%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx122142%_ _%form122143%_)
        (let* ((_%e122144122154%_ _%stx122142%_)
               (_%E122146122158%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122144122154%_)))
               (_%E122145122183%_
                (lambda ()
                  (if (gx#stx-pair? _%e122144122154%_)
                      (let ((_%e122147122162%_
                             (gx#syntax-e _%e122144122154%_)))
                        (let ((_%hd122148122165%_ (##car _%e122147122162%_))
                              (_%tl122149122167%_ (##cdr _%e122147122162%_)))
                          (if (gx#stx-pair? _%tl122149122167%_)
                              (let ((_%e122150122170%_
                                     (gx#syntax-e _%tl122149122167%_)))
                                (let ((_%hd122151122173%_
                                       (##car _%e122150122170%_))
                                      (_%tl122152122175%_
                                       (##cdr _%e122150122170%_)))
                                  (let* ((_%hd122178%_ _%hd122151122173%_)
                                         (_%body122180%_ _%tl122152122175%_))
                                    (if (gx#core-expand-let-bind? _%hd122178%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd122178%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form122143%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd122178%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd122178%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx122142%_
                                                               _%body122180%_)
                                                              '())))
                                            (gx#stx-source _%stx122142%_)))
                                         gx#current-expander-context
                                         (let ((__obj123346
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj123346)
                                           __obj123346))
                                        (_%E122146122158%_)))))
                              (_%E122146122158%_))))
                      (_%E122146122158%_)))))
          (_%E122145122183%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx122190%_)
        (let ((_%form122192%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx122190%_ _%form122192%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g123356_
        (let ((_g123355_ (##length _g123356_)))
          (cond ((##fx= _g123355_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g123356_))
                ((##fx= _g123355_ 2)
                 (apply gx#core-expand-letrec-values%__% _g123356_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g123356_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx122139%_)
        (gx#core-expand-letrec-values%__% _%stx122139%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx122096%_)
        (if (gx#stx-list? _%stx122096%_)
            (gx#stx-andmap
             (lambda (_%bind122098%_)
               (let* ((_%e122099122109%_ _%bind122098%_)
                      (_%E122101122113%_ (lambda () '#f))
                      (_%E122100122135%_
                       (lambda ()
                         (if (gx#stx-pair? _%e122099122109%_)
                             (let ((_%e122102122117%_
                                    (gx#syntax-e _%e122099122109%_)))
                               (let ((_%hd122103122120%_
                                      (##car _%e122102122117%_))
                                     (_%tl122104122122%_
                                      (##cdr _%e122102122117%_)))
                                 (let ((_%hd122125%_ _%hd122103122120%_))
                                   (if (gx#stx-pair? _%tl122104122122%_)
                                       (let ((_%e122105122127%_
                                              (gx#syntax-e
                                               _%tl122104122122%_)))
                                         (let ((_%hd122106122130%_
                                                (##car _%e122105122127%_))
                                               (_%tl122107122132%_
                                                (##cdr _%e122105122127%_)))
                                           (if (gx#stx-null?
                                                _%tl122107122132%_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _%hd122125%_)
                                                   (_%E122101122113%_))
                                               (_%E122101122113%_))))
                                       (_%E122101122113%_)))))
                             (_%E122101122113%_)))))
                 (_%E122100122135%_)))
             _%stx122096%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind122055%_)
        (let* ((_%e122056122066%_ _%bind122055%_)
               (_%E122058122070%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122056122066%_)))
               (_%E122057122092%_
                (lambda ()
                  (if (gx#stx-pair? _%e122056122066%_)
                      (let ((_%e122059122074%_
                             (gx#syntax-e _%e122056122066%_)))
                        (let ((_%hd122060122077%_ (##car _%e122059122074%_))
                              (_%tl122061122079%_ (##cdr _%e122059122074%_)))
                          (if (gx#stx-pair? _%tl122061122079%_)
                              (let ((_%e122062122082%_
                                     (gx#syntax-e _%tl122061122079%_)))
                                (let ((_%hd122063122085%_
                                       (##car _%e122062122082%_))
                                      (_%tl122064122087%_
                                       (##cdr _%e122062122082%_)))
                                  (let ((_%expr122090%_ _%hd122063122085%_))
                                    (if (gx#stx-null? _%tl122064122087%_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _%expr122090%_)
                                            (_%E122058122070%_))
                                        (_%E122058122070%_)))))
                              (_%E122058122070%_))))
                      (_%E122058122070%_)))))
          (_%E122057122092%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind122014%_)
        (let* ((_%e122015122025%_ _%bind122014%_)
               (_%E122017122029%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122015122025%_)))
               (_%E122016122051%_
                (lambda ()
                  (if (gx#stx-pair? _%e122015122025%_)
                      (let ((_%e122018122033%_
                             (gx#syntax-e _%e122015122025%_)))
                        (let ((_%hd122019122036%_ (##car _%e122018122033%_))
                              (_%tl122020122038%_ (##cdr _%e122018122033%_)))
                          (let ((_%hd122041%_ _%hd122019122036%_))
                            (if (gx#stx-pair? _%tl122020122038%_)
                                (let ((_%e122021122043%_
                                       (gx#syntax-e _%tl122020122038%_)))
                                  (let ((_%hd122022122046%_
                                         (##car _%e122021122043%_))
                                        (_%tl122023122048%_
                                         (##cdr _%e122021122043%_)))
                                    (if (gx#stx-null? _%tl122023122048%_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _%hd122041%_)
                                            (_%E122017122029%_))
                                        (_%E122017122029%_))))
                                (_%E122017122029%_)))))
                      (_%E122017122029%_)))))
          (_%E122016122051%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind121972%_ _%expr121973%_)
        (let* ((_%e121974121984%_ _%bind121972%_)
               (_%E121976121988%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121974121984%_)))
               (_%E121975122010%_
                (lambda ()
                  (if (gx#stx-pair? _%e121974121984%_)
                      (let ((_%e121977121992%_
                             (gx#syntax-e _%e121974121984%_)))
                        (let ((_%hd121978121995%_ (##car _%e121977121992%_))
                              (_%tl121979121997%_ (##cdr _%e121977121992%_)))
                          (let ((_%hd122000%_ _%hd121978121995%_))
                            (if (gx#stx-pair? _%tl121979121997%_)
                                (let ((_%e121980122002%_
                                       (gx#syntax-e _%tl121979121997%_)))
                                  (let ((_%hd121981122005%_
                                         (##car _%e121980122002%_))
                                        (_%tl121982122007%_
                                         (##cdr _%e121980122002%_)))
                                    (if (gx#stx-null? _%tl121982122007%_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _%hd122000%_)
                                                  (cons _%expr121973%_ '()))
                                            (_%E121976121988%_))
                                        (_%E121976121988%_))))
                                (_%E121976121988%_)))))
                      (_%E121976121988%_)))))
          (_%E121975122010%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx121926%_)
        (let* ((_%e121927121937%_ _%stx121926%_)
               (_%E121929121941%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121927121937%_)))
               (_%E121928121968%_
                (lambda ()
                  (if (gx#stx-pair? _%e121927121937%_)
                      (let ((_%e121930121945%_
                             (gx#syntax-e _%e121927121937%_)))
                        (let ((_%hd121931121948%_ (##car _%e121930121945%_))
                              (_%tl121932121950%_ (##cdr _%e121930121945%_)))
                          (if (gx#stx-pair? _%tl121932121950%_)
                              (let ((_%e121933121953%_
                                     (gx#syntax-e _%tl121932121950%_)))
                                (let ((_%hd121934121956%_
                                       (##car _%e121933121953%_))
                                      (_%tl121935121958%_
                                       (##cdr _%e121933121953%_)))
                                  (let* ((_%hd121961%_ _%hd121934121956%_)
                                         (_%body121963%_ _%tl121935121958%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd121961%_)
                                        (let ((_%expanders121965%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd121961%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd121961%_
                                              _%expanders121965%_)
                                             (gx#core-expand-local-block
                                              _%stx121926%_
                                              _%body121963%_))
                                           gx#current-expander-context
                                           (let ((__obj123347
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj123347)
                                             __obj123347)))
                                        (_%E121929121941%_)))))
                              (_%E121929121941%_))))
                      (_%E121929121941%_)))))
          (_%E121928121968%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx121875%_)
        (let* ((_%e121876121886%_ _%stx121875%_)
               (_%E121878121890%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121876121886%_)))
               (_%E121877121922%_
                (lambda ()
                  (if (gx#stx-pair? _%e121876121886%_)
                      (let ((_%e121879121894%_
                             (gx#syntax-e _%e121876121886%_)))
                        (let ((_%hd121880121897%_ (##car _%e121879121894%_))
                              (_%tl121881121899%_ (##cdr _%e121879121894%_)))
                          (if (gx#stx-pair? _%tl121881121899%_)
                              (let ((_%e121882121902%_
                                     (gx#syntax-e _%tl121881121899%_)))
                                (let ((_%hd121883121905%_
                                       (##car _%e121882121902%_))
                                      (_%tl121884121907%_
                                       (##cdr _%e121882121902%_)))
                                  (let* ((_%hd121910%_ _%hd121883121905%_)
                                         (_%body121912%_ _%tl121884121907%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd121910%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd121910%_
                                            (make-list
                                             (gx#stx-length _%hd121910%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g121914121917%_
                                                     _%g121915121919%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g121914121917%_
                                               _%g121915121919%_
                                               '#t))
                                            _%hd121910%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd121910%_))
                                           (gx#core-expand-local-block
                                            _%stx121875%_
                                            _%body121912%_))
                                         gx#current-expander-context
                                         (let ((__obj123348
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj123348)
                                           __obj123348))
                                        (_%E121878121890%_)))))
                              (_%E121878121890%_))))
                      (_%E121878121890%_)))))
          (_%E121877121922%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx121832%_)
        (if (gx#stx-list? _%stx121832%_)
            (gx#stx-andmap
             (lambda (_%bind121834%_)
               (let* ((_%e121835121845%_ _%bind121834%_)
                      (_%E121837121849%_ (lambda () '#f))
                      (_%E121836121871%_
                       (lambda ()
                         (if (gx#stx-pair? _%e121835121845%_)
                             (let ((_%e121838121853%_
                                    (gx#syntax-e _%e121835121845%_)))
                               (let ((_%hd121839121856%_
                                      (##car _%e121838121853%_))
                                     (_%tl121840121858%_
                                      (##cdr _%e121838121853%_)))
                                 (let ((_%hd121861%_ _%hd121839121856%_))
                                   (if (gx#stx-pair? _%tl121840121858%_)
                                       (let ((_%e121841121863%_
                                              (gx#syntax-e
                                               _%tl121840121858%_)))
                                         (let ((_%hd121842121866%_
                                                (##car _%e121841121863%_))
                                               (_%tl121843121868%_
                                                (##cdr _%e121841121863%_)))
                                           (if (gx#stx-null?
                                                _%tl121843121868%_)
                                               (if '#t
                                                   (gx#identifier?
                                                    _%hd121861%_)
                                                   (_%E121837121849%_))
                                               (_%E121837121849%_))))
                                       (_%E121837121849%_)))))
                             (_%E121837121849%_)))))
                 (_%E121836121871%_)))
             _%stx121832%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind121788%_)
        (let* ((_%e121789121799%_ _%bind121788%_)
               (_%E121791121803%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121789121799%_)))
               (_%E121790121828%_
                (lambda ()
                  (if (gx#stx-pair? _%e121789121799%_)
                      (let ((_%e121792121807%_
                             (gx#syntax-e _%e121789121799%_)))
                        (let ((_%hd121793121810%_ (##car _%e121792121807%_))
                              (_%tl121794121812%_ (##cdr _%e121792121807%_)))
                          (if (gx#stx-pair? _%tl121794121812%_)
                              (let ((_%e121795121815%_
                                     (gx#syntax-e _%tl121794121812%_)))
                                (let ((_%hd121796121818%_
                                       (##car _%e121795121815%_))
                                      (_%tl121797121820%_
                                       (##cdr _%e121795121815%_)))
                                  (let ((_%expr121823%_ _%hd121796121818%_))
                                    (if (gx#stx-null? _%tl121797121820%_)
                                        (if '#t
                                            (let ((_g123357_
                                                   (gx#core-expand-expression+1
                                                    _%expr121823%_)))
                                              (begin
                                                (let ((_g123358_
                                                       (if (##values?
                                                            _g123357_)
                                                           (##vector-length
                                                            _g123357_)
                                                           1)))
                                                  (if (not (##fx= _g123358_ 2))
                                                      (error "Context expects 2 values"
                                                             _g123358_)))
                                                (let ((_%_121825%_
                                                       (##vector-ref
                                                        _g123357_
                                                        0))
                                                      (_%e121826%_
                                                       (##vector-ref
                                                        _g123357_
                                                        1)))
                                                  _%e121826%_)))
                                            (_%E121791121803%_))
                                        (_%E121791121803%_)))))
                              (_%E121791121803%_))))
                      (_%E121791121803%_)))))
          (_%E121790121828%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind121733%_ _%e121734%_ _%rebind?121735%_)
        (let* ((_%e121736121746%_ _%bind121733%_)
               (_%E121738121750%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121736121746%_)))
               (_%E121737121772%_
                (lambda ()
                  (if (gx#stx-pair? _%e121736121746%_)
                      (let ((_%e121739121754%_
                             (gx#syntax-e _%e121736121746%_)))
                        (let ((_%hd121740121757%_ (##car _%e121739121754%_))
                              (_%tl121741121759%_ (##cdr _%e121739121754%_)))
                          (let ((_%id121762%_ _%hd121740121757%_))
                            (if (gx#stx-pair? _%tl121741121759%_)
                                (let ((_%e121742121764%_
                                       (gx#syntax-e _%tl121741121759%_)))
                                  (let ((_%hd121743121767%_
                                         (##car _%e121742121764%_))
                                        (_%tl121744121769%_
                                         (##cdr _%e121742121764%_)))
                                    (if (gx#stx-null? _%tl121744121769%_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _%id121762%_
                                             _%e121734%_
                                             _%rebind?121735%_)
                                            (_%E121738121750%_))
                                        (_%E121738121750%_))))
                                (_%E121738121750%_)))))
                      (_%E121738121750%_)))))
          (_%E121737121772%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind121779%_ _%e121780%_)
        (let ((_%rebind?121782%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind121779%_
           _%e121780%_
           _%rebind?121782%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g123360_
        (let ((_g123359_ (##length _g123360_)))
          (cond ((##fx= _g123359_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g123360_))
                ((##fx= _g123359_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g123360_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g123360_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx121691%_)
        (let* ((_%e121692121702%_ _%stx121691%_)
               (_%E121694121706%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121692121702%_)))
               (_%E121693121728%_
                (lambda ()
                  (if (gx#stx-pair? _%e121692121702%_)
                      (let ((_%e121695121710%_
                             (gx#syntax-e _%e121692121702%_)))
                        (let ((_%hd121696121713%_ (##car _%e121695121710%_))
                              (_%tl121697121715%_ (##cdr _%e121695121710%_)))
                          (if (gx#stx-pair? _%tl121697121715%_)
                              (let ((_%e121698121718%_
                                     (gx#syntax-e _%tl121697121715%_)))
                                (let ((_%hd121699121721%_
                                       (##car _%e121698121718%_))
                                      (_%tl121700121723%_
                                       (##cdr _%e121698121718%_)))
                                  (let ((_%expr121726%_ _%hd121699121721%_))
                                    (if (gx#stx-null? _%tl121700121723%_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _%expr121726%_)
                                            (_%E121694121706%_))
                                        (_%E121694121706%_)))))
                              (_%E121694121706%_))))
                      (_%E121694121706%_)))))
          (_%E121693121728%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx121650%_)
        (let* ((_%e121651121661%_ _%stx121650%_)
               (_%E121653121665%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121651121661%_)))
               (_%E121652121687%_
                (lambda ()
                  (if (gx#stx-pair? _%e121651121661%_)
                      (let ((_%e121654121669%_
                             (gx#syntax-e _%e121651121661%_)))
                        (let ((_%hd121655121672%_ (##car _%e121654121669%_))
                              (_%tl121656121674%_ (##cdr _%e121654121669%_)))
                          (if (gx#stx-pair? _%tl121656121674%_)
                              (let ((_%e121657121677%_
                                     (gx#syntax-e _%tl121656121674%_)))
                                (let ((_%hd121658121680%_
                                       (##car _%e121657121677%_))
                                      (_%tl121659121682%_
                                       (##cdr _%e121657121677%_)))
                                  (let ((_%e121685%_ _%hd121658121680%_))
                                    (if (gx#stx-null? _%tl121659121682%_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _%e121685%_)
                                                         '()))
                                             (gx#stx-source _%stx121650%_))
                                            (_%E121653121665%_))
                                        (_%E121653121665%_)))))
                              (_%E121653121665%_))))
                      (_%E121653121665%_)))))
          (_%E121652121687%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx121609%_)
        (let* ((_%e121610121620%_ _%stx121609%_)
               (_%E121612121624%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121610121620%_)))
               (_%E121611121646%_
                (lambda ()
                  (if (gx#stx-pair? _%e121610121620%_)
                      (let ((_%e121613121628%_
                             (gx#syntax-e _%e121610121620%_)))
                        (let ((_%hd121614121631%_ (##car _%e121613121628%_))
                              (_%tl121615121633%_ (##cdr _%e121613121628%_)))
                          (if (gx#stx-pair? _%tl121615121633%_)
                              (let ((_%e121616121636%_
                                     (gx#syntax-e _%tl121615121633%_)))
                                (let ((_%hd121617121639%_
                                       (##car _%e121616121636%_))
                                      (_%tl121618121641%_
                                       (##cdr _%e121616121636%_)))
                                  (let ((_%e121644%_ _%hd121617121639%_))
                                    (if (gx#stx-null? _%tl121618121641%_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _%e121644%_)
                                                         '()))
                                             (gx#stx-source _%stx121609%_))
                                            (_%E121612121624%_))
                                        (_%E121612121624%_)))))
                              (_%E121612121624%_))))
                      (_%E121612121624%_)))))
          (_%E121611121646%_))))
    (define gx#core-expand-call%
      (lambda (_%stx121566%_)
        (let* ((_%e121567121577%_ _%stx121566%_)
               (_%E121569121581%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121567121577%_)))
               (_%E121568121605%_
                (lambda ()
                  (if (gx#stx-pair? _%e121567121577%_)
                      (let ((_%e121570121585%_
                             (gx#syntax-e _%e121567121577%_)))
                        (let ((_%hd121571121588%_ (##car _%e121570121585%_))
                              (_%tl121572121590%_ (##cdr _%e121570121585%_)))
                          (if (gx#stx-pair? _%tl121572121590%_)
                              (let ((_%e121573121593%_
                                     (gx#syntax-e _%tl121572121590%_)))
                                (let ((_%hd121574121596%_
                                       (##car _%e121573121593%_))
                                      (_%tl121575121598%_
                                       (##cdr _%e121573121593%_)))
                                  (let* ((_%rator121601%_ _%hd121574121596%_)
                                         (_%args121603%_ _%tl121575121598%_))
                                    (if (gx#stx-list? _%args121603%_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _%rator121601%_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _%args121603%_))
                                         (gx#stx-source _%stx121566%_))
                                        (_%E121569121581%_)))))
                              (_%E121569121581%_))))
                      (_%E121569121581%_)))))
          (_%E121568121605%_))))
    (define gx#core-expand-if%
      (lambda (_%stx121499%_)
        (let* ((_%e121500121516%_ _%stx121499%_)
               (_%E121502121520%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121500121516%_)))
               (_%E121501121562%_
                (lambda ()
                  (if (gx#stx-pair? _%e121500121516%_)
                      (let ((_%e121503121524%_
                             (gx#syntax-e _%e121500121516%_)))
                        (let ((_%hd121504121527%_ (##car _%e121503121524%_))
                              (_%tl121505121529%_ (##cdr _%e121503121524%_)))
                          (if (gx#stx-pair? _%tl121505121529%_)
                              (let ((_%e121506121532%_
                                     (gx#syntax-e _%tl121505121529%_)))
                                (let ((_%hd121507121535%_
                                       (##car _%e121506121532%_))
                                      (_%tl121508121537%_
                                       (##cdr _%e121506121532%_)))
                                  (let ((_%test121540%_ _%hd121507121535%_))
                                    (if (gx#stx-pair? _%tl121508121537%_)
                                        (let ((_%e121509121542%_
                                               (gx#syntax-e
                                                _%tl121508121537%_)))
                                          (let ((_%hd121510121545%_
                                                 (##car _%e121509121542%_))
                                                (_%tl121511121547%_
                                                 (##cdr _%e121509121542%_)))
                                            (let ((_%K121550%_
                                                   _%hd121510121545%_))
                                              (if (gx#stx-pair?
                                                   _%tl121511121547%_)
                                                  (let ((_%e121512121552%_
                                                         (gx#syntax-e
                                                          _%tl121511121547%_)))
                                                    (let ((_%hd121513121555%_
                                                           (##car _%e121512121552%_))
                                                          (_%tl121514121557%_
                                                           (##cdr _%e121512121552%_)))
                                                      (let ((_%E121560%_
                                                             _%hd121513121555%_))
                                                        (if (gx#stx-null?
                                                             _%tl121514121557%_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _%test121540%_)
                                     (cons (gx#core-expand-expression
                                            _%K121550%_)
                                           (cons (gx#core-expand-expression
                                                  _%E121560%_)
                                                 '()))))
                         (gx#stx-source _%stx121499%_))
                        (_%E121502121520%_))
                    (_%E121502121520%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121502121520%_)))))
                                        (_%E121502121520%_)))))
                              (_%E121502121520%_))))
                      (_%E121502121520%_)))))
          (_%E121501121562%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx121458%_)
        (let* ((_%e121459121469%_ _%stx121458%_)
               (_%E121461121473%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121459121469%_)))
               (_%E121460121495%_
                (lambda ()
                  (if (gx#stx-pair? _%e121459121469%_)
                      (let ((_%e121462121477%_
                             (gx#syntax-e _%e121459121469%_)))
                        (let ((_%hd121463121480%_ (##car _%e121462121477%_))
                              (_%tl121464121482%_ (##cdr _%e121462121477%_)))
                          (if (gx#stx-pair? _%tl121464121482%_)
                              (let ((_%e121465121485%_
                                     (gx#syntax-e _%tl121464121482%_)))
                                (let ((_%hd121466121488%_
                                       (##car _%e121465121485%_))
                                      (_%tl121467121490%_
                                       (##cdr _%e121465121485%_)))
                                  (let ((_%id121493%_ _%hd121466121488%_))
                                    (if (gx#stx-null? _%tl121467121490%_)
                                        (if (gx#identifier? _%id121493%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id121493%_
                                                          _%stx121458%_)
                                                         '()))
                                             (gx#stx-source _%stx121458%_))
                                            (_%E121461121473%_))
                                        (_%E121461121473%_)))))
                              (_%E121461121473%_))))
                      (_%E121461121473%_)))))
          (_%E121460121495%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx121404%_)
        (let* ((_%e121405121418%_ _%stx121404%_)
               (_%E121407121422%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121405121418%_)))
               (_%E121406121454%_
                (lambda ()
                  (if (gx#stx-pair? _%e121405121418%_)
                      (let ((_%e121408121426%_
                             (gx#syntax-e _%e121405121418%_)))
                        (let ((_%hd121409121429%_ (##car _%e121408121426%_))
                              (_%tl121410121431%_ (##cdr _%e121408121426%_)))
                          (if (gx#stx-pair? _%tl121410121431%_)
                              (let ((_%e121411121434%_
                                     (gx#syntax-e _%tl121410121431%_)))
                                (let ((_%hd121412121437%_
                                       (##car _%e121411121434%_))
                                      (_%tl121413121439%_
                                       (##cdr _%e121411121434%_)))
                                  (let ((_%id121442%_ _%hd121412121437%_))
                                    (if (gx#stx-pair? _%tl121413121439%_)
                                        (let ((_%e121414121444%_
                                               (gx#syntax-e
                                                _%tl121413121439%_)))
                                          (let ((_%hd121415121447%_
                                                 (##car _%e121414121444%_))
                                                (_%tl121416121449%_
                                                 (##cdr _%e121414121444%_)))
                                            (let ((_%expr121452%_
                                                   _%hd121415121447%_))
                                              (if (gx#stx-null?
                                                   _%tl121416121449%_)
                                                  (if (gx#identifier?
                                                       _%id121442%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id121442%_
                            _%stx121404%_)
                           (cons (gx#core-expand-expression _%expr121452%_)
                                 '())))
               (gx#stx-source _%stx121404%_))
              (_%E121407121422%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121407121422%_)))))
                                        (_%E121407121422%_)))))
                              (_%E121407121422%_))))
                      (_%E121407121422%_)))))
          (_%E121406121454%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx121249%_)
        (letrec ((_%generate121251%_
                  (lambda (_%body121281%_)
                    (let _%lp121283%_ ((_%rest121285%_ _%body121281%_)
                                       (_%ns121286%_
                                        (gx#core-context-namespace__0))
                                       (_%r121287%_ '()))
                      (let* ((_%e121288121303%_ _%rest121285%_)
                             (_%E121301121307%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e121288121303%_)))
                             (_%E121297121311%_
                              (lambda ()
                                (if (gx#stx-null? _%e121288121303%_)
                                    (if '#t
                                        (reverse _%r121287%_)
                                        (_%E121301121307%_))
                                    (_%E121301121307%_))))
                             (_%E121290121368%_
                              (lambda ()
                                (if (gx#stx-pair? _%e121288121303%_)
                                    (let ((_%e121298121315%_
                                           (gx#syntax-e _%e121288121303%_)))
                                      (let ((_%hd121299121318%_
                                             (##car _%e121298121315%_))
                                            (_%tl121300121320%_
                                             (##cdr _%e121298121315%_)))
                                        (let* ((_%hd121323%_
                                                _%hd121299121318%_)
                                               (_%rest121325%_
                                                _%tl121300121320%_))
                                          (if '#t
                                              (if (gx#identifier? _%hd121323%_)
                                                  (_%lp121283%_
                                                   _%rest121325%_
                                                   _%ns121286%_
                                                   (cons (cons _%hd121323%_
                                                               (cons (if _%ns121286%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _%hd121323%_
                                  _%ns121286%_
                                  '"#"
                                  _%hd121323%_)
                                 _%hd121323%_)
                             '()))
                 _%r121287%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%e121326121336%_
                                                          _%hd121323%_)
                                                         (_%E121328121340%_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e121326121336%_)))
                                                         (_%E121327121364%_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%e121326121336%_)
                        (let ((_%e121329121344%_
                               (gx#syntax-e _%e121326121336%_)))
                          (let ((_%hd121330121347%_ (##car _%e121329121344%_))
                                (_%tl121331121349%_ (##cdr _%e121329121344%_)))
                            (let ((_%id121352%_ _%hd121330121347%_))
                              (if (gx#stx-pair? _%tl121331121349%_)
                                  (let ((_%e121332121354%_
                                         (gx#syntax-e _%tl121331121349%_)))
                                    (let ((_%hd121333121357%_
                                           (##car _%e121332121354%_))
                                          (_%tl121334121359%_
                                           (##cdr _%e121332121354%_)))
                                      (let ((_%eid121362%_ _%hd121333121357%_))
                                        (if (gx#stx-null? _%tl121334121359%_)
                                            (if (and (gx#identifier?
                                                      _%id121352%_)
                                                     (gx#identifier?
                                                      _%eid121362%_))
                                                (_%lp121283%_
                                                 _%rest121325%_
                                                 _%ns121286%_
                                                 (cons (cons _%id121352%_
                                                             (cons _%eid121362%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%r121287%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E121328121340%_))
                                            (_%E121328121340%_)))))
                                  (_%E121328121340%_)))))
                        (_%E121328121340%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E121327121364%_)))
                                              (_%E121297121311%_)))))
                                    (_%E121297121311%_))))
                             (_%E121289121400%_
                              (lambda ()
                                (if (gx#stx-pair? _%e121288121303%_)
                                    (let ((_%e121291121372%_
                                           (gx#syntax-e _%e121288121303%_)))
                                      (let ((_%hd121292121375%_
                                             (##car _%e121291121372%_))
                                            (_%tl121293121377%_
                                             (##cdr _%e121291121372%_)))
                                        (if (eq? (gx#stx-e _%hd121292121375%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl121293121377%_)
                                                (let ((_%e121294121380%_
                                                       (gx#syntax-e
                                                        _%tl121293121377%_)))
                                                  (let ((_%hd121295121383%_
                                                         (##car _%e121294121380%_))
                                                        (_%tl121296121385%_
                                                         (##cdr _%e121294121380%_)))
                                                    (let* ((_%ns121388%_
                                                            _%hd121295121383%_)
                                                           (_%rest121390%_
                                                            _%tl121296121385%_))
                                                      (if '#t
                                                          (let ((_%ns121398%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _%ns121388%_)
                             (symbol->string (gx#stx-e _%ns121388%_))
                             (if (or (gx#stx-string? _%ns121388%_)
                                     (gx#stx-false? _%ns121388%_))
                                 (gx#stx-e _%ns121388%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _%stx121249%_
                                  _%ns121388%_)))))
                    (_%lp121283%_ _%rest121390%_ _%ns121398%_ _%r121287%_))
                  (_%E121290121368%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E121290121368%_))
                                            (_%E121290121368%_))))
                                    (_%E121290121368%_)))))
                        (_%E121289121400%_))))))
          (let* ((_%e121252121259%_ _%stx121249%_)
                 (_%E121254121263%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e121252121259%_)))
                 (_%E121253121277%_
                  (lambda ()
                    (if (gx#stx-pair? _%e121252121259%_)
                        (let ((_%e121255121267%_
                               (gx#syntax-e _%e121252121259%_)))
                          (let ((_%hd121256121270%_ (##car _%e121255121267%_))
                                (_%tl121257121272%_ (##cdr _%e121255121267%_)))
                            (let ((_%body121275%_ _%tl121257121272%_))
                              (if (gx#stx-list? _%body121275%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate121251%_ _%body121275%_))
                                  (_%E121254121263%_)))))
                        (_%E121254121263%_)))))
            (_%E121253121277%_)))))
    (define gx#macro-expand-define-values
      (lambda (_%stx121195%_)
        (let* ((_%e121196121209%_ _%stx121195%_)
               (_%E121198121213%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121196121209%_)))
               (_%E121197121245%_
                (lambda ()
                  (if (gx#stx-pair? _%e121196121209%_)
                      (let ((_%e121199121217%_
                             (gx#syntax-e _%e121196121209%_)))
                        (let ((_%hd121200121220%_ (##car _%e121199121217%_))
                              (_%tl121201121222%_ (##cdr _%e121199121217%_)))
                          (if (gx#stx-pair? _%tl121201121222%_)
                              (let ((_%e121202121225%_
                                     (gx#syntax-e _%tl121201121222%_)))
                                (let ((_%hd121203121228%_
                                       (##car _%e121202121225%_))
                                      (_%tl121204121230%_
                                       (##cdr _%e121202121225%_)))
                                  (let ((_%hd121233%_ _%hd121203121228%_))
                                    (if (gx#stx-pair? _%tl121204121230%_)
                                        (let ((_%e121205121235%_
                                               (gx#syntax-e
                                                _%tl121204121230%_)))
                                          (let ((_%hd121206121238%_
                                                 (##car _%e121205121235%_))
                                                (_%tl121207121240%_
                                                 (##cdr _%e121205121235%_)))
                                            (let ((_%expr121243%_
                                                   _%hd121206121238%_))
                                              (if (gx#stx-null?
                                                   _%tl121207121240%_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _%hd121233%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           identity
                           _%hd121233%_)
                          (cons _%expr121243%_ '())))
              (_%E121198121213%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121198121213%_)))))
                                        (_%E121198121213%_)))))
                              (_%E121198121213%_))))
                      (_%E121198121213%_)))))
          (_%E121197121245%_))))
    (define gx#macro-expand-define-syntax
      (lambda (_%stx121141%_)
        (let* ((_%e121142121155%_ _%stx121141%_)
               (_%E121144121159%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121142121155%_)))
               (_%E121143121191%_
                (lambda ()
                  (if (gx#stx-pair? _%e121142121155%_)
                      (let ((_%e121145121163%_
                             (gx#syntax-e _%e121142121155%_)))
                        (let ((_%hd121146121166%_ (##car _%e121145121163%_))
                              (_%tl121147121168%_ (##cdr _%e121145121163%_)))
                          (if (gx#stx-pair? _%tl121147121168%_)
                              (let ((_%e121148121171%_
                                     (gx#syntax-e _%tl121147121168%_)))
                                (let ((_%hd121149121174%_
                                       (##car _%e121148121171%_))
                                      (_%tl121150121176%_
                                       (##cdr _%e121148121171%_)))
                                  (let ((_%hd121179%_ _%hd121149121174%_))
                                    (if (gx#stx-pair? _%tl121150121176%_)
                                        (let ((_%e121151121181%_
                                               (gx#syntax-e
                                                _%tl121150121176%_)))
                                          (let ((_%hd121152121184%_
                                                 (##car _%e121151121181%_))
                                                (_%tl121153121186%_
                                                 (##cdr _%e121151121181%_)))
                                            (let ((_%expr121189%_
                                                   _%hd121152121184%_))
                                              (if (gx#stx-null?
                                                   _%tl121153121186%_)
                                                  (if (gx#identifier?
                                                       _%hd121179%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _%hd121179%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr121189%_ '())))
              (_%E121144121159%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121144121159%_)))))
                                        (_%E121144121159%_)))))
                              (_%E121144121159%_))))
                      (_%E121144121159%_)))))
          (_%E121143121191%_))))
    (define gx#macro-expand-define-alias
      (lambda (_%stx121087%_)
        (let* ((_%e121088121101%_ _%stx121087%_)
               (_%E121090121105%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121088121101%_)))
               (_%E121089121137%_
                (lambda ()
                  (if (gx#stx-pair? _%e121088121101%_)
                      (let ((_%e121091121109%_
                             (gx#syntax-e _%e121088121101%_)))
                        (let ((_%hd121092121112%_ (##car _%e121091121109%_))
                              (_%tl121093121114%_ (##cdr _%e121091121109%_)))
                          (if (gx#stx-pair? _%tl121093121114%_)
                              (let ((_%e121094121117%_
                                     (gx#syntax-e _%tl121093121114%_)))
                                (let ((_%hd121095121120%_
                                       (##car _%e121094121117%_))
                                      (_%tl121096121122%_
                                       (##cdr _%e121094121117%_)))
                                  (let ((_%id121125%_ _%hd121095121120%_))
                                    (if (gx#stx-pair? _%tl121096121122%_)
                                        (let ((_%e121097121127%_
                                               (gx#syntax-e
                                                _%tl121096121122%_)))
                                          (let ((_%hd121098121130%_
                                                 (##car _%e121097121127%_))
                                                (_%tl121099121132%_
                                                 (##cdr _%e121097121127%_)))
                                            (let ((_%alias-id121135%_
                                                   _%hd121098121130%_))
                                              (if (gx#stx-null?
                                                   _%tl121099121132%_)
                                                  (if (and (gx#identifier?
                                                            _%id121125%_)
                                                           (gx#identifier?
                                                            _%alias-id121135%_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _%id121125%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%alias-id121135%_ '())))
              (_%E121090121105%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121090121105%_)))))
                                        (_%E121090121105%_)))))
                              (_%E121090121105%_))))
                      (_%E121090121105%_)))))
          (_%E121089121137%_))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx121044%_)
        (let* ((_%e121045121055%_ _%stx121044%_)
               (_%E121047121059%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121045121055%_)))
               (_%E121046121083%_
                (lambda ()
                  (if (gx#stx-pair? _%e121045121055%_)
                      (let ((_%e121048121063%_
                             (gx#syntax-e _%e121045121055%_)))
                        (let ((_%hd121049121066%_ (##car _%e121048121063%_))
                              (_%tl121050121068%_ (##cdr _%e121048121063%_)))
                          (if (gx#stx-pair? _%tl121050121068%_)
                              (let ((_%e121051121071%_
                                     (gx#syntax-e _%tl121050121068%_)))
                                (let ((_%hd121052121074%_
                                       (##car _%e121051121071%_))
                                      (_%tl121053121076%_
                                       (##cdr _%e121051121071%_)))
                                  (let* ((_%hd121079%_ _%hd121052121074%_)
                                         (_%body121081%_ _%tl121053121076%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd121079%_)
                                             (gx#stx-list? _%body121081%_)
                                             (not (gx#stx-null?
                                                   _%body121081%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd121079%_)
                                         _%body121081%_)
                                        (_%E121047121059%_)))))
                              (_%E121047121059%_))))
                      (_%E121047121059%_)))))
          (_%E121046121083%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx120980%_)
        (letrec ((_%generate120982%_
                  (lambda (_%clause121012%_)
                    (let* ((_%e121013121020%_ _%clause121012%_)
                           (_%E121015121024%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx120980%_
                               _%clause121012%_)))
                           (_%E121014121040%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121013121020%_)
                                  (let ((_%e121016121028%_
                                         (gx#syntax-e _%e121013121020%_)))
                                    (let ((_%hd121017121031%_
                                           (##car _%e121016121028%_))
                                          (_%tl121018121033%_
                                           (##cdr _%e121016121028%_)))
                                      (let* ((_%hd121036%_ _%hd121017121031%_)
                                             (_%body121038%_
                                              _%tl121018121033%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd121036%_)
                                                 (gx#stx-list? _%body121038%_)
                                                 (not (gx#stx-null?
                                                       _%body121038%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd121036%_)
                                                   _%body121038%_)
                                             (gx#stx-source _%clause121012%_))
                                            (_%E121015121024%_)))))
                                  (_%E121015121024%_)))))
                      (_%E121014121040%_)))))
          (let* ((_%e120983120990%_ _%stx120980%_)
                 (_%E120985120994%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e120983120990%_)))
                 (_%E120984121008%_
                  (lambda ()
                    (if (gx#stx-pair? _%e120983120990%_)
                        (let ((_%e120986120998%_
                               (gx#syntax-e _%e120983120990%_)))
                          (let ((_%hd120987121001%_ (##car _%e120986120998%_))
                                (_%tl120988121003%_ (##cdr _%e120986120998%_)))
                            (let ((_%clauses121006%_ _%tl120988121003%_))
                              (if (gx#stx-list? _%clauses121006%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate120982%_
                                    _%clauses121006%_))
                                  (_%E120985120994%_)))))
                        (_%E120985120994%_)))))
            (_%E120984121008%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx120881%_ _%form120882%_)
        (letrec ((_%generate120884%_
                  (lambda (_%bind120927%_)
                    (let* ((_%e120928120938%_ _%bind120927%_)
                           (_%E120930120942%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx120881%_
                               _%bind120927%_)))
                           (_%E120929120966%_
                            (lambda ()
                              (if (gx#stx-pair? _%e120928120938%_)
                                  (let ((_%e120931120946%_
                                         (gx#syntax-e _%e120928120938%_)))
                                    (let ((_%hd120932120949%_
                                           (##car _%e120931120946%_))
                                          (_%tl120933120951%_
                                           (##cdr _%e120931120946%_)))
                                      (let ((_%ids120954%_ _%hd120932120949%_))
                                        (if (gx#stx-pair? _%tl120933120951%_)
                                            (let ((_%e120934120956%_
                                                   (gx#syntax-e
                                                    _%tl120933120951%_)))
                                              (let ((_%hd120935120959%_
                                                     (##car _%e120934120956%_))
                                                    (_%tl120936120961%_
                                                     (##cdr _%e120934120956%_)))
                                                (let ((_%expr120964%_
                                                       _%hd120935120959%_))
                                                  (if (gx#stx-null?
                                                       _%tl120936120961%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids120954%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids120954%_)
                        (cons _%expr120964%_ '()))
                  (_%E120930120942%_))
              (_%E120930120942%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E120930120942%_)))))
                                  (_%E120930120942%_)))))
                      (_%E120929120966%_)))))
          (let* ((_%e120885120895%_ _%stx120881%_)
                 (_%E120887120899%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e120885120895%_)))
                 (_%E120886120923%_
                  (lambda ()
                    (if (gx#stx-pair? _%e120885120895%_)
                        (let ((_%e120888120903%_
                               (gx#syntax-e _%e120885120895%_)))
                          (let ((_%hd120889120906%_ (##car _%e120888120903%_))
                                (_%tl120890120908%_ (##cdr _%e120888120903%_)))
                            (if (gx#stx-pair? _%tl120890120908%_)
                                (let ((_%e120891120911%_
                                       (gx#syntax-e _%tl120890120908%_)))
                                  (let ((_%hd120892120914%_
                                         (##car _%e120891120911%_))
                                        (_%tl120893120916%_
                                         (##cdr _%e120891120911%_)))
                                    (let* ((_%hd120919%_ _%hd120892120914%_)
                                           (_%body120921%_ _%tl120893120916%_))
                                      (if (and (gx#stx-list? _%hd120919%_)
                                               (gx#stx-list? _%body120921%_)
                                               (not (gx#stx-null?
                                                     _%body120921%_)))
                                          (gx#core-cons*
                                           _%form120882%_
                                           (gx#stx-map1
                                            _%generate120884%_
                                            _%hd120919%_)
                                           _%body120921%_)
                                          (_%E120887120899%_)))))
                                (_%E120887120899%_))))
                        (_%E120887120899%_)))))
            (_%E120886120923%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx120973%_)
        (let ((_%form120975%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx120973%_ _%form120975%_))))
    (define gx#macro-expand-let-values
      (lambda _g123362_
        (let ((_g123361_ (##length _g123362_)))
          (cond ((##fx= _g123361_ 1)
                 (apply gx#macro-expand-let-values__0 _g123362_))
                ((##fx= _g123361_ 2)
                 (apply gx#macro-expand-let-values__% _g123362_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g123362_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx120878%_)
        (gx#macro-expand-let-values__% _%stx120878%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx120876%_)
        (gx#macro-expand-let-values__% _%stx120876%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx120767%_)
        (let* ((_%e120768120794%_ _%stx120767%_)
               (_%E120780120798%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120768120794%_)))
               (_%E120770120840%_
                (lambda ()
                  (if (gx#stx-pair? _%e120768120794%_)
                      (let ((_%e120781120802%_
                             (gx#syntax-e _%e120768120794%_)))
                        (let ((_%hd120782120805%_ (##car _%e120781120802%_))
                              (_%tl120783120807%_ (##cdr _%e120781120802%_)))
                          (if (gx#stx-pair? _%tl120783120807%_)
                              (let ((_%e120784120810%_
                                     (gx#syntax-e _%tl120783120807%_)))
                                (let ((_%hd120785120813%_
                                       (##car _%e120784120810%_))
                                      (_%tl120786120815%_
                                       (##cdr _%e120784120810%_)))
                                  (let ((_%test120818%_ _%hd120785120813%_))
                                    (if (gx#stx-pair? _%tl120786120815%_)
                                        (let ((_%e120787120820%_
                                               (gx#syntax-e
                                                _%tl120786120815%_)))
                                          (let ((_%hd120788120823%_
                                                 (##car _%e120787120820%_))
                                                (_%tl120789120825%_
                                                 (##cdr _%e120787120820%_)))
                                            (let ((_%K120828%_
                                                   _%hd120788120823%_))
                                              (if (gx#stx-pair?
                                                   _%tl120789120825%_)
                                                  (let ((_%e120790120830%_
                                                         (gx#syntax-e
                                                          _%tl120789120825%_)))
                                                    (let ((_%hd120791120833%_
                                                           (##car _%e120790120830%_))
                                                          (_%tl120792120835%_
                                                           (##cdr _%e120790120830%_)))
                                                      (let ((_%E120838%_
                                                             _%hd120791120833%_))
                                                        (if (gx#stx-null?
                                                             _%tl120792120835%_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _%test120818%_
                         _%K120828%_
                         _%E120838%_)
                        (_%E120780120798%_))
                    (_%E120780120798%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120780120798%_)))))
                                        (_%E120780120798%_)))))
                              (_%E120780120798%_))))
                      (_%E120780120798%_))))
               (_%E120769120872%_
                (lambda ()
                  (if (gx#stx-pair? _%e120768120794%_)
                      (let ((_%e120771120844%_
                             (gx#syntax-e _%e120768120794%_)))
                        (let ((_%hd120772120847%_ (##car _%e120771120844%_))
                              (_%tl120773120849%_ (##cdr _%e120771120844%_)))
                          (if (gx#stx-pair? _%tl120773120849%_)
                              (let ((_%e120774120852%_
                                     (gx#syntax-e _%tl120773120849%_)))
                                (let ((_%hd120775120855%_
                                       (##car _%e120774120852%_))
                                      (_%tl120776120857%_
                                       (##cdr _%e120774120852%_)))
                                  (let ((_%test120860%_ _%hd120775120855%_))
                                    (if (gx#stx-pair? _%tl120776120857%_)
                                        (let ((_%e120777120862%_
                                               (gx#syntax-e
                                                _%tl120776120857%_)))
                                          (let ((_%hd120778120865%_
                                                 (##car _%e120777120862%_))
                                                (_%tl120779120867%_
                                                 (##cdr _%e120777120862%_)))
                                            (let ((_%K120870%_
                                                   _%hd120778120865%_))
                                              (if (gx#stx-null?
                                                   _%tl120779120867%_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _%test120860%_
                                                       _%K120870%_
                                                       '#!void)
                                                      (_%E120770120840%_))
                                                  (_%E120770120840%_)))))
                                        (_%E120770120840%_)))))
                              (_%E120770120840%_))))
                      (_%E120770120840%_)))))
          (_%E120769120872%_))))
    (define gx#free-identifier=?
      (lambda (_%xid120752%_ _%yid120753%_)
        (let ((_%xe120755%_ (gx#resolve-identifier__0 _%xid120752%_))
              (_%ye120756%_ (gx#resolve-identifier__0 _%yid120753%_)))
          (if (and _%xe120755%_ _%ye120756%_)
              (let ((_%$e120759%_ (eq? _%xe120755%_ _%ye120756%_)))
                (if _%$e120759%_
                    _%$e120759%_
                    (if (##structure-instance-of? _%xe120755%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye120756%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe120755%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye120756%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe120755%_ _%ye120756%_)
                  '#f
                  (gx#stx-eq? _%xid120752%_ _%yid120753%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid120733%_ _%yid120734%_)
        (letrec ((_%context120736%_
                  (lambda (_%e120750%_)
                    (if (##structure-direct-instance-of?
                         _%e120750%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e120750%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks120737%_
                  (lambda (_%e120745%_)
                    (if (symbol? _%e120745%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e120745%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e120745%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e120745%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap120738%_
                  (lambda (_%e120743%_)
                    (if (symbol? _%e120743%_)
                        _%e120743%_
                        (gx#syntax-local-unwrap _%e120743%_)))))
          (let ((_%x120740%_ (_%unwrap120738%_ _%xid120733%_))
                (_%y120741%_ (_%unwrap120738%_ _%yid120734%_)))
            (if (gx#stx-eq? _%x120740%_ _%y120741%_)
                (if (eq? (_%context120736%_ _%x120740%_)
                         (_%context120736%_ _%y120741%_))
                    (equal? (_%marks120737%_ _%x120740%_)
                            (_%marks120737%_ _%y120741%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx120731%_)
        (if (gx#identifier? _%stx120731%_)
            (gx#core-identifier=? _%stx120731%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx120729%_)
        (if (gx#identifier? _%stx120729%_)
            (gx#core-identifier=? _%stx120729%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx120672%_ _%where120673%_)
        (let _%lp120675%_ ((_%rest120677%_ (gx#syntax->list _%stx120672%_)))
          (let* ((_%rest120678120686%_ _%rest120677%_)
                 (_%else120680120694%_ (lambda () '#t))
                 (_%K120682120707%_
                  (lambda (_%rest120697%_ _%hd120698%_)
                    (if (not (gx#identifier? _%hd120698%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where120673%_
                         _%hd120698%_)
                        (if (__find (lambda (_%g120700120702%_)
                                      (gx#bound-identifier=?
                                       _%g120700120702%_
                                       _%hd120698%_))
                                    _%rest120697%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where120673%_
                             _%hd120698%_)
                            (_%lp120675%_ _%rest120697%_))))))
            (if (##pair? _%rest120678120686%_)
                (let ((_%hd120683120710%_ (##car _%rest120678120686%_))
                      (_%tl120684120712%_ (##cdr _%rest120678120686%_)))
                  (let* ((_%hd120715%_ _%hd120683120710%_)
                         (_%rest120717%_ _%tl120684120712%_))
                    (_%K120682120707%_ _%rest120717%_ _%hd120715%_)))
                (_%else120680120694%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx120722%_)
        (let ((_%where120724%_ _%stx120722%_))
          (gx#check-duplicate-identifiers__% _%stx120722%_ _%where120724%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g123364_
        (let ((_g123363_ (##length _g123364_)))
          (cond ((##fx= _g123363_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g123364_))
                ((##fx= _g123363_ 2)
                 (apply gx#check-duplicate-identifiers__% _g123364_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g123364_))))))
    (define gx#core-bind-values?
      (lambda (_%stx120664%_)
        (gx#stx-andmap
         (lambda (_%x120666%_)
           (let ((_%$e120668%_ (gx#identifier? _%x120666%_)))
             (if _%$e120668%_ _%$e120668%_ (gx#stx-false? _%x120666%_))))
         _%stx120664%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx120628%_ _%rebind?120629%_ _%phi120630%_ _%ctx120631%_)
        (gx#stx-for-each1
         (lambda (_%id120633%_)
           (if (gx#identifier? _%id120633%_)
               (gx#core-bind-runtime!__%
                _%id120633%_
                _%rebind?120629%_
                _%phi120630%_
                _%ctx120631%_)
               '#!void))
         _%stx120628%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx120638%_)
        (let* ((_%rebind?120640%_ '#f)
               (_%phi120642%_ (gx#current-expander-phi))
               (_%ctx120644%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx120638%_
           _%rebind?120640%_
           _%phi120642%_
           _%ctx120644%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx120646%_ _%rebind?120647%_)
        (let* ((_%phi120649%_ (gx#current-expander-phi))
               (_%ctx120651%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx120646%_
           _%rebind?120647%_
           _%phi120649%_
           _%ctx120651%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx120653%_ _%rebind?120654%_ _%phi120655%_)
        (let ((_%ctx120657%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx120653%_
           _%rebind?120654%_
           _%phi120655%_
           _%ctx120657%_))))
    (define gx#core-bind-values!
      (lambda _g123366_
        (let ((_g123365_ (##length _g123366_)))
          (cond ((##fx= _g123365_ 1) (apply gx#core-bind-values!__0 _g123366_))
                ((##fx= _g123365_ 2) (apply gx#core-bind-values!__1 _g123366_))
                ((##fx= _g123365_ 3) (apply gx#core-bind-values!__2 _g123366_))
                ((##fx= _g123365_ 4) (apply gx#core-bind-values!__% _g123366_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g123366_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx120623%_)
        (gx#stx-map1
         (lambda (_%x120625%_)
           (if (gx#identifier? _%x120625%_)
               (gx#core-quote-syntax__0 _%x120625%_)
               '#f))
         _%stx120623%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx120616%_)
        (if (gx#identifier? _%stx120616%_)
            (let* ((_%bind120618%_ (gx#resolve-identifier__0 _%stx120616%_))
                   (_%$e120620%_ (not _%bind120618%_)))
              (if _%$e120620%_
                  _%$e120620%_
                  (##structure-instance-of?
                   _%bind120618%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id120605%_ _%form120606%_)
        (let ((_%bind120608%_ (gx#resolve-identifier__0 _%id120605%_)))
          (if (##structure-instance-of? _%bind120608%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id120605%_)
              (if (not _%bind120608%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id120605%_)))
                      (gx#core-quote-syntax__0 _%id120605%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form120606%_
                       _%id120605%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form120606%_
                   _%id120605%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id120560%_ _%rebind?120561%_ _%phi120562%_ _%ctx120563%_)
        (let* ((_%key120565%_ (gx#core-identifier-key _%id120560%_))
               (_%eid120567%_
                (gx#make-binding-id__%
                 _%key120565%_
                 '#f
                 _%phi120562%_
                 _%ctx120563%_))
               (_%bind120573%_
                (if (##structure-instance-of?
                     _%ctx120563%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid120567%_
                     _%key120565%_
                     _%phi120562%_
                     _%ctx120563%_)
                    (if (##structure-instance-of?
                         _%ctx120563%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid120567%_
                         _%key120565%_
                         _%phi120562%_)
                        (if (##structure-instance-of?
                             _%ctx120563%_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _%eid120567%_
                             _%key120565%_
                             _%phi120562%_)
                            (##structure
                             gx#runtime-binding::t
                             _%eid120567%_
                             _%key120565%_
                             _%phi120562%_))))))
          (gx#bind-identifier!__%
           _%id120560%_
           _%bind120573%_
           _%rebind?120561%_
           _%phi120562%_
           _%ctx120563%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id120579%_)
        (let* ((_%rebind?120581%_ '#f)
               (_%phi120583%_ (gx#current-expander-phi))
               (_%ctx120585%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id120579%_
           _%rebind?120581%_
           _%phi120583%_
           _%ctx120585%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id120587%_ _%rebind?120588%_)
        (let* ((_%phi120590%_ (gx#current-expander-phi))
               (_%ctx120592%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id120587%_
           _%rebind?120588%_
           _%phi120590%_
           _%ctx120592%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id120594%_ _%rebind?120595%_ _%phi120596%_)
        (let ((_%ctx120598%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id120594%_
           _%rebind?120595%_
           _%phi120596%_
           _%ctx120598%_))))
    (define gx#core-bind-runtime!
      (lambda _g123368_
        (let ((_g123367_ (##length _g123368_)))
          (cond ((##fx= _g123367_ 1)
                 (apply gx#core-bind-runtime!__0 _g123368_))
                ((##fx= _g123367_ 2)
                 (apply gx#core-bind-runtime!__1 _g123368_))
                ((##fx= _g123367_ 3)
                 (apply gx#core-bind-runtime!__2 _g123368_))
                ((##fx= _g123367_ 4)
                 (apply gx#core-bind-runtime!__% _g123368_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g123368_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id120512%_
               _%eid120513%_
               _%rebind?120514%_
               _%phi120515%_
               _%ctx120516%_)
        (let* ((_%key120518%_ (gx#core-identifier-key _%id120512%_))
               (_%bind120523%_
                (if (##structure-instance-of?
                     _%ctx120516%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid120513%_
                     _%key120518%_
                     _%phi120515%_
                     _%ctx120516%_)
                    (if (##structure-instance-of?
                         _%ctx120516%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid120513%_
                         _%key120518%_
                         _%phi120515%_)
                        (##structure
                         gx#runtime-binding::t
                         _%eid120513%_
                         _%key120518%_
                         _%phi120515%_)))))
          (gx#bind-identifier!__%
           _%id120512%_
           _%bind120523%_
           _%rebind?120514%_
           _%phi120515%_
           _%ctx120516%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id120529%_ _%eid120530%_)
        (let* ((_%rebind?120532%_ '#f)
               (_%phi120534%_ (gx#current-expander-phi))
               (_%ctx120536%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id120529%_
           _%eid120530%_
           _%rebind?120532%_
           _%phi120534%_
           _%ctx120536%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id120538%_ _%eid120539%_ _%rebind?120540%_)
        (let* ((_%phi120542%_ (gx#current-expander-phi))
               (_%ctx120544%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id120538%_
           _%eid120539%_
           _%rebind?120540%_
           _%phi120542%_
           _%ctx120544%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id120546%_ _%eid120547%_ _%rebind?120548%_ _%phi120549%_)
        (let ((_%ctx120551%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id120546%_
           _%eid120547%_
           _%rebind?120548%_
           _%phi120549%_
           _%ctx120551%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g123370_
        (let ((_g123369_ (##length _g123370_)))
          (cond ((##fx= _g123369_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g123370_))
                ((##fx= _g123369_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g123370_))
                ((##fx= _g123369_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g123370_))
                ((##fx= _g123369_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g123370_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g123370_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id120472%_
               _%eid120473%_
               _%rebind?120474%_
               _%phi120475%_
               _%ctx120476%_)
        (gx#bind-identifier!__%
         _%id120472%_
         (##structure
          gx#extern-binding::t
          _%eid120473%_
          (gx#core-identifier-key _%id120472%_)
          _%phi120475%_)
         _%rebind?120474%_
         _%phi120475%_
         _%ctx120476%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id120481%_ _%eid120482%_)
        (let* ((_%rebind?120484%_ '#f)
               (_%phi120486%_ (gx#current-expander-phi))
               (_%ctx120488%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id120481%_
           _%eid120482%_
           _%rebind?120484%_
           _%phi120486%_
           _%ctx120488%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id120490%_ _%eid120491%_ _%rebind?120492%_)
        (let* ((_%phi120494%_ (gx#current-expander-phi))
               (_%ctx120496%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id120490%_
           _%eid120491%_
           _%rebind?120492%_
           _%phi120494%_
           _%ctx120496%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id120498%_ _%eid120499%_ _%rebind?120500%_ _%phi120501%_)
        (let ((_%ctx120503%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id120498%_
           _%eid120499%_
           _%rebind?120500%_
           _%phi120501%_
           _%ctx120503%_))))
    (define gx#core-bind-extern!
      (lambda _g123372_
        (let ((_g123371_ (##length _g123372_)))
          (cond ((##fx= _g123371_ 2) (apply gx#core-bind-extern!__0 _g123372_))
                ((##fx= _g123371_ 3) (apply gx#core-bind-extern!__1 _g123372_))
                ((##fx= _g123371_ 4) (apply gx#core-bind-extern!__2 _g123372_))
                ((##fx= _g123371_ 5) (apply gx#core-bind-extern!__% _g123372_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g123372_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id120426%_
               _%e120427%_
               _%rebind?120428%_
               _%phi120429%_
               _%ctx120430%_)
        (gx#bind-identifier!__%
         _%id120426%_
         (let ((_%key120435%_ (gx#core-identifier-key _%id120426%_))
               (_%e120436%_
                (if (or (##structure-instance-of? _%e120427%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e120427%_
                         'gx#expander-context::t))
                    _%e120427%_
                    (##structure
                     gx#user-expander::t
                     _%e120427%_
                     _%ctx120430%_
                     _%phi120429%_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__%
             _%key120435%_
             '#t
             _%phi120429%_
             _%ctx120430%_)
            _%key120435%_
            _%phi120429%_
            _%e120436%_))
         _%rebind?120428%_
         _%phi120429%_
         _%ctx120430%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id120441%_ _%e120442%_)
        (let* ((_%rebind?120444%_ '#f)
               (_%phi120446%_ (gx#current-expander-phi))
               (_%ctx120448%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id120441%_
           _%e120442%_
           _%rebind?120444%_
           _%phi120446%_
           _%ctx120448%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id120450%_ _%e120451%_ _%rebind?120452%_)
        (let* ((_%phi120454%_ (gx#current-expander-phi))
               (_%ctx120456%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id120450%_
           _%e120451%_
           _%rebind?120452%_
           _%phi120454%_
           _%ctx120456%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id120458%_ _%e120459%_ _%rebind?120460%_ _%phi120461%_)
        (let ((_%ctx120463%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id120458%_
           _%e120459%_
           _%rebind?120460%_
           _%phi120461%_
           _%ctx120463%_))))
    (define gx#core-bind-syntax!
      (lambda _g123374_
        (let ((_g123373_ (##length _g123374_)))
          (cond ((##fx= _g123373_ 2) (apply gx#core-bind-syntax!__0 _g123374_))
                ((##fx= _g123373_ 3) (apply gx#core-bind-syntax!__1 _g123374_))
                ((##fx= _g123373_ 4) (apply gx#core-bind-syntax!__2 _g123374_))
                ((##fx= _g123373_ 5) (apply gx#core-bind-syntax!__% _g123374_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g123374_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id120409%_ _%e120410%_ _%rebind?120411%_)
        (gx#core-bind-syntax!__%
         _%id120409%_
         _%e120410%_
         _%rebind?120411%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id120416%_ _%e120417%_)
        (let ((_%rebind?120419%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id120416%_
           _%e120417%_
           _%rebind?120419%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g123376_
        (let ((_g123375_ (##length _g123376_)))
          (cond ((##fx= _g123375_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g123376_))
                ((##fx= _g123375_ 3)
                 (apply gx#core-bind-root-syntax!__% _g123376_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g123376_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id120367%_
               _%alias-id120368%_
               _%rebind?120369%_
               _%phi120370%_
               _%ctx120371%_)
        (gx#bind-identifier!__%
         _%id120367%_
         (let ((_%key120373%_ (gx#core-identifier-key _%id120367%_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__%
             _%key120373%_
             '#t
             _%phi120370%_
             _%ctx120371%_)
            _%key120373%_
            _%phi120370%_
            _%alias-id120368%_))
         _%rebind?120369%_
         _%phi120370%_
         _%ctx120371%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id120378%_ _%alias-id120379%_)
        (let* ((_%rebind?120381%_ '#f)
               (_%phi120383%_ (gx#current-expander-phi))
               (_%ctx120385%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id120378%_
           _%alias-id120379%_
           _%rebind?120381%_
           _%phi120383%_
           _%ctx120385%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id120387%_ _%alias-id120388%_ _%rebind?120389%_)
        (let* ((_%phi120391%_ (gx#current-expander-phi))
               (_%ctx120393%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id120387%_
           _%alias-id120388%_
           _%rebind?120389%_
           _%phi120391%_
           _%ctx120393%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id120395%_ _%alias-id120396%_ _%rebind?120397%_ _%phi120398%_)
        (let ((_%ctx120400%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id120395%_
           _%alias-id120396%_
           _%rebind?120397%_
           _%phi120398%_
           _%ctx120400%_))))
    (define gx#core-bind-alias!
      (lambda _g123378_
        (let ((_g123377_ (##length _g123378_)))
          (cond ((##fx= _g123377_ 2) (apply gx#core-bind-alias!__0 _g123378_))
                ((##fx= _g123377_ 3) (apply gx#core-bind-alias!__1 _g123378_))
                ((##fx= _g123377_ 4) (apply gx#core-bind-alias!__2 _g123378_))
                ((##fx= _g123377_ 5) (apply gx#core-bind-alias!__% _g123378_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g123378_))))))
    (define gx#make-binding-id__%
      (lambda (_%key120317%_ _%syntax?120318%_ _%phi120319%_ _%ctx120320%_)
        (if (uninterned-symbol? _%key120317%_)
            (##gensym 'L)
            (if (pair? _%key120317%_)
                (gensym (car _%key120317%_))
                (if (##structure-instance-of? _%ctx120320%_ 'gx#top-context::t)
                    (let ((_%ns120325%_
                           (gx#core-context-namespace__% _%ctx120320%_)))
                      (if (and (fxzero? _%phi120319%_) (not _%syntax?120318%_))
                          (if _%ns120325%_
                              (make-symbol__1 _%ns120325%_ '"#" _%key120317%_)
                              _%key120317%_)
                          (if _%syntax?120318%_
                              (make-symbol__1
                               (let ((_%$e120329%_ _%ns120325%_))
                                 (if _%$e120329%_ _%$e120329%_ '""))
                               '"[:"
                               (number->string _%phi120319%_)
                               '":]#"
                               _%key120317%_)
                              (make-symbol__1
                               (let ((_%$e120333%_ _%ns120325%_))
                                 (if _%$e120333%_ _%$e120333%_ '""))
                               '"["
                               (number->string _%phi120319%_)
                               '"]#"
                               _%key120317%_))))
                    (gensym _%key120317%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key120340%_)
        (let* ((_%syntax?120342%_ '#f)
               (_%phi120344%_ (gx#current-expander-phi))
               (_%ctx120346%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key120340%_
           _%syntax?120342%_
           _%phi120344%_
           _%ctx120346%_))))
    (define gx#make-binding-id__1
      (lambda (_%key120348%_ _%syntax?120349%_)
        (let* ((_%phi120351%_ (gx#current-expander-phi))
               (_%ctx120353%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key120348%_
           _%syntax?120349%_
           _%phi120351%_
           _%ctx120353%_))))
    (define gx#make-binding-id__2
      (lambda (_%key120355%_ _%syntax?120356%_ _%phi120357%_)
        (let ((_%ctx120359%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key120355%_
           _%syntax?120356%_
           _%phi120357%_
           _%ctx120359%_))))
    (define gx#make-binding-id
      (lambda _g123380_
        (let ((_g123379_ (##length _g123380_)))
          (cond ((##fx= _g123379_ 1) (apply gx#make-binding-id__0 _g123380_))
                ((##fx= _g123379_ 2) (apply gx#make-binding-id__1 _g123380_))
                ((##fx= _g123379_ 3) (apply gx#make-binding-id__2 _g123380_))
                ((##fx= _g123379_ 4) (apply gx#make-binding-id__% _g123380_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g123380_))))))))
