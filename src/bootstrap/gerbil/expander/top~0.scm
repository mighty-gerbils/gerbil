(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1712836657)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx123329%_)
        (letrec ((_%expand-special123331%_
                  (lambda (_%hd123333%_ _%K123334%_ _%rest123335%_ _%r123336%_)
                    (_%K123334%_
                     _%rest123335%_
                     (cons (gx#core-expand-top _%hd123333%_) _%r123336%_)))))
          (gx#core-expand-block__0 _%stx123329%_ _%expand-special123331%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx123082%_)
        (letrec ((_%expand-special123084%_
                  (lambda (_%hd123204%_ _%K123205%_ _%rest123206%_ _%r123207%_)
                    (let* ((_%K123211%_
                            (lambda (_%e123209%_)
                              (_%K123205%_
                               _%rest123206%_
                               (cons _%e123209%_ _%r123207%_))))
                           (_%e123212123241%_ _%hd123204%_)
                           (_%E123236123245%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e123212123241%_)))
                           (_%E123232123257%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123212123241%_)
                                  (let ((_%e123237123249%_
                                         (gx#syntax-e _%e123212123241%_)))
                                    (let ((_%hd123238123252%_
                                           (##car _%e123237123249%_))
                                          (_%tl123239123254%_
                                           (##cdr _%e123237123249%_)))
                                      (if (and (gx#identifier?
                                                _%hd123238123252%_)
                                               (gx#core-identifier=?
                                                _%hd123238123252%_
                                                '%#define-runtime))
                                          (_%K123211%_
                                           (gx#core-expand-define-runtime%
                                            _%hd123204%_))
                                          (_%E123236123245%_))))
                                  (_%E123236123245%_))))
                           (_%E123228123269%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123212123241%_)
                                  (let ((_%e123233123261%_
                                         (gx#syntax-e _%e123212123241%_)))
                                    (let ((_%hd123234123264%_
                                           (##car _%e123233123261%_))
                                          (_%tl123235123266%_
                                           (##cdr _%e123233123261%_)))
                                      (if (and (gx#identifier?
                                                _%hd123234123264%_)
                                               (gx#core-identifier=?
                                                _%hd123234123264%_
                                                '%#define-alias))
                                          (_%K123211%_
                                           (gx#core-expand-define-alias%
                                            _%hd123204%_))
                                          (_%E123232123257%_))))
                                  (_%E123232123257%_))))
                           (_%E123218123281%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123212123241%_)
                                  (let ((_%e123229123273%_
                                         (gx#syntax-e _%e123212123241%_)))
                                    (let ((_%hd123230123276%_
                                           (##car _%e123229123273%_))
                                          (_%tl123231123278%_
                                           (##cdr _%e123229123273%_)))
                                      (if (and (gx#identifier?
                                                _%hd123230123276%_)
                                               (gx#core-identifier=?
                                                _%hd123230123276%_
                                                '%#define-syntax))
                                          (_%K123211%_
                                           (gx#core-expand-define-syntax%
                                            _%hd123204%_))
                                          (_%E123228123269%_))))
                                  (_%E123228123269%_))))
                           (_%E123214123313%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123212123241%_)
                                  (let ((_%e123219123285%_
                                         (gx#syntax-e _%e123212123241%_)))
                                    (let ((_%hd123220123288%_
                                           (##car _%e123219123285%_))
                                          (_%tl123221123290%_
                                           (##cdr _%e123219123285%_)))
                                      (if (and (gx#identifier?
                                                _%hd123220123288%_)
                                               (gx#core-identifier=?
                                                _%hd123220123288%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl123221123290%_)
                                              (let ((_%e123222123293%_
                                                     (gx#syntax-e
                                                      _%tl123221123290%_)))
                                                (let ((_%hd123223123296%_
                                                       (##car _%e123222123293%_))
                                                      (_%tl123224123298%_
                                                       (##cdr _%e123222123293%_)))
                                                  (let ((_%hd-bind123301%_
                                                         _%hd123223123296%_))
                                                    (if (gx#stx-pair?
                                                         _%tl123224123298%_)
                                                        (let ((_%e123225123303%_
                                                               (gx#syntax-e
                                                                _%tl123224123298%_)))
                                                          (let ((_%hd123226123306%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e123225123303%_))
                        (_%tl123227123308%_ (##cdr _%e123225123303%_)))
                    (let ((_%expr123311%_ _%hd123226123306%_))
                      (if (gx#stx-null? _%tl123227123308%_)
                          (if (gx#core-bind-values? _%hd-bind123301%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind123301%_)
                                (_%K123211%_ _%hd123204%_))
                              (_%E123218123281%_))
                          (_%E123218123281%_)))))
                (_%E123218123281%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123218123281%_))
                                          (_%E123218123281%_))))
                                  (_%E123218123281%_))))
                           (_%E123213123325%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123212123241%_)
                                  (let ((_%e123215123317%_
                                         (gx#syntax-e _%e123212123241%_)))
                                    (let ((_%hd123216123320%_
                                           (##car _%e123215123317%_))
                                          (_%tl123217123322%_
                                           (##cdr _%e123215123317%_)))
                                      (if (and (gx#identifier?
                                                _%hd123216123320%_)
                                               (gx#core-identifier=?
                                                _%hd123216123320%_
                                                '%#begin-syntax))
                                          (_%K123211%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd123204%_))
                                          (_%E123214123313%_))))
                                  (_%E123214123313%_)))))
                      (_%E123213123325%_))))
                 (_%eval-body123085%_
                  (lambda (_%rbody123093%_)
                    (let _%lp123095%_ ((_%rest123097%_ _%rbody123093%_)
                                       (_%body123098%_ '())
                                       (_%ebody123099%_ '()))
                      (let* ((_%rest123100123108%_ _%rest123097%_)
                             (_%else123102123116%_
                              (lambda ()
                                (values _%body123098%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody123099%_)
                                          (gx#stx-source _%stx123082%_))))))
                             (_%K123104123192%_
                              (lambda (_%rest123119%_ _%hd123120%_)
                                (let* ((_%e123121123138%_ _%hd123120%_)
                                       (_%E123133123142%_
                                        (lambda ()
                                          (_%lp123095%_
                                           _%rest123119%_
                                           (cons _%hd123120%_ _%body123098%_)
                                           (cons _%hd123120%_
                                                 _%ebody123099%_))))
                                       (_%E123123123154%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e123121123138%_)
                                              (let ((_%e123134123146%_
                                                     (gx#syntax-e
                                                      _%e123121123138%_)))
                                                (let ((_%hd123135123149%_
                                                       (##car _%e123134123146%_))
                                                      (_%tl123136123151%_
                                                       (##cdr _%e123134123146%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd123135123149%_)
                                                           (gx#core-identifier=?
                                                            _%hd123135123149%_
                                                            '%#begin-syntax))
                                                      (_%lp123095%_
                                                       _%rest123119%_
                                                       (cons _%hd123120%_
                                                             _%body123098%_)
                                                       _%ebody123099%_)
                                                      (_%E123133123142%_))))
                                              (_%E123133123142%_))))
                                       (_%E123122123188%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e123121123138%_)
                                              (let ((_%e123124123158%_
                                                     (gx#syntax-e
                                                      _%e123121123138%_)))
                                                (let ((_%hd123125123161%_
                                                       (##car _%e123124123158%_))
                                                      (_%tl123126123163%_
                                                       (##cdr _%e123124123158%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd123125123161%_)
                                                           (gx#core-identifier=?
                                                            _%hd123125123161%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl123126123163%_)
                                                          (let ((_%e123127123166%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl123126123163%_)))
                    (let ((_%hd123128123169%_ (##car _%e123127123166%_))
                          (_%tl123129123171%_ (##cdr _%e123127123166%_)))
                      (let ((_%hd-bind123174%_ _%hd123128123169%_))
                        (if (gx#stx-pair? _%tl123129123171%_)
                            (let ((_%e123130123176%_
                                   (gx#syntax-e _%tl123129123171%_)))
                              (let ((_%hd123131123179%_
                                     (##car _%e123130123176%_))
                                    (_%tl123132123181%_
                                     (##cdr _%e123130123176%_)))
                                (let ((_%expr123184%_ _%hd123131123179%_))
                                  (if (gx#stx-null? _%tl123132123181%_)
                                      (let ((_%ehd123186%_
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#define-values)
                                                    (cons (gx#core-quote-bind-values
                                                           _%hd-bind123174%_)
                                                          (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%expr123184%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%hd123120%_))))
                                        (_%lp123095%_
                                         _%rest123119%_
                                         (cons _%ehd123186%_ _%body123098%_)
                                         (cons _%ehd123186%_ _%ebody123099%_)))
                                      (_%E123123123154%_)))))
                            (_%E123123123154%_)))))
                  (_%E123123123154%_))
              (_%E123123123154%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123123123154%_)))))
                                  (_%E123122123188%_)))))
                        (if (##pair? _%rest123100123108%_)
                            (let ((_%hd123105123195%_
                                   (##car _%rest123100123108%_))
                                  (_%tl123106123197%_
                                   (##cdr _%rest123100123108%_)))
                              (let* ((_%hd123200%_ _%hd123105123195%_)
                                     (_%rest123202%_ _%tl123106123197%_))
                                (_%K123104123192%_
                                 _%rest123202%_
                                 _%hd123200%_)))
                            (_%else123102123116%_)))))))
          (__call-with-parameters
           (lambda ()
             (let* ((_%rbody123088%_
                     (gx#core-expand-block__1
                      _%stx123082%_
                      _%expand-special123084%_
                      '#f))
                    (_g123352_ (_%eval-body123085%_ _%rbody123088%_)))
               (begin
                 (let ((_g123353_
                        (if (##values? _g123352_)
                            (##vector-length _g123352_)
                            1)))
                   (if (not (##fx= _g123353_ 2))
                       (error "Context expects 2 values" _g123353_)))
                 (let ((_%expanded-body123090%_ (##vector-ref _g123352_ 0))
                       (_%value123091%_ (##vector-ref _g123352_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body123090%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value123091%_ '())))
                    (gx#stx-source _%stx123082%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx123052%_)
        (let* ((_%e123053123060%_ _%stx123052%_)
               (_%E123055123064%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123053123060%_)))
               (_%E123054123078%_
                (lambda ()
                  (if (gx#stx-pair? _%e123053123060%_)
                      (let ((_%e123056123068%_
                             (gx#syntax-e _%e123053123060%_)))
                        (let ((_%hd123057123071%_ (##car _%e123056123068%_))
                              (_%tl123058123073%_ (##cdr _%e123056123068%_)))
                          (let ((_%body123076%_ _%tl123058123073%_))
                            (if (gx#stx-list? _%body123076%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body123076%_)
                                 (gx#stx-source _%stx123052%_))
                                (_%E123055123064%_)))))
                      (_%E123055123064%_)))))
          (_%E123054123078%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx123050%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx123050%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx122996%_)
        (let* ((_%e122997123010%_ _%stx122996%_)
               (_%E122999123014%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122997123010%_)))
               (_%E122998123046%_
                (lambda ()
                  (if (gx#stx-pair? _%e122997123010%_)
                      (let ((_%e123000123018%_
                             (gx#syntax-e _%e122997123010%_)))
                        (let ((_%hd123001123021%_ (##car _%e123000123018%_))
                              (_%tl123002123023%_ (##cdr _%e123000123018%_)))
                          (if (gx#stx-pair? _%tl123002123023%_)
                              (let ((_%e123003123026%_
                                     (gx#syntax-e _%tl123002123023%_)))
                                (let ((_%hd123004123029%_
                                       (##car _%e123003123026%_))
                                      (_%tl123005123031%_
                                       (##cdr _%e123003123026%_)))
                                  (let ((_%ann123034%_ _%hd123004123029%_))
                                    (if (gx#stx-pair? _%tl123005123031%_)
                                        (let ((_%e123006123036%_
                                               (gx#syntax-e
                                                _%tl123005123031%_)))
                                          (let ((_%hd123007123039%_
                                                 (##car _%e123006123036%_))
                                                (_%tl123008123041%_
                                                 (##cdr _%e123006123036%_)))
                                            (let ((_%expr123044%_
                                                   _%hd123007123039%_))
                                              (if (gx#stx-null?
                                                   _%tl123008123041%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann123034%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr123044%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx122996%_))
                                                  (_%E122999123014%_)))))
                                        (_%E122999123014%_)))))
                              (_%E122999123014%_))))
                      (_%E122999123014%_)))))
          (_%E122998123046%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx122720%_ _%body122721%_)
        (letrec ((_%expand-special122723%_
                  (lambda (_%hd122991%_ _%K122992%_ _%rest122993%_ _%r122994%_)
                    (_%K122992%_
                     '()
                     (cons (_%expand-internal122724%_
                            _%hd122991%_
                            _%rest122993%_)
                           _%r122994%_))))
                 (_%expand-internal122724%_
                  (lambda (_%hd122987%_ _%rest122988%_)
                    (__call-with-parameters
                     (lambda ()
                       (_%wrap-internal122726%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd122987%_ _%rest122988%_))
                          (gx#stx-source _%stx122720%_))
                         _%expand-internal-special122725%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj123346
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj123346)
                       __obj123346))))
                 (_%expand-internal-special122725%_
                  (lambda (_%hd122882%_ _%K122883%_ _%rest122884%_ _%r122885%_)
                    (let* ((_%e122886122911%_ _%hd122882%_)
                           (_%E122906122915%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e122886122911%_)))
                           (_%E122902122927%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122886122911%_)
                                  (let ((_%e122907122919%_
                                         (gx#syntax-e _%e122886122911%_)))
                                    (let ((_%hd122908122922%_
                                           (##car _%e122907122919%_))
                                          (_%tl122909122924%_
                                           (##cdr _%e122907122919%_)))
                                      (if (and (gx#identifier?
                                                _%hd122908122922%_)
                                               (gx#core-identifier=?
                                                _%hd122908122922%_
                                                '%#declare))
                                          (_%K122883%_
                                           _%rest122884%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd122882%_)
                                                 _%r122885%_))
                                          (_%E122906122915%_))))
                                  (_%E122906122915%_))))
                           (_%E122898122939%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122886122911%_)
                                  (let ((_%e122903122931%_
                                         (gx#syntax-e _%e122886122911%_)))
                                    (let ((_%hd122904122934%_
                                           (##car _%e122903122931%_))
                                          (_%tl122905122936%_
                                           (##cdr _%e122903122931%_)))
                                      (if (and (gx#identifier?
                                                _%hd122904122934%_)
                                               (gx#core-identifier=?
                                                _%hd122904122934%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd122882%_)
                                            (_%K122883%_
                                             _%rest122884%_
                                             _%r122885%_))
                                          (_%E122902122927%_))))
                                  (_%E122902122927%_))))
                           (_%E122888122951%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122886122911%_)
                                  (let ((_%e122899122943%_
                                         (gx#syntax-e _%e122886122911%_)))
                                    (let ((_%hd122900122946%_
                                           (##car _%e122899122943%_))
                                          (_%tl122901122948%_
                                           (##cdr _%e122899122943%_)))
                                      (if (and (gx#identifier?
                                                _%hd122900122946%_)
                                               (gx#core-identifier=?
                                                _%hd122900122946%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd122882%_)
                                            (_%K122883%_
                                             _%rest122884%_
                                             _%r122885%_))
                                          (_%E122898122939%_))))
                                  (_%E122898122939%_))))
                           (_%E122887122983%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122886122911%_)
                                  (let ((_%e122889122955%_
                                         (gx#syntax-e _%e122886122911%_)))
                                    (let ((_%hd122890122958%_
                                           (##car _%e122889122955%_))
                                          (_%tl122891122960%_
                                           (##cdr _%e122889122955%_)))
                                      (if (and (gx#identifier?
                                                _%hd122890122958%_)
                                               (gx#core-identifier=?
                                                _%hd122890122958%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl122891122960%_)
                                              (let ((_%e122892122963%_
                                                     (gx#syntax-e
                                                      _%tl122891122960%_)))
                                                (let ((_%hd122893122966%_
                                                       (##car _%e122892122963%_))
                                                      (_%tl122894122968%_
                                                       (##cdr _%e122892122963%_)))
                                                  (let ((_%hd-bind122971%_
                                                         _%hd122893122966%_))
                                                    (if (gx#stx-pair?
                                                         _%tl122894122968%_)
                                                        (let ((_%e122895122973%_
                                                               (gx#syntax-e
                                                                _%tl122894122968%_)))
                                                          (let ((_%hd122896122976%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e122895122973%_))
                        (_%tl122897122978%_ (##cdr _%e122895122973%_)))
                    (let ((_%expr122981%_ _%hd122896122976%_))
                      (if (gx#stx-null? _%tl122897122978%_)
                          (if (gx#core-bind-values? _%hd-bind122971%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind122971%_)
                                (_%K122883%_
                                 _%rest122884%_
                                 (cons _%hd122882%_ _%r122885%_)))
                              (_%E122888122951%_))
                          (_%E122888122951%_)))))
                (_%E122888122951%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E122888122951%_))
                                          (_%E122888122951%_))))
                                  (_%E122888122951%_)))))
                      (_%E122887122983%_))))
                 (_%wrap-internal122726%_
                  (lambda (_%rbody122728%_)
                    (let _%lp122730%_ ((_%rest122732%_ _%rbody122728%_)
                                       (_%decls122733%_ '())
                                       (_%bind122734%_ '())
                                       (_%body122735%_ '()))
                      (let* ((_%e122736122743%_ _%rest122732%_)
                             (_%E122738122792%_
                              (lambda ()
                                (let* ((_%body122787%_
                                        (let* ((_%body122746122756%_
                                                _%body122735%_)
                                               (_%else122749122764%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body122735%_)
                                                   (gx#stx-source
                                                    _%stx122720%_)))))
                                          (let ((_%K122754122784%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx122720%_)))
                                                (_%K122751122770%_
                                                 (lambda (_%expr122768%_)
                                                   _%expr122768%_)))
                                            (let ((_%try-match122748122780%_
                                                   (lambda ()
                                                     (if (##pair? _%body122746122756%_)
                                                         (let ((_%tl122753122775%_
                                                                (##cdr _%body122746122756%_))
                                                               (_%hd122752122773%_
                                                                (##car _%body122746122756%_)))
                                                           (if (##null? _%tl122753122775%_)
                                                               (let ((_%expr122778%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd122752122773%_))
                         (_%K122751122770%_ _%expr122778%_))
                       (_%else122749122764%_)))
                 (_%else122749122764%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _%body122746122756%_)
                                                  (_%K122754122784%_)
                                                  (_%try-match122748122780%_))))))
                                       (_%body122789%_
                                        (if (null? _%bind122734%_)
                                            _%body122787%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind122734%_
                                                         (cons _%body122787%_
                                                               '())))
                                             (gx#stx-source _%stx122720%_)))))
                                  (if (null? _%decls122733%_)
                                      _%body122789%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls122733%_
                                                   (cons _%body122789%_ '())))
                                       (gx#stx-source _%stx122720%_))))))
                             (_%E122737122878%_
                              (lambda ()
                                (if (gx#stx-pair? _%e122736122743%_)
                                    (let ((_%e122739122796%_
                                           (gx#syntax-e _%e122736122743%_)))
                                      (let ((_%hd122740122799%_
                                             (##car _%e122739122796%_))
                                            (_%tl122741122801%_
                                             (##cdr _%e122739122796%_)))
                                        (let* ((_%hd122804%_
                                                _%hd122740122799%_)
                                               (_%rest122806%_
                                                _%tl122741122801%_)
                                               (_%e122807122824%_ _%hd122804%_)
                                               (_%E122819122828%_
                                                (lambda ()
                                                  (if (null? _%bind122734%_)
                                                      (_%lp122730%_
                                                       _%rest122806%_
                                                       _%decls122733%_
                                                       _%bind122734%_
                                                       (cons _%hd122804%_
                                                             _%body122735%_))
                                                      (_%lp122730%_
                                                       _%rest122806%_
                                                       _%decls122733%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd122804%_ '()))
                     _%bind122734%_)
               _%body122735%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E122809122842%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e122807122824%_)
                                                      (let ((_%e122820122832%_
                                                             (gx#syntax-e
                                                              _%e122807122824%_)))
                                                        (let ((_%hd122821122835%_
                                                               (##car _%e122820122832%_))
                                                              (_%tl122822122837%_
                                                               (##cdr _%e122820122832%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd122821122835%_)
                           (gx#core-identifier=?
                            _%hd122821122835%_
                            '%#declare))
                      (let ((_%xdecls122840%_ _%tl122822122837%_))
                        (_%lp122730%_
                         _%rest122806%_
                         (gx#stx-foldr cons _%decls122733%_ _%xdecls122840%_)
                         _%bind122734%_
                         _%body122735%_))
                      (_%E122819122828%_))))
              (_%E122819122828%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E122808122874%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e122807122824%_)
                                                      (let ((_%e122810122846%_
                                                             (gx#syntax-e
                                                              _%e122807122824%_)))
                                                        (let ((_%hd122811122849%_
                                                               (##car _%e122810122846%_))
                                                              (_%tl122812122851%_
                                                               (##cdr _%e122810122846%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd122811122849%_)
                           (gx#core-identifier=?
                            _%hd122811122849%_
                            '%#define-values))
                      (if (gx#stx-pair? _%tl122812122851%_)
                          (let ((_%e122813122854%_
                                 (gx#syntax-e _%tl122812122851%_)))
                            (let ((_%hd122814122857%_
                                   (##car _%e122813122854%_))
                                  (_%tl122815122859%_
                                   (##cdr _%e122813122854%_)))
                              (let ((_%hd-bind122862%_ _%hd122814122857%_))
                                (if (gx#stx-pair? _%tl122815122859%_)
                                    (let ((_%e122816122864%_
                                           (gx#syntax-e _%tl122815122859%_)))
                                      (let ((_%hd122817122867%_
                                             (##car _%e122816122864%_))
                                            (_%tl122818122869%_
                                             (##cdr _%e122816122864%_)))
                                        (let ((_%expr122872%_
                                               _%hd122817122867%_))
                                          (if (gx#stx-null? _%tl122818122869%_)
                                              (_%lp122730%_
                                               _%rest122806%_
                                               _%decls122733%_
                                               (cons (cons (gx#core-quote-bind-values
                                                            _%hd-bind122862%_)
                                                           (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%expr122872%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind122734%_)
                                               _%body122735%_)
                                              (_%E122809122842%_)))))
                                    (_%E122809122842%_)))))
                          (_%E122809122842%_))
                      (_%E122809122842%_))))
              (_%E122809122842%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%E122808122874%_))))
                                    (_%E122738122792%_)))))
                        (_%E122737122878%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body122721%_)
            (gx#stx-source _%stx122720%_))
           _%expand-special122723%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx122658%_)
        (let* ((_%e122659122666%_ _%stx122658%_)
               (_%E122661122670%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122659122666%_)))
               (_%E122660122716%_
                (lambda ()
                  (if (gx#stx-pair? _%e122659122666%_)
                      (let ((_%e122662122674%_
                             (gx#syntax-e _%e122659122666%_)))
                        (let ((_%hd122663122677%_ (##car _%e122662122674%_))
                              (_%tl122664122679%_ (##cdr _%e122662122674%_)))
                          (let ((_%body122682%_ _%tl122664122679%_))
                            (if (gx#stx-list? _%body122682%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl122684%_)
                                     (let* ((_%e122685122692%_ _%decl122684%_)
                                            (_%E122687122696%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e122685122692%_)))
                                            (_%E122686122712%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e122685122692%_)
                                                   (let ((_%e122688122700%_
                                                          (gx#syntax-e
                                                           _%e122685122692%_)))
                                                     (let ((_%hd122689122703%_
                                                            (##car _%e122688122700%_))
                                                           (_%tl122690122705%_
                                                            (##cdr _%e122688122700%_)))
                                                       (let* ((_%head122708%_
                                                               _%hd122689122703%_)
                                                              (_%args122710%_
                                                               _%tl122690122705%_))
                                                         (if (gx#stx-list?
                                                              _%args122710%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl122684%_)
                                                             (_%E122687122696%_)))))
                                                   (_%E122687122696%_)))))
                                       (_%E122686122712%_)))
                                   _%body122682%_))
                                 (gx#stx-source _%stx122658%_))
                                (_%E122661122670%_)))))
                      (_%E122661122670%_)))))
          (_%E122660122716%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx122562%_)
        (let* ((_%e122563122570%_ _%stx122562%_)
               (_%E122565122574%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122563122570%_)))
               (_%E122564122654%_
                (lambda ()
                  (if (gx#stx-pair? _%e122563122570%_)
                      (let ((_%e122566122578%_
                             (gx#syntax-e _%e122563122570%_)))
                        (let ((_%hd122567122581%_ (##car _%e122566122578%_))
                              (_%tl122568122583%_ (##cdr _%e122566122578%_)))
                          (let ((_%body122586%_ _%tl122568122583%_))
                            (let _%lp122588%_ ((_%rest122590%_ _%body122586%_)
                                               (_%r122591%_ '()))
                              (let* ((_%e122592122606%_ _%rest122590%_)
                                     (_%E122604122610%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx122562%_)))
                                     (_%E122594122614%_
                                      (lambda ()
                                        (if (gx#stx-null? _%e122592122606%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r122591%_))
                                             (gx#stx-source _%stx122562%_))
                                            (_%E122604122610%_))))
                                     (_%E122593122650%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e122592122606%_)
                                            (let ((_%e122595122618%_
                                                   (gx#syntax-e
                                                    _%e122592122606%_)))
                                              (let ((_%hd122596122621%_
                                                     (##car _%e122595122618%_))
                                                    (_%tl122597122623%_
                                                     (##cdr _%e122595122618%_)))
                                                (if (gx#stx-pair?
                                                     _%hd122596122621%_)
                                                    (let ((_%e122598122626%_
                                                           (gx#syntax-e
                                                            _%hd122596122621%_)))
                                                      (let ((_%hd122599122629%_
                                                             (##car _%e122598122626%_))
                                                            (_%tl122600122631%_
                                                             (##cdr _%e122598122626%_)))
                                                        (let ((_%id122634%_
                                                               _%hd122599122629%_))
                                                          (if (gx#stx-pair?
                                                               _%tl122600122631%_)
                                                              (let ((_%e122601122636%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl122600122631%_)))
                        (let ((_%hd122602122639%_ (##car _%e122601122636%_))
                              (_%tl122603122641%_ (##cdr _%e122601122636%_)))
                          (let ((_%eid122644%_ _%hd122602122639%_))
                            (if (gx#stx-null? _%tl122603122641%_)
                                (let ((_%rest122646%_ _%tl122597122623%_))
                                  (if (and (gx#identifier? _%id122634%_)
                                           (gx#identifier? _%eid122644%_))
                                      (let ((_%eid122648%_
                                             (gx#stx-e _%eid122644%_)))
                                        (gx#core-bind-extern!__0
                                         _%id122634%_
                                         _%eid122648%_)
                                        (_%lp122588%_
                                         _%rest122646%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id122634%_)
                                                     (cons _%eid122648%_ '()))
                                               _%r122591%_)))
                                      (_%E122594122614%_)))
                                (_%E122594122614%_)))))
                      (_%E122594122614%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E122594122614%_))))
                                            (_%E122594122614%_)))))
                                (_%E122593122650%_))))))
                      (_%E122565122574%_)))))
          (_%E122564122654%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx122508%_)
        (let* ((_%e122509122522%_ _%stx122508%_)
               (_%E122511122526%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122509122522%_)))
               (_%E122510122558%_
                (lambda ()
                  (if (gx#stx-pair? _%e122509122522%_)
                      (let ((_%e122512122530%_
                             (gx#syntax-e _%e122509122522%_)))
                        (let ((_%hd122513122533%_ (##car _%e122512122530%_))
                              (_%tl122514122535%_ (##cdr _%e122512122530%_)))
                          (if (gx#stx-pair? _%tl122514122535%_)
                              (let ((_%e122515122538%_
                                     (gx#syntax-e _%tl122514122535%_)))
                                (let ((_%hd122516122541%_
                                       (##car _%e122515122538%_))
                                      (_%tl122517122543%_
                                       (##cdr _%e122515122538%_)))
                                  (let ((_%hd122546%_ _%hd122516122541%_))
                                    (if (gx#stx-pair? _%tl122517122543%_)
                                        (let ((_%e122518122548%_
                                               (gx#syntax-e
                                                _%tl122517122543%_)))
                                          (let ((_%hd122519122551%_
                                                 (##car _%e122518122548%_))
                                                (_%tl122520122553%_
                                                 (##cdr _%e122518122548%_)))
                                            (let ((_%expr122556%_
                                                   _%hd122519122551%_))
                                              (if (gx#stx-null?
                                                   _%tl122520122553%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd122546%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd122546%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd122546%_)
                             (cons (gx#core-expand-expression _%expr122556%_)
                                   '())))
                 (gx#stx-source _%stx122508%_)))
              (_%E122511122526%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E122511122526%_)))))
                                        (_%E122511122526%_)))))
                              (_%E122511122526%_))))
                      (_%E122511122526%_)))))
          (_%E122510122558%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx122452%_)
        (let* ((_%e122453122466%_ _%stx122452%_)
               (_%E122455122470%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122453122466%_)))
               (_%E122454122504%_
                (lambda ()
                  (if (gx#stx-pair? _%e122453122466%_)
                      (let ((_%e122456122474%_
                             (gx#syntax-e _%e122453122466%_)))
                        (let ((_%hd122457122477%_ (##car _%e122456122474%_))
                              (_%tl122458122479%_ (##cdr _%e122456122474%_)))
                          (if (gx#stx-pair? _%tl122458122479%_)
                              (let ((_%e122459122482%_
                                     (gx#syntax-e _%tl122458122479%_)))
                                (let ((_%hd122460122485%_
                                       (##car _%e122459122482%_))
                                      (_%tl122461122487%_
                                       (##cdr _%e122459122482%_)))
                                  (let ((_%id122490%_ _%hd122460122485%_))
                                    (if (gx#stx-pair? _%tl122461122487%_)
                                        (let ((_%e122462122492%_
                                               (gx#syntax-e
                                                _%tl122461122487%_)))
                                          (let ((_%hd122463122495%_
                                                 (##car _%e122462122492%_))
                                                (_%tl122464122497%_
                                                 (##cdr _%e122462122492%_)))
                                            (let ((_%binding-id122500%_
                                                   _%hd122463122495%_))
                                              (if (gx#stx-null?
                                                   _%tl122464122497%_)
                                                  (if (and (gx#identifier?
                                                            _%id122490%_)
                                                           (gx#identifier?
                                                            _%binding-id122500%_))
                                                      (let ((_%eid122502%_
                                                             (gx#stx-e
                                                              _%binding-id122500%_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _%id122490%_
                                                         _%eid122502%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id122490%_)
                             (cons _%eid122502%_ '())))))
              (_%E122455122470%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E122455122470%_)))))
                                        (_%E122455122470%_)))))
                              (_%E122455122470%_))))
                      (_%E122455122470%_)))))
          (_%E122454122504%_))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx122395%_)
        (let* ((_%e122396122409%_ _%stx122395%_)
               (_%E122398122413%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122396122409%_)))
               (_%E122397122448%_
                (lambda ()
                  (if (gx#stx-pair? _%e122396122409%_)
                      (let ((_%e122399122417%_
                             (gx#syntax-e _%e122396122409%_)))
                        (let ((_%hd122400122420%_ (##car _%e122399122417%_))
                              (_%tl122401122422%_ (##cdr _%e122399122417%_)))
                          (if (gx#stx-pair? _%tl122401122422%_)
                              (let ((_%e122402122425%_
                                     (gx#syntax-e _%tl122401122422%_)))
                                (let ((_%hd122403122428%_
                                       (##car _%e122402122425%_))
                                      (_%tl122404122430%_
                                       (##cdr _%e122402122425%_)))
                                  (let ((_%id122433%_ _%hd122403122428%_))
                                    (if (gx#stx-pair? _%tl122404122430%_)
                                        (let ((_%e122405122435%_
                                               (gx#syntax-e
                                                _%tl122404122430%_)))
                                          (let ((_%hd122406122438%_
                                                 (##car _%e122405122435%_))
                                                (_%tl122407122440%_
                                                 (##cdr _%e122405122435%_)))
                                            (let ((_%expr122443%_
                                                   _%hd122406122438%_))
                                              (if (gx#stx-null?
                                                   _%tl122407122440%_)
                                                  (if (gx#identifier?
                                                       _%id122433%_)
                                                      (let ((_g123354_
                                                             (gx#core-expand-expression+1
                                                              _%expr122443%_)))
                                                        (begin
                                                          (let ((_g123355_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g123354_)
                             (##vector-length _g123354_)
                             1)))
                    (if (not (##fx= _g123355_ 2))
                        (error "Context expects 2 values" _g123355_)))
                  (let ((_%e-stx122445%_ (##vector-ref _g123354_ 0))
                        (_%e122446%_ (##vector-ref _g123354_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id122433%_ _%e122446%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id122433%_)
                                   (cons _%e-stx122445%_ '())))
                       (gx#stx-source _%stx122395%_))))))
              (_%E122398122413%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E122398122413%_)))))
                                        (_%E122398122413%_)))))
                              (_%E122398122413%_))))
                      (_%E122398122413%_)))))
          (_%E122397122448%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx122339%_)
        (let* ((_%e122340122353%_ _%stx122339%_)
               (_%E122342122357%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122340122353%_)))
               (_%E122341122391%_
                (lambda ()
                  (if (gx#stx-pair? _%e122340122353%_)
                      (let ((_%e122343122361%_
                             (gx#syntax-e _%e122340122353%_)))
                        (let ((_%hd122344122364%_ (##car _%e122343122361%_))
                              (_%tl122345122366%_ (##cdr _%e122343122361%_)))
                          (if (gx#stx-pair? _%tl122345122366%_)
                              (let ((_%e122346122369%_
                                     (gx#syntax-e _%tl122345122366%_)))
                                (let ((_%hd122347122372%_
                                       (##car _%e122346122369%_))
                                      (_%tl122348122374%_
                                       (##cdr _%e122346122369%_)))
                                  (let ((_%id122377%_ _%hd122347122372%_))
                                    (if (gx#stx-pair? _%tl122348122374%_)
                                        (let ((_%e122349122379%_
                                               (gx#syntax-e
                                                _%tl122348122374%_)))
                                          (let ((_%hd122350122382%_
                                                 (##car _%e122349122379%_))
                                                (_%tl122351122384%_
                                                 (##cdr _%e122349122379%_)))
                                            (let ((_%alias-id122387%_
                                                   _%hd122350122382%_))
                                              (if (gx#stx-null?
                                                   _%tl122351122384%_)
                                                  (if (and (gx#identifier?
                                                            _%id122377%_)
                                                           (gx#identifier?
                                                            _%alias-id122387%_))
                                                      (let ((_%alias-id122389%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id122387%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id122377%_
                                                         _%alias-id122389%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id122377%_)
                             (cons _%alias-id122389%_ '())))))
              (_%E122342122357%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E122342122357%_)))))
                                        (_%E122342122357%_)))))
                              (_%E122342122357%_))))
                      (_%E122342122357%_)))))
          (_%E122341122391%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx122282%_ _%wrap?122283%_)
        (let* ((_%e122284122294%_ _%stx122282%_)
               (_%E122286122298%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122284122294%_)))
               (_%E122285122325%_
                (lambda ()
                  (if (gx#stx-pair? _%e122284122294%_)
                      (let ((_%e122287122302%_
                             (gx#syntax-e _%e122284122294%_)))
                        (let ((_%hd122288122305%_ (##car _%e122287122302%_))
                              (_%tl122289122307%_ (##cdr _%e122287122302%_)))
                          (if (gx#stx-pair? _%tl122289122307%_)
                              (let ((_%e122290122310%_
                                     (gx#syntax-e _%tl122289122307%_)))
                                (let ((_%hd122291122313%_
                                       (##car _%e122290122310%_))
                                      (_%tl122292122315%_
                                       (##cdr _%e122290122310%_)))
                                  (let* ((_%hd122318%_ _%hd122291122313%_)
                                         (_%body122320%_ _%tl122292122315%_))
                                    (if (gx#core-bind-values? _%hd122318%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd122318%_)
                                           (let ((_%body122323%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd122318%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx122282%_
                                                               _%body122320%_)
                                                              '()))))
                                             (if _%wrap?122283%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body122323%_)
                                                  (gx#stx-source
                                                   _%stx122282%_))
                                                 _%body122323%_)))
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
                                           __obj123347))
                                        (_%E122286122298%_)))))
                              (_%E122286122298%_))))
                      (_%E122286122298%_)))))
          (_%E122285122325%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx122332%_)
        (let ((_%wrap?122334%_ '#t))
          (gx#core-expand-lambda%__% _%stx122332%_ _%wrap?122334%_))))
    (define gx#core-expand-lambda%
      (lambda _g123357_
        (let ((_g123356_ (##length _g123357_)))
          (cond ((##fx= _g123356_ 1)
                 (apply gx#core-expand-lambda%__0 _g123357_))
                ((##fx= _g123356_ 2)
                 (apply gx#core-expand-lambda%__% _g123357_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g123357_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx122246%_)
        (let* ((_%e122247122254%_ _%stx122246%_)
               (_%E122249122258%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122247122254%_)))
               (_%E122248122277%_
                (lambda ()
                  (if (gx#stx-pair? _%e122247122254%_)
                      (let ((_%e122250122262%_
                             (gx#syntax-e _%e122247122254%_)))
                        (let ((_%hd122251122265%_ (##car _%e122250122262%_))
                              (_%tl122252122267%_ (##cdr _%e122250122262%_)))
                          (let ((_%clauses122270%_ _%tl122252122267%_))
                            (if (gx#stx-list? _%clauses122270%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause122272%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause122272%_)
                                       (let ((_%$e122274%_
                                              (gx#stx-source
                                               _%clause122272%_)))
                                         (if _%$e122274%_
                                             _%$e122274%_
                                             (gx#stx-source _%stx122246%_))))
                                      '#f))
                                   _%clauses122270%_))
                                 (gx#stx-source _%stx122246%_))
                                (_%E122249122258%_)))))
                      (_%E122249122258%_)))))
          (_%E122248122277%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx122200%_)
        (let* ((_%e122201122211%_ _%stx122200%_)
               (_%E122203122215%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122201122211%_)))
               (_%E122202122242%_
                (lambda ()
                  (if (gx#stx-pair? _%e122201122211%_)
                      (let ((_%e122204122219%_
                             (gx#syntax-e _%e122201122211%_)))
                        (let ((_%hd122205122222%_ (##car _%e122204122219%_))
                              (_%tl122206122224%_ (##cdr _%e122204122219%_)))
                          (if (gx#stx-pair? _%tl122206122224%_)
                              (let ((_%e122207122227%_
                                     (gx#syntax-e _%tl122206122224%_)))
                                (let ((_%hd122208122230%_
                                       (##car _%e122207122227%_))
                                      (_%tl122209122232%_
                                       (##cdr _%e122207122227%_)))
                                  (let* ((_%hd122235%_ _%hd122208122230%_)
                                         (_%body122237%_ _%tl122209122232%_))
                                    (if (gx#core-expand-let-bind? _%hd122235%_)
                                        (let ((_%expressions122239%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd122235%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd122235%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd122235%_
                                                           _%expressions122239%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx122200%_
                         _%body122237%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx122200%_)))
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
                                             __obj123348)))
                                        (_%E122203122215%_)))))
                              (_%E122203122215%_))))
                      (_%E122203122215%_)))))
          (_%E122202122242%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx122145%_ _%form122146%_)
        (let* ((_%e122147122157%_ _%stx122145%_)
               (_%E122149122161%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122147122157%_)))
               (_%E122148122186%_
                (lambda ()
                  (if (gx#stx-pair? _%e122147122157%_)
                      (let ((_%e122150122165%_
                             (gx#syntax-e _%e122147122157%_)))
                        (let ((_%hd122151122168%_ (##car _%e122150122165%_))
                              (_%tl122152122170%_ (##cdr _%e122150122165%_)))
                          (if (gx#stx-pair? _%tl122152122170%_)
                              (let ((_%e122153122173%_
                                     (gx#syntax-e _%tl122152122170%_)))
                                (let ((_%hd122154122176%_
                                       (##car _%e122153122173%_))
                                      (_%tl122155122178%_
                                       (##cdr _%e122153122173%_)))
                                  (let* ((_%hd122181%_ _%hd122154122176%_)
                                         (_%body122183%_ _%tl122155122178%_))
                                    (if (gx#core-expand-let-bind? _%hd122181%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd122181%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form122146%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd122181%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd122181%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx122145%_
                                                               _%body122183%_)
                                                              '())))
                                            (gx#stx-source _%stx122145%_)))
                                         gx#current-expander-context
                                         (let ((__obj123349
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj123349)
                                           __obj123349))
                                        (_%E122149122161%_)))))
                              (_%E122149122161%_))))
                      (_%E122149122161%_)))))
          (_%E122148122186%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx122193%_)
        (let ((_%form122195%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx122193%_ _%form122195%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g123359_
        (let ((_g123358_ (##length _g123359_)))
          (cond ((##fx= _g123358_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g123359_))
                ((##fx= _g123358_ 2)
                 (apply gx#core-expand-letrec-values%__% _g123359_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g123359_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx122142%_)
        (gx#core-expand-letrec-values%__% _%stx122142%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx122099%_)
        (if (gx#stx-list? _%stx122099%_)
            (gx#stx-andmap
             (lambda (_%bind122101%_)
               (let* ((_%e122102122112%_ _%bind122101%_)
                      (_%E122104122116%_ (lambda () '#f))
                      (_%E122103122138%_
                       (lambda ()
                         (if (gx#stx-pair? _%e122102122112%_)
                             (let ((_%e122105122120%_
                                    (gx#syntax-e _%e122102122112%_)))
                               (let ((_%hd122106122123%_
                                      (##car _%e122105122120%_))
                                     (_%tl122107122125%_
                                      (##cdr _%e122105122120%_)))
                                 (let ((_%hd122128%_ _%hd122106122123%_))
                                   (if (gx#stx-pair? _%tl122107122125%_)
                                       (let ((_%e122108122130%_
                                              (gx#syntax-e
                                               _%tl122107122125%_)))
                                         (let ((_%hd122109122133%_
                                                (##car _%e122108122130%_))
                                               (_%tl122110122135%_
                                                (##cdr _%e122108122130%_)))
                                           (if (gx#stx-null?
                                                _%tl122110122135%_)
                                               (gx#core-bind-values?
                                                _%hd122128%_)
                                               (_%E122104122116%_))))
                                       (_%E122104122116%_)))))
                             (_%E122104122116%_)))))
                 (_%E122103122138%_)))
             _%stx122099%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind122058%_)
        (let* ((_%e122059122069%_ _%bind122058%_)
               (_%E122061122073%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122059122069%_)))
               (_%E122060122095%_
                (lambda ()
                  (if (gx#stx-pair? _%e122059122069%_)
                      (let ((_%e122062122077%_
                             (gx#syntax-e _%e122059122069%_)))
                        (let ((_%hd122063122080%_ (##car _%e122062122077%_))
                              (_%tl122064122082%_ (##cdr _%e122062122077%_)))
                          (if (gx#stx-pair? _%tl122064122082%_)
                              (let ((_%e122065122085%_
                                     (gx#syntax-e _%tl122064122082%_)))
                                (let ((_%hd122066122088%_
                                       (##car _%e122065122085%_))
                                      (_%tl122067122090%_
                                       (##cdr _%e122065122085%_)))
                                  (let ((_%expr122093%_ _%hd122066122088%_))
                                    (if (gx#stx-null? _%tl122067122090%_)
                                        (gx#core-expand-expression
                                         _%expr122093%_)
                                        (_%E122061122073%_)))))
                              (_%E122061122073%_))))
                      (_%E122061122073%_)))))
          (_%E122060122095%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind122017%_)
        (let* ((_%e122018122028%_ _%bind122017%_)
               (_%E122020122032%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122018122028%_)))
               (_%E122019122054%_
                (lambda ()
                  (if (gx#stx-pair? _%e122018122028%_)
                      (let ((_%e122021122036%_
                             (gx#syntax-e _%e122018122028%_)))
                        (let ((_%hd122022122039%_ (##car _%e122021122036%_))
                              (_%tl122023122041%_ (##cdr _%e122021122036%_)))
                          (let ((_%hd122044%_ _%hd122022122039%_))
                            (if (gx#stx-pair? _%tl122023122041%_)
                                (let ((_%e122024122046%_
                                       (gx#syntax-e _%tl122023122041%_)))
                                  (let ((_%hd122025122049%_
                                         (##car _%e122024122046%_))
                                        (_%tl122026122051%_
                                         (##cdr _%e122024122046%_)))
                                    (if (gx#stx-null? _%tl122026122051%_)
                                        (gx#core-bind-values!__0 _%hd122044%_)
                                        (_%E122020122032%_))))
                                (_%E122020122032%_)))))
                      (_%E122020122032%_)))))
          (_%E122019122054%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind121975%_ _%expr121976%_)
        (let* ((_%e121977121987%_ _%bind121975%_)
               (_%E121979121991%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121977121987%_)))
               (_%E121978122013%_
                (lambda ()
                  (if (gx#stx-pair? _%e121977121987%_)
                      (let ((_%e121980121995%_
                             (gx#syntax-e _%e121977121987%_)))
                        (let ((_%hd121981121998%_ (##car _%e121980121995%_))
                              (_%tl121982122000%_ (##cdr _%e121980121995%_)))
                          (let ((_%hd122003%_ _%hd121981121998%_))
                            (if (gx#stx-pair? _%tl121982122000%_)
                                (let ((_%e121983122005%_
                                       (gx#syntax-e _%tl121982122000%_)))
                                  (let ((_%hd121984122008%_
                                         (##car _%e121983122005%_))
                                        (_%tl121985122010%_
                                         (##cdr _%e121983122005%_)))
                                    (if (gx#stx-null? _%tl121985122010%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd122003%_)
                                              (cons _%expr121976%_ '()))
                                        (_%E121979121991%_))))
                                (_%E121979121991%_)))))
                      (_%E121979121991%_)))))
          (_%E121978122013%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx121929%_)
        (let* ((_%e121930121940%_ _%stx121929%_)
               (_%E121932121944%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121930121940%_)))
               (_%E121931121971%_
                (lambda ()
                  (if (gx#stx-pair? _%e121930121940%_)
                      (let ((_%e121933121948%_
                             (gx#syntax-e _%e121930121940%_)))
                        (let ((_%hd121934121951%_ (##car _%e121933121948%_))
                              (_%tl121935121953%_ (##cdr _%e121933121948%_)))
                          (if (gx#stx-pair? _%tl121935121953%_)
                              (let ((_%e121936121956%_
                                     (gx#syntax-e _%tl121935121953%_)))
                                (let ((_%hd121937121959%_
                                       (##car _%e121936121956%_))
                                      (_%tl121938121961%_
                                       (##cdr _%e121936121956%_)))
                                  (let* ((_%hd121964%_ _%hd121937121959%_)
                                         (_%body121966%_ _%tl121938121961%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd121964%_)
                                        (let ((_%expanders121968%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd121964%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd121964%_
                                              _%expanders121968%_)
                                             (gx#core-expand-local-block
                                              _%stx121929%_
                                              _%body121966%_))
                                           gx#current-expander-context
                                           (let ((__obj123350
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj123350)
                                             __obj123350)))
                                        (_%E121932121944%_)))))
                              (_%E121932121944%_))))
                      (_%E121932121944%_)))))
          (_%E121931121971%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx121878%_)
        (let* ((_%e121879121889%_ _%stx121878%_)
               (_%E121881121893%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121879121889%_)))
               (_%E121880121925%_
                (lambda ()
                  (if (gx#stx-pair? _%e121879121889%_)
                      (let ((_%e121882121897%_
                             (gx#syntax-e _%e121879121889%_)))
                        (let ((_%hd121883121900%_ (##car _%e121882121897%_))
                              (_%tl121884121902%_ (##cdr _%e121882121897%_)))
                          (if (gx#stx-pair? _%tl121884121902%_)
                              (let ((_%e121885121905%_
                                     (gx#syntax-e _%tl121884121902%_)))
                                (let ((_%hd121886121908%_
                                       (##car _%e121885121905%_))
                                      (_%tl121887121910%_
                                       (##cdr _%e121885121905%_)))
                                  (let* ((_%hd121913%_ _%hd121886121908%_)
                                         (_%body121915%_ _%tl121887121910%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd121913%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd121913%_
                                            (make-list
                                             (gx#stx-length _%hd121913%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g121917121920%_
                                                     _%g121918121922%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g121917121920%_
                                               _%g121918121922%_
                                               '#t))
                                            _%hd121913%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd121913%_))
                                           (gx#core-expand-local-block
                                            _%stx121878%_
                                            _%body121915%_))
                                         gx#current-expander-context
                                         (let ((__obj123351
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj123351)
                                           __obj123351))
                                        (_%E121881121893%_)))))
                              (_%E121881121893%_))))
                      (_%E121881121893%_)))))
          (_%E121880121925%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx121835%_)
        (if (gx#stx-list? _%stx121835%_)
            (gx#stx-andmap
             (lambda (_%bind121837%_)
               (let* ((_%e121838121848%_ _%bind121837%_)
                      (_%E121840121852%_ (lambda () '#f))
                      (_%E121839121874%_
                       (lambda ()
                         (if (gx#stx-pair? _%e121838121848%_)
                             (let ((_%e121841121856%_
                                    (gx#syntax-e _%e121838121848%_)))
                               (let ((_%hd121842121859%_
                                      (##car _%e121841121856%_))
                                     (_%tl121843121861%_
                                      (##cdr _%e121841121856%_)))
                                 (let ((_%hd121864%_ _%hd121842121859%_))
                                   (if (gx#stx-pair? _%tl121843121861%_)
                                       (let ((_%e121844121866%_
                                              (gx#syntax-e
                                               _%tl121843121861%_)))
                                         (let ((_%hd121845121869%_
                                                (##car _%e121844121866%_))
                                               (_%tl121846121871%_
                                                (##cdr _%e121844121866%_)))
                                           (if (gx#stx-null?
                                                _%tl121846121871%_)
                                               (gx#identifier? _%hd121864%_)
                                               (_%E121840121852%_))))
                                       (_%E121840121852%_)))))
                             (_%E121840121852%_)))))
                 (_%E121839121874%_)))
             _%stx121835%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind121791%_)
        (let* ((_%e121792121802%_ _%bind121791%_)
               (_%E121794121806%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121792121802%_)))
               (_%E121793121831%_
                (lambda ()
                  (if (gx#stx-pair? _%e121792121802%_)
                      (let ((_%e121795121810%_
                             (gx#syntax-e _%e121792121802%_)))
                        (let ((_%hd121796121813%_ (##car _%e121795121810%_))
                              (_%tl121797121815%_ (##cdr _%e121795121810%_)))
                          (if (gx#stx-pair? _%tl121797121815%_)
                              (let ((_%e121798121818%_
                                     (gx#syntax-e _%tl121797121815%_)))
                                (let ((_%hd121799121821%_
                                       (##car _%e121798121818%_))
                                      (_%tl121800121823%_
                                       (##cdr _%e121798121818%_)))
                                  (let ((_%expr121826%_ _%hd121799121821%_))
                                    (if (gx#stx-null? _%tl121800121823%_)
                                        (let ((_g123360_
                                               (gx#core-expand-expression+1
                                                _%expr121826%_)))
                                          (begin
                                            (let ((_g123361_
                                                   (if (##values? _g123360_)
                                                       (##vector-length
                                                        _g123360_)
                                                       1)))
                                              (if (not (##fx= _g123361_ 2))
                                                  (error "Context expects 2 values"
                                                         _g123361_)))
                                            (let ((_%_121828%_
                                                   (##vector-ref _g123360_ 0))
                                                  (_%e121829%_
                                                   (##vector-ref _g123360_ 1)))
                                              _%e121829%_)))
                                        (_%E121794121806%_)))))
                              (_%E121794121806%_))))
                      (_%E121794121806%_)))))
          (_%E121793121831%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind121736%_ _%e121737%_ _%rebind?121738%_)
        (let* ((_%e121739121749%_ _%bind121736%_)
               (_%E121741121753%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121739121749%_)))
               (_%E121740121775%_
                (lambda ()
                  (if (gx#stx-pair? _%e121739121749%_)
                      (let ((_%e121742121757%_
                             (gx#syntax-e _%e121739121749%_)))
                        (let ((_%hd121743121760%_ (##car _%e121742121757%_))
                              (_%tl121744121762%_ (##cdr _%e121742121757%_)))
                          (let ((_%id121765%_ _%hd121743121760%_))
                            (if (gx#stx-pair? _%tl121744121762%_)
                                (let ((_%e121745121767%_
                                       (gx#syntax-e _%tl121744121762%_)))
                                  (let ((_%hd121746121770%_
                                         (##car _%e121745121767%_))
                                        (_%tl121747121772%_
                                         (##cdr _%e121745121767%_)))
                                    (if (gx#stx-null? _%tl121747121772%_)
                                        (gx#core-bind-syntax!__1
                                         _%id121765%_
                                         _%e121737%_
                                         _%rebind?121738%_)
                                        (_%E121741121753%_))))
                                (_%E121741121753%_)))))
                      (_%E121741121753%_)))))
          (_%E121740121775%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind121782%_ _%e121783%_)
        (let ((_%rebind?121785%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind121782%_
           _%e121783%_
           _%rebind?121785%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g123363_
        (let ((_g123362_ (##length _g123363_)))
          (cond ((##fx= _g123362_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g123363_))
                ((##fx= _g123362_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g123363_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g123363_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx121694%_)
        (let* ((_%e121695121705%_ _%stx121694%_)
               (_%E121697121709%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121695121705%_)))
               (_%E121696121731%_
                (lambda ()
                  (if (gx#stx-pair? _%e121695121705%_)
                      (let ((_%e121698121713%_
                             (gx#syntax-e _%e121695121705%_)))
                        (let ((_%hd121699121716%_ (##car _%e121698121713%_))
                              (_%tl121700121718%_ (##cdr _%e121698121713%_)))
                          (if (gx#stx-pair? _%tl121700121718%_)
                              (let ((_%e121701121721%_
                                     (gx#syntax-e _%tl121700121718%_)))
                                (let ((_%hd121702121724%_
                                       (##car _%e121701121721%_))
                                      (_%tl121703121726%_
                                       (##cdr _%e121701121721%_)))
                                  (let ((_%expr121729%_ _%hd121702121724%_))
                                    (if (gx#stx-null? _%tl121703121726%_)
                                        (gx#core-expand-expression
                                         _%expr121729%_)
                                        (_%E121697121709%_)))))
                              (_%E121697121709%_))))
                      (_%E121697121709%_)))))
          (_%E121696121731%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx121653%_)
        (let* ((_%e121654121664%_ _%stx121653%_)
               (_%E121656121668%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121654121664%_)))
               (_%E121655121690%_
                (lambda ()
                  (if (gx#stx-pair? _%e121654121664%_)
                      (let ((_%e121657121672%_
                             (gx#syntax-e _%e121654121664%_)))
                        (let ((_%hd121658121675%_ (##car _%e121657121672%_))
                              (_%tl121659121677%_ (##cdr _%e121657121672%_)))
                          (if (gx#stx-pair? _%tl121659121677%_)
                              (let ((_%e121660121680%_
                                     (gx#syntax-e _%tl121659121677%_)))
                                (let ((_%hd121661121683%_
                                       (##car _%e121660121680%_))
                                      (_%tl121662121685%_
                                       (##cdr _%e121660121680%_)))
                                  (let ((_%e121688%_ _%hd121661121683%_))
                                    (if (gx#stx-null? _%tl121662121685%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e121688%_)
                                                     '()))
                                         (gx#stx-source _%stx121653%_))
                                        (_%E121656121668%_)))))
                              (_%E121656121668%_))))
                      (_%E121656121668%_)))))
          (_%E121655121690%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx121612%_)
        (let* ((_%e121613121623%_ _%stx121612%_)
               (_%E121615121627%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121613121623%_)))
               (_%E121614121649%_
                (lambda ()
                  (if (gx#stx-pair? _%e121613121623%_)
                      (let ((_%e121616121631%_
                             (gx#syntax-e _%e121613121623%_)))
                        (let ((_%hd121617121634%_ (##car _%e121616121631%_))
                              (_%tl121618121636%_ (##cdr _%e121616121631%_)))
                          (if (gx#stx-pair? _%tl121618121636%_)
                              (let ((_%e121619121639%_
                                     (gx#syntax-e _%tl121618121636%_)))
                                (let ((_%hd121620121642%_
                                       (##car _%e121619121639%_))
                                      (_%tl121621121644%_
                                       (##cdr _%e121619121639%_)))
                                  (let ((_%e121647%_ _%hd121620121642%_))
                                    (if (gx#stx-null? _%tl121621121644%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e121647%_)
                                                     '()))
                                         (gx#stx-source _%stx121612%_))
                                        (_%E121615121627%_)))))
                              (_%E121615121627%_))))
                      (_%E121615121627%_)))))
          (_%E121614121649%_))))
    (define gx#core-expand-call%
      (lambda (_%stx121569%_)
        (let* ((_%e121570121580%_ _%stx121569%_)
               (_%E121572121584%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121570121580%_)))
               (_%E121571121608%_
                (lambda ()
                  (if (gx#stx-pair? _%e121570121580%_)
                      (let ((_%e121573121588%_
                             (gx#syntax-e _%e121570121580%_)))
                        (let ((_%hd121574121591%_ (##car _%e121573121588%_))
                              (_%tl121575121593%_ (##cdr _%e121573121588%_)))
                          (if (gx#stx-pair? _%tl121575121593%_)
                              (let ((_%e121576121596%_
                                     (gx#syntax-e _%tl121575121593%_)))
                                (let ((_%hd121577121599%_
                                       (##car _%e121576121596%_))
                                      (_%tl121578121601%_
                                       (##cdr _%e121576121596%_)))
                                  (let* ((_%rator121604%_ _%hd121577121599%_)
                                         (_%args121606%_ _%tl121578121601%_))
                                    (if (gx#stx-list? _%args121606%_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _%rator121604%_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _%args121606%_))
                                         (gx#stx-source _%stx121569%_))
                                        (_%E121572121584%_)))))
                              (_%E121572121584%_))))
                      (_%E121572121584%_)))))
          (_%E121571121608%_))))
    (define gx#core-expand-if%
      (lambda (_%stx121502%_)
        (let* ((_%e121503121519%_ _%stx121502%_)
               (_%E121505121523%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121503121519%_)))
               (_%E121504121565%_
                (lambda ()
                  (if (gx#stx-pair? _%e121503121519%_)
                      (let ((_%e121506121527%_
                             (gx#syntax-e _%e121503121519%_)))
                        (let ((_%hd121507121530%_ (##car _%e121506121527%_))
                              (_%tl121508121532%_ (##cdr _%e121506121527%_)))
                          (if (gx#stx-pair? _%tl121508121532%_)
                              (let ((_%e121509121535%_
                                     (gx#syntax-e _%tl121508121532%_)))
                                (let ((_%hd121510121538%_
                                       (##car _%e121509121535%_))
                                      (_%tl121511121540%_
                                       (##cdr _%e121509121535%_)))
                                  (let ((_%test121543%_ _%hd121510121538%_))
                                    (if (gx#stx-pair? _%tl121511121540%_)
                                        (let ((_%e121512121545%_
                                               (gx#syntax-e
                                                _%tl121511121540%_)))
                                          (let ((_%hd121513121548%_
                                                 (##car _%e121512121545%_))
                                                (_%tl121514121550%_
                                                 (##cdr _%e121512121545%_)))
                                            (let ((_%K121553%_
                                                   _%hd121513121548%_))
                                              (if (gx#stx-pair?
                                                   _%tl121514121550%_)
                                                  (let ((_%e121515121555%_
                                                         (gx#syntax-e
                                                          _%tl121514121550%_)))
                                                    (let ((_%hd121516121558%_
                                                           (##car _%e121515121555%_))
                                                          (_%tl121517121560%_
                                                           (##cdr _%e121515121555%_)))
                                                      (let ((_%E121563%_
                                                             _%hd121516121558%_))
                                                        (if (gx#stx-null?
                                                             _%tl121517121560%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test121543%_)
                                 (cons (gx#core-expand-expression _%K121553%_)
                                       (cons (gx#core-expand-expression
                                              _%E121563%_)
                                             '()))))
                     (gx#stx-source _%stx121502%_))
                    (_%E121505121523%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121505121523%_)))))
                                        (_%E121505121523%_)))))
                              (_%E121505121523%_))))
                      (_%E121505121523%_)))))
          (_%E121504121565%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx121461%_)
        (let* ((_%e121462121472%_ _%stx121461%_)
               (_%E121464121476%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121462121472%_)))
               (_%E121463121498%_
                (lambda ()
                  (if (gx#stx-pair? _%e121462121472%_)
                      (let ((_%e121465121480%_
                             (gx#syntax-e _%e121462121472%_)))
                        (let ((_%hd121466121483%_ (##car _%e121465121480%_))
                              (_%tl121467121485%_ (##cdr _%e121465121480%_)))
                          (if (gx#stx-pair? _%tl121467121485%_)
                              (let ((_%e121468121488%_
                                     (gx#syntax-e _%tl121467121485%_)))
                                (let ((_%hd121469121491%_
                                       (##car _%e121468121488%_))
                                      (_%tl121470121493%_
                                       (##cdr _%e121468121488%_)))
                                  (let ((_%id121496%_ _%hd121469121491%_))
                                    (if (gx#stx-null? _%tl121470121493%_)
                                        (if (gx#identifier? _%id121496%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id121496%_
                                                          _%stx121461%_)
                                                         '()))
                                             (gx#stx-source _%stx121461%_))
                                            (_%E121464121476%_))
                                        (_%E121464121476%_)))))
                              (_%E121464121476%_))))
                      (_%E121464121476%_)))))
          (_%E121463121498%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx121407%_)
        (let* ((_%e121408121421%_ _%stx121407%_)
               (_%E121410121425%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121408121421%_)))
               (_%E121409121457%_
                (lambda ()
                  (if (gx#stx-pair? _%e121408121421%_)
                      (let ((_%e121411121429%_
                             (gx#syntax-e _%e121408121421%_)))
                        (let ((_%hd121412121432%_ (##car _%e121411121429%_))
                              (_%tl121413121434%_ (##cdr _%e121411121429%_)))
                          (if (gx#stx-pair? _%tl121413121434%_)
                              (let ((_%e121414121437%_
                                     (gx#syntax-e _%tl121413121434%_)))
                                (let ((_%hd121415121440%_
                                       (##car _%e121414121437%_))
                                      (_%tl121416121442%_
                                       (##cdr _%e121414121437%_)))
                                  (let ((_%id121445%_ _%hd121415121440%_))
                                    (if (gx#stx-pair? _%tl121416121442%_)
                                        (let ((_%e121417121447%_
                                               (gx#syntax-e
                                                _%tl121416121442%_)))
                                          (let ((_%hd121418121450%_
                                                 (##car _%e121417121447%_))
                                                (_%tl121419121452%_
                                                 (##cdr _%e121417121447%_)))
                                            (let ((_%expr121455%_
                                                   _%hd121418121450%_))
                                              (if (gx#stx-null?
                                                   _%tl121419121452%_)
                                                  (if (gx#identifier?
                                                       _%id121445%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id121445%_
                            _%stx121407%_)
                           (cons (gx#core-expand-expression _%expr121455%_)
                                 '())))
               (gx#stx-source _%stx121407%_))
              (_%E121410121425%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121410121425%_)))))
                                        (_%E121410121425%_)))))
                              (_%E121410121425%_))))
                      (_%E121410121425%_)))))
          (_%E121409121457%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx121252%_)
        (letrec ((_%generate121254%_
                  (lambda (_%body121284%_)
                    (let _%lp121286%_ ((_%rest121288%_ _%body121284%_)
                                       (_%ns121289%_
                                        (gx#core-context-namespace__0))
                                       (_%r121290%_ '()))
                      (let* ((_%e121291121306%_ _%rest121288%_)
                             (_%E121304121310%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e121291121306%_)))
                             (_%E121300121314%_
                              (lambda ()
                                (if (gx#stx-null? _%e121291121306%_)
                                    (reverse _%r121290%_)
                                    (_%E121304121310%_))))
                             (_%E121293121371%_
                              (lambda ()
                                (if (gx#stx-pair? _%e121291121306%_)
                                    (let ((_%e121301121318%_
                                           (gx#syntax-e _%e121291121306%_)))
                                      (let ((_%hd121302121321%_
                                             (##car _%e121301121318%_))
                                            (_%tl121303121323%_
                                             (##cdr _%e121301121318%_)))
                                        (let* ((_%hd121326%_
                                                _%hd121302121321%_)
                                               (_%rest121328%_
                                                _%tl121303121323%_))
                                          (if (gx#identifier? _%hd121326%_)
                                              (_%lp121286%_
                                               _%rest121328%_
                                               _%ns121289%_
                                               (cons (cons _%hd121326%_
                                                           (cons (if _%ns121289%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd121326%_
                              _%ns121289%_
                              '"#"
                              _%hd121326%_)
                             _%hd121326%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r121290%_))
                                              (let* ((_%e121329121339%_
                                                      _%hd121326%_)
                                                     (_%E121331121343%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%e121329121339%_)))
                                                     (_%E121330121367%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e121329121339%_)
                                                            (let ((_%e121332121347%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e121329121339%_)))
                      (let ((_%hd121333121350%_ (##car _%e121332121347%_))
                            (_%tl121334121352%_ (##cdr _%e121332121347%_)))
                        (let ((_%id121355%_ _%hd121333121350%_))
                          (if (gx#stx-pair? _%tl121334121352%_)
                              (let ((_%e121335121357%_
                                     (gx#syntax-e _%tl121334121352%_)))
                                (let ((_%hd121336121360%_
                                       (##car _%e121335121357%_))
                                      (_%tl121337121362%_
                                       (##cdr _%e121335121357%_)))
                                  (let ((_%eid121365%_ _%hd121336121360%_))
                                    (if (gx#stx-null? _%tl121337121362%_)
                                        (if (and (gx#identifier? _%id121355%_)
                                                 (gx#identifier?
                                                  _%eid121365%_))
                                            (_%lp121286%_
                                             _%rest121328%_
                                             _%ns121289%_
                                             (cons (cons _%id121355%_
                                                         (cons _%eid121365%_
                                                               '()))
                                                   _%r121290%_))
                                            (_%E121331121343%_))
                                        (_%E121331121343%_)))))
                              (_%E121331121343%_)))))
                    (_%E121331121343%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E121330121367%_))))))
                                    (_%E121300121314%_))))
                             (_%E121292121403%_
                              (lambda ()
                                (if (gx#stx-pair? _%e121291121306%_)
                                    (let ((_%e121294121375%_
                                           (gx#syntax-e _%e121291121306%_)))
                                      (let ((_%hd121295121378%_
                                             (##car _%e121294121375%_))
                                            (_%tl121296121380%_
                                             (##cdr _%e121294121375%_)))
                                        (if (eq? (gx#stx-e _%hd121295121378%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl121296121380%_)
                                                (let ((_%e121297121383%_
                                                       (gx#syntax-e
                                                        _%tl121296121380%_)))
                                                  (let ((_%hd121298121386%_
                                                         (##car _%e121297121383%_))
                                                        (_%tl121299121388%_
                                                         (##cdr _%e121297121383%_)))
                                                    (let* ((_%ns121391%_
                                                            _%hd121298121386%_)
                                                           (_%rest121393%_
                                                            _%tl121299121388%_)
                                                           (_%ns121401%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns121391%_)
                        (symbol->string (gx#stx-e _%ns121391%_))
                        (if (or (gx#stx-string? _%ns121391%_)
                                (gx#stx-false? _%ns121391%_))
                            (gx#stx-e _%ns121391%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx121252%_
                             _%ns121391%_)))))
              (_%lp121286%_ _%rest121393%_ _%ns121401%_ _%r121290%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E121293121371%_))
                                            (_%E121293121371%_))))
                                    (_%E121293121371%_)))))
                        (_%E121292121403%_))))))
          (let* ((_%e121255121262%_ _%stx121252%_)
                 (_%E121257121266%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e121255121262%_)))
                 (_%E121256121280%_
                  (lambda ()
                    (if (gx#stx-pair? _%e121255121262%_)
                        (let ((_%e121258121270%_
                               (gx#syntax-e _%e121255121262%_)))
                          (let ((_%hd121259121273%_ (##car _%e121258121270%_))
                                (_%tl121260121275%_ (##cdr _%e121258121270%_)))
                            (let ((_%body121278%_ _%tl121260121275%_))
                              (if (gx#stx-list? _%body121278%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate121254%_ _%body121278%_))
                                  (_%E121257121266%_)))))
                        (_%E121257121266%_)))))
            (_%E121256121280%_)))))
    (define gx#macro-expand-define-values
      (lambda (_%stx121198%_)
        (let* ((_%e121199121212%_ _%stx121198%_)
               (_%E121201121216%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121199121212%_)))
               (_%E121200121248%_
                (lambda ()
                  (if (gx#stx-pair? _%e121199121212%_)
                      (let ((_%e121202121220%_
                             (gx#syntax-e _%e121199121212%_)))
                        (let ((_%hd121203121223%_ (##car _%e121202121220%_))
                              (_%tl121204121225%_ (##cdr _%e121202121220%_)))
                          (if (gx#stx-pair? _%tl121204121225%_)
                              (let ((_%e121205121228%_
                                     (gx#syntax-e _%tl121204121225%_)))
                                (let ((_%hd121206121231%_
                                       (##car _%e121205121228%_))
                                      (_%tl121207121233%_
                                       (##cdr _%e121205121228%_)))
                                  (let ((_%hd121236%_ _%hd121206121231%_))
                                    (if (gx#stx-pair? _%tl121207121233%_)
                                        (let ((_%e121208121238%_
                                               (gx#syntax-e
                                                _%tl121207121233%_)))
                                          (let ((_%hd121209121241%_
                                                 (##car _%e121208121238%_))
                                                (_%tl121210121243%_
                                                 (##cdr _%e121208121238%_)))
                                            (let ((_%expr121246%_
                                                   _%hd121209121241%_))
                                              (if (gx#stx-null?
                                                   _%tl121210121243%_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _%hd121236%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           identity
                           _%hd121236%_)
                          (cons _%expr121246%_ '())))
              (_%E121201121216%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121201121216%_)))))
                                        (_%E121201121216%_)))))
                              (_%E121201121216%_))))
                      (_%E121201121216%_)))))
          (_%E121200121248%_))))
    (define gx#macro-expand-define-syntax
      (lambda (_%stx121144%_)
        (let* ((_%e121145121158%_ _%stx121144%_)
               (_%E121147121162%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121145121158%_)))
               (_%E121146121194%_
                (lambda ()
                  (if (gx#stx-pair? _%e121145121158%_)
                      (let ((_%e121148121166%_
                             (gx#syntax-e _%e121145121158%_)))
                        (let ((_%hd121149121169%_ (##car _%e121148121166%_))
                              (_%tl121150121171%_ (##cdr _%e121148121166%_)))
                          (if (gx#stx-pair? _%tl121150121171%_)
                              (let ((_%e121151121174%_
                                     (gx#syntax-e _%tl121150121171%_)))
                                (let ((_%hd121152121177%_
                                       (##car _%e121151121174%_))
                                      (_%tl121153121179%_
                                       (##cdr _%e121151121174%_)))
                                  (let ((_%hd121182%_ _%hd121152121177%_))
                                    (if (gx#stx-pair? _%tl121153121179%_)
                                        (let ((_%e121154121184%_
                                               (gx#syntax-e
                                                _%tl121153121179%_)))
                                          (let ((_%hd121155121187%_
                                                 (##car _%e121154121184%_))
                                                (_%tl121156121189%_
                                                 (##cdr _%e121154121184%_)))
                                            (let ((_%expr121192%_
                                                   _%hd121155121187%_))
                                              (if (gx#stx-null?
                                                   _%tl121156121189%_)
                                                  (if (gx#identifier?
                                                       _%hd121182%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _%hd121182%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr121192%_ '())))
              (_%E121147121162%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121147121162%_)))))
                                        (_%E121147121162%_)))))
                              (_%E121147121162%_))))
                      (_%E121147121162%_)))))
          (_%E121146121194%_))))
    (define gx#macro-expand-define-alias
      (lambda (_%stx121090%_)
        (let* ((_%e121091121104%_ _%stx121090%_)
               (_%E121093121108%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121091121104%_)))
               (_%E121092121140%_
                (lambda ()
                  (if (gx#stx-pair? _%e121091121104%_)
                      (let ((_%e121094121112%_
                             (gx#syntax-e _%e121091121104%_)))
                        (let ((_%hd121095121115%_ (##car _%e121094121112%_))
                              (_%tl121096121117%_ (##cdr _%e121094121112%_)))
                          (if (gx#stx-pair? _%tl121096121117%_)
                              (let ((_%e121097121120%_
                                     (gx#syntax-e _%tl121096121117%_)))
                                (let ((_%hd121098121123%_
                                       (##car _%e121097121120%_))
                                      (_%tl121099121125%_
                                       (##cdr _%e121097121120%_)))
                                  (let ((_%id121128%_ _%hd121098121123%_))
                                    (if (gx#stx-pair? _%tl121099121125%_)
                                        (let ((_%e121100121130%_
                                               (gx#syntax-e
                                                _%tl121099121125%_)))
                                          (let ((_%hd121101121133%_
                                                 (##car _%e121100121130%_))
                                                (_%tl121102121135%_
                                                 (##cdr _%e121100121130%_)))
                                            (let ((_%alias-id121138%_
                                                   _%hd121101121133%_))
                                              (if (gx#stx-null?
                                                   _%tl121102121135%_)
                                                  (if (and (gx#identifier?
                                                            _%id121128%_)
                                                           (gx#identifier?
                                                            _%alias-id121138%_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _%id121128%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%alias-id121138%_ '())))
              (_%E121093121108%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121093121108%_)))))
                                        (_%E121093121108%_)))))
                              (_%E121093121108%_))))
                      (_%E121093121108%_)))))
          (_%E121092121140%_))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx121047%_)
        (let* ((_%e121048121058%_ _%stx121047%_)
               (_%E121050121062%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121048121058%_)))
               (_%E121049121086%_
                (lambda ()
                  (if (gx#stx-pair? _%e121048121058%_)
                      (let ((_%e121051121066%_
                             (gx#syntax-e _%e121048121058%_)))
                        (let ((_%hd121052121069%_ (##car _%e121051121066%_))
                              (_%tl121053121071%_ (##cdr _%e121051121066%_)))
                          (if (gx#stx-pair? _%tl121053121071%_)
                              (let ((_%e121054121074%_
                                     (gx#syntax-e _%tl121053121071%_)))
                                (let ((_%hd121055121077%_
                                       (##car _%e121054121074%_))
                                      (_%tl121056121079%_
                                       (##cdr _%e121054121074%_)))
                                  (let* ((_%hd121082%_ _%hd121055121077%_)
                                         (_%body121084%_ _%tl121056121079%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd121082%_)
                                             (gx#stx-list? _%body121084%_)
                                             (not (gx#stx-null?
                                                   _%body121084%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd121082%_)
                                         _%body121084%_)
                                        (_%E121050121062%_)))))
                              (_%E121050121062%_))))
                      (_%E121050121062%_)))))
          (_%E121049121086%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx120983%_)
        (letrec ((_%generate120985%_
                  (lambda (_%clause121015%_)
                    (let* ((_%e121016121023%_ _%clause121015%_)
                           (_%E121018121027%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx120983%_
                               _%clause121015%_)))
                           (_%E121017121043%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121016121023%_)
                                  (let ((_%e121019121031%_
                                         (gx#syntax-e _%e121016121023%_)))
                                    (let ((_%hd121020121034%_
                                           (##car _%e121019121031%_))
                                          (_%tl121021121036%_
                                           (##cdr _%e121019121031%_)))
                                      (let* ((_%hd121039%_ _%hd121020121034%_)
                                             (_%body121041%_
                                              _%tl121021121036%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd121039%_)
                                                 (gx#stx-list? _%body121041%_)
                                                 (not (gx#stx-null?
                                                       _%body121041%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd121039%_)
                                                   _%body121041%_)
                                             (gx#stx-source _%clause121015%_))
                                            (_%E121018121027%_)))))
                                  (_%E121018121027%_)))))
                      (_%E121017121043%_)))))
          (let* ((_%e120986120993%_ _%stx120983%_)
                 (_%E120988120997%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e120986120993%_)))
                 (_%E120987121011%_
                  (lambda ()
                    (if (gx#stx-pair? _%e120986120993%_)
                        (let ((_%e120989121001%_
                               (gx#syntax-e _%e120986120993%_)))
                          (let ((_%hd120990121004%_ (##car _%e120989121001%_))
                                (_%tl120991121006%_ (##cdr _%e120989121001%_)))
                            (let ((_%clauses121009%_ _%tl120991121006%_))
                              (if (gx#stx-list? _%clauses121009%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate120985%_
                                    _%clauses121009%_))
                                  (_%E120988120997%_)))))
                        (_%E120988120997%_)))))
            (_%E120987121011%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx120884%_ _%form120885%_)
        (letrec ((_%generate120887%_
                  (lambda (_%bind120930%_)
                    (let* ((_%e120931120941%_ _%bind120930%_)
                           (_%E120933120945%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx120884%_
                               _%bind120930%_)))
                           (_%E120932120969%_
                            (lambda ()
                              (if (gx#stx-pair? _%e120931120941%_)
                                  (let ((_%e120934120949%_
                                         (gx#syntax-e _%e120931120941%_)))
                                    (let ((_%hd120935120952%_
                                           (##car _%e120934120949%_))
                                          (_%tl120936120954%_
                                           (##cdr _%e120934120949%_)))
                                      (let ((_%ids120957%_ _%hd120935120952%_))
                                        (if (gx#stx-pair? _%tl120936120954%_)
                                            (let ((_%e120937120959%_
                                                   (gx#syntax-e
                                                    _%tl120936120954%_)))
                                              (let ((_%hd120938120962%_
                                                     (##car _%e120937120959%_))
                                                    (_%tl120939120964%_
                                                     (##cdr _%e120937120959%_)))
                                                (let ((_%expr120967%_
                                                       _%hd120938120962%_))
                                                  (if (gx#stx-null?
                                                       _%tl120939120964%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids120957%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids120957%_)
                        (cons _%expr120967%_ '()))
                  (_%E120933120945%_))
              (_%E120933120945%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E120933120945%_)))))
                                  (_%E120933120945%_)))))
                      (_%E120932120969%_)))))
          (let* ((_%e120888120898%_ _%stx120884%_)
                 (_%E120890120902%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e120888120898%_)))
                 (_%E120889120926%_
                  (lambda ()
                    (if (gx#stx-pair? _%e120888120898%_)
                        (let ((_%e120891120906%_
                               (gx#syntax-e _%e120888120898%_)))
                          (let ((_%hd120892120909%_ (##car _%e120891120906%_))
                                (_%tl120893120911%_ (##cdr _%e120891120906%_)))
                            (if (gx#stx-pair? _%tl120893120911%_)
                                (let ((_%e120894120914%_
                                       (gx#syntax-e _%tl120893120911%_)))
                                  (let ((_%hd120895120917%_
                                         (##car _%e120894120914%_))
                                        (_%tl120896120919%_
                                         (##cdr _%e120894120914%_)))
                                    (let* ((_%hd120922%_ _%hd120895120917%_)
                                           (_%body120924%_ _%tl120896120919%_))
                                      (if (and (gx#stx-list? _%hd120922%_)
                                               (gx#stx-list? _%body120924%_)
                                               (not (gx#stx-null?
                                                     _%body120924%_)))
                                          (gx#core-cons*
                                           _%form120885%_
                                           (gx#stx-map1
                                            _%generate120887%_
                                            _%hd120922%_)
                                           _%body120924%_)
                                          (_%E120890120902%_)))))
                                (_%E120890120902%_))))
                        (_%E120890120902%_)))))
            (_%E120889120926%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx120976%_)
        (let ((_%form120978%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx120976%_ _%form120978%_))))
    (define gx#macro-expand-let-values
      (lambda _g123365_
        (let ((_g123364_ (##length _g123365_)))
          (cond ((##fx= _g123364_ 1)
                 (apply gx#macro-expand-let-values__0 _g123365_))
                ((##fx= _g123364_ 2)
                 (apply gx#macro-expand-let-values__% _g123365_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g123365_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx120881%_)
        (gx#macro-expand-let-values__% _%stx120881%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx120879%_)
        (gx#macro-expand-let-values__% _%stx120879%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx120770%_)
        (let* ((_%e120771120797%_ _%stx120770%_)
               (_%E120783120801%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120771120797%_)))
               (_%E120773120843%_
                (lambda ()
                  (if (gx#stx-pair? _%e120771120797%_)
                      (let ((_%e120784120805%_
                             (gx#syntax-e _%e120771120797%_)))
                        (let ((_%hd120785120808%_ (##car _%e120784120805%_))
                              (_%tl120786120810%_ (##cdr _%e120784120805%_)))
                          (if (gx#stx-pair? _%tl120786120810%_)
                              (let ((_%e120787120813%_
                                     (gx#syntax-e _%tl120786120810%_)))
                                (let ((_%hd120788120816%_
                                       (##car _%e120787120813%_))
                                      (_%tl120789120818%_
                                       (##cdr _%e120787120813%_)))
                                  (let ((_%test120821%_ _%hd120788120816%_))
                                    (if (gx#stx-pair? _%tl120789120818%_)
                                        (let ((_%e120790120823%_
                                               (gx#syntax-e
                                                _%tl120789120818%_)))
                                          (let ((_%hd120791120826%_
                                                 (##car _%e120790120823%_))
                                                (_%tl120792120828%_
                                                 (##cdr _%e120790120823%_)))
                                            (let ((_%K120831%_
                                                   _%hd120791120826%_))
                                              (if (gx#stx-pair?
                                                   _%tl120792120828%_)
                                                  (let ((_%e120793120833%_
                                                         (gx#syntax-e
                                                          _%tl120792120828%_)))
                                                    (let ((_%hd120794120836%_
                                                           (##car _%e120793120833%_))
                                                          (_%tl120795120838%_
                                                           (##cdr _%e120793120833%_)))
                                                      (let ((_%E120841%_
                                                             _%hd120794120836%_))
                                                        (if (gx#stx-null?
                                                             _%tl120795120838%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test120821%_
                                                             _%K120831%_
                                                             _%E120841%_)
                                                            (_%E120783120801%_)))))
                                                  (_%E120783120801%_)))))
                                        (_%E120783120801%_)))))
                              (_%E120783120801%_))))
                      (_%E120783120801%_))))
               (_%E120772120875%_
                (lambda ()
                  (if (gx#stx-pair? _%e120771120797%_)
                      (let ((_%e120774120847%_
                             (gx#syntax-e _%e120771120797%_)))
                        (let ((_%hd120775120850%_ (##car _%e120774120847%_))
                              (_%tl120776120852%_ (##cdr _%e120774120847%_)))
                          (if (gx#stx-pair? _%tl120776120852%_)
                              (let ((_%e120777120855%_
                                     (gx#syntax-e _%tl120776120852%_)))
                                (let ((_%hd120778120858%_
                                       (##car _%e120777120855%_))
                                      (_%tl120779120860%_
                                       (##cdr _%e120777120855%_)))
                                  (let ((_%test120863%_ _%hd120778120858%_))
                                    (if (gx#stx-pair? _%tl120779120860%_)
                                        (let ((_%e120780120865%_
                                               (gx#syntax-e
                                                _%tl120779120860%_)))
                                          (let ((_%hd120781120868%_
                                                 (##car _%e120780120865%_))
                                                (_%tl120782120870%_
                                                 (##cdr _%e120780120865%_)))
                                            (let ((_%K120873%_
                                                   _%hd120781120868%_))
                                              (if (gx#stx-null?
                                                   _%tl120782120870%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test120863%_
                                                   _%K120873%_
                                                   '#!void)
                                                  (_%E120773120843%_)))))
                                        (_%E120773120843%_)))))
                              (_%E120773120843%_))))
                      (_%E120773120843%_)))))
          (_%E120772120875%_))))
    (define gx#free-identifier=?
      (lambda (_%xid120755%_ _%yid120756%_)
        (let ((_%xe120758%_ (gx#resolve-identifier__0 _%xid120755%_))
              (_%ye120759%_ (gx#resolve-identifier__0 _%yid120756%_)))
          (if (and _%xe120758%_ _%ye120759%_)
              (let ((_%$e120762%_ (eq? _%xe120758%_ _%ye120759%_)))
                (if _%$e120762%_
                    _%$e120762%_
                    (if (##structure-instance-of? _%xe120758%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye120759%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe120758%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye120759%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe120758%_ _%ye120759%_)
                  '#f
                  (gx#stx-eq? _%xid120755%_ _%yid120756%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid120736%_ _%yid120737%_)
        (letrec ((_%context120739%_
                  (lambda (_%e120753%_)
                    (if (##structure-direct-instance-of?
                         _%e120753%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e120753%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks120740%_
                  (lambda (_%e120748%_)
                    (if (symbol? _%e120748%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e120748%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e120748%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e120748%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap120741%_
                  (lambda (_%e120746%_)
                    (if (symbol? _%e120746%_)
                        _%e120746%_
                        (gx#syntax-local-unwrap _%e120746%_)))))
          (let ((_%x120743%_ (_%unwrap120741%_ _%xid120736%_))
                (_%y120744%_ (_%unwrap120741%_ _%yid120737%_)))
            (if (gx#stx-eq? _%x120743%_ _%y120744%_)
                (if (eq? (_%context120739%_ _%x120743%_)
                         (_%context120739%_ _%y120744%_))
                    (equal? (_%marks120740%_ _%x120743%_)
                            (_%marks120740%_ _%y120744%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx120734%_)
        (if (gx#identifier? _%stx120734%_)
            (gx#core-identifier=? _%stx120734%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx120732%_)
        (if (gx#identifier? _%stx120732%_)
            (gx#core-identifier=? _%stx120732%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx120675%_ _%where120676%_)
        (let _%lp120678%_ ((_%rest120680%_ (gx#syntax->list _%stx120675%_)))
          (let* ((_%rest120681120689%_ _%rest120680%_)
                 (_%else120683120697%_ (lambda () '#t))
                 (_%K120685120710%_
                  (lambda (_%rest120700%_ _%hd120701%_)
                    (if (gx#identifier? _%hd120701%_)
                        (if (__find (lambda (_%g120703120705%_)
                                      (gx#bound-identifier=?
                                       _%g120703120705%_
                                       _%hd120701%_))
                                    _%rest120700%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where120676%_
                             _%hd120701%_)
                            (_%lp120678%_ _%rest120700%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where120676%_
                         _%hd120701%_)))))
            (if (##pair? _%rest120681120689%_)
                (let ((_%hd120686120713%_ (##car _%rest120681120689%_))
                      (_%tl120687120715%_ (##cdr _%rest120681120689%_)))
                  (let* ((_%hd120718%_ _%hd120686120713%_)
                         (_%rest120720%_ _%tl120687120715%_))
                    (_%K120685120710%_ _%rest120720%_ _%hd120718%_)))
                (_%else120683120697%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx120725%_)
        (let ((_%where120727%_ _%stx120725%_))
          (gx#check-duplicate-identifiers__% _%stx120725%_ _%where120727%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g123367_
        (let ((_g123366_ (##length _g123367_)))
          (cond ((##fx= _g123366_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g123367_))
                ((##fx= _g123366_ 2)
                 (apply gx#check-duplicate-identifiers__% _g123367_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g123367_))))))
    (define gx#core-bind-values?
      (lambda (_%stx120667%_)
        (gx#stx-andmap
         (lambda (_%x120669%_)
           (let ((_%$e120671%_ (gx#identifier? _%x120669%_)))
             (if _%$e120671%_ _%$e120671%_ (gx#stx-false? _%x120669%_))))
         _%stx120667%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx120631%_ _%rebind?120632%_ _%phi120633%_ _%ctx120634%_)
        (gx#stx-for-each1
         (lambda (_%id120636%_)
           (if (gx#identifier? _%id120636%_)
               (gx#core-bind-runtime!__%
                _%id120636%_
                _%rebind?120632%_
                _%phi120633%_
                _%ctx120634%_)
               '#!void))
         _%stx120631%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx120641%_)
        (let* ((_%rebind?120643%_ '#f)
               (_%phi120645%_ (gx#current-expander-phi))
               (_%ctx120647%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx120641%_
           _%rebind?120643%_
           _%phi120645%_
           _%ctx120647%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx120649%_ _%rebind?120650%_)
        (let* ((_%phi120652%_ (gx#current-expander-phi))
               (_%ctx120654%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx120649%_
           _%rebind?120650%_
           _%phi120652%_
           _%ctx120654%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx120656%_ _%rebind?120657%_ _%phi120658%_)
        (let ((_%ctx120660%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx120656%_
           _%rebind?120657%_
           _%phi120658%_
           _%ctx120660%_))))
    (define gx#core-bind-values!
      (lambda _g123369_
        (let ((_g123368_ (##length _g123369_)))
          (cond ((##fx= _g123368_ 1) (apply gx#core-bind-values!__0 _g123369_))
                ((##fx= _g123368_ 2) (apply gx#core-bind-values!__1 _g123369_))
                ((##fx= _g123368_ 3) (apply gx#core-bind-values!__2 _g123369_))
                ((##fx= _g123368_ 4) (apply gx#core-bind-values!__% _g123369_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g123369_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx120626%_)
        (gx#stx-map1
         (lambda (_%x120628%_)
           (if (gx#identifier? _%x120628%_)
               (gx#core-quote-syntax__0 _%x120628%_)
               '#f))
         _%stx120626%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx120619%_)
        (if (gx#identifier? _%stx120619%_)
            (let* ((_%bind120621%_ (gx#resolve-identifier__0 _%stx120619%_))
                   (_%$e120623%_ (not _%bind120621%_)))
              (if _%$e120623%_
                  _%$e120623%_
                  (##structure-instance-of?
                   _%bind120621%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id120608%_ _%form120609%_)
        (let ((_%bind120611%_ (gx#resolve-identifier__0 _%id120608%_)))
          (if (##structure-instance-of? _%bind120611%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id120608%_)
              (if (not _%bind120611%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id120608%_)))
                      (gx#core-quote-syntax__0 _%id120608%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form120609%_
                       _%id120608%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form120609%_
                   _%id120608%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id120563%_ _%rebind?120564%_ _%phi120565%_ _%ctx120566%_)
        (let* ((_%key120568%_ (gx#core-identifier-key _%id120563%_))
               (_%eid120570%_
                (gx#make-binding-id__%
                 _%key120568%_
                 '#f
                 _%phi120565%_
                 _%ctx120566%_))
               (_%bind120576%_
                (if (##structure-instance-of?
                     _%ctx120566%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid120570%_
                     _%key120568%_
                     _%phi120565%_
                     _%ctx120566%_)
                    (if (##structure-instance-of?
                         _%ctx120566%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid120570%_
                         _%key120568%_
                         _%phi120565%_)
                        (if (##structure-instance-of?
                             _%ctx120566%_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _%eid120570%_
                             _%key120568%_
                             _%phi120565%_)
                            (##structure
                             gx#runtime-binding::t
                             _%eid120570%_
                             _%key120568%_
                             _%phi120565%_))))))
          (gx#bind-identifier!__%
           _%id120563%_
           _%bind120576%_
           _%rebind?120564%_
           _%phi120565%_
           _%ctx120566%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id120582%_)
        (let* ((_%rebind?120584%_ '#f)
               (_%phi120586%_ (gx#current-expander-phi))
               (_%ctx120588%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id120582%_
           _%rebind?120584%_
           _%phi120586%_
           _%ctx120588%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id120590%_ _%rebind?120591%_)
        (let* ((_%phi120593%_ (gx#current-expander-phi))
               (_%ctx120595%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id120590%_
           _%rebind?120591%_
           _%phi120593%_
           _%ctx120595%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id120597%_ _%rebind?120598%_ _%phi120599%_)
        (let ((_%ctx120601%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id120597%_
           _%rebind?120598%_
           _%phi120599%_
           _%ctx120601%_))))
    (define gx#core-bind-runtime!
      (lambda _g123371_
        (let ((_g123370_ (##length _g123371_)))
          (cond ((##fx= _g123370_ 1)
                 (apply gx#core-bind-runtime!__0 _g123371_))
                ((##fx= _g123370_ 2)
                 (apply gx#core-bind-runtime!__1 _g123371_))
                ((##fx= _g123370_ 3)
                 (apply gx#core-bind-runtime!__2 _g123371_))
                ((##fx= _g123370_ 4)
                 (apply gx#core-bind-runtime!__% _g123371_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g123371_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id120515%_
               _%eid120516%_
               _%rebind?120517%_
               _%phi120518%_
               _%ctx120519%_)
        (let* ((_%key120521%_ (gx#core-identifier-key _%id120515%_))
               (_%bind120526%_
                (if (##structure-instance-of?
                     _%ctx120519%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid120516%_
                     _%key120521%_
                     _%phi120518%_
                     _%ctx120519%_)
                    (if (##structure-instance-of?
                         _%ctx120519%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid120516%_
                         _%key120521%_
                         _%phi120518%_)
                        (##structure
                         gx#runtime-binding::t
                         _%eid120516%_
                         _%key120521%_
                         _%phi120518%_)))))
          (gx#bind-identifier!__%
           _%id120515%_
           _%bind120526%_
           _%rebind?120517%_
           _%phi120518%_
           _%ctx120519%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id120532%_ _%eid120533%_)
        (let* ((_%rebind?120535%_ '#f)
               (_%phi120537%_ (gx#current-expander-phi))
               (_%ctx120539%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id120532%_
           _%eid120533%_
           _%rebind?120535%_
           _%phi120537%_
           _%ctx120539%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id120541%_ _%eid120542%_ _%rebind?120543%_)
        (let* ((_%phi120545%_ (gx#current-expander-phi))
               (_%ctx120547%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id120541%_
           _%eid120542%_
           _%rebind?120543%_
           _%phi120545%_
           _%ctx120547%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id120549%_ _%eid120550%_ _%rebind?120551%_ _%phi120552%_)
        (let ((_%ctx120554%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id120549%_
           _%eid120550%_
           _%rebind?120551%_
           _%phi120552%_
           _%ctx120554%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g123373_
        (let ((_g123372_ (##length _g123373_)))
          (cond ((##fx= _g123372_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g123373_))
                ((##fx= _g123372_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g123373_))
                ((##fx= _g123372_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g123373_))
                ((##fx= _g123372_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g123373_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g123373_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id120475%_
               _%eid120476%_
               _%rebind?120477%_
               _%phi120478%_
               _%ctx120479%_)
        (gx#bind-identifier!__%
         _%id120475%_
         (##structure
          gx#extern-binding::t
          _%eid120476%_
          (gx#core-identifier-key _%id120475%_)
          _%phi120478%_)
         _%rebind?120477%_
         _%phi120478%_
         _%ctx120479%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id120484%_ _%eid120485%_)
        (let* ((_%rebind?120487%_ '#f)
               (_%phi120489%_ (gx#current-expander-phi))
               (_%ctx120491%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id120484%_
           _%eid120485%_
           _%rebind?120487%_
           _%phi120489%_
           _%ctx120491%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id120493%_ _%eid120494%_ _%rebind?120495%_)
        (let* ((_%phi120497%_ (gx#current-expander-phi))
               (_%ctx120499%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id120493%_
           _%eid120494%_
           _%rebind?120495%_
           _%phi120497%_
           _%ctx120499%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id120501%_ _%eid120502%_ _%rebind?120503%_ _%phi120504%_)
        (let ((_%ctx120506%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id120501%_
           _%eid120502%_
           _%rebind?120503%_
           _%phi120504%_
           _%ctx120506%_))))
    (define gx#core-bind-extern!
      (lambda _g123375_
        (let ((_g123374_ (##length _g123375_)))
          (cond ((##fx= _g123374_ 2) (apply gx#core-bind-extern!__0 _g123375_))
                ((##fx= _g123374_ 3) (apply gx#core-bind-extern!__1 _g123375_))
                ((##fx= _g123374_ 4) (apply gx#core-bind-extern!__2 _g123375_))
                ((##fx= _g123374_ 5) (apply gx#core-bind-extern!__% _g123375_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g123375_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id120429%_
               _%e120430%_
               _%rebind?120431%_
               _%phi120432%_
               _%ctx120433%_)
        (gx#bind-identifier!__%
         _%id120429%_
         (let ((_%key120438%_ (gx#core-identifier-key _%id120429%_))
               (_%e120439%_
                (if (or (##structure-instance-of? _%e120430%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e120430%_
                         'gx#expander-context::t))
                    _%e120430%_
                    (##structure
                     gx#user-expander::t
                     _%e120430%_
                     _%ctx120433%_
                     _%phi120432%_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__%
             _%key120438%_
             '#t
             _%phi120432%_
             _%ctx120433%_)
            _%key120438%_
            _%phi120432%_
            _%e120439%_))
         _%rebind?120431%_
         _%phi120432%_
         _%ctx120433%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id120444%_ _%e120445%_)
        (let* ((_%rebind?120447%_ '#f)
               (_%phi120449%_ (gx#current-expander-phi))
               (_%ctx120451%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id120444%_
           _%e120445%_
           _%rebind?120447%_
           _%phi120449%_
           _%ctx120451%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id120453%_ _%e120454%_ _%rebind?120455%_)
        (let* ((_%phi120457%_ (gx#current-expander-phi))
               (_%ctx120459%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id120453%_
           _%e120454%_
           _%rebind?120455%_
           _%phi120457%_
           _%ctx120459%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id120461%_ _%e120462%_ _%rebind?120463%_ _%phi120464%_)
        (let ((_%ctx120466%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id120461%_
           _%e120462%_
           _%rebind?120463%_
           _%phi120464%_
           _%ctx120466%_))))
    (define gx#core-bind-syntax!
      (lambda _g123377_
        (let ((_g123376_ (##length _g123377_)))
          (cond ((##fx= _g123376_ 2) (apply gx#core-bind-syntax!__0 _g123377_))
                ((##fx= _g123376_ 3) (apply gx#core-bind-syntax!__1 _g123377_))
                ((##fx= _g123376_ 4) (apply gx#core-bind-syntax!__2 _g123377_))
                ((##fx= _g123376_ 5) (apply gx#core-bind-syntax!__% _g123377_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g123377_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id120412%_ _%e120413%_ _%rebind?120414%_)
        (gx#core-bind-syntax!__%
         _%id120412%_
         _%e120413%_
         _%rebind?120414%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id120419%_ _%e120420%_)
        (let ((_%rebind?120422%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id120419%_
           _%e120420%_
           _%rebind?120422%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g123379_
        (let ((_g123378_ (##length _g123379_)))
          (cond ((##fx= _g123378_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g123379_))
                ((##fx= _g123378_ 3)
                 (apply gx#core-bind-root-syntax!__% _g123379_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g123379_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id120370%_
               _%alias-id120371%_
               _%rebind?120372%_
               _%phi120373%_
               _%ctx120374%_)
        (gx#bind-identifier!__%
         _%id120370%_
         (let ((_%key120376%_ (gx#core-identifier-key _%id120370%_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__%
             _%key120376%_
             '#t
             _%phi120373%_
             _%ctx120374%_)
            _%key120376%_
            _%phi120373%_
            _%alias-id120371%_))
         _%rebind?120372%_
         _%phi120373%_
         _%ctx120374%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id120381%_ _%alias-id120382%_)
        (let* ((_%rebind?120384%_ '#f)
               (_%phi120386%_ (gx#current-expander-phi))
               (_%ctx120388%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id120381%_
           _%alias-id120382%_
           _%rebind?120384%_
           _%phi120386%_
           _%ctx120388%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id120390%_ _%alias-id120391%_ _%rebind?120392%_)
        (let* ((_%phi120394%_ (gx#current-expander-phi))
               (_%ctx120396%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id120390%_
           _%alias-id120391%_
           _%rebind?120392%_
           _%phi120394%_
           _%ctx120396%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id120398%_ _%alias-id120399%_ _%rebind?120400%_ _%phi120401%_)
        (let ((_%ctx120403%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id120398%_
           _%alias-id120399%_
           _%rebind?120400%_
           _%phi120401%_
           _%ctx120403%_))))
    (define gx#core-bind-alias!
      (lambda _g123381_
        (let ((_g123380_ (##length _g123381_)))
          (cond ((##fx= _g123380_ 2) (apply gx#core-bind-alias!__0 _g123381_))
                ((##fx= _g123380_ 3) (apply gx#core-bind-alias!__1 _g123381_))
                ((##fx= _g123380_ 4) (apply gx#core-bind-alias!__2 _g123381_))
                ((##fx= _g123380_ 5) (apply gx#core-bind-alias!__% _g123381_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g123381_))))))
    (define gx#make-binding-id__%
      (lambda (_%key120320%_ _%syntax?120321%_ _%phi120322%_ _%ctx120323%_)
        (if (uninterned-symbol? _%key120320%_)
            (##gensym 'L)
            (if (pair? _%key120320%_)
                (gensym (##car _%key120320%_))
                (if (##structure-instance-of? _%ctx120323%_ 'gx#top-context::t)
                    (let ((_%ns120328%_
                           (gx#core-context-namespace__% _%ctx120323%_)))
                      (if (and (fxzero? _%phi120322%_) (not _%syntax?120321%_))
                          (if _%ns120328%_
                              (make-symbol__1 _%ns120328%_ '"#" _%key120320%_)
                              _%key120320%_)
                          (if _%syntax?120321%_
                              (make-symbol__1
                               (let ((_%$e120332%_ _%ns120328%_))
                                 (if _%$e120332%_ _%$e120332%_ '""))
                               '"[:"
                               (number->string _%phi120322%_)
                               '":]#"
                               _%key120320%_)
                              (make-symbol__1
                               (let ((_%$e120336%_ _%ns120328%_))
                                 (if _%$e120336%_ _%$e120336%_ '""))
                               '"["
                               (number->string _%phi120322%_)
                               '"]#"
                               _%key120320%_))))
                    (gensym _%key120320%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key120343%_)
        (let* ((_%syntax?120345%_ '#f)
               (_%phi120347%_ (gx#current-expander-phi))
               (_%ctx120349%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key120343%_
           _%syntax?120345%_
           _%phi120347%_
           _%ctx120349%_))))
    (define gx#make-binding-id__1
      (lambda (_%key120351%_ _%syntax?120352%_)
        (let* ((_%phi120354%_ (gx#current-expander-phi))
               (_%ctx120356%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key120351%_
           _%syntax?120352%_
           _%phi120354%_
           _%ctx120356%_))))
    (define gx#make-binding-id__2
      (lambda (_%key120358%_ _%syntax?120359%_ _%phi120360%_)
        (let ((_%ctx120362%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key120358%_
           _%syntax?120359%_
           _%phi120360%_
           _%ctx120362%_))))
    (define gx#make-binding-id
      (lambda _g123383_
        (let ((_g123382_ (##length _g123383_)))
          (cond ((##fx= _g123382_ 1) (apply gx#make-binding-id__0 _g123383_))
                ((##fx= _g123382_ 2) (apply gx#make-binding-id__1 _g123383_))
                ((##fx= _g123382_ 3) (apply gx#make-binding-id__2 _g123383_))
                ((##fx= _g123382_ 4) (apply gx#make-binding-id__% _g123383_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g123383_))))))))
