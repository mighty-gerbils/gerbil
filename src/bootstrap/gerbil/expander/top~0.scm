(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1712786279)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx123328%_)
        (letrec ((_%expand-special123330%_
                  (lambda (_%hd123332%_ _%K123333%_ _%rest123334%_ _%r123335%_)
                    (_%K123333%_
                     _%rest123334%_
                     (cons (gx#core-expand-top _%hd123332%_) _%r123335%_)))))
          (gx#core-expand-block__0 _%stx123328%_ _%expand-special123330%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx123081%_)
        (letrec ((_%expand-special123083%_
                  (lambda (_%hd123203%_ _%K123204%_ _%rest123205%_ _%r123206%_)
                    (let* ((_%K123210%_
                            (lambda (_%e123208%_)
                              (_%K123204%_
                               _%rest123205%_
                               (cons _%e123208%_ _%r123206%_))))
                           (_%e123211123240%_ _%hd123203%_)
                           (_%E123235123244%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e123211123240%_)))
                           (_%E123231123256%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123211123240%_)
                                  (let ((_%e123236123248%_
                                         (gx#syntax-e _%e123211123240%_)))
                                    (let ((_%hd123237123251%_
                                           (##car _%e123236123248%_))
                                          (_%tl123238123253%_
                                           (##cdr _%e123236123248%_)))
                                      (if (and (gx#identifier?
                                                _%hd123237123251%_)
                                               (gx#core-identifier=?
                                                _%hd123237123251%_
                                                '%#define-runtime))
                                          (if '#t
                                              (_%K123210%_
                                               (gx#core-expand-define-runtime%
                                                _%hd123203%_))
                                              (_%E123235123244%_))
                                          (_%E123235123244%_))))
                                  (_%E123235123244%_))))
                           (_%E123227123268%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123211123240%_)
                                  (let ((_%e123232123260%_
                                         (gx#syntax-e _%e123211123240%_)))
                                    (let ((_%hd123233123263%_
                                           (##car _%e123232123260%_))
                                          (_%tl123234123265%_
                                           (##cdr _%e123232123260%_)))
                                      (if (and (gx#identifier?
                                                _%hd123233123263%_)
                                               (gx#core-identifier=?
                                                _%hd123233123263%_
                                                '%#define-alias))
                                          (if '#t
                                              (_%K123210%_
                                               (gx#core-expand-define-alias%
                                                _%hd123203%_))
                                              (_%E123231123256%_))
                                          (_%E123231123256%_))))
                                  (_%E123231123256%_))))
                           (_%E123217123280%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123211123240%_)
                                  (let ((_%e123228123272%_
                                         (gx#syntax-e _%e123211123240%_)))
                                    (let ((_%hd123229123275%_
                                           (##car _%e123228123272%_))
                                          (_%tl123230123277%_
                                           (##cdr _%e123228123272%_)))
                                      (if (and (gx#identifier?
                                                _%hd123229123275%_)
                                               (gx#core-identifier=?
                                                _%hd123229123275%_
                                                '%#define-syntax))
                                          (if '#t
                                              (_%K123210%_
                                               (gx#core-expand-define-syntax%
                                                _%hd123203%_))
                                              (_%E123227123268%_))
                                          (_%E123227123268%_))))
                                  (_%E123227123268%_))))
                           (_%E123213123312%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123211123240%_)
                                  (let ((_%e123218123284%_
                                         (gx#syntax-e _%e123211123240%_)))
                                    (let ((_%hd123219123287%_
                                           (##car _%e123218123284%_))
                                          (_%tl123220123289%_
                                           (##cdr _%e123218123284%_)))
                                      (if (and (gx#identifier?
                                                _%hd123219123287%_)
                                               (gx#core-identifier=?
                                                _%hd123219123287%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl123220123289%_)
                                              (let ((_%e123221123292%_
                                                     (gx#syntax-e
                                                      _%tl123220123289%_)))
                                                (let ((_%hd123222123295%_
                                                       (##car _%e123221123292%_))
                                                      (_%tl123223123297%_
                                                       (##cdr _%e123221123292%_)))
                                                  (let ((_%hd-bind123300%_
                                                         _%hd123222123295%_))
                                                    (if (gx#stx-pair?
                                                         _%tl123223123297%_)
                                                        (let ((_%e123224123302%_
                                                               (gx#syntax-e
                                                                _%tl123223123297%_)))
                                                          (let ((_%hd123225123305%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e123224123302%_))
                        (_%tl123226123307%_ (##cdr _%e123224123302%_)))
                    (let ((_%expr123310%_ _%hd123225123305%_))
                      (if (gx#stx-null? _%tl123226123307%_)
                          (if (gx#core-bind-values? _%hd-bind123300%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind123300%_)
                                (_%K123210%_ _%hd123203%_))
                              (_%E123217123280%_))
                          (_%E123217123280%_)))))
                (_%E123217123280%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123217123280%_))
                                          (_%E123217123280%_))))
                                  (_%E123217123280%_))))
                           (_%E123212123324%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123211123240%_)
                                  (let ((_%e123214123316%_
                                         (gx#syntax-e _%e123211123240%_)))
                                    (let ((_%hd123215123319%_
                                           (##car _%e123214123316%_))
                                          (_%tl123216123321%_
                                           (##cdr _%e123214123316%_)))
                                      (if (and (gx#identifier?
                                                _%hd123215123319%_)
                                               (gx#core-identifier=?
                                                _%hd123215123319%_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_%K123210%_
                                               (gx#core-expand-begin-syntax%
                                                _%hd123203%_))
                                              (_%E123213123312%_))
                                          (_%E123213123312%_))))
                                  (_%E123213123312%_)))))
                      (_%E123212123324%_))))
                 (_%eval-body123084%_
                  (lambda (_%rbody123092%_)
                    (let _%lp123094%_ ((_%rest123096%_ _%rbody123092%_)
                                       (_%body123097%_ '())
                                       (_%ebody123098%_ '()))
                      (let* ((_%rest123099123107%_ _%rest123096%_)
                             (_%else123101123115%_
                              (lambda ()
                                (values _%body123097%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody123098%_)
                                          (gx#stx-source _%stx123081%_))))))
                             (_%K123103123191%_
                              (lambda (_%rest123118%_ _%hd123119%_)
                                (let* ((_%e123120123137%_ _%hd123119%_)
                                       (_%E123132123141%_
                                        (lambda ()
                                          (_%lp123094%_
                                           _%rest123118%_
                                           (cons _%hd123119%_ _%body123097%_)
                                           (cons _%hd123119%_
                                                 _%ebody123098%_))))
                                       (_%E123122123153%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e123120123137%_)
                                              (let ((_%e123133123145%_
                                                     (gx#syntax-e
                                                      _%e123120123137%_)))
                                                (let ((_%hd123134123148%_
                                                       (##car _%e123133123145%_))
                                                      (_%tl123135123150%_
                                                       (##cdr _%e123133123145%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd123134123148%_)
                                                           (gx#core-identifier=?
                                                            _%hd123134123148%_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_%lp123094%_
                                                           _%rest123118%_
                                                           (cons _%hd123119%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%body123097%_)
                   _%ebody123098%_)
                  (_%E123132123141%_))
              (_%E123132123141%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123132123141%_))))
                                       (_%E123121123187%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e123120123137%_)
                                              (let ((_%e123123123157%_
                                                     (gx#syntax-e
                                                      _%e123120123137%_)))
                                                (let ((_%hd123124123160%_
                                                       (##car _%e123123123157%_))
                                                      (_%tl123125123162%_
                                                       (##cdr _%e123123123157%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd123124123160%_)
                                                           (gx#core-identifier=?
                                                            _%hd123124123160%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl123125123162%_)
                                                          (let ((_%e123126123165%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl123125123162%_)))
                    (let ((_%hd123127123168%_ (##car _%e123126123165%_))
                          (_%tl123128123170%_ (##cdr _%e123126123165%_)))
                      (let ((_%hd-bind123173%_ _%hd123127123168%_))
                        (if (gx#stx-pair? _%tl123128123170%_)
                            (let ((_%e123129123175%_
                                   (gx#syntax-e _%tl123128123170%_)))
                              (let ((_%hd123130123178%_
                                     (##car _%e123129123175%_))
                                    (_%tl123131123180%_
                                     (##cdr _%e123129123175%_)))
                                (let ((_%expr123183%_ _%hd123130123178%_))
                                  (if (gx#stx-null? _%tl123131123180%_)
                                      (if '#t
                                          (let ((_%ehd123185%_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _%hd-bind123173%_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr123183%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source
                                                   _%hd123119%_))))
                                            (_%lp123094%_
                                             _%rest123118%_
                                             (cons _%ehd123185%_
                                                   _%body123097%_)
                                             (cons _%ehd123185%_
                                                   _%ebody123098%_)))
                                          (_%E123122123153%_))
                                      (_%E123122123153%_)))))
                            (_%E123122123153%_)))))
                  (_%E123122123153%_))
              (_%E123122123153%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123122123153%_)))))
                                  (_%E123121123187%_)))))
                        (if (##pair? _%rest123099123107%_)
                            (let ((_%hd123104123194%_
                                   (##car _%rest123099123107%_))
                                  (_%tl123105123196%_
                                   (##cdr _%rest123099123107%_)))
                              (let* ((_%hd123199%_ _%hd123104123194%_)
                                     (_%rest123201%_ _%tl123105123196%_))
                                (_%K123103123191%_
                                 _%rest123201%_
                                 _%hd123199%_)))
                            (_%else123101123115%_)))))))
          (__call-with-parameters
           (lambda ()
             (let* ((_%rbody123087%_
                     (gx#core-expand-block__1
                      _%stx123081%_
                      _%expand-special123083%_
                      '#f))
                    (_g123351_ (_%eval-body123084%_ _%rbody123087%_)))
               (begin
                 (let ((_g123352_
                        (if (##values? _g123351_)
                            (##vector-length _g123351_)
                            1)))
                   (if (not (##fx= _g123352_ 2))
                       (error "Context expects 2 values" _g123352_)))
                 (let ((_%expanded-body123089%_ (##vector-ref _g123351_ 0))
                       (_%value123090%_ (##vector-ref _g123351_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body123089%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value123090%_ '())))
                    (gx#stx-source _%stx123081%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx123051%_)
        (let* ((_%e123052123059%_ _%stx123051%_)
               (_%E123054123063%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123052123059%_)))
               (_%E123053123077%_
                (lambda ()
                  (if (gx#stx-pair? _%e123052123059%_)
                      (let ((_%e123055123067%_
                             (gx#syntax-e _%e123052123059%_)))
                        (let ((_%hd123056123070%_ (##car _%e123055123067%_))
                              (_%tl123057123072%_ (##cdr _%e123055123067%_)))
                          (let ((_%body123075%_ _%tl123057123072%_))
                            (if (gx#stx-list? _%body123075%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body123075%_)
                                 (gx#stx-source _%stx123051%_))
                                (_%E123054123063%_)))))
                      (_%E123054123063%_)))))
          (_%E123053123077%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx123049%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx123049%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx122995%_)
        (let* ((_%e122996123009%_ _%stx122995%_)
               (_%E122998123013%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122996123009%_)))
               (_%E122997123045%_
                (lambda ()
                  (if (gx#stx-pair? _%e122996123009%_)
                      (let ((_%e122999123017%_
                             (gx#syntax-e _%e122996123009%_)))
                        (let ((_%hd123000123020%_ (##car _%e122999123017%_))
                              (_%tl123001123022%_ (##cdr _%e122999123017%_)))
                          (if (gx#stx-pair? _%tl123001123022%_)
                              (let ((_%e123002123025%_
                                     (gx#syntax-e _%tl123001123022%_)))
                                (let ((_%hd123003123028%_
                                       (##car _%e123002123025%_))
                                      (_%tl123004123030%_
                                       (##cdr _%e123002123025%_)))
                                  (let ((_%ann123033%_ _%hd123003123028%_))
                                    (if (gx#stx-pair? _%tl123004123030%_)
                                        (let ((_%e123005123035%_
                                               (gx#syntax-e
                                                _%tl123004123030%_)))
                                          (let ((_%hd123006123038%_
                                                 (##car _%e123005123035%_))
                                                (_%tl123007123040%_
                                                 (##cdr _%e123005123035%_)))
                                            (let ((_%expr123043%_
                                                   _%hd123006123038%_))
                                              (if (gx#stx-null?
                                                   _%tl123007123040%_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _%ann123033%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _%expr123043%_)
                                 '())))
               (gx#stx-source _%stx122995%_))
              (_%E122998123013%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E122998123013%_)))))
                                        (_%E122998123013%_)))))
                              (_%E122998123013%_))))
                      (_%E122998123013%_)))))
          (_%E122997123045%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx122719%_ _%body122720%_)
        (letrec ((_%expand-special122722%_
                  (lambda (_%hd122990%_ _%K122991%_ _%rest122992%_ _%r122993%_)
                    (_%K122991%_
                     '()
                     (cons (_%expand-internal122723%_
                            _%hd122990%_
                            _%rest122992%_)
                           _%r122993%_))))
                 (_%expand-internal122723%_
                  (lambda (_%hd122986%_ _%rest122987%_)
                    (__call-with-parameters
                     (lambda ()
                       (_%wrap-internal122725%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd122986%_ _%rest122987%_))
                          (gx#stx-source _%stx122719%_))
                         _%expand-internal-special122724%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj123345
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj123345)
                       __obj123345))))
                 (_%expand-internal-special122724%_
                  (lambda (_%hd122881%_ _%K122882%_ _%rest122883%_ _%r122884%_)
                    (let* ((_%e122885122910%_ _%hd122881%_)
                           (_%E122905122914%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e122885122910%_)))
                           (_%E122901122926%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122885122910%_)
                                  (let ((_%e122906122918%_
                                         (gx#syntax-e _%e122885122910%_)))
                                    (let ((_%hd122907122921%_
                                           (##car _%e122906122918%_))
                                          (_%tl122908122923%_
                                           (##cdr _%e122906122918%_)))
                                      (if (and (gx#identifier?
                                                _%hd122907122921%_)
                                               (gx#core-identifier=?
                                                _%hd122907122921%_
                                                '%#declare))
                                          (if '#t
                                              (_%K122882%_
                                               _%rest122883%_
                                               (cons (gx#core-expand-declare%
                                                      _%hd122881%_)
                                                     _%r122884%_))
                                              (_%E122905122914%_))
                                          (_%E122905122914%_))))
                                  (_%E122905122914%_))))
                           (_%E122897122938%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122885122910%_)
                                  (let ((_%e122902122930%_
                                         (gx#syntax-e _%e122885122910%_)))
                                    (let ((_%hd122903122933%_
                                           (##car _%e122902122930%_))
                                          (_%tl122904122935%_
                                           (##cdr _%e122902122930%_)))
                                      (if (and (gx#identifier?
                                                _%hd122903122933%_)
                                               (gx#core-identifier=?
                                                _%hd122903122933%_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _%hd122881%_)
                                                (_%K122882%_
                                                 _%rest122883%_
                                                 _%r122884%_))
                                              (_%E122901122926%_))
                                          (_%E122901122926%_))))
                                  (_%E122901122926%_))))
                           (_%E122887122950%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122885122910%_)
                                  (let ((_%e122898122942%_
                                         (gx#syntax-e _%e122885122910%_)))
                                    (let ((_%hd122899122945%_
                                           (##car _%e122898122942%_))
                                          (_%tl122900122947%_
                                           (##cdr _%e122898122942%_)))
                                      (if (and (gx#identifier?
                                                _%hd122899122945%_)
                                               (gx#core-identifier=?
                                                _%hd122899122945%_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _%hd122881%_)
                                                (_%K122882%_
                                                 _%rest122883%_
                                                 _%r122884%_))
                                              (_%E122897122938%_))
                                          (_%E122897122938%_))))
                                  (_%E122897122938%_))))
                           (_%E122886122982%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122885122910%_)
                                  (let ((_%e122888122954%_
                                         (gx#syntax-e _%e122885122910%_)))
                                    (let ((_%hd122889122957%_
                                           (##car _%e122888122954%_))
                                          (_%tl122890122959%_
                                           (##cdr _%e122888122954%_)))
                                      (if (and (gx#identifier?
                                                _%hd122889122957%_)
                                               (gx#core-identifier=?
                                                _%hd122889122957%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl122890122959%_)
                                              (let ((_%e122891122962%_
                                                     (gx#syntax-e
                                                      _%tl122890122959%_)))
                                                (let ((_%hd122892122965%_
                                                       (##car _%e122891122962%_))
                                                      (_%tl122893122967%_
                                                       (##cdr _%e122891122962%_)))
                                                  (let ((_%hd-bind122970%_
                                                         _%hd122892122965%_))
                                                    (if (gx#stx-pair?
                                                         _%tl122893122967%_)
                                                        (let ((_%e122894122972%_
                                                               (gx#syntax-e
                                                                _%tl122893122967%_)))
                                                          (let ((_%hd122895122975%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e122894122972%_))
                        (_%tl122896122977%_ (##cdr _%e122894122972%_)))
                    (let ((_%expr122980%_ _%hd122895122975%_))
                      (if (gx#stx-null? _%tl122896122977%_)
                          (if (gx#core-bind-values? _%hd-bind122970%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind122970%_)
                                (_%K122882%_
                                 _%rest122883%_
                                 (cons _%hd122881%_ _%r122884%_)))
                              (_%E122887122950%_))
                          (_%E122887122950%_)))))
                (_%E122887122950%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E122887122950%_))
                                          (_%E122887122950%_))))
                                  (_%E122887122950%_)))))
                      (_%E122886122982%_))))
                 (_%wrap-internal122725%_
                  (lambda (_%rbody122727%_)
                    (let _%lp122729%_ ((_%rest122731%_ _%rbody122727%_)
                                       (_%decls122732%_ '())
                                       (_%bind122733%_ '())
                                       (_%body122734%_ '()))
                      (let* ((_%e122735122742%_ _%rest122731%_)
                             (_%E122737122791%_
                              (lambda ()
                                (let* ((_%body122786%_
                                        (let* ((_%body122745122755%_
                                                _%body122734%_)
                                               (_%else122748122763%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body122734%_)
                                                   (gx#stx-source
                                                    _%stx122719%_)))))
                                          (let ((_%K122753122783%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx122719%_)))
                                                (_%K122750122769%_
                                                 (lambda (_%expr122767%_)
                                                   _%expr122767%_)))
                                            (let ((_%try-match122747122779%_
                                                   (lambda ()
                                                     (if (##pair? _%body122745122755%_)
                                                         (let ((_%tl122752122774%_
                                                                (##cdr _%body122745122755%_))
                                                               (_%hd122751122772%_
                                                                (##car _%body122745122755%_)))
                                                           (if (##null? _%tl122752122774%_)
                                                               (let ((_%expr122777%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd122751122772%_))
                         (_%K122750122769%_ _%expr122777%_))
                       (_%else122748122763%_)))
                 (_%else122748122763%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _%body122745122755%_)
                                                  (_%K122753122783%_)
                                                  (_%try-match122747122779%_))))))
                                       (_%body122788%_
                                        (if (null? _%bind122733%_)
                                            _%body122786%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind122733%_
                                                         (cons _%body122786%_
                                                               '())))
                                             (gx#stx-source _%stx122719%_)))))
                                  (if (null? _%decls122732%_)
                                      _%body122788%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls122732%_
                                                   (cons _%body122788%_ '())))
                                       (gx#stx-source _%stx122719%_))))))
                             (_%E122736122877%_
                              (lambda ()
                                (if (gx#stx-pair? _%e122735122742%_)
                                    (let ((_%e122738122795%_
                                           (gx#syntax-e _%e122735122742%_)))
                                      (let ((_%hd122739122798%_
                                             (##car _%e122738122795%_))
                                            (_%tl122740122800%_
                                             (##cdr _%e122738122795%_)))
                                        (let* ((_%hd122803%_
                                                _%hd122739122798%_)
                                               (_%rest122805%_
                                                _%tl122740122800%_))
                                          (if '#t
                                              (let* ((_%e122806122823%_
                                                      _%hd122803%_)
                                                     (_%E122818122827%_
                                                      (lambda ()
                                                        (if (null? _%bind122733%_)
                                                            (_%lp122729%_
                                                             _%rest122805%_
                                                             _%decls122732%_
                                                             _%bind122733%_
                                                             (cons _%hd122803%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body122734%_))
                    (_%lp122729%_
                     _%rest122805%_
                     _%decls122732%_
                     (cons (cons '#f (cons _%hd122803%_ '())) _%bind122733%_)
                     _%body122734%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E122808122841%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e122806122823%_)
                                                            (let ((_%e122819122831%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e122806122823%_)))
                      (let ((_%hd122820122834%_ (##car _%e122819122831%_))
                            (_%tl122821122836%_ (##cdr _%e122819122831%_)))
                        (if (and (gx#identifier? _%hd122820122834%_)
                                 (gx#core-identifier=?
                                  _%hd122820122834%_
                                  '%#declare))
                            (let ((_%xdecls122839%_ _%tl122821122836%_))
                              (if '#t
                                  (_%lp122729%_
                                   _%rest122805%_
                                   (gx#stx-foldr
                                    cons
                                    _%decls122732%_
                                    _%xdecls122839%_)
                                   _%bind122733%_
                                   _%body122734%_)
                                  (_%E122818122827%_)))
                            (_%E122818122827%_))))
                    (_%E122818122827%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E122807122873%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e122806122823%_)
                                                            (let ((_%e122809122845%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e122806122823%_)))
                      (let ((_%hd122810122848%_ (##car _%e122809122845%_))
                            (_%tl122811122850%_ (##cdr _%e122809122845%_)))
                        (if (and (gx#identifier? _%hd122810122848%_)
                                 (gx#core-identifier=?
                                  _%hd122810122848%_
                                  '%#define-values))
                            (if (gx#stx-pair? _%tl122811122850%_)
                                (let ((_%e122812122853%_
                                       (gx#syntax-e _%tl122811122850%_)))
                                  (let ((_%hd122813122856%_
                                         (##car _%e122812122853%_))
                                        (_%tl122814122858%_
                                         (##cdr _%e122812122853%_)))
                                    (let ((_%hd-bind122861%_
                                           _%hd122813122856%_))
                                      (if (gx#stx-pair? _%tl122814122858%_)
                                          (let ((_%e122815122863%_
                                                 (gx#syntax-e
                                                  _%tl122814122858%_)))
                                            (let ((_%hd122816122866%_
                                                   (##car _%e122815122863%_))
                                                  (_%tl122817122868%_
                                                   (##cdr _%e122815122863%_)))
                                              (let ((_%expr122871%_
                                                     _%hd122816122866%_))
                                                (if (gx#stx-null?
                                                     _%tl122817122868%_)
                                                    (if '#t
                                                        (_%lp122729%_
                                                         _%rest122805%_
                                                         _%decls122732%_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd-bind122861%_)
                             (cons (gx#core-expand-expression _%expr122871%_)
                                   '()))
                       _%bind122733%_)
                 _%body122734%_)
                (_%E122808122841%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E122808122841%_)))))
                                          (_%E122808122841%_)))))
                                (_%E122808122841%_))
                            (_%E122808122841%_))))
                    (_%E122808122841%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E122807122873%_))
                                              (_%E122737122791%_)))))
                                    (_%E122737122791%_)))))
                        (_%E122736122877%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body122720%_)
            (gx#stx-source _%stx122719%_))
           _%expand-special122722%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx122657%_)
        (let* ((_%e122658122665%_ _%stx122657%_)
               (_%E122660122669%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122658122665%_)))
               (_%E122659122715%_
                (lambda ()
                  (if (gx#stx-pair? _%e122658122665%_)
                      (let ((_%e122661122673%_
                             (gx#syntax-e _%e122658122665%_)))
                        (let ((_%hd122662122676%_ (##car _%e122661122673%_))
                              (_%tl122663122678%_ (##cdr _%e122661122673%_)))
                          (let ((_%body122681%_ _%tl122663122678%_))
                            (if (gx#stx-list? _%body122681%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl122683%_)
                                     (let* ((_%e122684122691%_ _%decl122683%_)
                                            (_%E122686122695%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e122684122691%_)))
                                            (_%E122685122711%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e122684122691%_)
                                                   (let ((_%e122687122699%_
                                                          (gx#syntax-e
                                                           _%e122684122691%_)))
                                                     (let ((_%hd122688122702%_
                                                            (##car _%e122687122699%_))
                                                           (_%tl122689122704%_
                                                            (##cdr _%e122687122699%_)))
                                                       (let* ((_%head122707%_
                                                               _%hd122688122702%_)
                                                              (_%args122709%_
                                                               _%tl122689122704%_))
                                                         (if (gx#stx-list?
                                                              _%args122709%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl122683%_)
                                                             (_%E122686122695%_)))))
                                                   (_%E122686122695%_)))))
                                       (_%E122685122711%_)))
                                   _%body122681%_))
                                 (gx#stx-source _%stx122657%_))
                                (_%E122660122669%_)))))
                      (_%E122660122669%_)))))
          (_%E122659122715%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx122561%_)
        (let* ((_%e122562122569%_ _%stx122561%_)
               (_%E122564122573%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122562122569%_)))
               (_%E122563122653%_
                (lambda ()
                  (if (gx#stx-pair? _%e122562122569%_)
                      (let ((_%e122565122577%_
                             (gx#syntax-e _%e122562122569%_)))
                        (let ((_%hd122566122580%_ (##car _%e122565122577%_))
                              (_%tl122567122582%_ (##cdr _%e122565122577%_)))
                          (let ((_%body122585%_ _%tl122567122582%_))
                            (if '#t
                                (let _%lp122587%_ ((_%rest122589%_
                                                    _%body122585%_)
                                                   (_%r122590%_ '()))
                                  (let* ((_%e122591122605%_ _%rest122589%_)
                                         (_%E122603122609%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _%stx122561%_)))
                                         (_%E122593122613%_
                                          (lambda ()
                                            (if (gx#stx-null?
                                                 _%e122591122605%_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _%r122590%_))
                                                     (gx#stx-source
                                                      _%stx122561%_))
                                                    (_%E122603122609%_))
                                                (_%E122603122609%_))))
                                         (_%E122592122649%_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 _%e122591122605%_)
                                                (let ((_%e122594122617%_
                                                       (gx#syntax-e
                                                        _%e122591122605%_)))
                                                  (let ((_%hd122595122620%_
                                                         (##car _%e122594122617%_))
                                                        (_%tl122596122622%_
                                                         (##cdr _%e122594122617%_)))
                                                    (if (gx#stx-pair?
                                                         _%hd122595122620%_)
                                                        (let ((_%e122597122625%_
                                                               (gx#syntax-e
                                                                _%hd122595122620%_)))
                                                          (let ((_%hd122598122628%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e122597122625%_))
                        (_%tl122599122630%_ (##cdr _%e122597122625%_)))
                    (let ((_%id122633%_ _%hd122598122628%_))
                      (if (gx#stx-pair? _%tl122599122630%_)
                          (let ((_%e122600122635%_
                                 (gx#syntax-e _%tl122599122630%_)))
                            (let ((_%hd122601122638%_
                                   (##car _%e122600122635%_))
                                  (_%tl122602122640%_
                                   (##cdr _%e122600122635%_)))
                              (let ((_%eid122643%_ _%hd122601122638%_))
                                (if (gx#stx-null? _%tl122602122640%_)
                                    (let ((_%rest122645%_ _%tl122596122622%_))
                                      (if (and (gx#identifier? _%id122633%_)
                                               (gx#identifier? _%eid122643%_))
                                          (let ((_%eid122647%_
                                                 (gx#stx-e _%eid122643%_)))
                                            (gx#core-bind-extern!__0
                                             _%id122633%_
                                             _%eid122647%_)
                                            (_%lp122587%_
                                             _%rest122645%_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _%id122633%_)
                                                         (cons _%eid122647%_
                                                               '()))
                                                   _%r122590%_)))
                                          (_%E122593122613%_)))
                                    (_%E122593122613%_)))))
                          (_%E122593122613%_)))))
                (_%E122593122613%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E122593122613%_)))))
                                    (_%E122592122649%_)))
                                (_%E122564122573%_)))))
                      (_%E122564122573%_)))))
          (_%E122563122653%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx122507%_)
        (let* ((_%e122508122521%_ _%stx122507%_)
               (_%E122510122525%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122508122521%_)))
               (_%E122509122557%_
                (lambda ()
                  (if (gx#stx-pair? _%e122508122521%_)
                      (let ((_%e122511122529%_
                             (gx#syntax-e _%e122508122521%_)))
                        (let ((_%hd122512122532%_ (##car _%e122511122529%_))
                              (_%tl122513122534%_ (##cdr _%e122511122529%_)))
                          (if (gx#stx-pair? _%tl122513122534%_)
                              (let ((_%e122514122537%_
                                     (gx#syntax-e _%tl122513122534%_)))
                                (let ((_%hd122515122540%_
                                       (##car _%e122514122537%_))
                                      (_%tl122516122542%_
                                       (##cdr _%e122514122537%_)))
                                  (let ((_%hd122545%_ _%hd122515122540%_))
                                    (if (gx#stx-pair? _%tl122516122542%_)
                                        (let ((_%e122517122547%_
                                               (gx#syntax-e
                                                _%tl122516122542%_)))
                                          (let ((_%hd122518122550%_
                                                 (##car _%e122517122547%_))
                                                (_%tl122519122552%_
                                                 (##cdr _%e122517122547%_)))
                                            (let ((_%expr122555%_
                                                   _%hd122518122550%_))
                                              (if (gx#stx-null?
                                                   _%tl122519122552%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd122545%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd122545%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd122545%_)
                             (cons (gx#core-expand-expression _%expr122555%_)
                                   '())))
                 (gx#stx-source _%stx122507%_)))
              (_%E122510122525%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E122510122525%_)))))
                                        (_%E122510122525%_)))))
                              (_%E122510122525%_))))
                      (_%E122510122525%_)))))
          (_%E122509122557%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx122451%_)
        (let* ((_%e122452122465%_ _%stx122451%_)
               (_%E122454122469%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122452122465%_)))
               (_%E122453122503%_
                (lambda ()
                  (if (gx#stx-pair? _%e122452122465%_)
                      (let ((_%e122455122473%_
                             (gx#syntax-e _%e122452122465%_)))
                        (let ((_%hd122456122476%_ (##car _%e122455122473%_))
                              (_%tl122457122478%_ (##cdr _%e122455122473%_)))
                          (if (gx#stx-pair? _%tl122457122478%_)
                              (let ((_%e122458122481%_
                                     (gx#syntax-e _%tl122457122478%_)))
                                (let ((_%hd122459122484%_
                                       (##car _%e122458122481%_))
                                      (_%tl122460122486%_
                                       (##cdr _%e122458122481%_)))
                                  (let ((_%id122489%_ _%hd122459122484%_))
                                    (if (gx#stx-pair? _%tl122460122486%_)
                                        (let ((_%e122461122491%_
                                               (gx#syntax-e
                                                _%tl122460122486%_)))
                                          (let ((_%hd122462122494%_
                                                 (##car _%e122461122491%_))
                                                (_%tl122463122496%_
                                                 (##cdr _%e122461122491%_)))
                                            (let ((_%binding-id122499%_
                                                   _%hd122462122494%_))
                                              (if (gx#stx-null?
                                                   _%tl122463122496%_)
                                                  (if (and (gx#identifier?
                                                            _%id122489%_)
                                                           (gx#identifier?
                                                            _%binding-id122499%_))
                                                      (let ((_%eid122501%_
                                                             (gx#stx-e
                                                              _%binding-id122499%_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _%id122489%_
                                                         _%eid122501%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id122489%_)
                             (cons _%eid122501%_ '())))))
              (_%E122454122469%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E122454122469%_)))))
                                        (_%E122454122469%_)))))
                              (_%E122454122469%_))))
                      (_%E122454122469%_)))))
          (_%E122453122503%_))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx122394%_)
        (let* ((_%e122395122408%_ _%stx122394%_)
               (_%E122397122412%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122395122408%_)))
               (_%E122396122447%_
                (lambda ()
                  (if (gx#stx-pair? _%e122395122408%_)
                      (let ((_%e122398122416%_
                             (gx#syntax-e _%e122395122408%_)))
                        (let ((_%hd122399122419%_ (##car _%e122398122416%_))
                              (_%tl122400122421%_ (##cdr _%e122398122416%_)))
                          (if (gx#stx-pair? _%tl122400122421%_)
                              (let ((_%e122401122424%_
                                     (gx#syntax-e _%tl122400122421%_)))
                                (let ((_%hd122402122427%_
                                       (##car _%e122401122424%_))
                                      (_%tl122403122429%_
                                       (##cdr _%e122401122424%_)))
                                  (let ((_%id122432%_ _%hd122402122427%_))
                                    (if (gx#stx-pair? _%tl122403122429%_)
                                        (let ((_%e122404122434%_
                                               (gx#syntax-e
                                                _%tl122403122429%_)))
                                          (let ((_%hd122405122437%_
                                                 (##car _%e122404122434%_))
                                                (_%tl122406122439%_
                                                 (##cdr _%e122404122434%_)))
                                            (let ((_%expr122442%_
                                                   _%hd122405122437%_))
                                              (if (gx#stx-null?
                                                   _%tl122406122439%_)
                                                  (if (gx#identifier?
                                                       _%id122432%_)
                                                      (let ((_g123353_
                                                             (gx#core-expand-expression+1
                                                              _%expr122442%_)))
                                                        (begin
                                                          (let ((_g123354_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g123353_)
                             (##vector-length _g123353_)
                             1)))
                    (if (not (##fx= _g123354_ 2))
                        (error "Context expects 2 values" _g123354_)))
                  (let ((_%e-stx122444%_ (##vector-ref _g123353_ 0))
                        (_%e122445%_ (##vector-ref _g123353_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id122432%_ _%e122445%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id122432%_)
                                   (cons _%e-stx122444%_ '())))
                       (gx#stx-source _%stx122394%_))))))
              (_%E122397122412%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E122397122412%_)))))
                                        (_%E122397122412%_)))))
                              (_%E122397122412%_))))
                      (_%E122397122412%_)))))
          (_%E122396122447%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx122338%_)
        (let* ((_%e122339122352%_ _%stx122338%_)
               (_%E122341122356%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122339122352%_)))
               (_%E122340122390%_
                (lambda ()
                  (if (gx#stx-pair? _%e122339122352%_)
                      (let ((_%e122342122360%_
                             (gx#syntax-e _%e122339122352%_)))
                        (let ((_%hd122343122363%_ (##car _%e122342122360%_))
                              (_%tl122344122365%_ (##cdr _%e122342122360%_)))
                          (if (gx#stx-pair? _%tl122344122365%_)
                              (let ((_%e122345122368%_
                                     (gx#syntax-e _%tl122344122365%_)))
                                (let ((_%hd122346122371%_
                                       (##car _%e122345122368%_))
                                      (_%tl122347122373%_
                                       (##cdr _%e122345122368%_)))
                                  (let ((_%id122376%_ _%hd122346122371%_))
                                    (if (gx#stx-pair? _%tl122347122373%_)
                                        (let ((_%e122348122378%_
                                               (gx#syntax-e
                                                _%tl122347122373%_)))
                                          (let ((_%hd122349122381%_
                                                 (##car _%e122348122378%_))
                                                (_%tl122350122383%_
                                                 (##cdr _%e122348122378%_)))
                                            (let ((_%alias-id122386%_
                                                   _%hd122349122381%_))
                                              (if (gx#stx-null?
                                                   _%tl122350122383%_)
                                                  (if (and (gx#identifier?
                                                            _%id122376%_)
                                                           (gx#identifier?
                                                            _%alias-id122386%_))
                                                      (let ((_%alias-id122388%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id122386%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id122376%_
                                                         _%alias-id122388%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id122376%_)
                             (cons _%alias-id122388%_ '())))))
              (_%E122341122356%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E122341122356%_)))))
                                        (_%E122341122356%_)))))
                              (_%E122341122356%_))))
                      (_%E122341122356%_)))))
          (_%E122340122390%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx122281%_ _%wrap?122282%_)
        (let* ((_%e122283122293%_ _%stx122281%_)
               (_%E122285122297%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122283122293%_)))
               (_%E122284122324%_
                (lambda ()
                  (if (gx#stx-pair? _%e122283122293%_)
                      (let ((_%e122286122301%_
                             (gx#syntax-e _%e122283122293%_)))
                        (let ((_%hd122287122304%_ (##car _%e122286122301%_))
                              (_%tl122288122306%_ (##cdr _%e122286122301%_)))
                          (if (gx#stx-pair? _%tl122288122306%_)
                              (let ((_%e122289122309%_
                                     (gx#syntax-e _%tl122288122306%_)))
                                (let ((_%hd122290122312%_
                                       (##car _%e122289122309%_))
                                      (_%tl122291122314%_
                                       (##cdr _%e122289122309%_)))
                                  (let* ((_%hd122317%_ _%hd122290122312%_)
                                         (_%body122319%_ _%tl122291122314%_))
                                    (if (gx#core-bind-values? _%hd122317%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd122317%_)
                                           (let ((_%body122322%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd122317%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx122281%_
                                                               _%body122319%_)
                                                              '()))))
                                             (if _%wrap?122282%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body122322%_)
                                                  (gx#stx-source
                                                   _%stx122281%_))
                                                 _%body122322%_)))
                                         gx#current-expander-context
                                         (let ((__obj123346
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj123346)
                                           __obj123346))
                                        (_%E122285122297%_)))))
                              (_%E122285122297%_))))
                      (_%E122285122297%_)))))
          (_%E122284122324%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx122331%_)
        (let ((_%wrap?122333%_ '#t))
          (gx#core-expand-lambda%__% _%stx122331%_ _%wrap?122333%_))))
    (define gx#core-expand-lambda%
      (lambda _g123356_
        (let ((_g123355_ (##length _g123356_)))
          (cond ((##fx= _g123355_ 1)
                 (apply gx#core-expand-lambda%__0 _g123356_))
                ((##fx= _g123355_ 2)
                 (apply gx#core-expand-lambda%__% _g123356_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g123356_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx122245%_)
        (let* ((_%e122246122253%_ _%stx122245%_)
               (_%E122248122257%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122246122253%_)))
               (_%E122247122276%_
                (lambda ()
                  (if (gx#stx-pair? _%e122246122253%_)
                      (let ((_%e122249122261%_
                             (gx#syntax-e _%e122246122253%_)))
                        (let ((_%hd122250122264%_ (##car _%e122249122261%_))
                              (_%tl122251122266%_ (##cdr _%e122249122261%_)))
                          (let ((_%clauses122269%_ _%tl122251122266%_))
                            (if (gx#stx-list? _%clauses122269%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause122271%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause122271%_)
                                       (let ((_%$e122273%_
                                              (gx#stx-source
                                               _%clause122271%_)))
                                         (if _%$e122273%_
                                             _%$e122273%_
                                             (gx#stx-source _%stx122245%_))))
                                      '#f))
                                   _%clauses122269%_))
                                 (gx#stx-source _%stx122245%_))
                                (_%E122248122257%_)))))
                      (_%E122248122257%_)))))
          (_%E122247122276%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx122199%_)
        (let* ((_%e122200122210%_ _%stx122199%_)
               (_%E122202122214%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122200122210%_)))
               (_%E122201122241%_
                (lambda ()
                  (if (gx#stx-pair? _%e122200122210%_)
                      (let ((_%e122203122218%_
                             (gx#syntax-e _%e122200122210%_)))
                        (let ((_%hd122204122221%_ (##car _%e122203122218%_))
                              (_%tl122205122223%_ (##cdr _%e122203122218%_)))
                          (if (gx#stx-pair? _%tl122205122223%_)
                              (let ((_%e122206122226%_
                                     (gx#syntax-e _%tl122205122223%_)))
                                (let ((_%hd122207122229%_
                                       (##car _%e122206122226%_))
                                      (_%tl122208122231%_
                                       (##cdr _%e122206122226%_)))
                                  (let* ((_%hd122234%_ _%hd122207122229%_)
                                         (_%body122236%_ _%tl122208122231%_))
                                    (if (gx#core-expand-let-bind? _%hd122234%_)
                                        (let ((_%expressions122238%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd122234%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd122234%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd122234%_
                                                           _%expressions122238%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx122199%_
                         _%body122236%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx122199%_)))
                                           gx#current-expander-context
                                           (let ((__obj123347
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj123347)
                                             __obj123347)))
                                        (_%E122202122214%_)))))
                              (_%E122202122214%_))))
                      (_%E122202122214%_)))))
          (_%E122201122241%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx122144%_ _%form122145%_)
        (let* ((_%e122146122156%_ _%stx122144%_)
               (_%E122148122160%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122146122156%_)))
               (_%E122147122185%_
                (lambda ()
                  (if (gx#stx-pair? _%e122146122156%_)
                      (let ((_%e122149122164%_
                             (gx#syntax-e _%e122146122156%_)))
                        (let ((_%hd122150122167%_ (##car _%e122149122164%_))
                              (_%tl122151122169%_ (##cdr _%e122149122164%_)))
                          (if (gx#stx-pair? _%tl122151122169%_)
                              (let ((_%e122152122172%_
                                     (gx#syntax-e _%tl122151122169%_)))
                                (let ((_%hd122153122175%_
                                       (##car _%e122152122172%_))
                                      (_%tl122154122177%_
                                       (##cdr _%e122152122172%_)))
                                  (let* ((_%hd122180%_ _%hd122153122175%_)
                                         (_%body122182%_ _%tl122154122177%_))
                                    (if (gx#core-expand-let-bind? _%hd122180%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd122180%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form122145%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd122180%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd122180%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx122144%_
                                                               _%body122182%_)
                                                              '())))
                                            (gx#stx-source _%stx122144%_)))
                                         gx#current-expander-context
                                         (let ((__obj123348
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj123348)
                                           __obj123348))
                                        (_%E122148122160%_)))))
                              (_%E122148122160%_))))
                      (_%E122148122160%_)))))
          (_%E122147122185%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx122192%_)
        (let ((_%form122194%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx122192%_ _%form122194%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g123358_
        (let ((_g123357_ (##length _g123358_)))
          (cond ((##fx= _g123357_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g123358_))
                ((##fx= _g123357_ 2)
                 (apply gx#core-expand-letrec-values%__% _g123358_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g123358_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx122141%_)
        (gx#core-expand-letrec-values%__% _%stx122141%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx122098%_)
        (if (gx#stx-list? _%stx122098%_)
            (gx#stx-andmap
             (lambda (_%bind122100%_)
               (let* ((_%e122101122111%_ _%bind122100%_)
                      (_%E122103122115%_ (lambda () '#f))
                      (_%E122102122137%_
                       (lambda ()
                         (if (gx#stx-pair? _%e122101122111%_)
                             (let ((_%e122104122119%_
                                    (gx#syntax-e _%e122101122111%_)))
                               (let ((_%hd122105122122%_
                                      (##car _%e122104122119%_))
                                     (_%tl122106122124%_
                                      (##cdr _%e122104122119%_)))
                                 (let ((_%hd122127%_ _%hd122105122122%_))
                                   (if (gx#stx-pair? _%tl122106122124%_)
                                       (let ((_%e122107122129%_
                                              (gx#syntax-e
                                               _%tl122106122124%_)))
                                         (let ((_%hd122108122132%_
                                                (##car _%e122107122129%_))
                                               (_%tl122109122134%_
                                                (##cdr _%e122107122129%_)))
                                           (if (gx#stx-null?
                                                _%tl122109122134%_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _%hd122127%_)
                                                   (_%E122103122115%_))
                                               (_%E122103122115%_))))
                                       (_%E122103122115%_)))))
                             (_%E122103122115%_)))))
                 (_%E122102122137%_)))
             _%stx122098%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind122057%_)
        (let* ((_%e122058122068%_ _%bind122057%_)
               (_%E122060122072%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122058122068%_)))
               (_%E122059122094%_
                (lambda ()
                  (if (gx#stx-pair? _%e122058122068%_)
                      (let ((_%e122061122076%_
                             (gx#syntax-e _%e122058122068%_)))
                        (let ((_%hd122062122079%_ (##car _%e122061122076%_))
                              (_%tl122063122081%_ (##cdr _%e122061122076%_)))
                          (if (gx#stx-pair? _%tl122063122081%_)
                              (let ((_%e122064122084%_
                                     (gx#syntax-e _%tl122063122081%_)))
                                (let ((_%hd122065122087%_
                                       (##car _%e122064122084%_))
                                      (_%tl122066122089%_
                                       (##cdr _%e122064122084%_)))
                                  (let ((_%expr122092%_ _%hd122065122087%_))
                                    (if (gx#stx-null? _%tl122066122089%_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _%expr122092%_)
                                            (_%E122060122072%_))
                                        (_%E122060122072%_)))))
                              (_%E122060122072%_))))
                      (_%E122060122072%_)))))
          (_%E122059122094%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind122016%_)
        (let* ((_%e122017122027%_ _%bind122016%_)
               (_%E122019122031%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122017122027%_)))
               (_%E122018122053%_
                (lambda ()
                  (if (gx#stx-pair? _%e122017122027%_)
                      (let ((_%e122020122035%_
                             (gx#syntax-e _%e122017122027%_)))
                        (let ((_%hd122021122038%_ (##car _%e122020122035%_))
                              (_%tl122022122040%_ (##cdr _%e122020122035%_)))
                          (let ((_%hd122043%_ _%hd122021122038%_))
                            (if (gx#stx-pair? _%tl122022122040%_)
                                (let ((_%e122023122045%_
                                       (gx#syntax-e _%tl122022122040%_)))
                                  (let ((_%hd122024122048%_
                                         (##car _%e122023122045%_))
                                        (_%tl122025122050%_
                                         (##cdr _%e122023122045%_)))
                                    (if (gx#stx-null? _%tl122025122050%_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _%hd122043%_)
                                            (_%E122019122031%_))
                                        (_%E122019122031%_))))
                                (_%E122019122031%_)))))
                      (_%E122019122031%_)))))
          (_%E122018122053%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind121974%_ _%expr121975%_)
        (let* ((_%e121976121986%_ _%bind121974%_)
               (_%E121978121990%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121976121986%_)))
               (_%E121977122012%_
                (lambda ()
                  (if (gx#stx-pair? _%e121976121986%_)
                      (let ((_%e121979121994%_
                             (gx#syntax-e _%e121976121986%_)))
                        (let ((_%hd121980121997%_ (##car _%e121979121994%_))
                              (_%tl121981121999%_ (##cdr _%e121979121994%_)))
                          (let ((_%hd122002%_ _%hd121980121997%_))
                            (if (gx#stx-pair? _%tl121981121999%_)
                                (let ((_%e121982122004%_
                                       (gx#syntax-e _%tl121981121999%_)))
                                  (let ((_%hd121983122007%_
                                         (##car _%e121982122004%_))
                                        (_%tl121984122009%_
                                         (##cdr _%e121982122004%_)))
                                    (if (gx#stx-null? _%tl121984122009%_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _%hd122002%_)
                                                  (cons _%expr121975%_ '()))
                                            (_%E121978121990%_))
                                        (_%E121978121990%_))))
                                (_%E121978121990%_)))))
                      (_%E121978121990%_)))))
          (_%E121977122012%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx121928%_)
        (let* ((_%e121929121939%_ _%stx121928%_)
               (_%E121931121943%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121929121939%_)))
               (_%E121930121970%_
                (lambda ()
                  (if (gx#stx-pair? _%e121929121939%_)
                      (let ((_%e121932121947%_
                             (gx#syntax-e _%e121929121939%_)))
                        (let ((_%hd121933121950%_ (##car _%e121932121947%_))
                              (_%tl121934121952%_ (##cdr _%e121932121947%_)))
                          (if (gx#stx-pair? _%tl121934121952%_)
                              (let ((_%e121935121955%_
                                     (gx#syntax-e _%tl121934121952%_)))
                                (let ((_%hd121936121958%_
                                       (##car _%e121935121955%_))
                                      (_%tl121937121960%_
                                       (##cdr _%e121935121955%_)))
                                  (let* ((_%hd121963%_ _%hd121936121958%_)
                                         (_%body121965%_ _%tl121937121960%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd121963%_)
                                        (let ((_%expanders121967%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd121963%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd121963%_
                                              _%expanders121967%_)
                                             (gx#core-expand-local-block
                                              _%stx121928%_
                                              _%body121965%_))
                                           gx#current-expander-context
                                           (let ((__obj123349
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj123349)
                                             __obj123349)))
                                        (_%E121931121943%_)))))
                              (_%E121931121943%_))))
                      (_%E121931121943%_)))))
          (_%E121930121970%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx121877%_)
        (let* ((_%e121878121888%_ _%stx121877%_)
               (_%E121880121892%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121878121888%_)))
               (_%E121879121924%_
                (lambda ()
                  (if (gx#stx-pair? _%e121878121888%_)
                      (let ((_%e121881121896%_
                             (gx#syntax-e _%e121878121888%_)))
                        (let ((_%hd121882121899%_ (##car _%e121881121896%_))
                              (_%tl121883121901%_ (##cdr _%e121881121896%_)))
                          (if (gx#stx-pair? _%tl121883121901%_)
                              (let ((_%e121884121904%_
                                     (gx#syntax-e _%tl121883121901%_)))
                                (let ((_%hd121885121907%_
                                       (##car _%e121884121904%_))
                                      (_%tl121886121909%_
                                       (##cdr _%e121884121904%_)))
                                  (let* ((_%hd121912%_ _%hd121885121907%_)
                                         (_%body121914%_ _%tl121886121909%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd121912%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd121912%_
                                            (make-list
                                             (gx#stx-length _%hd121912%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g121916121919%_
                                                     _%g121917121921%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g121916121919%_
                                               _%g121917121921%_
                                               '#t))
                                            _%hd121912%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd121912%_))
                                           (gx#core-expand-local-block
                                            _%stx121877%_
                                            _%body121914%_))
                                         gx#current-expander-context
                                         (let ((__obj123350
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj123350)
                                           __obj123350))
                                        (_%E121880121892%_)))))
                              (_%E121880121892%_))))
                      (_%E121880121892%_)))))
          (_%E121879121924%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx121834%_)
        (if (gx#stx-list? _%stx121834%_)
            (gx#stx-andmap
             (lambda (_%bind121836%_)
               (let* ((_%e121837121847%_ _%bind121836%_)
                      (_%E121839121851%_ (lambda () '#f))
                      (_%E121838121873%_
                       (lambda ()
                         (if (gx#stx-pair? _%e121837121847%_)
                             (let ((_%e121840121855%_
                                    (gx#syntax-e _%e121837121847%_)))
                               (let ((_%hd121841121858%_
                                      (##car _%e121840121855%_))
                                     (_%tl121842121860%_
                                      (##cdr _%e121840121855%_)))
                                 (let ((_%hd121863%_ _%hd121841121858%_))
                                   (if (gx#stx-pair? _%tl121842121860%_)
                                       (let ((_%e121843121865%_
                                              (gx#syntax-e
                                               _%tl121842121860%_)))
                                         (let ((_%hd121844121868%_
                                                (##car _%e121843121865%_))
                                               (_%tl121845121870%_
                                                (##cdr _%e121843121865%_)))
                                           (if (gx#stx-null?
                                                _%tl121845121870%_)
                                               (if '#t
                                                   (gx#identifier?
                                                    _%hd121863%_)
                                                   (_%E121839121851%_))
                                               (_%E121839121851%_))))
                                       (_%E121839121851%_)))))
                             (_%E121839121851%_)))))
                 (_%E121838121873%_)))
             _%stx121834%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind121790%_)
        (let* ((_%e121791121801%_ _%bind121790%_)
               (_%E121793121805%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121791121801%_)))
               (_%E121792121830%_
                (lambda ()
                  (if (gx#stx-pair? _%e121791121801%_)
                      (let ((_%e121794121809%_
                             (gx#syntax-e _%e121791121801%_)))
                        (let ((_%hd121795121812%_ (##car _%e121794121809%_))
                              (_%tl121796121814%_ (##cdr _%e121794121809%_)))
                          (if (gx#stx-pair? _%tl121796121814%_)
                              (let ((_%e121797121817%_
                                     (gx#syntax-e _%tl121796121814%_)))
                                (let ((_%hd121798121820%_
                                       (##car _%e121797121817%_))
                                      (_%tl121799121822%_
                                       (##cdr _%e121797121817%_)))
                                  (let ((_%expr121825%_ _%hd121798121820%_))
                                    (if (gx#stx-null? _%tl121799121822%_)
                                        (if '#t
                                            (let ((_g123359_
                                                   (gx#core-expand-expression+1
                                                    _%expr121825%_)))
                                              (begin
                                                (let ((_g123360_
                                                       (if (##values?
                                                            _g123359_)
                                                           (##vector-length
                                                            _g123359_)
                                                           1)))
                                                  (if (not (##fx= _g123360_ 2))
                                                      (error "Context expects 2 values"
                                                             _g123360_)))
                                                (let ((_%_121827%_
                                                       (##vector-ref
                                                        _g123359_
                                                        0))
                                                      (_%e121828%_
                                                       (##vector-ref
                                                        _g123359_
                                                        1)))
                                                  _%e121828%_)))
                                            (_%E121793121805%_))
                                        (_%E121793121805%_)))))
                              (_%E121793121805%_))))
                      (_%E121793121805%_)))))
          (_%E121792121830%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind121735%_ _%e121736%_ _%rebind?121737%_)
        (let* ((_%e121738121748%_ _%bind121735%_)
               (_%E121740121752%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121738121748%_)))
               (_%E121739121774%_
                (lambda ()
                  (if (gx#stx-pair? _%e121738121748%_)
                      (let ((_%e121741121756%_
                             (gx#syntax-e _%e121738121748%_)))
                        (let ((_%hd121742121759%_ (##car _%e121741121756%_))
                              (_%tl121743121761%_ (##cdr _%e121741121756%_)))
                          (let ((_%id121764%_ _%hd121742121759%_))
                            (if (gx#stx-pair? _%tl121743121761%_)
                                (let ((_%e121744121766%_
                                       (gx#syntax-e _%tl121743121761%_)))
                                  (let ((_%hd121745121769%_
                                         (##car _%e121744121766%_))
                                        (_%tl121746121771%_
                                         (##cdr _%e121744121766%_)))
                                    (if (gx#stx-null? _%tl121746121771%_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _%id121764%_
                                             _%e121736%_
                                             _%rebind?121737%_)
                                            (_%E121740121752%_))
                                        (_%E121740121752%_))))
                                (_%E121740121752%_)))))
                      (_%E121740121752%_)))))
          (_%E121739121774%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind121781%_ _%e121782%_)
        (let ((_%rebind?121784%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind121781%_
           _%e121782%_
           _%rebind?121784%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g123362_
        (let ((_g123361_ (##length _g123362_)))
          (cond ((##fx= _g123361_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g123362_))
                ((##fx= _g123361_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g123362_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g123362_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx121693%_)
        (let* ((_%e121694121704%_ _%stx121693%_)
               (_%E121696121708%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121694121704%_)))
               (_%E121695121730%_
                (lambda ()
                  (if (gx#stx-pair? _%e121694121704%_)
                      (let ((_%e121697121712%_
                             (gx#syntax-e _%e121694121704%_)))
                        (let ((_%hd121698121715%_ (##car _%e121697121712%_))
                              (_%tl121699121717%_ (##cdr _%e121697121712%_)))
                          (if (gx#stx-pair? _%tl121699121717%_)
                              (let ((_%e121700121720%_
                                     (gx#syntax-e _%tl121699121717%_)))
                                (let ((_%hd121701121723%_
                                       (##car _%e121700121720%_))
                                      (_%tl121702121725%_
                                       (##cdr _%e121700121720%_)))
                                  (let ((_%expr121728%_ _%hd121701121723%_))
                                    (if (gx#stx-null? _%tl121702121725%_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _%expr121728%_)
                                            (_%E121696121708%_))
                                        (_%E121696121708%_)))))
                              (_%E121696121708%_))))
                      (_%E121696121708%_)))))
          (_%E121695121730%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx121652%_)
        (let* ((_%e121653121663%_ _%stx121652%_)
               (_%E121655121667%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121653121663%_)))
               (_%E121654121689%_
                (lambda ()
                  (if (gx#stx-pair? _%e121653121663%_)
                      (let ((_%e121656121671%_
                             (gx#syntax-e _%e121653121663%_)))
                        (let ((_%hd121657121674%_ (##car _%e121656121671%_))
                              (_%tl121658121676%_ (##cdr _%e121656121671%_)))
                          (if (gx#stx-pair? _%tl121658121676%_)
                              (let ((_%e121659121679%_
                                     (gx#syntax-e _%tl121658121676%_)))
                                (let ((_%hd121660121682%_
                                       (##car _%e121659121679%_))
                                      (_%tl121661121684%_
                                       (##cdr _%e121659121679%_)))
                                  (let ((_%e121687%_ _%hd121660121682%_))
                                    (if (gx#stx-null? _%tl121661121684%_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _%e121687%_)
                                                         '()))
                                             (gx#stx-source _%stx121652%_))
                                            (_%E121655121667%_))
                                        (_%E121655121667%_)))))
                              (_%E121655121667%_))))
                      (_%E121655121667%_)))))
          (_%E121654121689%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx121611%_)
        (let* ((_%e121612121622%_ _%stx121611%_)
               (_%E121614121626%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121612121622%_)))
               (_%E121613121648%_
                (lambda ()
                  (if (gx#stx-pair? _%e121612121622%_)
                      (let ((_%e121615121630%_
                             (gx#syntax-e _%e121612121622%_)))
                        (let ((_%hd121616121633%_ (##car _%e121615121630%_))
                              (_%tl121617121635%_ (##cdr _%e121615121630%_)))
                          (if (gx#stx-pair? _%tl121617121635%_)
                              (let ((_%e121618121638%_
                                     (gx#syntax-e _%tl121617121635%_)))
                                (let ((_%hd121619121641%_
                                       (##car _%e121618121638%_))
                                      (_%tl121620121643%_
                                       (##cdr _%e121618121638%_)))
                                  (let ((_%e121646%_ _%hd121619121641%_))
                                    (if (gx#stx-null? _%tl121620121643%_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _%e121646%_)
                                                         '()))
                                             (gx#stx-source _%stx121611%_))
                                            (_%E121614121626%_))
                                        (_%E121614121626%_)))))
                              (_%E121614121626%_))))
                      (_%E121614121626%_)))))
          (_%E121613121648%_))))
    (define gx#core-expand-call%
      (lambda (_%stx121568%_)
        (let* ((_%e121569121579%_ _%stx121568%_)
               (_%E121571121583%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121569121579%_)))
               (_%E121570121607%_
                (lambda ()
                  (if (gx#stx-pair? _%e121569121579%_)
                      (let ((_%e121572121587%_
                             (gx#syntax-e _%e121569121579%_)))
                        (let ((_%hd121573121590%_ (##car _%e121572121587%_))
                              (_%tl121574121592%_ (##cdr _%e121572121587%_)))
                          (if (gx#stx-pair? _%tl121574121592%_)
                              (let ((_%e121575121595%_
                                     (gx#syntax-e _%tl121574121592%_)))
                                (let ((_%hd121576121598%_
                                       (##car _%e121575121595%_))
                                      (_%tl121577121600%_
                                       (##cdr _%e121575121595%_)))
                                  (let* ((_%rator121603%_ _%hd121576121598%_)
                                         (_%args121605%_ _%tl121577121600%_))
                                    (if (gx#stx-list? _%args121605%_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _%rator121603%_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _%args121605%_))
                                         (gx#stx-source _%stx121568%_))
                                        (_%E121571121583%_)))))
                              (_%E121571121583%_))))
                      (_%E121571121583%_)))))
          (_%E121570121607%_))))
    (define gx#core-expand-if%
      (lambda (_%stx121501%_)
        (let* ((_%e121502121518%_ _%stx121501%_)
               (_%E121504121522%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121502121518%_)))
               (_%E121503121564%_
                (lambda ()
                  (if (gx#stx-pair? _%e121502121518%_)
                      (let ((_%e121505121526%_
                             (gx#syntax-e _%e121502121518%_)))
                        (let ((_%hd121506121529%_ (##car _%e121505121526%_))
                              (_%tl121507121531%_ (##cdr _%e121505121526%_)))
                          (if (gx#stx-pair? _%tl121507121531%_)
                              (let ((_%e121508121534%_
                                     (gx#syntax-e _%tl121507121531%_)))
                                (let ((_%hd121509121537%_
                                       (##car _%e121508121534%_))
                                      (_%tl121510121539%_
                                       (##cdr _%e121508121534%_)))
                                  (let ((_%test121542%_ _%hd121509121537%_))
                                    (if (gx#stx-pair? _%tl121510121539%_)
                                        (let ((_%e121511121544%_
                                               (gx#syntax-e
                                                _%tl121510121539%_)))
                                          (let ((_%hd121512121547%_
                                                 (##car _%e121511121544%_))
                                                (_%tl121513121549%_
                                                 (##cdr _%e121511121544%_)))
                                            (let ((_%K121552%_
                                                   _%hd121512121547%_))
                                              (if (gx#stx-pair?
                                                   _%tl121513121549%_)
                                                  (let ((_%e121514121554%_
                                                         (gx#syntax-e
                                                          _%tl121513121549%_)))
                                                    (let ((_%hd121515121557%_
                                                           (##car _%e121514121554%_))
                                                          (_%tl121516121559%_
                                                           (##cdr _%e121514121554%_)))
                                                      (let ((_%E121562%_
                                                             _%hd121515121557%_))
                                                        (if (gx#stx-null?
                                                             _%tl121516121559%_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _%test121542%_)
                                     (cons (gx#core-expand-expression
                                            _%K121552%_)
                                           (cons (gx#core-expand-expression
                                                  _%E121562%_)
                                                 '()))))
                         (gx#stx-source _%stx121501%_))
                        (_%E121504121522%_))
                    (_%E121504121522%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121504121522%_)))))
                                        (_%E121504121522%_)))))
                              (_%E121504121522%_))))
                      (_%E121504121522%_)))))
          (_%E121503121564%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx121460%_)
        (let* ((_%e121461121471%_ _%stx121460%_)
               (_%E121463121475%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121461121471%_)))
               (_%E121462121497%_
                (lambda ()
                  (if (gx#stx-pair? _%e121461121471%_)
                      (let ((_%e121464121479%_
                             (gx#syntax-e _%e121461121471%_)))
                        (let ((_%hd121465121482%_ (##car _%e121464121479%_))
                              (_%tl121466121484%_ (##cdr _%e121464121479%_)))
                          (if (gx#stx-pair? _%tl121466121484%_)
                              (let ((_%e121467121487%_
                                     (gx#syntax-e _%tl121466121484%_)))
                                (let ((_%hd121468121490%_
                                       (##car _%e121467121487%_))
                                      (_%tl121469121492%_
                                       (##cdr _%e121467121487%_)))
                                  (let ((_%id121495%_ _%hd121468121490%_))
                                    (if (gx#stx-null? _%tl121469121492%_)
                                        (if (gx#identifier? _%id121495%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id121495%_
                                                          _%stx121460%_)
                                                         '()))
                                             (gx#stx-source _%stx121460%_))
                                            (_%E121463121475%_))
                                        (_%E121463121475%_)))))
                              (_%E121463121475%_))))
                      (_%E121463121475%_)))))
          (_%E121462121497%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx121406%_)
        (let* ((_%e121407121420%_ _%stx121406%_)
               (_%E121409121424%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121407121420%_)))
               (_%E121408121456%_
                (lambda ()
                  (if (gx#stx-pair? _%e121407121420%_)
                      (let ((_%e121410121428%_
                             (gx#syntax-e _%e121407121420%_)))
                        (let ((_%hd121411121431%_ (##car _%e121410121428%_))
                              (_%tl121412121433%_ (##cdr _%e121410121428%_)))
                          (if (gx#stx-pair? _%tl121412121433%_)
                              (let ((_%e121413121436%_
                                     (gx#syntax-e _%tl121412121433%_)))
                                (let ((_%hd121414121439%_
                                       (##car _%e121413121436%_))
                                      (_%tl121415121441%_
                                       (##cdr _%e121413121436%_)))
                                  (let ((_%id121444%_ _%hd121414121439%_))
                                    (if (gx#stx-pair? _%tl121415121441%_)
                                        (let ((_%e121416121446%_
                                               (gx#syntax-e
                                                _%tl121415121441%_)))
                                          (let ((_%hd121417121449%_
                                                 (##car _%e121416121446%_))
                                                (_%tl121418121451%_
                                                 (##cdr _%e121416121446%_)))
                                            (let ((_%expr121454%_
                                                   _%hd121417121449%_))
                                              (if (gx#stx-null?
                                                   _%tl121418121451%_)
                                                  (if (gx#identifier?
                                                       _%id121444%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id121444%_
                            _%stx121406%_)
                           (cons (gx#core-expand-expression _%expr121454%_)
                                 '())))
               (gx#stx-source _%stx121406%_))
              (_%E121409121424%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121409121424%_)))))
                                        (_%E121409121424%_)))))
                              (_%E121409121424%_))))
                      (_%E121409121424%_)))))
          (_%E121408121456%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx121251%_)
        (letrec ((_%generate121253%_
                  (lambda (_%body121283%_)
                    (let _%lp121285%_ ((_%rest121287%_ _%body121283%_)
                                       (_%ns121288%_
                                        (gx#core-context-namespace__0))
                                       (_%r121289%_ '()))
                      (let* ((_%e121290121305%_ _%rest121287%_)
                             (_%E121303121309%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e121290121305%_)))
                             (_%E121299121313%_
                              (lambda ()
                                (if (gx#stx-null? _%e121290121305%_)
                                    (if '#t
                                        (reverse _%r121289%_)
                                        (_%E121303121309%_))
                                    (_%E121303121309%_))))
                             (_%E121292121370%_
                              (lambda ()
                                (if (gx#stx-pair? _%e121290121305%_)
                                    (let ((_%e121300121317%_
                                           (gx#syntax-e _%e121290121305%_)))
                                      (let ((_%hd121301121320%_
                                             (##car _%e121300121317%_))
                                            (_%tl121302121322%_
                                             (##cdr _%e121300121317%_)))
                                        (let* ((_%hd121325%_
                                                _%hd121301121320%_)
                                               (_%rest121327%_
                                                _%tl121302121322%_))
                                          (if '#t
                                              (if (gx#identifier? _%hd121325%_)
                                                  (_%lp121285%_
                                                   _%rest121327%_
                                                   _%ns121288%_
                                                   (cons (cons _%hd121325%_
                                                               (cons (if _%ns121288%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _%hd121325%_
                                  _%ns121288%_
                                  '"#"
                                  _%hd121325%_)
                                 _%hd121325%_)
                             '()))
                 _%r121289%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%e121328121338%_
                                                          _%hd121325%_)
                                                         (_%E121330121342%_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e121328121338%_)))
                                                         (_%E121329121366%_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%e121328121338%_)
                        (let ((_%e121331121346%_
                               (gx#syntax-e _%e121328121338%_)))
                          (let ((_%hd121332121349%_ (##car _%e121331121346%_))
                                (_%tl121333121351%_ (##cdr _%e121331121346%_)))
                            (let ((_%id121354%_ _%hd121332121349%_))
                              (if (gx#stx-pair? _%tl121333121351%_)
                                  (let ((_%e121334121356%_
                                         (gx#syntax-e _%tl121333121351%_)))
                                    (let ((_%hd121335121359%_
                                           (##car _%e121334121356%_))
                                          (_%tl121336121361%_
                                           (##cdr _%e121334121356%_)))
                                      (let ((_%eid121364%_ _%hd121335121359%_))
                                        (if (gx#stx-null? _%tl121336121361%_)
                                            (if (and (gx#identifier?
                                                      _%id121354%_)
                                                     (gx#identifier?
                                                      _%eid121364%_))
                                                (_%lp121285%_
                                                 _%rest121327%_
                                                 _%ns121288%_
                                                 (cons (cons _%id121354%_
                                                             (cons _%eid121364%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%r121289%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E121330121342%_))
                                            (_%E121330121342%_)))))
                                  (_%E121330121342%_)))))
                        (_%E121330121342%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E121329121366%_)))
                                              (_%E121299121313%_)))))
                                    (_%E121299121313%_))))
                             (_%E121291121402%_
                              (lambda ()
                                (if (gx#stx-pair? _%e121290121305%_)
                                    (let ((_%e121293121374%_
                                           (gx#syntax-e _%e121290121305%_)))
                                      (let ((_%hd121294121377%_
                                             (##car _%e121293121374%_))
                                            (_%tl121295121379%_
                                             (##cdr _%e121293121374%_)))
                                        (if (eq? (gx#stx-e _%hd121294121377%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl121295121379%_)
                                                (let ((_%e121296121382%_
                                                       (gx#syntax-e
                                                        _%tl121295121379%_)))
                                                  (let ((_%hd121297121385%_
                                                         (##car _%e121296121382%_))
                                                        (_%tl121298121387%_
                                                         (##cdr _%e121296121382%_)))
                                                    (let* ((_%ns121390%_
                                                            _%hd121297121385%_)
                                                           (_%rest121392%_
                                                            _%tl121298121387%_))
                                                      (if '#t
                                                          (let ((_%ns121400%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _%ns121390%_)
                             (symbol->string (gx#stx-e _%ns121390%_))
                             (if (or (gx#stx-string? _%ns121390%_)
                                     (gx#stx-false? _%ns121390%_))
                                 (gx#stx-e _%ns121390%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _%stx121251%_
                                  _%ns121390%_)))))
                    (_%lp121285%_ _%rest121392%_ _%ns121400%_ _%r121289%_))
                  (_%E121292121370%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E121292121370%_))
                                            (_%E121292121370%_))))
                                    (_%E121292121370%_)))))
                        (_%E121291121402%_))))))
          (let* ((_%e121254121261%_ _%stx121251%_)
                 (_%E121256121265%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e121254121261%_)))
                 (_%E121255121279%_
                  (lambda ()
                    (if (gx#stx-pair? _%e121254121261%_)
                        (let ((_%e121257121269%_
                               (gx#syntax-e _%e121254121261%_)))
                          (let ((_%hd121258121272%_ (##car _%e121257121269%_))
                                (_%tl121259121274%_ (##cdr _%e121257121269%_)))
                            (let ((_%body121277%_ _%tl121259121274%_))
                              (if (gx#stx-list? _%body121277%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate121253%_ _%body121277%_))
                                  (_%E121256121265%_)))))
                        (_%E121256121265%_)))))
            (_%E121255121279%_)))))
    (define gx#macro-expand-define-values
      (lambda (_%stx121197%_)
        (let* ((_%e121198121211%_ _%stx121197%_)
               (_%E121200121215%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121198121211%_)))
               (_%E121199121247%_
                (lambda ()
                  (if (gx#stx-pair? _%e121198121211%_)
                      (let ((_%e121201121219%_
                             (gx#syntax-e _%e121198121211%_)))
                        (let ((_%hd121202121222%_ (##car _%e121201121219%_))
                              (_%tl121203121224%_ (##cdr _%e121201121219%_)))
                          (if (gx#stx-pair? _%tl121203121224%_)
                              (let ((_%e121204121227%_
                                     (gx#syntax-e _%tl121203121224%_)))
                                (let ((_%hd121205121230%_
                                       (##car _%e121204121227%_))
                                      (_%tl121206121232%_
                                       (##cdr _%e121204121227%_)))
                                  (let ((_%hd121235%_ _%hd121205121230%_))
                                    (if (gx#stx-pair? _%tl121206121232%_)
                                        (let ((_%e121207121237%_
                                               (gx#syntax-e
                                                _%tl121206121232%_)))
                                          (let ((_%hd121208121240%_
                                                 (##car _%e121207121237%_))
                                                (_%tl121209121242%_
                                                 (##cdr _%e121207121237%_)))
                                            (let ((_%expr121245%_
                                                   _%hd121208121240%_))
                                              (if (gx#stx-null?
                                                   _%tl121209121242%_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _%hd121235%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           identity
                           _%hd121235%_)
                          (cons _%expr121245%_ '())))
              (_%E121200121215%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121200121215%_)))))
                                        (_%E121200121215%_)))))
                              (_%E121200121215%_))))
                      (_%E121200121215%_)))))
          (_%E121199121247%_))))
    (define gx#macro-expand-define-syntax
      (lambda (_%stx121143%_)
        (let* ((_%e121144121157%_ _%stx121143%_)
               (_%E121146121161%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121144121157%_)))
               (_%E121145121193%_
                (lambda ()
                  (if (gx#stx-pair? _%e121144121157%_)
                      (let ((_%e121147121165%_
                             (gx#syntax-e _%e121144121157%_)))
                        (let ((_%hd121148121168%_ (##car _%e121147121165%_))
                              (_%tl121149121170%_ (##cdr _%e121147121165%_)))
                          (if (gx#stx-pair? _%tl121149121170%_)
                              (let ((_%e121150121173%_
                                     (gx#syntax-e _%tl121149121170%_)))
                                (let ((_%hd121151121176%_
                                       (##car _%e121150121173%_))
                                      (_%tl121152121178%_
                                       (##cdr _%e121150121173%_)))
                                  (let ((_%hd121181%_ _%hd121151121176%_))
                                    (if (gx#stx-pair? _%tl121152121178%_)
                                        (let ((_%e121153121183%_
                                               (gx#syntax-e
                                                _%tl121152121178%_)))
                                          (let ((_%hd121154121186%_
                                                 (##car _%e121153121183%_))
                                                (_%tl121155121188%_
                                                 (##cdr _%e121153121183%_)))
                                            (let ((_%expr121191%_
                                                   _%hd121154121186%_))
                                              (if (gx#stx-null?
                                                   _%tl121155121188%_)
                                                  (if (gx#identifier?
                                                       _%hd121181%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _%hd121181%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr121191%_ '())))
              (_%E121146121161%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121146121161%_)))))
                                        (_%E121146121161%_)))))
                              (_%E121146121161%_))))
                      (_%E121146121161%_)))))
          (_%E121145121193%_))))
    (define gx#macro-expand-define-alias
      (lambda (_%stx121089%_)
        (let* ((_%e121090121103%_ _%stx121089%_)
               (_%E121092121107%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121090121103%_)))
               (_%E121091121139%_
                (lambda ()
                  (if (gx#stx-pair? _%e121090121103%_)
                      (let ((_%e121093121111%_
                             (gx#syntax-e _%e121090121103%_)))
                        (let ((_%hd121094121114%_ (##car _%e121093121111%_))
                              (_%tl121095121116%_ (##cdr _%e121093121111%_)))
                          (if (gx#stx-pair? _%tl121095121116%_)
                              (let ((_%e121096121119%_
                                     (gx#syntax-e _%tl121095121116%_)))
                                (let ((_%hd121097121122%_
                                       (##car _%e121096121119%_))
                                      (_%tl121098121124%_
                                       (##cdr _%e121096121119%_)))
                                  (let ((_%id121127%_ _%hd121097121122%_))
                                    (if (gx#stx-pair? _%tl121098121124%_)
                                        (let ((_%e121099121129%_
                                               (gx#syntax-e
                                                _%tl121098121124%_)))
                                          (let ((_%hd121100121132%_
                                                 (##car _%e121099121129%_))
                                                (_%tl121101121134%_
                                                 (##cdr _%e121099121129%_)))
                                            (let ((_%alias-id121137%_
                                                   _%hd121100121132%_))
                                              (if (gx#stx-null?
                                                   _%tl121101121134%_)
                                                  (if (and (gx#identifier?
                                                            _%id121127%_)
                                                           (gx#identifier?
                                                            _%alias-id121137%_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _%id121127%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%alias-id121137%_ '())))
              (_%E121092121107%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121092121107%_)))))
                                        (_%E121092121107%_)))))
                              (_%E121092121107%_))))
                      (_%E121092121107%_)))))
          (_%E121091121139%_))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx121046%_)
        (let* ((_%e121047121057%_ _%stx121046%_)
               (_%E121049121061%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121047121057%_)))
               (_%E121048121085%_
                (lambda ()
                  (if (gx#stx-pair? _%e121047121057%_)
                      (let ((_%e121050121065%_
                             (gx#syntax-e _%e121047121057%_)))
                        (let ((_%hd121051121068%_ (##car _%e121050121065%_))
                              (_%tl121052121070%_ (##cdr _%e121050121065%_)))
                          (if (gx#stx-pair? _%tl121052121070%_)
                              (let ((_%e121053121073%_
                                     (gx#syntax-e _%tl121052121070%_)))
                                (let ((_%hd121054121076%_
                                       (##car _%e121053121073%_))
                                      (_%tl121055121078%_
                                       (##cdr _%e121053121073%_)))
                                  (let* ((_%hd121081%_ _%hd121054121076%_)
                                         (_%body121083%_ _%tl121055121078%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd121081%_)
                                             (gx#stx-list? _%body121083%_)
                                             (not (gx#stx-null?
                                                   _%body121083%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd121081%_)
                                         _%body121083%_)
                                        (_%E121049121061%_)))))
                              (_%E121049121061%_))))
                      (_%E121049121061%_)))))
          (_%E121048121085%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx120982%_)
        (letrec ((_%generate120984%_
                  (lambda (_%clause121014%_)
                    (let* ((_%e121015121022%_ _%clause121014%_)
                           (_%E121017121026%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx120982%_
                               _%clause121014%_)))
                           (_%E121016121042%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121015121022%_)
                                  (let ((_%e121018121030%_
                                         (gx#syntax-e _%e121015121022%_)))
                                    (let ((_%hd121019121033%_
                                           (##car _%e121018121030%_))
                                          (_%tl121020121035%_
                                           (##cdr _%e121018121030%_)))
                                      (let* ((_%hd121038%_ _%hd121019121033%_)
                                             (_%body121040%_
                                              _%tl121020121035%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd121038%_)
                                                 (gx#stx-list? _%body121040%_)
                                                 (not (gx#stx-null?
                                                       _%body121040%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd121038%_)
                                                   _%body121040%_)
                                             (gx#stx-source _%clause121014%_))
                                            (_%E121017121026%_)))))
                                  (_%E121017121026%_)))))
                      (_%E121016121042%_)))))
          (let* ((_%e120985120992%_ _%stx120982%_)
                 (_%E120987120996%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e120985120992%_)))
                 (_%E120986121010%_
                  (lambda ()
                    (if (gx#stx-pair? _%e120985120992%_)
                        (let ((_%e120988121000%_
                               (gx#syntax-e _%e120985120992%_)))
                          (let ((_%hd120989121003%_ (##car _%e120988121000%_))
                                (_%tl120990121005%_ (##cdr _%e120988121000%_)))
                            (let ((_%clauses121008%_ _%tl120990121005%_))
                              (if (gx#stx-list? _%clauses121008%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate120984%_
                                    _%clauses121008%_))
                                  (_%E120987120996%_)))))
                        (_%E120987120996%_)))))
            (_%E120986121010%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx120883%_ _%form120884%_)
        (letrec ((_%generate120886%_
                  (lambda (_%bind120929%_)
                    (let* ((_%e120930120940%_ _%bind120929%_)
                           (_%E120932120944%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx120883%_
                               _%bind120929%_)))
                           (_%E120931120968%_
                            (lambda ()
                              (if (gx#stx-pair? _%e120930120940%_)
                                  (let ((_%e120933120948%_
                                         (gx#syntax-e _%e120930120940%_)))
                                    (let ((_%hd120934120951%_
                                           (##car _%e120933120948%_))
                                          (_%tl120935120953%_
                                           (##cdr _%e120933120948%_)))
                                      (let ((_%ids120956%_ _%hd120934120951%_))
                                        (if (gx#stx-pair? _%tl120935120953%_)
                                            (let ((_%e120936120958%_
                                                   (gx#syntax-e
                                                    _%tl120935120953%_)))
                                              (let ((_%hd120937120961%_
                                                     (##car _%e120936120958%_))
                                                    (_%tl120938120963%_
                                                     (##cdr _%e120936120958%_)))
                                                (let ((_%expr120966%_
                                                       _%hd120937120961%_))
                                                  (if (gx#stx-null?
                                                       _%tl120938120963%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids120956%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids120956%_)
                        (cons _%expr120966%_ '()))
                  (_%E120932120944%_))
              (_%E120932120944%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E120932120944%_)))))
                                  (_%E120932120944%_)))))
                      (_%E120931120968%_)))))
          (let* ((_%e120887120897%_ _%stx120883%_)
                 (_%E120889120901%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e120887120897%_)))
                 (_%E120888120925%_
                  (lambda ()
                    (if (gx#stx-pair? _%e120887120897%_)
                        (let ((_%e120890120905%_
                               (gx#syntax-e _%e120887120897%_)))
                          (let ((_%hd120891120908%_ (##car _%e120890120905%_))
                                (_%tl120892120910%_ (##cdr _%e120890120905%_)))
                            (if (gx#stx-pair? _%tl120892120910%_)
                                (let ((_%e120893120913%_
                                       (gx#syntax-e _%tl120892120910%_)))
                                  (let ((_%hd120894120916%_
                                         (##car _%e120893120913%_))
                                        (_%tl120895120918%_
                                         (##cdr _%e120893120913%_)))
                                    (let* ((_%hd120921%_ _%hd120894120916%_)
                                           (_%body120923%_ _%tl120895120918%_))
                                      (if (and (gx#stx-list? _%hd120921%_)
                                               (gx#stx-list? _%body120923%_)
                                               (not (gx#stx-null?
                                                     _%body120923%_)))
                                          (gx#core-cons*
                                           _%form120884%_
                                           (gx#stx-map1
                                            _%generate120886%_
                                            _%hd120921%_)
                                           _%body120923%_)
                                          (_%E120889120901%_)))))
                                (_%E120889120901%_))))
                        (_%E120889120901%_)))))
            (_%E120888120925%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx120975%_)
        (let ((_%form120977%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx120975%_ _%form120977%_))))
    (define gx#macro-expand-let-values
      (lambda _g123364_
        (let ((_g123363_ (##length _g123364_)))
          (cond ((##fx= _g123363_ 1)
                 (apply gx#macro-expand-let-values__0 _g123364_))
                ((##fx= _g123363_ 2)
                 (apply gx#macro-expand-let-values__% _g123364_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g123364_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx120880%_)
        (gx#macro-expand-let-values__% _%stx120880%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx120878%_)
        (gx#macro-expand-let-values__% _%stx120878%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx120769%_)
        (let* ((_%e120770120796%_ _%stx120769%_)
               (_%E120782120800%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120770120796%_)))
               (_%E120772120842%_
                (lambda ()
                  (if (gx#stx-pair? _%e120770120796%_)
                      (let ((_%e120783120804%_
                             (gx#syntax-e _%e120770120796%_)))
                        (let ((_%hd120784120807%_ (##car _%e120783120804%_))
                              (_%tl120785120809%_ (##cdr _%e120783120804%_)))
                          (if (gx#stx-pair? _%tl120785120809%_)
                              (let ((_%e120786120812%_
                                     (gx#syntax-e _%tl120785120809%_)))
                                (let ((_%hd120787120815%_
                                       (##car _%e120786120812%_))
                                      (_%tl120788120817%_
                                       (##cdr _%e120786120812%_)))
                                  (let ((_%test120820%_ _%hd120787120815%_))
                                    (if (gx#stx-pair? _%tl120788120817%_)
                                        (let ((_%e120789120822%_
                                               (gx#syntax-e
                                                _%tl120788120817%_)))
                                          (let ((_%hd120790120825%_
                                                 (##car _%e120789120822%_))
                                                (_%tl120791120827%_
                                                 (##cdr _%e120789120822%_)))
                                            (let ((_%K120830%_
                                                   _%hd120790120825%_))
                                              (if (gx#stx-pair?
                                                   _%tl120791120827%_)
                                                  (let ((_%e120792120832%_
                                                         (gx#syntax-e
                                                          _%tl120791120827%_)))
                                                    (let ((_%hd120793120835%_
                                                           (##car _%e120792120832%_))
                                                          (_%tl120794120837%_
                                                           (##cdr _%e120792120832%_)))
                                                      (let ((_%E120840%_
                                                             _%hd120793120835%_))
                                                        (if (gx#stx-null?
                                                             _%tl120794120837%_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _%test120820%_
                         _%K120830%_
                         _%E120840%_)
                        (_%E120782120800%_))
                    (_%E120782120800%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120782120800%_)))))
                                        (_%E120782120800%_)))))
                              (_%E120782120800%_))))
                      (_%E120782120800%_))))
               (_%E120771120874%_
                (lambda ()
                  (if (gx#stx-pair? _%e120770120796%_)
                      (let ((_%e120773120846%_
                             (gx#syntax-e _%e120770120796%_)))
                        (let ((_%hd120774120849%_ (##car _%e120773120846%_))
                              (_%tl120775120851%_ (##cdr _%e120773120846%_)))
                          (if (gx#stx-pair? _%tl120775120851%_)
                              (let ((_%e120776120854%_
                                     (gx#syntax-e _%tl120775120851%_)))
                                (let ((_%hd120777120857%_
                                       (##car _%e120776120854%_))
                                      (_%tl120778120859%_
                                       (##cdr _%e120776120854%_)))
                                  (let ((_%test120862%_ _%hd120777120857%_))
                                    (if (gx#stx-pair? _%tl120778120859%_)
                                        (let ((_%e120779120864%_
                                               (gx#syntax-e
                                                _%tl120778120859%_)))
                                          (let ((_%hd120780120867%_
                                                 (##car _%e120779120864%_))
                                                (_%tl120781120869%_
                                                 (##cdr _%e120779120864%_)))
                                            (let ((_%K120872%_
                                                   _%hd120780120867%_))
                                              (if (gx#stx-null?
                                                   _%tl120781120869%_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _%test120862%_
                                                       _%K120872%_
                                                       '#!void)
                                                      (_%E120772120842%_))
                                                  (_%E120772120842%_)))))
                                        (_%E120772120842%_)))))
                              (_%E120772120842%_))))
                      (_%E120772120842%_)))))
          (_%E120771120874%_))))
    (define gx#free-identifier=?
      (lambda (_%xid120754%_ _%yid120755%_)
        (let ((_%xe120757%_ (gx#resolve-identifier__0 _%xid120754%_))
              (_%ye120758%_ (gx#resolve-identifier__0 _%yid120755%_)))
          (if (and _%xe120757%_ _%ye120758%_)
              (let ((_%$e120761%_ (eq? _%xe120757%_ _%ye120758%_)))
                (if _%$e120761%_
                    _%$e120761%_
                    (if (##structure-instance-of? _%xe120757%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye120758%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe120757%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye120758%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe120757%_ _%ye120758%_)
                  '#f
                  (gx#stx-eq? _%xid120754%_ _%yid120755%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid120735%_ _%yid120736%_)
        (letrec ((_%context120738%_
                  (lambda (_%e120752%_)
                    (if (##structure-direct-instance-of?
                         _%e120752%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e120752%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks120739%_
                  (lambda (_%e120747%_)
                    (if (symbol? _%e120747%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e120747%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e120747%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e120747%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap120740%_
                  (lambda (_%e120745%_)
                    (if (symbol? _%e120745%_)
                        _%e120745%_
                        (gx#syntax-local-unwrap _%e120745%_)))))
          (let ((_%x120742%_ (_%unwrap120740%_ _%xid120735%_))
                (_%y120743%_ (_%unwrap120740%_ _%yid120736%_)))
            (if (gx#stx-eq? _%x120742%_ _%y120743%_)
                (if (eq? (_%context120738%_ _%x120742%_)
                         (_%context120738%_ _%y120743%_))
                    (equal? (_%marks120739%_ _%x120742%_)
                            (_%marks120739%_ _%y120743%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx120733%_)
        (if (gx#identifier? _%stx120733%_)
            (gx#core-identifier=? _%stx120733%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx120731%_)
        (if (gx#identifier? _%stx120731%_)
            (gx#core-identifier=? _%stx120731%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx120674%_ _%where120675%_)
        (let _%lp120677%_ ((_%rest120679%_ (gx#syntax->list _%stx120674%_)))
          (let* ((_%rest120680120688%_ _%rest120679%_)
                 (_%else120682120696%_ (lambda () '#t))
                 (_%K120684120709%_
                  (lambda (_%rest120699%_ _%hd120700%_)
                    (if (not (gx#identifier? _%hd120700%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where120675%_
                         _%hd120700%_)
                        (if (__find (lambda (_%g120702120704%_)
                                      (gx#bound-identifier=?
                                       _%g120702120704%_
                                       _%hd120700%_))
                                    _%rest120699%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where120675%_
                             _%hd120700%_)
                            (_%lp120677%_ _%rest120699%_))))))
            (if (##pair? _%rest120680120688%_)
                (let ((_%hd120685120712%_ (##car _%rest120680120688%_))
                      (_%tl120686120714%_ (##cdr _%rest120680120688%_)))
                  (let* ((_%hd120717%_ _%hd120685120712%_)
                         (_%rest120719%_ _%tl120686120714%_))
                    (_%K120684120709%_ _%rest120719%_ _%hd120717%_)))
                (_%else120682120696%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx120724%_)
        (let ((_%where120726%_ _%stx120724%_))
          (gx#check-duplicate-identifiers__% _%stx120724%_ _%where120726%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g123366_
        (let ((_g123365_ (##length _g123366_)))
          (cond ((##fx= _g123365_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g123366_))
                ((##fx= _g123365_ 2)
                 (apply gx#check-duplicate-identifiers__% _g123366_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g123366_))))))
    (define gx#core-bind-values?
      (lambda (_%stx120666%_)
        (gx#stx-andmap
         (lambda (_%x120668%_)
           (let ((_%$e120670%_ (gx#identifier? _%x120668%_)))
             (if _%$e120670%_ _%$e120670%_ (gx#stx-false? _%x120668%_))))
         _%stx120666%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx120630%_ _%rebind?120631%_ _%phi120632%_ _%ctx120633%_)
        (gx#stx-for-each1
         (lambda (_%id120635%_)
           (if (gx#identifier? _%id120635%_)
               (gx#core-bind-runtime!__%
                _%id120635%_
                _%rebind?120631%_
                _%phi120632%_
                _%ctx120633%_)
               '#!void))
         _%stx120630%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx120640%_)
        (let* ((_%rebind?120642%_ '#f)
               (_%phi120644%_ (gx#current-expander-phi))
               (_%ctx120646%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx120640%_
           _%rebind?120642%_
           _%phi120644%_
           _%ctx120646%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx120648%_ _%rebind?120649%_)
        (let* ((_%phi120651%_ (gx#current-expander-phi))
               (_%ctx120653%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx120648%_
           _%rebind?120649%_
           _%phi120651%_
           _%ctx120653%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx120655%_ _%rebind?120656%_ _%phi120657%_)
        (let ((_%ctx120659%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx120655%_
           _%rebind?120656%_
           _%phi120657%_
           _%ctx120659%_))))
    (define gx#core-bind-values!
      (lambda _g123368_
        (let ((_g123367_ (##length _g123368_)))
          (cond ((##fx= _g123367_ 1) (apply gx#core-bind-values!__0 _g123368_))
                ((##fx= _g123367_ 2) (apply gx#core-bind-values!__1 _g123368_))
                ((##fx= _g123367_ 3) (apply gx#core-bind-values!__2 _g123368_))
                ((##fx= _g123367_ 4) (apply gx#core-bind-values!__% _g123368_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g123368_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx120625%_)
        (gx#stx-map1
         (lambda (_%x120627%_)
           (if (gx#identifier? _%x120627%_)
               (gx#core-quote-syntax__0 _%x120627%_)
               '#f))
         _%stx120625%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx120618%_)
        (if (gx#identifier? _%stx120618%_)
            (let* ((_%bind120620%_ (gx#resolve-identifier__0 _%stx120618%_))
                   (_%$e120622%_ (not _%bind120620%_)))
              (if _%$e120622%_
                  _%$e120622%_
                  (##structure-instance-of?
                   _%bind120620%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id120607%_ _%form120608%_)
        (let ((_%bind120610%_ (gx#resolve-identifier__0 _%id120607%_)))
          (if (##structure-instance-of? _%bind120610%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id120607%_)
              (if (not _%bind120610%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id120607%_)))
                      (gx#core-quote-syntax__0 _%id120607%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form120608%_
                       _%id120607%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form120608%_
                   _%id120607%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id120562%_ _%rebind?120563%_ _%phi120564%_ _%ctx120565%_)
        (let* ((_%key120567%_ (gx#core-identifier-key _%id120562%_))
               (_%eid120569%_
                (gx#make-binding-id__%
                 _%key120567%_
                 '#f
                 _%phi120564%_
                 _%ctx120565%_))
               (_%bind120575%_
                (if (##structure-instance-of?
                     _%ctx120565%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid120569%_
                     _%key120567%_
                     _%phi120564%_
                     _%ctx120565%_)
                    (if (##structure-instance-of?
                         _%ctx120565%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid120569%_
                         _%key120567%_
                         _%phi120564%_)
                        (if (##structure-instance-of?
                             _%ctx120565%_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _%eid120569%_
                             _%key120567%_
                             _%phi120564%_)
                            (##structure
                             gx#runtime-binding::t
                             _%eid120569%_
                             _%key120567%_
                             _%phi120564%_))))))
          (gx#bind-identifier!__%
           _%id120562%_
           _%bind120575%_
           _%rebind?120563%_
           _%phi120564%_
           _%ctx120565%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id120581%_)
        (let* ((_%rebind?120583%_ '#f)
               (_%phi120585%_ (gx#current-expander-phi))
               (_%ctx120587%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id120581%_
           _%rebind?120583%_
           _%phi120585%_
           _%ctx120587%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id120589%_ _%rebind?120590%_)
        (let* ((_%phi120592%_ (gx#current-expander-phi))
               (_%ctx120594%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id120589%_
           _%rebind?120590%_
           _%phi120592%_
           _%ctx120594%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id120596%_ _%rebind?120597%_ _%phi120598%_)
        (let ((_%ctx120600%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id120596%_
           _%rebind?120597%_
           _%phi120598%_
           _%ctx120600%_))))
    (define gx#core-bind-runtime!
      (lambda _g123370_
        (let ((_g123369_ (##length _g123370_)))
          (cond ((##fx= _g123369_ 1)
                 (apply gx#core-bind-runtime!__0 _g123370_))
                ((##fx= _g123369_ 2)
                 (apply gx#core-bind-runtime!__1 _g123370_))
                ((##fx= _g123369_ 3)
                 (apply gx#core-bind-runtime!__2 _g123370_))
                ((##fx= _g123369_ 4)
                 (apply gx#core-bind-runtime!__% _g123370_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g123370_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id120514%_
               _%eid120515%_
               _%rebind?120516%_
               _%phi120517%_
               _%ctx120518%_)
        (let* ((_%key120520%_ (gx#core-identifier-key _%id120514%_))
               (_%bind120525%_
                (if (##structure-instance-of?
                     _%ctx120518%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid120515%_
                     _%key120520%_
                     _%phi120517%_
                     _%ctx120518%_)
                    (if (##structure-instance-of?
                         _%ctx120518%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid120515%_
                         _%key120520%_
                         _%phi120517%_)
                        (##structure
                         gx#runtime-binding::t
                         _%eid120515%_
                         _%key120520%_
                         _%phi120517%_)))))
          (gx#bind-identifier!__%
           _%id120514%_
           _%bind120525%_
           _%rebind?120516%_
           _%phi120517%_
           _%ctx120518%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id120531%_ _%eid120532%_)
        (let* ((_%rebind?120534%_ '#f)
               (_%phi120536%_ (gx#current-expander-phi))
               (_%ctx120538%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id120531%_
           _%eid120532%_
           _%rebind?120534%_
           _%phi120536%_
           _%ctx120538%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id120540%_ _%eid120541%_ _%rebind?120542%_)
        (let* ((_%phi120544%_ (gx#current-expander-phi))
               (_%ctx120546%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id120540%_
           _%eid120541%_
           _%rebind?120542%_
           _%phi120544%_
           _%ctx120546%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id120548%_ _%eid120549%_ _%rebind?120550%_ _%phi120551%_)
        (let ((_%ctx120553%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id120548%_
           _%eid120549%_
           _%rebind?120550%_
           _%phi120551%_
           _%ctx120553%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g123372_
        (let ((_g123371_ (##length _g123372_)))
          (cond ((##fx= _g123371_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g123372_))
                ((##fx= _g123371_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g123372_))
                ((##fx= _g123371_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g123372_))
                ((##fx= _g123371_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g123372_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g123372_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id120474%_
               _%eid120475%_
               _%rebind?120476%_
               _%phi120477%_
               _%ctx120478%_)
        (gx#bind-identifier!__%
         _%id120474%_
         (##structure
          gx#extern-binding::t
          _%eid120475%_
          (gx#core-identifier-key _%id120474%_)
          _%phi120477%_)
         _%rebind?120476%_
         _%phi120477%_
         _%ctx120478%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id120483%_ _%eid120484%_)
        (let* ((_%rebind?120486%_ '#f)
               (_%phi120488%_ (gx#current-expander-phi))
               (_%ctx120490%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id120483%_
           _%eid120484%_
           _%rebind?120486%_
           _%phi120488%_
           _%ctx120490%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id120492%_ _%eid120493%_ _%rebind?120494%_)
        (let* ((_%phi120496%_ (gx#current-expander-phi))
               (_%ctx120498%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id120492%_
           _%eid120493%_
           _%rebind?120494%_
           _%phi120496%_
           _%ctx120498%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id120500%_ _%eid120501%_ _%rebind?120502%_ _%phi120503%_)
        (let ((_%ctx120505%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id120500%_
           _%eid120501%_
           _%rebind?120502%_
           _%phi120503%_
           _%ctx120505%_))))
    (define gx#core-bind-extern!
      (lambda _g123374_
        (let ((_g123373_ (##length _g123374_)))
          (cond ((##fx= _g123373_ 2) (apply gx#core-bind-extern!__0 _g123374_))
                ((##fx= _g123373_ 3) (apply gx#core-bind-extern!__1 _g123374_))
                ((##fx= _g123373_ 4) (apply gx#core-bind-extern!__2 _g123374_))
                ((##fx= _g123373_ 5) (apply gx#core-bind-extern!__% _g123374_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g123374_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id120428%_
               _%e120429%_
               _%rebind?120430%_
               _%phi120431%_
               _%ctx120432%_)
        (gx#bind-identifier!__%
         _%id120428%_
         (let ((_%key120437%_ (gx#core-identifier-key _%id120428%_))
               (_%e120438%_
                (if (or (##structure-instance-of? _%e120429%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e120429%_
                         'gx#expander-context::t))
                    _%e120429%_
                    (##structure
                     gx#user-expander::t
                     _%e120429%_
                     _%ctx120432%_
                     _%phi120431%_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__%
             _%key120437%_
             '#t
             _%phi120431%_
             _%ctx120432%_)
            _%key120437%_
            _%phi120431%_
            _%e120438%_))
         _%rebind?120430%_
         _%phi120431%_
         _%ctx120432%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id120443%_ _%e120444%_)
        (let* ((_%rebind?120446%_ '#f)
               (_%phi120448%_ (gx#current-expander-phi))
               (_%ctx120450%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id120443%_
           _%e120444%_
           _%rebind?120446%_
           _%phi120448%_
           _%ctx120450%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id120452%_ _%e120453%_ _%rebind?120454%_)
        (let* ((_%phi120456%_ (gx#current-expander-phi))
               (_%ctx120458%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id120452%_
           _%e120453%_
           _%rebind?120454%_
           _%phi120456%_
           _%ctx120458%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id120460%_ _%e120461%_ _%rebind?120462%_ _%phi120463%_)
        (let ((_%ctx120465%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id120460%_
           _%e120461%_
           _%rebind?120462%_
           _%phi120463%_
           _%ctx120465%_))))
    (define gx#core-bind-syntax!
      (lambda _g123376_
        (let ((_g123375_ (##length _g123376_)))
          (cond ((##fx= _g123375_ 2) (apply gx#core-bind-syntax!__0 _g123376_))
                ((##fx= _g123375_ 3) (apply gx#core-bind-syntax!__1 _g123376_))
                ((##fx= _g123375_ 4) (apply gx#core-bind-syntax!__2 _g123376_))
                ((##fx= _g123375_ 5) (apply gx#core-bind-syntax!__% _g123376_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g123376_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id120411%_ _%e120412%_ _%rebind?120413%_)
        (gx#core-bind-syntax!__%
         _%id120411%_
         _%e120412%_
         _%rebind?120413%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id120418%_ _%e120419%_)
        (let ((_%rebind?120421%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id120418%_
           _%e120419%_
           _%rebind?120421%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g123378_
        (let ((_g123377_ (##length _g123378_)))
          (cond ((##fx= _g123377_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g123378_))
                ((##fx= _g123377_ 3)
                 (apply gx#core-bind-root-syntax!__% _g123378_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g123378_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id120369%_
               _%alias-id120370%_
               _%rebind?120371%_
               _%phi120372%_
               _%ctx120373%_)
        (gx#bind-identifier!__%
         _%id120369%_
         (let ((_%key120375%_ (gx#core-identifier-key _%id120369%_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__%
             _%key120375%_
             '#t
             _%phi120372%_
             _%ctx120373%_)
            _%key120375%_
            _%phi120372%_
            _%alias-id120370%_))
         _%rebind?120371%_
         _%phi120372%_
         _%ctx120373%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id120380%_ _%alias-id120381%_)
        (let* ((_%rebind?120383%_ '#f)
               (_%phi120385%_ (gx#current-expander-phi))
               (_%ctx120387%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id120380%_
           _%alias-id120381%_
           _%rebind?120383%_
           _%phi120385%_
           _%ctx120387%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id120389%_ _%alias-id120390%_ _%rebind?120391%_)
        (let* ((_%phi120393%_ (gx#current-expander-phi))
               (_%ctx120395%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id120389%_
           _%alias-id120390%_
           _%rebind?120391%_
           _%phi120393%_
           _%ctx120395%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id120397%_ _%alias-id120398%_ _%rebind?120399%_ _%phi120400%_)
        (let ((_%ctx120402%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id120397%_
           _%alias-id120398%_
           _%rebind?120399%_
           _%phi120400%_
           _%ctx120402%_))))
    (define gx#core-bind-alias!
      (lambda _g123380_
        (let ((_g123379_ (##length _g123380_)))
          (cond ((##fx= _g123379_ 2) (apply gx#core-bind-alias!__0 _g123380_))
                ((##fx= _g123379_ 3) (apply gx#core-bind-alias!__1 _g123380_))
                ((##fx= _g123379_ 4) (apply gx#core-bind-alias!__2 _g123380_))
                ((##fx= _g123379_ 5) (apply gx#core-bind-alias!__% _g123380_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g123380_))))))
    (define gx#make-binding-id__%
      (lambda (_%key120319%_ _%syntax?120320%_ _%phi120321%_ _%ctx120322%_)
        (if (uninterned-symbol? _%key120319%_)
            (##gensym 'L)
            (if (pair? _%key120319%_)
                (gensym (car _%key120319%_))
                (if (##structure-instance-of? _%ctx120322%_ 'gx#top-context::t)
                    (let ((_%ns120327%_
                           (gx#core-context-namespace__% _%ctx120322%_)))
                      (if (and (fxzero? _%phi120321%_) (not _%syntax?120320%_))
                          (if _%ns120327%_
                              (make-symbol__1 _%ns120327%_ '"#" _%key120319%_)
                              _%key120319%_)
                          (if _%syntax?120320%_
                              (make-symbol__1
                               (let ((_%$e120331%_ _%ns120327%_))
                                 (if _%$e120331%_ _%$e120331%_ '""))
                               '"[:"
                               (number->string _%phi120321%_)
                               '":]#"
                               _%key120319%_)
                              (make-symbol__1
                               (let ((_%$e120335%_ _%ns120327%_))
                                 (if _%$e120335%_ _%$e120335%_ '""))
                               '"["
                               (number->string _%phi120321%_)
                               '"]#"
                               _%key120319%_))))
                    (gensym _%key120319%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key120342%_)
        (let* ((_%syntax?120344%_ '#f)
               (_%phi120346%_ (gx#current-expander-phi))
               (_%ctx120348%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key120342%_
           _%syntax?120344%_
           _%phi120346%_
           _%ctx120348%_))))
    (define gx#make-binding-id__1
      (lambda (_%key120350%_ _%syntax?120351%_)
        (let* ((_%phi120353%_ (gx#current-expander-phi))
               (_%ctx120355%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key120350%_
           _%syntax?120351%_
           _%phi120353%_
           _%ctx120355%_))))
    (define gx#make-binding-id__2
      (lambda (_%key120357%_ _%syntax?120358%_ _%phi120359%_)
        (let ((_%ctx120361%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key120357%_
           _%syntax?120358%_
           _%phi120359%_
           _%ctx120361%_))))
    (define gx#make-binding-id
      (lambda _g123382_
        (let ((_g123381_ (##length _g123382_)))
          (cond ((##fx= _g123381_ 1) (apply gx#make-binding-id__0 _g123382_))
                ((##fx= _g123381_ 2) (apply gx#make-binding-id__1 _g123382_))
                ((##fx= _g123381_ 3) (apply gx#make-binding-id__2 _g123382_))
                ((##fx= _g123381_ 4) (apply gx#make-binding-id__% _g123382_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g123382_))))))))
