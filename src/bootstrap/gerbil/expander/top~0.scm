(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1771178564)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx182269%_)
        (letrec ((_%expand-special182271%_
                  (lambda (_%hd182273%_ _%K182274%_ _%rest182275%_ _%r182276%_)
                    (_%K182274%_
                     _%rest182275%_
                     (cons (gx#core-expand-top _%hd182273%_) _%r182276%_)))))
          (gx#core-expand-block__0 _%stx182269%_ _%expand-special182271%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx181963%_)
        (letrec ((_%expand-special181965%_
                  (lambda (_%hd182087%_ _%K182088%_ _%rest182089%_ _%r182090%_)
                    (let* ((_%K182094%_
                            (lambda (_%e182092%_)
                              (_%K182088%_
                               _%rest182089%_
                               (cons _%e182092%_ _%r182090%_))))
                           (_%e182095182137%_ _%hd182087%_)
                           (_%E182132182141%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e182095182137%_)))
                           (_%E182128182153%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182095182137%_)
                                  (let ((_%e182133182145%_
                                         (gx#syntax-e _%e182095182137%_)))
                                    (let ((_%hd182134182148%_
                                           (##car _%e182133182145%_))
                                          (_%tl182135182150%_
                                           (##cdr _%e182133182145%_)))
                                      (if (and (gx#identifier?
                                                _%hd182134182148%_)
                                               (gx#core-identifier=?
                                                _%hd182134182148%_
                                                '%#define-runtime))
                                          (_%K182094%_
                                           (gx#core-expand-define-runtime%
                                            _%hd182087%_))
                                          (_%E182132182141%_))))
                                  (_%E182132182141%_))))
                           (_%E182124182165%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182095182137%_)
                                  (let ((_%e182129182157%_
                                         (gx#syntax-e _%e182095182137%_)))
                                    (let ((_%hd182130182160%_
                                           (##car _%e182129182157%_))
                                          (_%tl182131182162%_
                                           (##cdr _%e182129182157%_)))
                                      (if (and (gx#identifier?
                                                _%hd182130182160%_)
                                               (gx#core-identifier=?
                                                _%hd182130182160%_
                                                '%#define-alias))
                                          (_%K182094%_
                                           (gx#core-expand-define-alias%
                                            _%hd182087%_))
                                          (_%E182128182153%_))))
                                  (_%E182128182153%_))))
                           (_%E182114182177%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182095182137%_)
                                  (let ((_%e182125182169%_
                                         (gx#syntax-e _%e182095182137%_)))
                                    (let ((_%hd182126182172%_
                                           (##car _%e182125182169%_))
                                          (_%tl182127182174%_
                                           (##cdr _%e182125182169%_)))
                                      (if (and (gx#identifier?
                                                _%hd182126182172%_)
                                               (gx#core-identifier=?
                                                _%hd182126182172%_
                                                '%#define-syntax))
                                          (_%K182094%_
                                           (gx#core-expand-define-syntax%
                                            _%hd182087%_))
                                          (_%E182124182165%_))))
                                  (_%E182124182165%_))))
                           (_%E182101182209%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182095182137%_)
                                  (let ((_%e182115182181%_
                                         (gx#syntax-e _%e182095182137%_)))
                                    (let ((_%hd182116182184%_
                                           (##car _%e182115182181%_))
                                          (_%tl182117182186%_
                                           (##cdr _%e182115182181%_)))
                                      (if (and (gx#identifier?
                                                _%hd182116182184%_)
                                               (gx#core-identifier=?
                                                _%hd182116182184%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl182117182186%_)
                                              (let ((_%e182118182189%_
                                                     (gx#syntax-e
                                                      _%tl182117182186%_)))
                                                (let ((_%hd182119182192%_
                                                       (##car _%e182118182189%_))
                                                      (_%tl182120182194%_
                                                       (##cdr _%e182118182189%_)))
                                                  (let ((_%hd-bind182197%_
                                                         _%hd182119182192%_))
                                                    (if (gx#stx-pair?
                                                         _%tl182120182194%_)
                                                        (let ((_%e182121182199%_
                                                               (gx#syntax-e
                                                                _%tl182120182194%_)))
                                                          (let ((_%hd182122182202%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e182121182199%_))
                        (_%tl182123182204%_ (##cdr _%e182121182199%_)))
                    (let ((_%expr182207%_ _%hd182122182202%_))
                      (if (gx#stx-null? _%tl182123182204%_)
                          (if (gx#core-bind-values? _%hd-bind182197%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind182197%_)
                                (_%K182094%_ _%hd182087%_))
                              (_%E182114182177%_))
                          (_%E182114182177%_)))))
                (_%E182114182177%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E182114182177%_))
                                          (_%E182114182177%_))))
                                  (_%E182114182177%_))))
                           (_%E182097182253%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182095182137%_)
                                  (let ((_%e182102182213%_
                                         (gx#syntax-e _%e182095182137%_)))
                                    (let ((_%hd182103182216%_
                                           (##car _%e182102182213%_))
                                          (_%tl182104182218%_
                                           (##cdr _%e182102182213%_)))
                                      (if (and (gx#identifier?
                                                _%hd182103182216%_)
                                               (gx#core-identifier=?
                                                _%hd182103182216%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl182104182218%_)
                                              (let ((_%e182105182221%_
                                                     (gx#syntax-e
                                                      _%tl182104182218%_)))
                                                (let ((_%hd182106182224%_
                                                       (##car _%e182105182221%_))
                                                      (_%tl182107182226%_
                                                       (##cdr _%e182105182221%_)))
                                                  (if (gx#stx-pair?
                                                       _%hd182106182224%_)
                                                      (let ((_%e182111182229%_
                                                             (gx#syntax-e
                                                              _%hd182106182224%_)))
                                                        (let ((_%hd182112182232%_
                                                               (##car _%e182111182229%_))
                                                              (_%tl182113182234%_
                                                               (##cdr _%e182111182229%_)))
                                                          (let ((_%id182237%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd182112182232%_))
                    (if (gx#stx-null? _%tl182113182234%_)
                        (if (gx#stx-pair? _%tl182107182226%_)
                            (let ((_%e182108182239%_
                                   (gx#syntax-e _%tl182107182226%_)))
                              (let ((_%hd182109182242%_
                                     (##car _%e182108182239%_))
                                    (_%tl182110182244%_
                                     (##cdr _%e182108182239%_)))
                                (let* ((_%expr182247%_ _%hd182109182242%_)
                                       (_%props182249%_ _%tl182110182244%_))
                                  (if (gx#identifier? _%id182237%_)
                                      (let ((_%bind182251%_
                                             (gx#core-bind-runtime!__0
                                              _%id182237%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind182251%_
                                         _%props182249%_)
                                        (_%K182094%_ _%hd182087%_))
                                      (_%E182101182209%_)))))
                            (_%E182101182209%_))
                        (_%E182101182209%_)))))
              (_%E182101182209%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E182101182209%_))
                                          (_%E182101182209%_))))
                                  (_%E182101182209%_))))
                           (_%E182096182265%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182095182137%_)
                                  (let ((_%e182098182257%_
                                         (gx#syntax-e _%e182095182137%_)))
                                    (let ((_%hd182099182260%_
                                           (##car _%e182098182257%_))
                                          (_%tl182100182262%_
                                           (##cdr _%e182098182257%_)))
                                      (if (and (gx#identifier?
                                                _%hd182099182260%_)
                                               (gx#core-identifier=?
                                                _%hd182099182260%_
                                                '%#begin-syntax))
                                          (_%K182094%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd182087%_))
                                          (_%E182097182253%_))))
                                  (_%E182097182253%_)))))
                      (_%E182096182265%_))))
                 (_%eval-body181966%_
                  (lambda (_%rbody181974%_)
                    (let _%lp181976%_ ((_%rest181978%_ _%rbody181974%_)
                                       (_%body181979%_ '())
                                       (_%ebody181980%_ '()))
                      (let* ((_%rest181981181989%_ _%rest181978%_)
                             (_%else181983181997%_
                              (lambda ()
                                (values _%body181979%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody181980%_)
                                          (gx#stx-source _%stx181963%_))))))
                             (_%K181985182075%_
                              (lambda (_%rest182000%_ _%hd182001%_)
                                (let* ((_%e182002182019%_ _%hd182001%_)
                                       (_%E182014182023%_
                                        (lambda ()
                                          (_%lp181976%_
                                           _%rest182000%_
                                           (cons _%hd182001%_ _%body181979%_)
                                           (cons _%hd182001%_
                                                 _%ebody181980%_))))
                                       (_%E182004182035%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e182002182019%_)
                                              (let ((_%e182015182027%_
                                                     (gx#syntax-e
                                                      _%e182002182019%_)))
                                                (let ((_%hd182016182030%_
                                                       (##car _%e182015182027%_))
                                                      (_%tl182017182032%_
                                                       (##cdr _%e182015182027%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd182016182030%_)
                                                           (gx#core-identifier=?
                                                            _%hd182016182030%_
                                                            '%#begin-syntax))
                                                      (_%lp181976%_
                                                       _%rest182000%_
                                                       (cons _%hd182001%_
                                                             _%body181979%_)
                                                       _%ebody181980%_)
                                                      (_%E182014182023%_))))
                                              (_%E182014182023%_))))
                                       (_%E182003182071%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e182002182019%_)
                                              (let ((_%e182005182039%_
                                                     (gx#syntax-e
                                                      _%e182002182019%_)))
                                                (let ((_%hd182006182042%_
                                                       (##car _%e182005182039%_))
                                                      (_%tl182007182044%_
                                                       (##cdr _%e182005182039%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd182006182042%_)
                                                           (gx#core-identifier=?
                                                            _%hd182006182042%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl182007182044%_)
                                                          (let ((_%e182008182047%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl182007182044%_)))
                    (let ((_%hd182009182050%_ (##car _%e182008182047%_))
                          (_%tl182010182052%_ (##cdr _%e182008182047%_)))
                      (let ((_%hd-bind182055%_ _%hd182009182050%_))
                        (if (gx#stx-pair? _%tl182010182052%_)
                            (let ((_%e182011182057%_
                                   (gx#syntax-e _%tl182010182052%_)))
                              (let ((_%hd182012182060%_
                                     (##car _%e182011182057%_))
                                    (_%tl182013182062%_
                                     (##cdr _%e182011182057%_)))
                                (let* ((_%expr182065%_ _%hd182012182060%_)
                                       (_%ignore-props182067%_
                                        _%tl182013182062%_)
                                       (_%ehd182069%_
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#define-values)
                                               (cons (gx#core-quote-bind-values
                                                      _%hd-bind182055%_)
                                                     (cons (gx#core-expand-expression
                                                            _%expr182065%_)
                                                           '())))
                                         (gx#stx-source _%hd182001%_))))
                                  (_%lp181976%_
                                   _%rest182000%_
                                   (cons _%ehd182069%_ _%body181979%_)
                                   (cons _%ehd182069%_ _%ebody181980%_)))))
                            (_%E182004182035%_)))))
                  (_%E182004182035%_))
              (_%E182004182035%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E182004182035%_)))))
                                  (_%E182003182071%_)))))
                        (if (pair? _%rest181981181989%_)
                            (let ((_%hd181986182078%_
                                   (##car _%rest181981181989%_))
                                  (_%tl181987182080%_
                                   (##cdr _%rest181981181989%_)))
                              (let* ((_%hd182083%_ _%hd181986182078%_)
                                     (_%rest182085%_ _%tl181987182080%_))
                                (_%K181985182075%_
                                 _%rest182085%_
                                 _%hd182083%_)))
                            (_%else181983181997%_)))))))
          (call-with-parameters__1
           (lambda ()
             (let* ((_%rbody181969%_
                     (gx#core-expand-block__1
                      _%stx181963%_
                      _%expand-special181965%_
                      '#f))
                    (_g182302_ (_%eval-body181966%_ _%rbody181969%_)))
               (begin
                 (let ((_g182303_
                        (if (##values? _g182302_)
                            (##values-length _g182302_)
                            1)))
                   (if (not (##fx= _g182303_ 2))
                       (error "Context expects 2 values" _g182303_)))
                 (let ((_%expanded-body181971%_ (##values-ref _g182302_ 0))
                       (_%value181972%_ (##values-ref _g182302_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body181971%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value181972%_ '())))
                    (gx#stx-source _%stx181963%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx181933%_)
        (let* ((_%e181934181941%_ _%stx181933%_)
               (_%E181936181945%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181934181941%_)))
               (_%E181935181959%_
                (lambda ()
                  (if (gx#stx-pair? _%e181934181941%_)
                      (let ((_%e181937181949%_
                             (gx#syntax-e _%e181934181941%_)))
                        (let ((_%hd181938181952%_ (##car _%e181937181949%_))
                              (_%tl181939181954%_ (##cdr _%e181937181949%_)))
                          (let ((_%body181957%_ _%tl181939181954%_))
                            (if (gx#stx-list? _%body181957%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body181957%_)
                                 (gx#stx-source _%stx181933%_))
                                (_%E181936181945%_)))))
                      (_%E181936181945%_)))))
          (_%E181935181959%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx181931%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx181931%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx181877%_)
        (let* ((_%e181878181891%_ _%stx181877%_)
               (_%E181880181895%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181878181891%_)))
               (_%E181879181927%_
                (lambda ()
                  (if (gx#stx-pair? _%e181878181891%_)
                      (let ((_%e181881181899%_
                             (gx#syntax-e _%e181878181891%_)))
                        (let ((_%hd181882181902%_ (##car _%e181881181899%_))
                              (_%tl181883181904%_ (##cdr _%e181881181899%_)))
                          (if (gx#stx-pair? _%tl181883181904%_)
                              (let ((_%e181884181907%_
                                     (gx#syntax-e _%tl181883181904%_)))
                                (let ((_%hd181885181910%_
                                       (##car _%e181884181907%_))
                                      (_%tl181886181912%_
                                       (##cdr _%e181884181907%_)))
                                  (let ((_%ann181915%_ _%hd181885181910%_))
                                    (if (gx#stx-pair? _%tl181886181912%_)
                                        (let ((_%e181887181917%_
                                               (gx#syntax-e
                                                _%tl181886181912%_)))
                                          (let ((_%hd181888181920%_
                                                 (##car _%e181887181917%_))
                                                (_%tl181889181922%_
                                                 (##cdr _%e181887181917%_)))
                                            (let ((_%expr181925%_
                                                   _%hd181888181920%_))
                                              (if (gx#stx-null?
                                                   _%tl181889181922%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann181915%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr181925%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx181877%_))
                                                  (_%E181880181895%_)))))
                                        (_%E181880181895%_)))))
                              (_%E181880181895%_))))
                      (_%E181880181895%_)))))
          (_%E181879181927%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx181542%_ _%body181543%_)
        (letrec ((_%expand-special181545%_
                  (lambda (_%hd181872%_ _%K181873%_ _%rest181874%_ _%r181875%_)
                    (_%K181873%_
                     '()
                     (cons (_%expand-internal181546%_
                            _%hd181872%_
                            _%rest181874%_)
                           _%r181875%_))))
                 (_%expand-internal181546%_
                  (lambda (_%hd181868%_ _%rest181869%_)
                    (call-with-parameters__1
                     (lambda ()
                       (_%wrap-internal181548%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd181868%_ _%rest181869%_))
                          (gx#stx-source _%stx181542%_))
                         _%expand-internal-special181547%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj182286
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj182286)
                       __obj182286))))
                 (_%expand-internal-special181547%_
                  (lambda (_%hd181706%_ _%K181707%_ _%rest181708%_ _%r181709%_)
                    (let* ((_%e181710181748%_ _%hd181706%_)
                           (_%E181743181752%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e181710181748%_)))
                           (_%E181739181764%_
                            (lambda ()
                              (if (gx#stx-pair? _%e181710181748%_)
                                  (let ((_%e181744181756%_
                                         (gx#syntax-e _%e181710181748%_)))
                                    (let ((_%hd181745181759%_
                                           (##car _%e181744181756%_))
                                          (_%tl181746181761%_
                                           (##cdr _%e181744181756%_)))
                                      (if (and (gx#identifier?
                                                _%hd181745181759%_)
                                               (gx#core-identifier=?
                                                _%hd181745181759%_
                                                '%#declare))
                                          (_%K181707%_
                                           _%rest181708%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd181706%_)
                                                 _%r181709%_))
                                          (_%E181743181752%_))))
                                  (_%E181743181752%_))))
                           (_%E181735181776%_
                            (lambda ()
                              (if (gx#stx-pair? _%e181710181748%_)
                                  (let ((_%e181740181768%_
                                         (gx#syntax-e _%e181710181748%_)))
                                    (let ((_%hd181741181771%_
                                           (##car _%e181740181768%_))
                                          (_%tl181742181773%_
                                           (##cdr _%e181740181768%_)))
                                      (if (and (gx#identifier?
                                                _%hd181741181771%_)
                                               (gx#core-identifier=?
                                                _%hd181741181771%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd181706%_)
                                            (_%K181707%_
                                             _%rest181708%_
                                             _%r181709%_))
                                          (_%E181739181764%_))))
                                  (_%E181739181764%_))))
                           (_%E181725181788%_
                            (lambda ()
                              (if (gx#stx-pair? _%e181710181748%_)
                                  (let ((_%e181736181780%_
                                         (gx#syntax-e _%e181710181748%_)))
                                    (let ((_%hd181737181783%_
                                           (##car _%e181736181780%_))
                                          (_%tl181738181785%_
                                           (##cdr _%e181736181780%_)))
                                      (if (and (gx#identifier?
                                                _%hd181737181783%_)
                                               (gx#core-identifier=?
                                                _%hd181737181783%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd181706%_)
                                            (_%K181707%_
                                             _%rest181708%_
                                             _%r181709%_))
                                          (_%E181735181776%_))))
                                  (_%E181735181776%_))))
                           (_%E181712181820%_
                            (lambda ()
                              (if (gx#stx-pair? _%e181710181748%_)
                                  (let ((_%e181726181792%_
                                         (gx#syntax-e _%e181710181748%_)))
                                    (let ((_%hd181727181795%_
                                           (##car _%e181726181792%_))
                                          (_%tl181728181797%_
                                           (##cdr _%e181726181792%_)))
                                      (if (and (gx#identifier?
                                                _%hd181727181795%_)
                                               (gx#core-identifier=?
                                                _%hd181727181795%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl181728181797%_)
                                              (let ((_%e181729181800%_
                                                     (gx#syntax-e
                                                      _%tl181728181797%_)))
                                                (let ((_%hd181730181803%_
                                                       (##car _%e181729181800%_))
                                                      (_%tl181731181805%_
                                                       (##cdr _%e181729181800%_)))
                                                  (let ((_%hd-bind181808%_
                                                         _%hd181730181803%_))
                                                    (if (gx#stx-pair?
                                                         _%tl181731181805%_)
                                                        (let ((_%e181732181810%_
                                                               (gx#syntax-e
                                                                _%tl181731181805%_)))
                                                          (let ((_%hd181733181813%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e181732181810%_))
                        (_%tl181734181815%_ (##cdr _%e181732181810%_)))
                    (let ((_%expr181818%_ _%hd181733181813%_))
                      (if (gx#stx-null? _%tl181734181815%_)
                          (if (gx#core-bind-values? _%hd-bind181808%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind181808%_)
                                (_%K181707%_
                                 _%rest181708%_
                                 (cons _%hd181706%_ _%r181709%_)))
                              (_%E181725181788%_))
                          (_%E181725181788%_)))))
                (_%E181725181788%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E181725181788%_))
                                          (_%E181725181788%_))))
                                  (_%E181725181788%_))))
                           (_%E181711181864%_
                            (lambda ()
                              (if (gx#stx-pair? _%e181710181748%_)
                                  (let ((_%e181713181824%_
                                         (gx#syntax-e _%e181710181748%_)))
                                    (let ((_%hd181714181827%_
                                           (##car _%e181713181824%_))
                                          (_%tl181715181829%_
                                           (##cdr _%e181713181824%_)))
                                      (if (and (gx#identifier?
                                                _%hd181714181827%_)
                                               (gx#core-identifier=?
                                                _%hd181714181827%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl181715181829%_)
                                              (let ((_%e181716181832%_
                                                     (gx#syntax-e
                                                      _%tl181715181829%_)))
                                                (let ((_%hd181717181835%_
                                                       (##car _%e181716181832%_))
                                                      (_%tl181718181837%_
                                                       (##cdr _%e181716181832%_)))
                                                  (if (gx#stx-pair?
                                                       _%hd181717181835%_)
                                                      (let ((_%e181722181840%_
                                                             (gx#syntax-e
                                                              _%hd181717181835%_)))
                                                        (let ((_%hd181723181843%_
                                                               (##car _%e181722181840%_))
                                                              (_%tl181724181845%_
                                                               (##cdr _%e181722181840%_)))
                                                          (let ((_%id181848%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd181723181843%_))
                    (if (gx#stx-null? _%tl181724181845%_)
                        (if (gx#stx-pair? _%tl181718181837%_)
                            (let ((_%e181719181850%_
                                   (gx#syntax-e _%tl181718181837%_)))
                              (let ((_%hd181720181853%_
                                     (##car _%e181719181850%_))
                                    (_%tl181721181855%_
                                     (##cdr _%e181719181850%_)))
                                (let* ((_%expr181858%_ _%hd181720181853%_)
                                       (_%props181860%_ _%tl181721181855%_))
                                  (if (gx#identifier? _%id181848%_)
                                      (let ((_%bind181862%_
                                             (gx#core-bind-runtime!__0
                                              _%id181848%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind181862%_
                                         _%props181860%_)
                                        (_%K181707%_
                                         _%rest181708%_
                                         (cons _%hd181706%_ _%r181709%_)))
                                      (_%E181712181820%_)))))
                            (_%E181712181820%_))
                        (_%E181712181820%_)))))
              (_%E181712181820%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E181712181820%_))
                                          (_%E181712181820%_))))
                                  (_%E181712181820%_)))))
                      (_%E181711181864%_))))
                 (_%wrap-internal181548%_
                  (lambda (_%rbody181550%_)
                    (let _%lp181552%_ ((_%rest181554%_ _%rbody181550%_)
                                       (_%decls181555%_ '())
                                       (_%bind181556%_ '())
                                       (_%body181557%_ '()))
                      (let* ((_%e181558181565%_ _%rest181554%_)
                             (_%E181560181614%_
                              (lambda ()
                                (let* ((_%body181609%_
                                        (let* ((_%body181568181578%_
                                                _%body181557%_)
                                               (_%else181571181586%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body181557%_)
                                                   (gx#stx-source
                                                    _%stx181542%_)))))
                                          (let ((_%K181576181606%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx181542%_)))
                                                (_%K181573181592%_
                                                 (lambda (_%expr181590%_)
                                                   _%expr181590%_)))
                                            (let ((_%try-match181570181602%_
                                                   (lambda ()
                                                     (if (pair? _%body181568181578%_)
                                                         (let ((_%tl181575181597%_
                                                                (##cdr _%body181568181578%_))
                                                               (_%hd181574181595%_
                                                                (##car _%body181568181578%_)))
                                                           (if (null? _%tl181575181597%_)
                                                               (let ((_%expr181600%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd181574181595%_))
                         (_%K181573181592%_ _%expr181600%_))
                       (_%else181571181586%_)))
                 (_%else181571181586%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%body181568181578%_)
                                                  (_%K181576181606%_)
                                                  (_%try-match181570181602%_))))))
                                       (_%body181611%_
                                        (if (null? _%bind181556%_)
                                            _%body181609%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind181556%_
                                                         (cons _%body181609%_
                                                               '())))
                                             (gx#stx-source _%stx181542%_)))))
                                  (if (null? _%decls181555%_)
                                      _%body181611%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls181555%_
                                                   (cons _%body181611%_ '())))
                                       (gx#stx-source _%stx181542%_))))))
                             (_%E181559181702%_
                              (lambda ()
                                (if (gx#stx-pair? _%e181558181565%_)
                                    (let ((_%e181561181618%_
                                           (gx#syntax-e _%e181558181565%_)))
                                      (let ((_%hd181562181621%_
                                             (##car _%e181561181618%_))
                                            (_%tl181563181623%_
                                             (##cdr _%e181561181618%_)))
                                        (let* ((_%hd181626%_
                                                _%hd181562181621%_)
                                               (_%rest181628%_
                                                _%tl181563181623%_)
                                               (_%e181629181646%_ _%hd181626%_)
                                               (_%E181641181650%_
                                                (lambda ()
                                                  (if (null? _%bind181556%_)
                                                      (_%lp181552%_
                                                       _%rest181628%_
                                                       _%decls181555%_
                                                       _%bind181556%_
                                                       (cons _%hd181626%_
                                                             _%body181557%_))
                                                      (_%lp181552%_
                                                       _%rest181628%_
                                                       _%decls181555%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd181626%_ '()))
                     _%bind181556%_)
               _%body181557%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E181631181664%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e181629181646%_)
                                                      (let ((_%e181642181654%_
                                                             (gx#syntax-e
                                                              _%e181629181646%_)))
                                                        (let ((_%hd181643181657%_
                                                               (##car _%e181642181654%_))
                                                              (_%tl181644181659%_
                                                               (##cdr _%e181642181654%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd181643181657%_)
                           (gx#core-identifier=?
                            _%hd181643181657%_
                            '%#declare))
                      (let ((_%xdecls181662%_ _%tl181644181659%_))
                        (_%lp181552%_
                         _%rest181628%_
                         (gx#stx-foldr cons _%decls181555%_ _%xdecls181662%_)
                         _%bind181556%_
                         _%body181557%_))
                      (_%E181641181650%_))))
              (_%E181641181650%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E181630181698%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e181629181646%_)
                                                      (let ((_%e181632181668%_
                                                             (gx#syntax-e
                                                              _%e181629181646%_)))
                                                        (let ((_%hd181633181671%_
                                                               (##car _%e181632181668%_))
                                                              (_%tl181634181673%_
                                                               (##cdr _%e181632181668%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd181633181671%_)
                           (gx#core-identifier=?
                            _%hd181633181671%_
                            '%#define-values))
                      (if (gx#stx-pair? _%tl181634181673%_)
                          (let ((_%e181635181676%_
                                 (gx#syntax-e _%tl181634181673%_)))
                            (let ((_%hd181636181679%_
                                   (##car _%e181635181676%_))
                                  (_%tl181637181681%_
                                   (##cdr _%e181635181676%_)))
                              (let ((_%hd-bind181684%_ _%hd181636181679%_))
                                (if (gx#stx-pair? _%tl181637181681%_)
                                    (let ((_%e181638181686%_
                                           (gx#syntax-e _%tl181637181681%_)))
                                      (let ((_%hd181639181689%_
                                             (##car _%e181638181686%_))
                                            (_%tl181640181691%_
                                             (##cdr _%e181638181686%_)))
                                        (let* ((_%expr181694%_
                                                _%hd181639181689%_)
                                               (_%ignore-props181696%_
                                                _%tl181640181691%_))
                                          (_%lp181552%_
                                           _%rest181628%_
                                           _%decls181555%_
                                           (cons (cons (gx#core-quote-bind-values
                                                        _%hd-bind181684%_)
                                                       (cons (gx#core-expand-expression
                                                              _%expr181694%_)
                                                             '()))
                                                 _%bind181556%_)
                                           _%body181557%_))))
                                    (_%E181631181664%_)))))
                          (_%E181631181664%_))
                      (_%E181631181664%_))))
              (_%E181631181664%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%E181630181698%_))))
                                    (_%E181560181614%_)))))
                        (_%E181559181702%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body181543%_)
            (gx#stx-source _%stx181542%_))
           _%expand-special181545%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx181480%_)
        (let* ((_%e181481181488%_ _%stx181480%_)
               (_%E181483181492%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181481181488%_)))
               (_%E181482181538%_
                (lambda ()
                  (if (gx#stx-pair? _%e181481181488%_)
                      (let ((_%e181484181496%_
                             (gx#syntax-e _%e181481181488%_)))
                        (let ((_%hd181485181499%_ (##car _%e181484181496%_))
                              (_%tl181486181501%_ (##cdr _%e181484181496%_)))
                          (let ((_%body181504%_ _%tl181486181501%_))
                            (if (gx#stx-list? _%body181504%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl181506%_)
                                     (let* ((_%e181507181514%_ _%decl181506%_)
                                            (_%E181509181518%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e181507181514%_)))
                                            (_%E181508181534%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e181507181514%_)
                                                   (let ((_%e181510181522%_
                                                          (gx#syntax-e
                                                           _%e181507181514%_)))
                                                     (let ((_%hd181511181525%_
                                                            (##car _%e181510181522%_))
                                                           (_%tl181512181527%_
                                                            (##cdr _%e181510181522%_)))
                                                       (let* ((_%head181530%_
                                                               _%hd181511181525%_)
                                                              (_%args181532%_
                                                               _%tl181512181527%_))
                                                         (if (gx#stx-list?
                                                              _%args181532%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl181506%_)
                                                             (_%E181509181518%_)))))
                                                   (_%E181509181518%_)))))
                                       (_%E181508181534%_)))
                                   _%body181504%_))
                                 (gx#stx-source _%stx181480%_))
                                (_%E181483181492%_)))))
                      (_%E181483181492%_)))))
          (_%E181482181538%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx181384%_)
        (let* ((_%e181385181392%_ _%stx181384%_)
               (_%E181387181396%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181385181392%_)))
               (_%E181386181476%_
                (lambda ()
                  (if (gx#stx-pair? _%e181385181392%_)
                      (let ((_%e181388181400%_
                             (gx#syntax-e _%e181385181392%_)))
                        (let ((_%hd181389181403%_ (##car _%e181388181400%_))
                              (_%tl181390181405%_ (##cdr _%e181388181400%_)))
                          (let ((_%body181408%_ _%tl181390181405%_))
                            (let _%lp181410%_ ((_%rest181412%_ _%body181408%_)
                                               (_%r181413%_ '()))
                              (let* ((_%e181414181428%_ _%rest181412%_)
                                     (_%E181426181432%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx181384%_)))
                                     (_%E181416181436%_
                                      (lambda ()
                                        (if (gx#stx-null? _%e181414181428%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r181413%_))
                                             (gx#stx-source _%stx181384%_))
                                            (_%E181426181432%_))))
                                     (_%E181415181472%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e181414181428%_)
                                            (let ((_%e181417181440%_
                                                   (gx#syntax-e
                                                    _%e181414181428%_)))
                                              (let ((_%hd181418181443%_
                                                     (##car _%e181417181440%_))
                                                    (_%tl181419181445%_
                                                     (##cdr _%e181417181440%_)))
                                                (if (gx#stx-pair?
                                                     _%hd181418181443%_)
                                                    (let ((_%e181420181448%_
                                                           (gx#syntax-e
                                                            _%hd181418181443%_)))
                                                      (let ((_%hd181421181451%_
                                                             (##car _%e181420181448%_))
                                                            (_%tl181422181453%_
                                                             (##cdr _%e181420181448%_)))
                                                        (let ((_%id181456%_
                                                               _%hd181421181451%_))
                                                          (if (gx#stx-pair?
                                                               _%tl181422181453%_)
                                                              (let ((_%e181423181458%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl181422181453%_)))
                        (let ((_%hd181424181461%_ (##car _%e181423181458%_))
                              (_%tl181425181463%_ (##cdr _%e181423181458%_)))
                          (let ((_%eid181466%_ _%hd181424181461%_))
                            (if (gx#stx-null? _%tl181425181463%_)
                                (let ((_%rest181468%_ _%tl181419181445%_))
                                  (if (and (gx#identifier? _%id181456%_)
                                           (gx#identifier? _%eid181466%_))
                                      (let ((_%eid181470%_
                                             (gx#stx-e _%eid181466%_)))
                                        (gx#core-bind-extern!__0
                                         _%id181456%_
                                         _%eid181470%_)
                                        (_%lp181410%_
                                         _%rest181468%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id181456%_)
                                                     (cons _%eid181470%_ '()))
                                               _%r181413%_)))
                                      (_%E181416181436%_)))
                                (_%E181416181436%_)))))
                      (_%E181416181436%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E181416181436%_))))
                                            (_%E181416181436%_)))))
                                (_%E181415181472%_))))))
                      (_%E181387181396%_)))))
          (_%E181386181476%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx181273%_)
        (let* ((_%e181274181300%_ _%stx181273%_)
               (_%E181289181304%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181274181300%_)))
               (_%E181276181336%_
                (lambda ()
                  (if (gx#stx-pair? _%e181274181300%_)
                      (let ((_%e181290181308%_
                             (gx#syntax-e _%e181274181300%_)))
                        (let ((_%hd181291181311%_ (##car _%e181290181308%_))
                              (_%tl181292181313%_ (##cdr _%e181290181308%_)))
                          (if (gx#stx-pair? _%tl181292181313%_)
                              (let ((_%e181293181316%_
                                     (gx#syntax-e _%tl181292181313%_)))
                                (let ((_%hd181294181319%_
                                       (##car _%e181293181316%_))
                                      (_%tl181295181321%_
                                       (##cdr _%e181293181316%_)))
                                  (let ((_%hd181324%_ _%hd181294181319%_))
                                    (if (gx#stx-pair? _%tl181295181321%_)
                                        (let ((_%e181296181326%_
                                               (gx#syntax-e
                                                _%tl181295181321%_)))
                                          (let ((_%hd181297181329%_
                                                 (##car _%e181296181326%_))
                                                (_%tl181298181331%_
                                                 (##cdr _%e181296181326%_)))
                                            (let ((_%expr181334%_
                                                   _%hd181297181329%_))
                                              (if (gx#stx-null?
                                                   _%tl181298181331%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd181324%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd181324%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd181324%_)
                             (cons (gx#core-expand-expression _%expr181334%_)
                                   '())))
                 (gx#stx-source _%stx181273%_)))
              (_%E181289181304%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E181289181304%_)))))
                                        (_%E181289181304%_)))))
                              (_%E181289181304%_))))
                      (_%E181289181304%_))))
               (_%E181275181380%_
                (lambda ()
                  (if (gx#stx-pair? _%e181274181300%_)
                      (let ((_%e181277181340%_
                             (gx#syntax-e _%e181274181300%_)))
                        (let ((_%hd181278181343%_ (##car _%e181277181340%_))
                              (_%tl181279181345%_ (##cdr _%e181277181340%_)))
                          (if (gx#stx-pair? _%tl181279181345%_)
                              (let ((_%e181280181348%_
                                     (gx#syntax-e _%tl181279181345%_)))
                                (let ((_%hd181281181351%_
                                       (##car _%e181280181348%_))
                                      (_%tl181282181353%_
                                       (##cdr _%e181280181348%_)))
                                  (if (gx#stx-pair? _%hd181281181351%_)
                                      (let ((_%e181286181356%_
                                             (gx#syntax-e _%hd181281181351%_)))
                                        (let ((_%hd181287181359%_
                                               (##car _%e181286181356%_))
                                              (_%tl181288181361%_
                                               (##cdr _%e181286181356%_)))
                                          (let ((_%id181364%_
                                                 _%hd181287181359%_))
                                            (if (gx#stx-null?
                                                 _%tl181288181361%_)
                                                (if (gx#stx-pair?
                                                     _%tl181282181353%_)
                                                    (let ((_%e181283181366%_
                                                           (gx#syntax-e
                                                            _%tl181282181353%_)))
                                                      (let ((_%hd181284181369%_
                                                             (##car _%e181283181366%_))
                                                            (_%tl181285181371%_
                                                             (##cdr _%e181283181366%_)))
                                                        (let* ((_%expr181374%_
                                                                _%hd181284181369%_)
                                                               (_%props181376%_
                                                                _%tl181285181371%_))
                                                          (if (gx#identifier?
                                                               _%id181364%_)
                                                              (let ((_%bind181378%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#core-bind-runtime!__0 _%id181364%_)))
                        (gx#core-bind-runtime-properties!
                         _%bind181378%_
                         _%props181376%_)
                        (gx#core-quote-syntax__1
                         (cons (gx#core-quote-syntax__0 '%#define-values)
                               (cons (gx#core-quote-bind-values
                                      (cons _%id181364%_ '()))
                                     (cons (gx#core-expand-expression
                                            _%expr181374%_)
                                           '())))
                         (gx#stx-source _%stx181273%_)))
                      (_%E181276181336%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E181276181336%_))
                                                (_%E181276181336%_)))))
                                      (_%E181276181336%_))))
                              (_%E181276181336%_))))
                      (_%E181276181336%_)))))
          (_%E181275181380%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx181212%_)
        (let* ((_%e181213181226%_ _%stx181212%_)
               (_%E181215181230%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181213181226%_)))
               (_%E181214181269%_
                (lambda ()
                  (if (gx#stx-pair? _%e181213181226%_)
                      (let ((_%e181216181234%_
                             (gx#syntax-e _%e181213181226%_)))
                        (let ((_%hd181217181237%_ (##car _%e181216181234%_))
                              (_%tl181218181239%_ (##cdr _%e181216181234%_)))
                          (if (gx#stx-pair? _%tl181218181239%_)
                              (let ((_%e181219181242%_
                                     (gx#syntax-e _%tl181218181239%_)))
                                (let ((_%hd181220181245%_
                                       (##car _%e181219181242%_))
                                      (_%tl181221181247%_
                                       (##cdr _%e181219181242%_)))
                                  (let ((_%id181250%_ _%hd181220181245%_))
                                    (if (gx#stx-pair? _%tl181221181247%_)
                                        (let ((_%e181222181252%_
                                               (gx#syntax-e
                                                _%tl181221181247%_)))
                                          (let ((_%hd181223181255%_
                                                 (##car _%e181222181252%_))
                                                (_%tl181224181257%_
                                                 (##cdr _%e181222181252%_)))
                                            (let* ((_%binding-id181260%_
                                                    _%hd181223181255%_)
                                                   (_%props181262%_
                                                    _%tl181224181257%_))
                                              (if (and (gx#identifier?
                                                        _%id181250%_)
                                                       (gx#identifier?
                                                        _%binding-id181260%_)
                                                       (gx#stx-list?
                                                        _%props181262%_))
                                                  (let* ((_%eid181264%_
                                                          (gx#stx-e
                                                           _%binding-id181260%_))
                                                         (_%bind181266%_
                                                          (gx#core-bind-runtime-reference!__0
                                                           _%id181250%_
                                                           _%eid181264%_)))
                                                    (gx#core-bind-runtime-properties!
                                                     _%bind181266%_
                                                     _%props181262%_)
                                                    (gx#core-quote-syntax__0
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#define-runtime)
                                                           (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id181250%_)
                         (cons _%eid181264%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E181215181230%_)))))
                                        (_%E181215181230%_)))))
                              (_%E181215181230%_))))
                      (_%E181215181230%_)))))
          (_%E181214181269%_))))
    (define gx#core-bind-runtime-properties!
      (lambda (_%bind181147%_ _%props181148%_)
        (letrec ((_%eval-prop181150%_
                  (lambda (_%prop181210%_)
                    (gx#eval-expression+1 _%prop181210%_))))
          (let _%loop181152%_ ((_%rest181154%_ _%props181148%_)
                               (_%props181155%_ '()))
            (let* ((_%e181156181167%_ _%rest181154%_)
                   (_%E181165181171%_
                    (lambda ()
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e181156181167%_)))
                   (_%E181158181175%_
                    (lambda ()
                      (if (gx#stx-null? _%e181156181167%_)
                          (if (null? _%props181155%_)
                              '#!void
                              (##structure-set!
                               _%bind181147%_
                               (reverse! _%props181155%_)
                               '4
                               gx#binding::t
                               '#f))
                          (_%E181165181171%_))))
                   (_%E181157181206%_
                    (lambda ()
                      (if (gx#stx-pair? _%e181156181167%_)
                          (let ((_%e181159181179%_
                                 (gx#syntax-e _%e181156181167%_)))
                            (let ((_%hd181160181182%_
                                   (##car _%e181159181179%_))
                                  (_%tl181161181184%_
                                   (##cdr _%e181159181179%_)))
                              (let ((_%key181187%_ _%hd181160181182%_))
                                (if (gx#stx-pair? _%tl181161181184%_)
                                    (let ((_%e181162181189%_
                                           (gx#syntax-e _%tl181161181184%_)))
                                      (let ((_%hd181163181192%_
                                             (##car _%e181162181189%_))
                                            (_%tl181164181194%_
                                             (##cdr _%e181162181189%_)))
                                        (let* ((_%prop181197%_
                                                _%hd181163181192%_)
                                               (_%rest181199%_
                                                _%tl181164181194%_))
                                          (if (gx#stx-keyword? _%key181187%_)
                                              (let* ((_%key181201%_
                                                      (gx#stx-e _%key181187%_))
                                                     (_%$e181203%_
                                                      _%key181201%_))
                                                (if (eq? 'macro: _%$e181203%_)
                                                    (begin
                                                      (##structure-set!
                                                       _%bind181147%_
                                                       (if (gx#identifier?
                                                            _%prop181197%_)
                                                           (gx#core-quote-syntax__0
                                                            _%prop181197%_)
                                                           (gx#eval-expression+1
                                                            _%prop181197%_))
                                                       '6
                                                       gx#runtime-binding::t
                                                       '#f)
                                                      (_%loop181152%_
                                                       _%rest181199%_
                                                       _%props181155%_))
                                                    (if (eq? 'type:
                                                             _%$e181203%_)
                                                        (begin
                                                          (##structure-set!
                                                           _%bind181147%_
                                                           (gx#eval-expression+1
                                                            _%prop181197%_)
                                                           '5
                                                           gx#runtime-binding::t
                                                           '#f)
                                                          (_%loop181152%_
                                                           _%rest181199%_
                                                           _%props181155%_))
                                                        (_%loop181152%_
                                                         _%rest181199%_
                                                         (cons (gx#eval-expression+1
                                                                _%prop181197%_)
                                                               (cons _%key181201%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%props181155%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E181158181175%_)))))
                                    (_%E181158181175%_)))))
                          (_%E181158181175%_)))))
              (_%E181157181206%_))))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx181090%_)
        (let* ((_%e181091181104%_ _%stx181090%_)
               (_%E181093181108%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181091181104%_)))
               (_%E181092181143%_
                (lambda ()
                  (if (gx#stx-pair? _%e181091181104%_)
                      (let ((_%e181094181112%_
                             (gx#syntax-e _%e181091181104%_)))
                        (let ((_%hd181095181115%_ (##car _%e181094181112%_))
                              (_%tl181096181117%_ (##cdr _%e181094181112%_)))
                          (if (gx#stx-pair? _%tl181096181117%_)
                              (let ((_%e181097181120%_
                                     (gx#syntax-e _%tl181096181117%_)))
                                (let ((_%hd181098181123%_
                                       (##car _%e181097181120%_))
                                      (_%tl181099181125%_
                                       (##cdr _%e181097181120%_)))
                                  (let ((_%id181128%_ _%hd181098181123%_))
                                    (if (gx#stx-pair? _%tl181099181125%_)
                                        (let ((_%e181100181130%_
                                               (gx#syntax-e
                                                _%tl181099181125%_)))
                                          (let ((_%hd181101181133%_
                                                 (##car _%e181100181130%_))
                                                (_%tl181102181135%_
                                                 (##cdr _%e181100181130%_)))
                                            (let ((_%expr181138%_
                                                   _%hd181101181133%_))
                                              (if (gx#stx-null?
                                                   _%tl181102181135%_)
                                                  (if (gx#identifier?
                                                       _%id181128%_)
                                                      (let ((_g182304_
                                                             (gx#core-expand-expression+1
                                                              _%expr181138%_)))
                                                        (begin
                                                          (let ((_g182305_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g182304_)
                             (##values-length _g182304_)
                             1)))
                    (if (not (##fx= _g182305_ 2))
                        (error "Context expects 2 values" _g182305_)))
                  (let ((_%e-stx181140%_ (##values-ref _g182304_ 0))
                        (_%e181141%_ (##values-ref _g182304_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id181128%_ _%e181141%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id181128%_)
                                   (cons _%e-stx181140%_ '())))
                       (gx#stx-source _%stx181090%_))))))
              (_%E181093181108%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E181093181108%_)))))
                                        (_%E181093181108%_)))))
                              (_%E181093181108%_))))
                      (_%E181093181108%_)))))
          (_%E181092181143%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx181034%_)
        (let* ((_%e181035181048%_ _%stx181034%_)
               (_%E181037181052%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181035181048%_)))
               (_%E181036181086%_
                (lambda ()
                  (if (gx#stx-pair? _%e181035181048%_)
                      (let ((_%e181038181056%_
                             (gx#syntax-e _%e181035181048%_)))
                        (let ((_%hd181039181059%_ (##car _%e181038181056%_))
                              (_%tl181040181061%_ (##cdr _%e181038181056%_)))
                          (if (gx#stx-pair? _%tl181040181061%_)
                              (let ((_%e181041181064%_
                                     (gx#syntax-e _%tl181040181061%_)))
                                (let ((_%hd181042181067%_
                                       (##car _%e181041181064%_))
                                      (_%tl181043181069%_
                                       (##cdr _%e181041181064%_)))
                                  (let ((_%id181072%_ _%hd181042181067%_))
                                    (if (gx#stx-pair? _%tl181043181069%_)
                                        (let ((_%e181044181074%_
                                               (gx#syntax-e
                                                _%tl181043181069%_)))
                                          (let ((_%hd181045181077%_
                                                 (##car _%e181044181074%_))
                                                (_%tl181046181079%_
                                                 (##cdr _%e181044181074%_)))
                                            (let ((_%alias-id181082%_
                                                   _%hd181045181077%_))
                                              (if (gx#stx-null?
                                                   _%tl181046181079%_)
                                                  (if (and (gx#identifier?
                                                            _%id181072%_)
                                                           (gx#identifier?
                                                            _%alias-id181082%_))
                                                      (let ((_%alias-id181084%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id181082%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id181072%_
                                                         _%alias-id181084%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id181072%_)
                             (cons _%alias-id181084%_ '())))))
              (_%E181037181052%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E181037181052%_)))))
                                        (_%E181037181052%_)))))
                              (_%E181037181052%_))))
                      (_%E181037181052%_)))))
          (_%E181036181086%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx180977%_ _%wrap?180978%_)
        (let* ((_%e180979180989%_ _%stx180977%_)
               (_%E180981180993%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180979180989%_)))
               (_%E180980181020%_
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
                                  (let* ((_%hd181013%_ _%hd180986181008%_)
                                         (_%body181015%_ _%tl180987181010%_))
                                    (if (gx#core-bind-values? _%hd181013%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd181013%_)
                                           (let ((_%body181018%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd181013%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx180977%_
                                                               _%body181015%_)
                                                              '()))))
                                             (if _%wrap?180978%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body181018%_)
                                                  (gx#stx-source
                                                   _%stx180977%_))
                                                 _%body181018%_)))
                                         gx#current-expander-context
                                         (let ((__obj182287
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj182287)
                                           __obj182287))
                                        (_%E180981180993%_)))))
                              (_%E180981180993%_))))
                      (_%E180981180993%_)))))
          (_%E180980181020%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx181027%_)
        (let ((_%wrap?181029%_ '#t))
          (gx#core-expand-lambda%__% _%stx181027%_ _%wrap?181029%_))))
    (define gx#core-expand-lambda%
      (lambda _g182306_
        (let ((_g182307_ (##length _g182306_)))
          (cond ((##fx= _g182307_ 1)
                 (apply gx#core-expand-lambda%__0 _g182306_))
                ((##fx= _g182307_ 2)
                 (apply gx#core-expand-lambda%__% _g182306_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g182306_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx180941%_)
        (let* ((_%e180942180949%_ _%stx180941%_)
               (_%E180944180953%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180942180949%_)))
               (_%E180943180972%_
                (lambda ()
                  (if (gx#stx-pair? _%e180942180949%_)
                      (let ((_%e180945180957%_
                             (gx#syntax-e _%e180942180949%_)))
                        (let ((_%hd180946180960%_ (##car _%e180945180957%_))
                              (_%tl180947180962%_ (##cdr _%e180945180957%_)))
                          (let ((_%clauses180965%_ _%tl180947180962%_))
                            (if (gx#stx-list? _%clauses180965%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause180967%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause180967%_)
                                       (let ((_%$e180969%_
                                              (gx#stx-source
                                               _%clause180967%_)))
                                         (if _%$e180969%_
                                             _%$e180969%_
                                             (gx#stx-source _%stx180941%_))))
                                      '#f))
                                   _%clauses180965%_))
                                 (gx#stx-source _%stx180941%_))
                                (_%E180944180953%_)))))
                      (_%E180944180953%_)))))
          (_%E180943180972%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx180895%_)
        (let* ((_%e180896180906%_ _%stx180895%_)
               (_%E180898180910%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180896180906%_)))
               (_%E180897180937%_
                (lambda ()
                  (if (gx#stx-pair? _%e180896180906%_)
                      (let ((_%e180899180914%_
                             (gx#syntax-e _%e180896180906%_)))
                        (let ((_%hd180900180917%_ (##car _%e180899180914%_))
                              (_%tl180901180919%_ (##cdr _%e180899180914%_)))
                          (if (gx#stx-pair? _%tl180901180919%_)
                              (let ((_%e180902180922%_
                                     (gx#syntax-e _%tl180901180919%_)))
                                (let ((_%hd180903180925%_
                                       (##car _%e180902180922%_))
                                      (_%tl180904180927%_
                                       (##cdr _%e180902180922%_)))
                                  (let* ((_%hd180930%_ _%hd180903180925%_)
                                         (_%body180932%_ _%tl180904180927%_))
                                    (if (gx#core-expand-let-bind? _%hd180930%_)
                                        (let ((_%expressions180934%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd180930%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd180930%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd180930%_
                                                           _%expressions180934%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx180895%_
                         _%body180932%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx180895%_)))
                                           gx#current-expander-context
                                           (let ((__obj182288
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj182288)
                                             __obj182288)))
                                        (_%E180898180910%_)))))
                              (_%E180898180910%_))))
                      (_%E180898180910%_)))))
          (_%E180897180937%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx180840%_ _%form180841%_)
        (let* ((_%e180842180852%_ _%stx180840%_)
               (_%E180844180856%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180842180852%_)))
               (_%E180843180881%_
                (lambda ()
                  (if (gx#stx-pair? _%e180842180852%_)
                      (let ((_%e180845180860%_
                             (gx#syntax-e _%e180842180852%_)))
                        (let ((_%hd180846180863%_ (##car _%e180845180860%_))
                              (_%tl180847180865%_ (##cdr _%e180845180860%_)))
                          (if (gx#stx-pair? _%tl180847180865%_)
                              (let ((_%e180848180868%_
                                     (gx#syntax-e _%tl180847180865%_)))
                                (let ((_%hd180849180871%_
                                       (##car _%e180848180868%_))
                                      (_%tl180850180873%_
                                       (##cdr _%e180848180868%_)))
                                  (let* ((_%hd180876%_ _%hd180849180871%_)
                                         (_%body180878%_ _%tl180850180873%_))
                                    (if (gx#core-expand-let-bind? _%hd180876%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd180876%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form180841%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd180876%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd180876%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx180840%_
                                                               _%body180878%_)
                                                              '())))
                                            (gx#stx-source _%stx180840%_)))
                                         gx#current-expander-context
                                         (let ((__obj182289
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj182289)
                                           __obj182289))
                                        (_%E180844180856%_)))))
                              (_%E180844180856%_))))
                      (_%E180844180856%_)))))
          (_%E180843180881%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx180888%_)
        (let ((_%form180890%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx180888%_ _%form180890%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g182308_
        (let ((_g182309_ (##length _g182308_)))
          (cond ((##fx= _g182309_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g182308_))
                ((##fx= _g182309_ 2)
                 (apply gx#core-expand-letrec-values%__% _g182308_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g182308_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx180837%_)
        (gx#core-expand-letrec-values%__% _%stx180837%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx180794%_)
        (if (gx#stx-list? _%stx180794%_)
            (gx#stx-andmap
             (lambda (_%bind180796%_)
               (let* ((_%e180797180807%_ _%bind180796%_)
                      (_%E180799180811%_ (lambda () '#f))
                      (_%E180798180833%_
                       (lambda ()
                         (if (gx#stx-pair? _%e180797180807%_)
                             (let ((_%e180800180815%_
                                    (gx#syntax-e _%e180797180807%_)))
                               (let ((_%hd180801180818%_
                                      (##car _%e180800180815%_))
                                     (_%tl180802180820%_
                                      (##cdr _%e180800180815%_)))
                                 (let ((_%hd180823%_ _%hd180801180818%_))
                                   (if (gx#stx-pair? _%tl180802180820%_)
                                       (let ((_%e180803180825%_
                                              (gx#syntax-e
                                               _%tl180802180820%_)))
                                         (let ((_%hd180804180828%_
                                                (##car _%e180803180825%_))
                                               (_%tl180805180830%_
                                                (##cdr _%e180803180825%_)))
                                           (if (gx#stx-null?
                                                _%tl180805180830%_)
                                               (gx#core-bind-values?
                                                _%hd180823%_)
                                               (_%E180799180811%_))))
                                       (_%E180799180811%_)))))
                             (_%E180799180811%_)))))
                 (_%E180798180833%_)))
             _%stx180794%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind180753%_)
        (let* ((_%e180754180764%_ _%bind180753%_)
               (_%E180756180768%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180754180764%_)))
               (_%E180755180790%_
                (lambda ()
                  (if (gx#stx-pair? _%e180754180764%_)
                      (let ((_%e180757180772%_
                             (gx#syntax-e _%e180754180764%_)))
                        (let ((_%hd180758180775%_ (##car _%e180757180772%_))
                              (_%tl180759180777%_ (##cdr _%e180757180772%_)))
                          (if (gx#stx-pair? _%tl180759180777%_)
                              (let ((_%e180760180780%_
                                     (gx#syntax-e _%tl180759180777%_)))
                                (let ((_%hd180761180783%_
                                       (##car _%e180760180780%_))
                                      (_%tl180762180785%_
                                       (##cdr _%e180760180780%_)))
                                  (let ((_%expr180788%_ _%hd180761180783%_))
                                    (if (gx#stx-null? _%tl180762180785%_)
                                        (gx#core-expand-expression
                                         _%expr180788%_)
                                        (_%E180756180768%_)))))
                              (_%E180756180768%_))))
                      (_%E180756180768%_)))))
          (_%E180755180790%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind180712%_)
        (let* ((_%e180713180723%_ _%bind180712%_)
               (_%E180715180727%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180713180723%_)))
               (_%E180714180749%_
                (lambda ()
                  (if (gx#stx-pair? _%e180713180723%_)
                      (let ((_%e180716180731%_
                             (gx#syntax-e _%e180713180723%_)))
                        (let ((_%hd180717180734%_ (##car _%e180716180731%_))
                              (_%tl180718180736%_ (##cdr _%e180716180731%_)))
                          (let ((_%hd180739%_ _%hd180717180734%_))
                            (if (gx#stx-pair? _%tl180718180736%_)
                                (let ((_%e180719180741%_
                                       (gx#syntax-e _%tl180718180736%_)))
                                  (let ((_%hd180720180744%_
                                         (##car _%e180719180741%_))
                                        (_%tl180721180746%_
                                         (##cdr _%e180719180741%_)))
                                    (if (gx#stx-null? _%tl180721180746%_)
                                        (gx#core-bind-values!__0 _%hd180739%_)
                                        (_%E180715180727%_))))
                                (_%E180715180727%_)))))
                      (_%E180715180727%_)))))
          (_%E180714180749%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind180670%_ _%expr180671%_)
        (let* ((_%e180672180682%_ _%bind180670%_)
               (_%E180674180686%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180672180682%_)))
               (_%E180673180708%_
                (lambda ()
                  (if (gx#stx-pair? _%e180672180682%_)
                      (let ((_%e180675180690%_
                             (gx#syntax-e _%e180672180682%_)))
                        (let ((_%hd180676180693%_ (##car _%e180675180690%_))
                              (_%tl180677180695%_ (##cdr _%e180675180690%_)))
                          (let ((_%hd180698%_ _%hd180676180693%_))
                            (if (gx#stx-pair? _%tl180677180695%_)
                                (let ((_%e180678180700%_
                                       (gx#syntax-e _%tl180677180695%_)))
                                  (let ((_%hd180679180703%_
                                         (##car _%e180678180700%_))
                                        (_%tl180680180705%_
                                         (##cdr _%e180678180700%_)))
                                    (if (gx#stx-null? _%tl180680180705%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd180698%_)
                                              (cons _%expr180671%_ '()))
                                        (_%E180674180686%_))))
                                (_%E180674180686%_)))))
                      (_%E180674180686%_)))))
          (_%E180673180708%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx180624%_)
        (let* ((_%e180625180635%_ _%stx180624%_)
               (_%E180627180639%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180625180635%_)))
               (_%E180626180666%_
                (lambda ()
                  (if (gx#stx-pair? _%e180625180635%_)
                      (let ((_%e180628180643%_
                             (gx#syntax-e _%e180625180635%_)))
                        (let ((_%hd180629180646%_ (##car _%e180628180643%_))
                              (_%tl180630180648%_ (##cdr _%e180628180643%_)))
                          (if (gx#stx-pair? _%tl180630180648%_)
                              (let ((_%e180631180651%_
                                     (gx#syntax-e _%tl180630180648%_)))
                                (let ((_%hd180632180654%_
                                       (##car _%e180631180651%_))
                                      (_%tl180633180656%_
                                       (##cdr _%e180631180651%_)))
                                  (let* ((_%hd180659%_ _%hd180632180654%_)
                                         (_%body180661%_ _%tl180633180656%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd180659%_)
                                        (let ((_%expanders180663%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd180659%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd180659%_
                                              _%expanders180663%_)
                                             (gx#core-expand-local-block
                                              _%stx180624%_
                                              _%body180661%_))
                                           gx#current-expander-context
                                           (let ((__obj182290
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj182290)
                                             __obj182290)))
                                        (_%E180627180639%_)))))
                              (_%E180627180639%_))))
                      (_%E180627180639%_)))))
          (_%E180626180666%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx180573%_)
        (let* ((_%e180574180584%_ _%stx180573%_)
               (_%E180576180588%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180574180584%_)))
               (_%E180575180620%_
                (lambda ()
                  (if (gx#stx-pair? _%e180574180584%_)
                      (let ((_%e180577180592%_
                             (gx#syntax-e _%e180574180584%_)))
                        (let ((_%hd180578180595%_ (##car _%e180577180592%_))
                              (_%tl180579180597%_ (##cdr _%e180577180592%_)))
                          (if (gx#stx-pair? _%tl180579180597%_)
                              (let ((_%e180580180600%_
                                     (gx#syntax-e _%tl180579180597%_)))
                                (let ((_%hd180581180603%_
                                       (##car _%e180580180600%_))
                                      (_%tl180582180605%_
                                       (##cdr _%e180580180600%_)))
                                  (let* ((_%hd180608%_ _%hd180581180603%_)
                                         (_%body180610%_ _%tl180582180605%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd180608%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd180608%_
                                            (make-list
                                             (gx#stx-length _%hd180608%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g180612180615%_
                                                     _%g180613180617%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g180612180615%_
                                               _%g180613180617%_
                                               '#t))
                                            _%hd180608%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd180608%_))
                                           (gx#core-expand-local-block
                                            _%stx180573%_
                                            _%body180610%_))
                                         gx#current-expander-context
                                         (let ((__obj182291
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj182291)
                                           __obj182291))
                                        (_%E180576180588%_)))))
                              (_%E180576180588%_))))
                      (_%E180576180588%_)))))
          (_%E180575180620%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx180530%_)
        (if (gx#stx-list? _%stx180530%_)
            (gx#stx-andmap
             (lambda (_%bind180532%_)
               (let* ((_%e180533180543%_ _%bind180532%_)
                      (_%E180535180547%_ (lambda () '#f))
                      (_%E180534180569%_
                       (lambda ()
                         (if (gx#stx-pair? _%e180533180543%_)
                             (let ((_%e180536180551%_
                                    (gx#syntax-e _%e180533180543%_)))
                               (let ((_%hd180537180554%_
                                      (##car _%e180536180551%_))
                                     (_%tl180538180556%_
                                      (##cdr _%e180536180551%_)))
                                 (let ((_%hd180559%_ _%hd180537180554%_))
                                   (if (gx#stx-pair? _%tl180538180556%_)
                                       (let ((_%e180539180561%_
                                              (gx#syntax-e
                                               _%tl180538180556%_)))
                                         (let ((_%hd180540180564%_
                                                (##car _%e180539180561%_))
                                               (_%tl180541180566%_
                                                (##cdr _%e180539180561%_)))
                                           (if (gx#stx-null?
                                                _%tl180541180566%_)
                                               (gx#identifier? _%hd180559%_)
                                               (_%E180535180547%_))))
                                       (_%E180535180547%_)))))
                             (_%E180535180547%_)))))
                 (_%E180534180569%_)))
             _%stx180530%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind180486%_)
        (let* ((_%e180487180497%_ _%bind180486%_)
               (_%E180489180501%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180487180497%_)))
               (_%E180488180526%_
                (lambda ()
                  (if (gx#stx-pair? _%e180487180497%_)
                      (let ((_%e180490180505%_
                             (gx#syntax-e _%e180487180497%_)))
                        (let ((_%hd180491180508%_ (##car _%e180490180505%_))
                              (_%tl180492180510%_ (##cdr _%e180490180505%_)))
                          (if (gx#stx-pair? _%tl180492180510%_)
                              (let ((_%e180493180513%_
                                     (gx#syntax-e _%tl180492180510%_)))
                                (let ((_%hd180494180516%_
                                       (##car _%e180493180513%_))
                                      (_%tl180495180518%_
                                       (##cdr _%e180493180513%_)))
                                  (let ((_%expr180521%_ _%hd180494180516%_))
                                    (if (gx#stx-null? _%tl180495180518%_)
                                        (let ((_g182310_
                                               (gx#core-expand-expression+1
                                                _%expr180521%_)))
                                          (begin
                                            (let ((_g182311_
                                                   (if (##values? _g182310_)
                                                       (##values-length
                                                        _g182310_)
                                                       1)))
                                              (if (not (##fx= _g182311_ 2))
                                                  (error "Context expects 2 values"
                                                         _g182311_)))
                                            (let ((_%_180523%_
                                                   (##values-ref _g182310_ 0))
                                                  (_%e180524%_
                                                   (##values-ref _g182310_ 1)))
                                              _%e180524%_)))
                                        (_%E180489180501%_)))))
                              (_%E180489180501%_))))
                      (_%E180489180501%_)))))
          (_%E180488180526%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind180431%_ _%e180432%_ _%rebind?180433%_)
        (let* ((_%e180434180444%_ _%bind180431%_)
               (_%E180436180448%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180434180444%_)))
               (_%E180435180470%_
                (lambda ()
                  (if (gx#stx-pair? _%e180434180444%_)
                      (let ((_%e180437180452%_
                             (gx#syntax-e _%e180434180444%_)))
                        (let ((_%hd180438180455%_ (##car _%e180437180452%_))
                              (_%tl180439180457%_ (##cdr _%e180437180452%_)))
                          (let ((_%id180460%_ _%hd180438180455%_))
                            (if (gx#stx-pair? _%tl180439180457%_)
                                (let ((_%e180440180462%_
                                       (gx#syntax-e _%tl180439180457%_)))
                                  (let ((_%hd180441180465%_
                                         (##car _%e180440180462%_))
                                        (_%tl180442180467%_
                                         (##cdr _%e180440180462%_)))
                                    (if (gx#stx-null? _%tl180442180467%_)
                                        (gx#core-bind-syntax!__1
                                         _%id180460%_
                                         _%e180432%_
                                         _%rebind?180433%_)
                                        (_%E180436180448%_))))
                                (_%E180436180448%_)))))
                      (_%E180436180448%_)))))
          (_%E180435180470%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind180477%_ _%e180478%_)
        (let ((_%rebind?180480%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind180477%_
           _%e180478%_
           _%rebind?180480%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g182312_
        (let ((_g182313_ (##length _g182312_)))
          (cond ((##fx= _g182313_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g182312_))
                ((##fx= _g182313_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g182312_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g182312_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx180389%_)
        (let* ((_%e180390180400%_ _%stx180389%_)
               (_%E180392180404%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180390180400%_)))
               (_%E180391180426%_
                (lambda ()
                  (if (gx#stx-pair? _%e180390180400%_)
                      (let ((_%e180393180408%_
                             (gx#syntax-e _%e180390180400%_)))
                        (let ((_%hd180394180411%_ (##car _%e180393180408%_))
                              (_%tl180395180413%_ (##cdr _%e180393180408%_)))
                          (if (gx#stx-pair? _%tl180395180413%_)
                              (let ((_%e180396180416%_
                                     (gx#syntax-e _%tl180395180413%_)))
                                (let ((_%hd180397180419%_
                                       (##car _%e180396180416%_))
                                      (_%tl180398180421%_
                                       (##cdr _%e180396180416%_)))
                                  (let ((_%expr180424%_ _%hd180397180419%_))
                                    (if (gx#stx-null? _%tl180398180421%_)
                                        (gx#core-expand-expression
                                         _%expr180424%_)
                                        (_%E180392180404%_)))))
                              (_%E180392180404%_))))
                      (_%E180392180404%_)))))
          (_%E180391180426%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx180348%_)
        (let* ((_%e180349180359%_ _%stx180348%_)
               (_%E180351180363%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180349180359%_)))
               (_%E180350180385%_
                (lambda ()
                  (if (gx#stx-pair? _%e180349180359%_)
                      (let ((_%e180352180367%_
                             (gx#syntax-e _%e180349180359%_)))
                        (let ((_%hd180353180370%_ (##car _%e180352180367%_))
                              (_%tl180354180372%_ (##cdr _%e180352180367%_)))
                          (if (gx#stx-pair? _%tl180354180372%_)
                              (let ((_%e180355180375%_
                                     (gx#syntax-e _%tl180354180372%_)))
                                (let ((_%hd180356180378%_
                                       (##car _%e180355180375%_))
                                      (_%tl180357180380%_
                                       (##cdr _%e180355180375%_)))
                                  (let ((_%e180383%_ _%hd180356180378%_))
                                    (if (gx#stx-null? _%tl180357180380%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e180383%_)
                                                     '()))
                                         (gx#stx-source _%stx180348%_))
                                        (_%E180351180363%_)))))
                              (_%E180351180363%_))))
                      (_%E180351180363%_)))))
          (_%E180350180385%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx180307%_)
        (let* ((_%e180308180318%_ _%stx180307%_)
               (_%E180310180322%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180308180318%_)))
               (_%E180309180344%_
                (lambda ()
                  (if (gx#stx-pair? _%e180308180318%_)
                      (let ((_%e180311180326%_
                             (gx#syntax-e _%e180308180318%_)))
                        (let ((_%hd180312180329%_ (##car _%e180311180326%_))
                              (_%tl180313180331%_ (##cdr _%e180311180326%_)))
                          (if (gx#stx-pair? _%tl180313180331%_)
                              (let ((_%e180314180334%_
                                     (gx#syntax-e _%tl180313180331%_)))
                                (let ((_%hd180315180337%_
                                       (##car _%e180314180334%_))
                                      (_%tl180316180339%_
                                       (##cdr _%e180314180334%_)))
                                  (let ((_%e180342%_ _%hd180315180337%_))
                                    (if (gx#stx-null? _%tl180316180339%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e180342%_)
                                                     '()))
                                         (gx#stx-source _%stx180307%_))
                                        (_%E180310180322%_)))))
                              (_%E180310180322%_))))
                      (_%E180310180322%_)))))
          (_%E180309180344%_))))
    (define gx#core-expand-call%
      (lambda (_%stx180201%_)
        (letrec ((_%expand-runtime-call180203%_
                  (lambda (_%rator-expr180304%_ _%args180305%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons*
                      '%#call
                      _%rator-expr180304%_
                      (gx#stx-map1 gx#core-expand-expression _%args180305%_))
                     (gx#stx-source _%stx180201%_)))))
          (let* ((_%e180204180214%_ _%stx180201%_)
                 (_%E180206180218%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e180204180214%_)))
                 (_%E180205180300%_
                  (lambda ()
                    (if (gx#stx-pair? _%e180204180214%_)
                        (let ((_%e180207180222%_
                               (gx#syntax-e _%e180204180214%_)))
                          (let ((_%hd180208180225%_ (##car _%e180207180222%_))
                                (_%tl180209180227%_ (##cdr _%e180207180222%_)))
                            (if (gx#stx-pair? _%tl180209180227%_)
                                (let ((_%e180210180230%_
                                       (gx#syntax-e _%tl180209180227%_)))
                                  (let ((_%hd180211180233%_
                                         (##car _%e180210180230%_))
                                        (_%tl180212180235%_
                                         (##cdr _%e180210180230%_)))
                                    (let* ((_%rator180238%_ _%hd180211180233%_)
                                           (_%args180240%_ _%tl180212180235%_))
                                      (if (gx#stx-list? _%args180240%_)
                                          (let* ((_%rator-expr180242%_
                                                  (gx#core-expand-expression
                                                   _%rator180238%_))
                                                 (_%e180243180253%_
                                                  _%rator-expr180242%_)
                                                 (_%E180245180257%_
                                                  (lambda ()
                                                    (_%expand-runtime-call180203%_
                                                     _%rator-expr180242%_
                                                     _%args180240%_)))
                                                 (_%E180244180296%_
                                                  (lambda ()
                                                    (if (gx#stx-pair?
                                                         _%e180243180253%_)
                                                        (let ((_%e180246180261%_
                                                               (gx#syntax-e
                                                                _%e180243180253%_)))
                                                          (let ((_%hd180247180264%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e180246180261%_))
                        (_%tl180248180266%_ (##cdr _%e180246180261%_)))
                    (if (and (gx#identifier? _%hd180247180264%_)
                             (gx#core-identifier=? _%hd180247180264%_ '%#ref))
                        (if (gx#stx-pair? _%tl180248180266%_)
                            (let ((_%e180249180269%_
                                   (gx#syntax-e _%tl180248180266%_)))
                              (let ((_%hd180250180272%_
                                     (##car _%e180249180269%_))
                                    (_%tl180251180274%_
                                     (##cdr _%e180249180269%_)))
                                (let ((_%id180277%_ _%hd180250180272%_))
                                  (if (gx#stx-null? _%tl180251180274%_)
                                      (let ((_%$e180279%_
                                             (gx#resolve-identifier__0
                                              _%id180277%_)))
                                        (if _%$e180279%_
                                            ((lambda (_%bind180282%_)
                                               (let _%again180284%_ ((_%bind180286%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%bind180282%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%$e180288%_
                                                        (if (##structure-instance-of?
                                                             _%bind180286%_
                                                             'gx#runtime-binding::t)
                                                            (##unchecked-structure-ref
                                                             _%bind180286%_
                                                             '6
                                                             '#f
                                                             '#f)
                                                            '#f)))
                                                   (if _%$e180288%_
                                                       ((lambda (_%macro180291%_)
                                                          (gx#core-expand-expression
                                                           (gx#stx-wrap-source
                                                            (cons _%macro180291%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%args180240%_)
                    (gx#stx-source _%stx180201%_))))
                _%$e180288%_)
               (if (##structure-direct-instance-of?
                    _%bind180286%_
                    'gx#import-binding::t)
                   (_%again180284%_
                    (##unchecked-structure-ref _%bind180286%_ '5 '#f '#f))
                   (_%expand-runtime-call180203%_
                    _%rator-expr180242%_
                    _%args180240%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%$e180279%_)
                                            (_%expand-runtime-call180203%_
                                             _%rator-expr180242%_
                                             _%args180240%_)))
                                      (_%E180245180257%_)))))
                            (_%E180245180257%_))
                        (_%E180245180257%_))))
                (_%E180245180257%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E180244180296%_))
                                          (_%E180206180218%_)))))
                                (_%E180206180218%_))))
                        (_%E180206180218%_)))))
            (_%E180205180300%_)))))
    (define gx#core-expand-if%
      (lambda (_%stx180134%_)
        (let* ((_%e180135180151%_ _%stx180134%_)
               (_%E180137180155%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180135180151%_)))
               (_%E180136180197%_
                (lambda ()
                  (if (gx#stx-pair? _%e180135180151%_)
                      (let ((_%e180138180159%_
                             (gx#syntax-e _%e180135180151%_)))
                        (let ((_%hd180139180162%_ (##car _%e180138180159%_))
                              (_%tl180140180164%_ (##cdr _%e180138180159%_)))
                          (if (gx#stx-pair? _%tl180140180164%_)
                              (let ((_%e180141180167%_
                                     (gx#syntax-e _%tl180140180164%_)))
                                (let ((_%hd180142180170%_
                                       (##car _%e180141180167%_))
                                      (_%tl180143180172%_
                                       (##cdr _%e180141180167%_)))
                                  (let ((_%test180175%_ _%hd180142180170%_))
                                    (if (gx#stx-pair? _%tl180143180172%_)
                                        (let ((_%e180144180177%_
                                               (gx#syntax-e
                                                _%tl180143180172%_)))
                                          (let ((_%hd180145180180%_
                                                 (##car _%e180144180177%_))
                                                (_%tl180146180182%_
                                                 (##cdr _%e180144180177%_)))
                                            (let ((_%K180185%_
                                                   _%hd180145180180%_))
                                              (if (gx#stx-pair?
                                                   _%tl180146180182%_)
                                                  (let ((_%e180147180187%_
                                                         (gx#syntax-e
                                                          _%tl180146180182%_)))
                                                    (let ((_%hd180148180190%_
                                                           (##car _%e180147180187%_))
                                                          (_%tl180149180192%_
                                                           (##cdr _%e180147180187%_)))
                                                      (let ((_%E180195%_
                                                             _%hd180148180190%_))
                                                        (if (gx#stx-null?
                                                             _%tl180149180192%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test180175%_)
                                 (cons (gx#core-expand-expression _%K180185%_)
                                       (cons (gx#core-expand-expression
                                              _%E180195%_)
                                             '()))))
                     (gx#stx-source _%stx180134%_))
                    (_%E180137180155%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E180137180155%_)))))
                                        (_%E180137180155%_)))))
                              (_%E180137180155%_))))
                      (_%E180137180155%_)))))
          (_%E180136180197%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx180093%_)
        (let* ((_%e180094180104%_ _%stx180093%_)
               (_%E180096180108%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180094180104%_)))
               (_%E180095180130%_
                (lambda ()
                  (if (gx#stx-pair? _%e180094180104%_)
                      (let ((_%e180097180112%_
                             (gx#syntax-e _%e180094180104%_)))
                        (let ((_%hd180098180115%_ (##car _%e180097180112%_))
                              (_%tl180099180117%_ (##cdr _%e180097180112%_)))
                          (if (gx#stx-pair? _%tl180099180117%_)
                              (let ((_%e180100180120%_
                                     (gx#syntax-e _%tl180099180117%_)))
                                (let ((_%hd180101180123%_
                                       (##car _%e180100180120%_))
                                      (_%tl180102180125%_
                                       (##cdr _%e180100180120%_)))
                                  (let ((_%id180128%_ _%hd180101180123%_))
                                    (if (gx#stx-null? _%tl180102180125%_)
                                        (if (gx#identifier? _%id180128%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id180128%_
                                                          _%stx180093%_)
                                                         '()))
                                             (gx#stx-source _%stx180093%_))
                                            (_%E180096180108%_))
                                        (_%E180096180108%_)))))
                              (_%E180096180108%_))))
                      (_%E180096180108%_)))))
          (_%E180095180130%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx180039%_)
        (let* ((_%e180040180053%_ _%stx180039%_)
               (_%E180042180057%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180040180053%_)))
               (_%E180041180089%_
                (lambda ()
                  (if (gx#stx-pair? _%e180040180053%_)
                      (let ((_%e180043180061%_
                             (gx#syntax-e _%e180040180053%_)))
                        (let ((_%hd180044180064%_ (##car _%e180043180061%_))
                              (_%tl180045180066%_ (##cdr _%e180043180061%_)))
                          (if (gx#stx-pair? _%tl180045180066%_)
                              (let ((_%e180046180069%_
                                     (gx#syntax-e _%tl180045180066%_)))
                                (let ((_%hd180047180072%_
                                       (##car _%e180046180069%_))
                                      (_%tl180048180074%_
                                       (##cdr _%e180046180069%_)))
                                  (let ((_%id180077%_ _%hd180047180072%_))
                                    (if (gx#stx-pair? _%tl180048180074%_)
                                        (let ((_%e180049180079%_
                                               (gx#syntax-e
                                                _%tl180048180074%_)))
                                          (let ((_%hd180050180082%_
                                                 (##car _%e180049180079%_))
                                                (_%tl180051180084%_
                                                 (##cdr _%e180049180079%_)))
                                            (let ((_%expr180087%_
                                                   _%hd180050180082%_))
                                              (if (gx#stx-null?
                                                   _%tl180051180084%_)
                                                  (if (gx#identifier?
                                                       _%id180077%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id180077%_
                            _%stx180039%_)
                           (cons (gx#core-expand-expression _%expr180087%_)
                                 '())))
               (gx#stx-source _%stx180039%_))
              (_%E180042180057%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E180042180057%_)))))
                                        (_%E180042180057%_)))))
                              (_%E180042180057%_))))
                      (_%E180042180057%_)))))
          (_%E180041180089%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx179884%_)
        (letrec ((_%generate179886%_
                  (lambda (_%body179916%_)
                    (let _%lp179918%_ ((_%rest179920%_ _%body179916%_)
                                       (_%ns179921%_
                                        (gx#core-context-namespace__0))
                                       (_%r179922%_ '()))
                      (let* ((_%e179923179938%_ _%rest179920%_)
                             (_%E179936179942%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e179923179938%_)))
                             (_%E179932179946%_
                              (lambda ()
                                (if (gx#stx-null? _%e179923179938%_)
                                    (reverse _%r179922%_)
                                    (_%E179936179942%_))))
                             (_%E179925180003%_
                              (lambda ()
                                (if (gx#stx-pair? _%e179923179938%_)
                                    (let ((_%e179933179950%_
                                           (gx#syntax-e _%e179923179938%_)))
                                      (let ((_%hd179934179953%_
                                             (##car _%e179933179950%_))
                                            (_%tl179935179955%_
                                             (##cdr _%e179933179950%_)))
                                        (let* ((_%hd179958%_
                                                _%hd179934179953%_)
                                               (_%rest179960%_
                                                _%tl179935179955%_))
                                          (if (gx#identifier? _%hd179958%_)
                                              (_%lp179918%_
                                               _%rest179960%_
                                               _%ns179921%_
                                               (cons (cons _%hd179958%_
                                                           (cons (if _%ns179921%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd179958%_
                              _%ns179921%_
                              '"#"
                              _%hd179958%_)
                             _%hd179958%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r179922%_))
                                              (let* ((_%e179961179971%_
                                                      _%hd179958%_)
                                                     (_%E179963179975%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%e179961179971%_)))
                                                     (_%E179962179999%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e179961179971%_)
                                                            (let ((_%e179964179979%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e179961179971%_)))
                      (let ((_%hd179965179982%_ (##car _%e179964179979%_))
                            (_%tl179966179984%_ (##cdr _%e179964179979%_)))
                        (let ((_%id179987%_ _%hd179965179982%_))
                          (if (gx#stx-pair? _%tl179966179984%_)
                              (let ((_%e179967179989%_
                                     (gx#syntax-e _%tl179966179984%_)))
                                (let ((_%hd179968179992%_
                                       (##car _%e179967179989%_))
                                      (_%tl179969179994%_
                                       (##cdr _%e179967179989%_)))
                                  (let ((_%eid179997%_ _%hd179968179992%_))
                                    (if (gx#stx-null? _%tl179969179994%_)
                                        (if (and (gx#identifier? _%id179987%_)
                                                 (gx#identifier?
                                                  _%eid179997%_))
                                            (_%lp179918%_
                                             _%rest179960%_
                                             _%ns179921%_
                                             (cons (cons _%id179987%_
                                                         (cons _%eid179997%_
                                                               '()))
                                                   _%r179922%_))
                                            (_%E179963179975%_))
                                        (_%E179963179975%_)))))
                              (_%E179963179975%_)))))
                    (_%E179963179975%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E179962179999%_))))))
                                    (_%E179932179946%_))))
                             (_%E179924180035%_
                              (lambda ()
                                (if (gx#stx-pair? _%e179923179938%_)
                                    (let ((_%e179926180007%_
                                           (gx#syntax-e _%e179923179938%_)))
                                      (let ((_%hd179927180010%_
                                             (##car _%e179926180007%_))
                                            (_%tl179928180012%_
                                             (##cdr _%e179926180007%_)))
                                        (if (eq? (gx#stx-e _%hd179927180010%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl179928180012%_)
                                                (let ((_%e179929180015%_
                                                       (gx#syntax-e
                                                        _%tl179928180012%_)))
                                                  (let ((_%hd179930180018%_
                                                         (##car _%e179929180015%_))
                                                        (_%tl179931180020%_
                                                         (##cdr _%e179929180015%_)))
                                                    (let* ((_%ns180023%_
                                                            _%hd179930180018%_)
                                                           (_%rest180025%_
                                                            _%tl179931180020%_)
                                                           (_%ns180033%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns180023%_)
                        (symbol->string (gx#stx-e _%ns180023%_))
                        (if (or (gx#stx-string? _%ns180023%_)
                                (gx#stx-false? _%ns180023%_))
                            (gx#stx-e _%ns180023%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx179884%_
                             _%ns180023%_)))))
              (_%lp179918%_ _%rest180025%_ _%ns180033%_ _%r179922%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E179925180003%_))
                                            (_%E179925180003%_))))
                                    (_%E179925180003%_)))))
                        (_%E179924180035%_))))))
          (let* ((_%e179887179894%_ _%stx179884%_)
                 (_%E179889179898%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e179887179894%_)))
                 (_%E179888179912%_
                  (lambda ()
                    (if (gx#stx-pair? _%e179887179894%_)
                        (let ((_%e179890179902%_
                               (gx#syntax-e _%e179887179894%_)))
                          (let ((_%hd179891179905%_ (##car _%e179890179902%_))
                                (_%tl179892179907%_ (##cdr _%e179890179902%_)))
                            (let ((_%body179910%_ _%tl179892179907%_))
                              (if (gx#stx-list? _%body179910%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate179886%_ _%body179910%_))
                                  (_%E179889179898%_)))))
                        (_%E179889179898%_)))))
            (_%E179888179912%_)))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx179841%_)
        (let* ((_%e179842179852%_ _%stx179841%_)
               (_%E179844179856%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e179842179852%_)))
               (_%E179843179880%_
                (lambda ()
                  (if (gx#stx-pair? _%e179842179852%_)
                      (let ((_%e179845179860%_
                             (gx#syntax-e _%e179842179852%_)))
                        (let ((_%hd179846179863%_ (##car _%e179845179860%_))
                              (_%tl179847179865%_ (##cdr _%e179845179860%_)))
                          (if (gx#stx-pair? _%tl179847179865%_)
                              (let ((_%e179848179868%_
                                     (gx#syntax-e _%tl179847179865%_)))
                                (let ((_%hd179849179871%_
                                       (##car _%e179848179868%_))
                                      (_%tl179850179873%_
                                       (##cdr _%e179848179868%_)))
                                  (let* ((_%hd179876%_ _%hd179849179871%_)
                                         (_%body179878%_ _%tl179850179873%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd179876%_)
                                             (gx#stx-list? _%body179878%_)
                                             (not (gx#stx-null?
                                                   _%body179878%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd179876%_)
                                         _%body179878%_)
                                        (_%E179844179856%_)))))
                              (_%E179844179856%_))))
                      (_%E179844179856%_)))))
          (_%E179843179880%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx179777%_)
        (letrec ((_%generate179779%_
                  (lambda (_%clause179809%_)
                    (let* ((_%e179810179817%_ _%clause179809%_)
                           (_%E179812179821%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx179777%_
                               _%clause179809%_)))
                           (_%E179811179837%_
                            (lambda ()
                              (if (gx#stx-pair? _%e179810179817%_)
                                  (let ((_%e179813179825%_
                                         (gx#syntax-e _%e179810179817%_)))
                                    (let ((_%hd179814179828%_
                                           (##car _%e179813179825%_))
                                          (_%tl179815179830%_
                                           (##cdr _%e179813179825%_)))
                                      (let* ((_%hd179833%_ _%hd179814179828%_)
                                             (_%body179835%_
                                              _%tl179815179830%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd179833%_)
                                                 (gx#stx-list? _%body179835%_)
                                                 (not (gx#stx-null?
                                                       _%body179835%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd179833%_)
                                                   _%body179835%_)
                                             (gx#stx-source _%clause179809%_))
                                            (_%E179812179821%_)))))
                                  (_%E179812179821%_)))))
                      (_%E179811179837%_)))))
          (let* ((_%e179780179787%_ _%stx179777%_)
                 (_%E179782179791%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e179780179787%_)))
                 (_%E179781179805%_
                  (lambda ()
                    (if (gx#stx-pair? _%e179780179787%_)
                        (let ((_%e179783179795%_
                               (gx#syntax-e _%e179780179787%_)))
                          (let ((_%hd179784179798%_ (##car _%e179783179795%_))
                                (_%tl179785179800%_ (##cdr _%e179783179795%_)))
                            (let ((_%clauses179803%_ _%tl179785179800%_))
                              (if (gx#stx-list? _%clauses179803%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate179779%_
                                    _%clauses179803%_))
                                  (_%E179782179791%_)))))
                        (_%E179782179791%_)))))
            (_%E179781179805%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx179678%_ _%form179679%_)
        (letrec ((_%generate179681%_
                  (lambda (_%bind179724%_)
                    (let* ((_%e179725179735%_ _%bind179724%_)
                           (_%E179727179739%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx179678%_
                               _%bind179724%_)))
                           (_%E179726179763%_
                            (lambda ()
                              (if (gx#stx-pair? _%e179725179735%_)
                                  (let ((_%e179728179743%_
                                         (gx#syntax-e _%e179725179735%_)))
                                    (let ((_%hd179729179746%_
                                           (##car _%e179728179743%_))
                                          (_%tl179730179748%_
                                           (##cdr _%e179728179743%_)))
                                      (let ((_%ids179751%_ _%hd179729179746%_))
                                        (if (gx#stx-pair? _%tl179730179748%_)
                                            (let ((_%e179731179753%_
                                                   (gx#syntax-e
                                                    _%tl179730179748%_)))
                                              (let ((_%hd179732179756%_
                                                     (##car _%e179731179753%_))
                                                    (_%tl179733179758%_
                                                     (##cdr _%e179731179753%_)))
                                                (let ((_%expr179761%_
                                                       _%hd179732179756%_))
                                                  (if (gx#stx-null?
                                                       _%tl179733179758%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids179751%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids179751%_)
                        (cons _%expr179761%_ '()))
                  (_%E179727179739%_))
              (_%E179727179739%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E179727179739%_)))))
                                  (_%E179727179739%_)))))
                      (_%E179726179763%_)))))
          (let* ((_%e179682179692%_ _%stx179678%_)
                 (_%E179684179696%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e179682179692%_)))
                 (_%E179683179720%_
                  (lambda ()
                    (if (gx#stx-pair? _%e179682179692%_)
                        (let ((_%e179685179700%_
                               (gx#syntax-e _%e179682179692%_)))
                          (let ((_%hd179686179703%_ (##car _%e179685179700%_))
                                (_%tl179687179705%_ (##cdr _%e179685179700%_)))
                            (if (gx#stx-pair? _%tl179687179705%_)
                                (let ((_%e179688179708%_
                                       (gx#syntax-e _%tl179687179705%_)))
                                  (let ((_%hd179689179711%_
                                         (##car _%e179688179708%_))
                                        (_%tl179690179713%_
                                         (##cdr _%e179688179708%_)))
                                    (let* ((_%hd179716%_ _%hd179689179711%_)
                                           (_%body179718%_ _%tl179690179713%_))
                                      (if (and (gx#stx-list? _%hd179716%_)
                                               (gx#stx-list? _%body179718%_)
                                               (not (gx#stx-null?
                                                     _%body179718%_)))
                                          (gx#core-cons*
                                           _%form179679%_
                                           (gx#stx-map1
                                            _%generate179681%_
                                            _%hd179716%_)
                                           _%body179718%_)
                                          (_%E179684179696%_)))))
                                (_%E179684179696%_))))
                        (_%E179684179696%_)))))
            (_%E179683179720%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx179770%_)
        (let ((_%form179772%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx179770%_ _%form179772%_))))
    (define gx#macro-expand-let-values
      (lambda _g182314_
        (let ((_g182315_ (##length _g182314_)))
          (cond ((##fx= _g182315_ 1)
                 (apply gx#macro-expand-let-values__0 _g182314_))
                ((##fx= _g182315_ 2)
                 (apply gx#macro-expand-let-values__% _g182314_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g182314_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx179675%_)
        (gx#macro-expand-let-values__% _%stx179675%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx179673%_)
        (gx#macro-expand-let-values__% _%stx179673%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx179564%_)
        (let* ((_%e179565179591%_ _%stx179564%_)
               (_%E179577179595%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e179565179591%_)))
               (_%E179567179637%_
                (lambda ()
                  (if (gx#stx-pair? _%e179565179591%_)
                      (let ((_%e179578179599%_
                             (gx#syntax-e _%e179565179591%_)))
                        (let ((_%hd179579179602%_ (##car _%e179578179599%_))
                              (_%tl179580179604%_ (##cdr _%e179578179599%_)))
                          (if (gx#stx-pair? _%tl179580179604%_)
                              (let ((_%e179581179607%_
                                     (gx#syntax-e _%tl179580179604%_)))
                                (let ((_%hd179582179610%_
                                       (##car _%e179581179607%_))
                                      (_%tl179583179612%_
                                       (##cdr _%e179581179607%_)))
                                  (let ((_%test179615%_ _%hd179582179610%_))
                                    (if (gx#stx-pair? _%tl179583179612%_)
                                        (let ((_%e179584179617%_
                                               (gx#syntax-e
                                                _%tl179583179612%_)))
                                          (let ((_%hd179585179620%_
                                                 (##car _%e179584179617%_))
                                                (_%tl179586179622%_
                                                 (##cdr _%e179584179617%_)))
                                            (let ((_%K179625%_
                                                   _%hd179585179620%_))
                                              (if (gx#stx-pair?
                                                   _%tl179586179622%_)
                                                  (let ((_%e179587179627%_
                                                         (gx#syntax-e
                                                          _%tl179586179622%_)))
                                                    (let ((_%hd179588179630%_
                                                           (##car _%e179587179627%_))
                                                          (_%tl179589179632%_
                                                           (##cdr _%e179587179627%_)))
                                                      (let ((_%E179635%_
                                                             _%hd179588179630%_))
                                                        (if (gx#stx-null?
                                                             _%tl179589179632%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test179615%_
                                                             _%K179625%_
                                                             _%E179635%_)
                                                            (_%E179577179595%_)))))
                                                  (_%E179577179595%_)))))
                                        (_%E179577179595%_)))))
                              (_%E179577179595%_))))
                      (_%E179577179595%_))))
               (_%E179566179669%_
                (lambda ()
                  (if (gx#stx-pair? _%e179565179591%_)
                      (let ((_%e179568179641%_
                             (gx#syntax-e _%e179565179591%_)))
                        (let ((_%hd179569179644%_ (##car _%e179568179641%_))
                              (_%tl179570179646%_ (##cdr _%e179568179641%_)))
                          (if (gx#stx-pair? _%tl179570179646%_)
                              (let ((_%e179571179649%_
                                     (gx#syntax-e _%tl179570179646%_)))
                                (let ((_%hd179572179652%_
                                       (##car _%e179571179649%_))
                                      (_%tl179573179654%_
                                       (##cdr _%e179571179649%_)))
                                  (let ((_%test179657%_ _%hd179572179652%_))
                                    (if (gx#stx-pair? _%tl179573179654%_)
                                        (let ((_%e179574179659%_
                                               (gx#syntax-e
                                                _%tl179573179654%_)))
                                          (let ((_%hd179575179662%_
                                                 (##car _%e179574179659%_))
                                                (_%tl179576179664%_
                                                 (##cdr _%e179574179659%_)))
                                            (let ((_%K179667%_
                                                   _%hd179575179662%_))
                                              (if (gx#stx-null?
                                                   _%tl179576179664%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test179657%_
                                                   _%K179667%_
                                                   '#!void)
                                                  (_%E179567179637%_)))))
                                        (_%E179567179637%_)))))
                              (_%E179567179637%_))))
                      (_%E179567179637%_)))))
          (_%E179566179669%_))))
    (define gx#free-identifier=?
      (lambda (_%xid179549%_ _%yid179550%_)
        (let ((_%xe179552%_ (gx#resolve-identifier__0 _%xid179549%_))
              (_%ye179553%_ (gx#resolve-identifier__0 _%yid179550%_)))
          (if (and _%xe179552%_ _%ye179553%_)
              (let ((_%$e179556%_ (eq? _%xe179552%_ _%ye179553%_)))
                (if _%$e179556%_
                    _%$e179556%_
                    (if (##structure-instance-of? _%xe179552%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye179553%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe179552%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye179553%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe179552%_ _%ye179553%_)
                  '#f
                  (gx#stx-eq? _%xid179549%_ _%yid179550%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid179530%_ _%yid179531%_)
        (letrec ((_%context179533%_
                  (lambda (_%e179547%_)
                    (if (##structure-direct-instance-of?
                         _%e179547%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e179547%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks179534%_
                  (lambda (_%e179542%_)
                    (if (symbol? _%e179542%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e179542%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e179542%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e179542%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap179535%_
                  (lambda (_%e179540%_)
                    (if (symbol? _%e179540%_)
                        _%e179540%_
                        (gx#syntax-local-unwrap _%e179540%_)))))
          (let ((_%x179537%_ (_%unwrap179535%_ _%xid179530%_))
                (_%y179538%_ (_%unwrap179535%_ _%yid179531%_)))
            (if (gx#stx-eq? _%x179537%_ _%y179538%_)
                (if (eq? (_%context179533%_ _%x179537%_)
                         (_%context179533%_ _%y179538%_))
                    (equal? (_%marks179534%_ _%x179537%_)
                            (_%marks179534%_ _%y179538%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx179528%_)
        (if (gx#identifier? _%stx179528%_)
            (gx#core-identifier=? _%stx179528%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx179526%_)
        (if (gx#identifier? _%stx179526%_)
            (gx#core-identifier=? _%stx179526%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx179469%_ _%where179470%_)
        (let _%lp179472%_ ((_%rest179474%_ (gx#syntax->list _%stx179469%_)))
          (let* ((_%rest179475179483%_ _%rest179474%_)
                 (_%else179477179491%_ (lambda () '#t))
                 (_%K179479179504%_
                  (lambda (_%rest179494%_ _%hd179495%_)
                    (if (gx#identifier? _%hd179495%_)
                        (if (__find (lambda (_%g179497179499%_)
                                      (gx#bound-identifier=?
                                       _%g179497179499%_
                                       _%hd179495%_))
                                    _%rest179494%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where179470%_
                             _%hd179495%_)
                            (_%lp179472%_ _%rest179494%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where179470%_
                         _%hd179495%_)))))
            (if (pair? _%rest179475179483%_)
                (let ((_%hd179480179507%_ (##car _%rest179475179483%_))
                      (_%tl179481179509%_ (##cdr _%rest179475179483%_)))
                  (let* ((_%hd179512%_ _%hd179480179507%_)
                         (_%rest179514%_ _%tl179481179509%_))
                    (_%K179479179504%_ _%rest179514%_ _%hd179512%_)))
                (_%else179477179491%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx179519%_)
        (let ((_%where179521%_ _%stx179519%_))
          (gx#check-duplicate-identifiers__% _%stx179519%_ _%where179521%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g182316_
        (let ((_g182317_ (##length _g182316_)))
          (cond ((##fx= _g182317_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g182316_))
                ((##fx= _g182317_ 2)
                 (apply gx#check-duplicate-identifiers__% _g182316_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g182316_))))))
    (define gx#core-bind-values?
      (lambda (_%stx179461%_)
        (gx#stx-andmap
         (lambda (_%x179463%_)
           (let ((_%$e179465%_ (gx#identifier? _%x179463%_)))
             (if _%$e179465%_ _%$e179465%_ (gx#stx-false? _%x179463%_))))
         _%stx179461%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx179425%_ _%rebind?179426%_ _%phi179427%_ _%ctx179428%_)
        (gx#stx-for-each1
         (lambda (_%id179430%_)
           (if (gx#identifier? _%id179430%_)
               (gx#core-bind-runtime!__%
                _%id179430%_
                _%rebind?179426%_
                _%phi179427%_
                _%ctx179428%_)
               '#!void))
         _%stx179425%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx179435%_)
        (let* ((_%rebind?179437%_ '#f)
               (_%phi179439%_ (gx#current-expander-phi))
               (_%ctx179441%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx179435%_
           _%rebind?179437%_
           _%phi179439%_
           _%ctx179441%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx179443%_ _%rebind?179444%_)
        (let* ((_%phi179446%_ (gx#current-expander-phi))
               (_%ctx179448%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx179443%_
           _%rebind?179444%_
           _%phi179446%_
           _%ctx179448%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx179450%_ _%rebind?179451%_ _%phi179452%_)
        (let ((_%ctx179454%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx179450%_
           _%rebind?179451%_
           _%phi179452%_
           _%ctx179454%_))))
    (define gx#core-bind-values!
      (lambda _g182318_
        (let ((_g182319_ (##length _g182318_)))
          (cond ((##fx= _g182319_ 1) (apply gx#core-bind-values!__0 _g182318_))
                ((##fx= _g182319_ 2) (apply gx#core-bind-values!__1 _g182318_))
                ((##fx= _g182319_ 3) (apply gx#core-bind-values!__2 _g182318_))
                ((##fx= _g182319_ 4) (apply gx#core-bind-values!__% _g182318_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g182318_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx179420%_)
        (gx#stx-map1
         (lambda (_%x179422%_)
           (if (gx#identifier? _%x179422%_)
               (gx#core-quote-syntax__0 _%x179422%_)
               '#f))
         _%stx179420%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx179413%_)
        (if (gx#identifier? _%stx179413%_)
            (let* ((_%bind179415%_ (gx#resolve-identifier__0 _%stx179413%_))
                   (_%$e179417%_ (not _%bind179415%_)))
              (if _%$e179417%_
                  _%$e179417%_
                  (##structure-instance-of?
                   _%bind179415%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id179402%_ _%form179403%_)
        (let ((_%bind179405%_ (gx#resolve-identifier__0 _%id179402%_)))
          (if (##structure-instance-of? _%bind179405%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id179402%_)
              (if (not _%bind179405%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id179402%_)))
                      (gx#core-quote-syntax__0 _%id179402%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form179403%_
                       _%id179402%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form179403%_
                   _%id179402%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id179357%_ _%rebind?179358%_ _%phi179359%_ _%ctx179360%_)
        (let* ((_%key179362%_ (gx#core-identifier-key _%id179357%_))
               (_%eid179364%_
                (gx#make-binding-id__%
                 _%key179362%_
                 '#f
                 _%phi179359%_
                 _%ctx179360%_))
               (_%bind179370%_
                (if (##structure-instance-of?
                     _%ctx179360%_
                     'gx#module-context::t)
                    (let ((__obj182295
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
                       __obj182295
                       _%eid179364%_
                       _%key179362%_
                       _%phi179359%_
                       _%ctx179360%_)
                      __obj182295)
                    (if (##structure-instance-of?
                         _%ctx179360%_
                         'gx#top-context::t)
                        (let ((__obj182294
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj182294
                           _%eid179364%_
                           _%key179362%_
                           _%phi179359%_)
                          __obj182294)
                        (if (##structure-instance-of?
                             _%ctx179360%_
                             'gx#local-context::t)
                            (let ((__obj182293
                                   (##structure
                                    gx#local-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#local-binding:::init!
                               __obj182293
                               _%eid179364%_
                               _%key179362%_
                               _%phi179359%_)
                              __obj182293)
                            (let ((__obj182292
                                   (##structure
                                    gx#runtime-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#runtime-binding:::init!
                               __obj182292
                               _%eid179364%_
                               _%key179362%_
                               _%phi179359%_)
                              __obj182292))))))
          (gx#bind-identifier!__%
           _%id179357%_
           _%bind179370%_
           _%rebind?179358%_
           _%phi179359%_
           _%ctx179360%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id179376%_)
        (let* ((_%rebind?179378%_ '#f)
               (_%phi179380%_ (gx#current-expander-phi))
               (_%ctx179382%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id179376%_
           _%rebind?179378%_
           _%phi179380%_
           _%ctx179382%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id179384%_ _%rebind?179385%_)
        (let* ((_%phi179387%_ (gx#current-expander-phi))
               (_%ctx179389%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id179384%_
           _%rebind?179385%_
           _%phi179387%_
           _%ctx179389%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id179391%_ _%rebind?179392%_ _%phi179393%_)
        (let ((_%ctx179395%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id179391%_
           _%rebind?179392%_
           _%phi179393%_
           _%ctx179395%_))))
    (define gx#core-bind-runtime!
      (lambda _g182320_
        (let ((_g182321_ (##length _g182320_)))
          (cond ((##fx= _g182321_ 1)
                 (apply gx#core-bind-runtime!__0 _g182320_))
                ((##fx= _g182321_ 2)
                 (apply gx#core-bind-runtime!__1 _g182320_))
                ((##fx= _g182321_ 3)
                 (apply gx#core-bind-runtime!__2 _g182320_))
                ((##fx= _g182321_ 4)
                 (apply gx#core-bind-runtime!__% _g182320_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g182320_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id179309%_
               _%eid179310%_
               _%rebind?179311%_
               _%phi179312%_
               _%ctx179313%_)
        (let* ((_%key179315%_ (gx#core-identifier-key _%id179309%_))
               (_%bind179320%_
                (if (##structure-instance-of?
                     _%ctx179313%_
                     'gx#module-context::t)
                    (let ((__obj182298
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
                       __obj182298
                       _%eid179310%_
                       _%key179315%_
                       _%phi179312%_
                       _%ctx179313%_)
                      __obj182298)
                    (if (##structure-instance-of?
                         _%ctx179313%_
                         'gx#top-context::t)
                        (let ((__obj182297
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj182297
                           _%eid179310%_
                           _%key179315%_
                           _%phi179312%_)
                          __obj182297)
                        (let ((__obj182296
                               (##structure
                                gx#runtime-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#runtime-binding:::init!
                           __obj182296
                           _%eid179310%_
                           _%key179315%_
                           _%phi179312%_)
                          __obj182296)))))
          (gx#bind-identifier!__%
           _%id179309%_
           _%bind179320%_
           _%rebind?179311%_
           _%phi179312%_
           _%ctx179313%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id179326%_ _%eid179327%_)
        (let* ((_%rebind?179329%_ '#f)
               (_%phi179331%_ (gx#current-expander-phi))
               (_%ctx179333%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id179326%_
           _%eid179327%_
           _%rebind?179329%_
           _%phi179331%_
           _%ctx179333%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id179335%_ _%eid179336%_ _%rebind?179337%_)
        (let* ((_%phi179339%_ (gx#current-expander-phi))
               (_%ctx179341%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id179335%_
           _%eid179336%_
           _%rebind?179337%_
           _%phi179339%_
           _%ctx179341%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id179343%_ _%eid179344%_ _%rebind?179345%_ _%phi179346%_)
        (let ((_%ctx179348%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id179343%_
           _%eid179344%_
           _%rebind?179345%_
           _%phi179346%_
           _%ctx179348%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g182322_
        (let ((_g182323_ (##length _g182322_)))
          (cond ((##fx= _g182323_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g182322_))
                ((##fx= _g182323_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g182322_))
                ((##fx= _g182323_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g182322_))
                ((##fx= _g182323_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g182322_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g182322_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id179269%_
               _%eid179270%_
               _%rebind?179271%_
               _%phi179272%_
               _%ctx179273%_)
        (gx#bind-identifier!__%
         _%id179269%_
         (let ((__obj182299
                (##structure gx#extern-binding::t '#f '#f '#f '#f '#f '#f)))
           (gx#extern-binding:::init!
            __obj182299
            _%eid179270%_
            (gx#core-identifier-key _%id179269%_)
            _%phi179272%_)
           __obj182299)
         _%rebind?179271%_
         _%phi179272%_
         _%ctx179273%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id179278%_ _%eid179279%_)
        (let* ((_%rebind?179281%_ '#f)
               (_%phi179283%_ (gx#current-expander-phi))
               (_%ctx179285%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id179278%_
           _%eid179279%_
           _%rebind?179281%_
           _%phi179283%_
           _%ctx179285%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id179287%_ _%eid179288%_ _%rebind?179289%_)
        (let* ((_%phi179291%_ (gx#current-expander-phi))
               (_%ctx179293%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id179287%_
           _%eid179288%_
           _%rebind?179289%_
           _%phi179291%_
           _%ctx179293%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id179295%_ _%eid179296%_ _%rebind?179297%_ _%phi179298%_)
        (let ((_%ctx179300%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id179295%_
           _%eid179296%_
           _%rebind?179297%_
           _%phi179298%_
           _%ctx179300%_))))
    (define gx#core-bind-extern!
      (lambda _g182324_
        (let ((_g182325_ (##length _g182324_)))
          (cond ((##fx= _g182325_ 2) (apply gx#core-bind-extern!__0 _g182324_))
                ((##fx= _g182325_ 3) (apply gx#core-bind-extern!__1 _g182324_))
                ((##fx= _g182325_ 4) (apply gx#core-bind-extern!__2 _g182324_))
                ((##fx= _g182325_ 5) (apply gx#core-bind-extern!__% _g182324_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g182324_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id179223%_
               _%e179224%_
               _%rebind?179225%_
               _%phi179226%_
               _%ctx179227%_)
        (gx#bind-identifier!__%
         _%id179223%_
         (let ((_%key179232%_ (gx#core-identifier-key _%id179223%_))
               (_%e179233%_
                (if (or (##structure-instance-of? _%e179224%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e179224%_
                         'gx#expander-context::t))
                    _%e179224%_
                    (##structure
                     gx#user-expander::t
                     _%e179224%_
                     _%ctx179227%_
                     _%phi179226%_))))
           (let ((__obj182300
                  (##structure gx#syntax-binding::t '#f '#f '#f '#f '#f)))
             (gx#syntax-binding:::init!
              __obj182300
              (gx#make-binding-id__%
               _%key179232%_
               '#t
               _%phi179226%_
               _%ctx179227%_)
              _%key179232%_
              _%phi179226%_
              _%e179233%_)
             __obj182300))
         _%rebind?179225%_
         _%phi179226%_
         _%ctx179227%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id179238%_ _%e179239%_)
        (let* ((_%rebind?179241%_ '#f)
               (_%phi179243%_ (gx#current-expander-phi))
               (_%ctx179245%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id179238%_
           _%e179239%_
           _%rebind?179241%_
           _%phi179243%_
           _%ctx179245%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id179247%_ _%e179248%_ _%rebind?179249%_)
        (let* ((_%phi179251%_ (gx#current-expander-phi))
               (_%ctx179253%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id179247%_
           _%e179248%_
           _%rebind?179249%_
           _%phi179251%_
           _%ctx179253%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id179255%_ _%e179256%_ _%rebind?179257%_ _%phi179258%_)
        (let ((_%ctx179260%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id179255%_
           _%e179256%_
           _%rebind?179257%_
           _%phi179258%_
           _%ctx179260%_))))
    (define gx#core-bind-syntax!
      (lambda _g182326_
        (let ((_g182327_ (##length _g182326_)))
          (cond ((##fx= _g182327_ 2) (apply gx#core-bind-syntax!__0 _g182326_))
                ((##fx= _g182327_ 3) (apply gx#core-bind-syntax!__1 _g182326_))
                ((##fx= _g182327_ 4) (apply gx#core-bind-syntax!__2 _g182326_))
                ((##fx= _g182327_ 5) (apply gx#core-bind-syntax!__% _g182326_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g182326_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id179206%_ _%e179207%_ _%rebind?179208%_)
        (gx#core-bind-syntax!__%
         _%id179206%_
         _%e179207%_
         _%rebind?179208%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id179213%_ _%e179214%_)
        (let ((_%rebind?179216%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id179213%_
           _%e179214%_
           _%rebind?179216%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g182328_
        (let ((_g182329_ (##length _g182328_)))
          (cond ((##fx= _g182329_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g182328_))
                ((##fx= _g182329_ 3)
                 (apply gx#core-bind-root-syntax!__% _g182328_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g182328_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id179164%_
               _%alias-id179165%_
               _%rebind?179166%_
               _%phi179167%_
               _%ctx179168%_)
        (gx#bind-identifier!__%
         _%id179164%_
         (let* ((_%key179170%_ (gx#core-identifier-key _%id179164%_))
                (__obj182301
                 (##structure gx#alias-binding::t '#f '#f '#f '#f '#f)))
           (gx#alias-binding:::init!
            __obj182301
            (gx#make-binding-id__%
             _%key179170%_
             '#t
             _%phi179167%_
             _%ctx179168%_)
            _%key179170%_
            _%phi179167%_
            _%alias-id179165%_)
           __obj182301)
         _%rebind?179166%_
         _%phi179167%_
         _%ctx179168%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id179175%_ _%alias-id179176%_)
        (let* ((_%rebind?179178%_ '#f)
               (_%phi179180%_ (gx#current-expander-phi))
               (_%ctx179182%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id179175%_
           _%alias-id179176%_
           _%rebind?179178%_
           _%phi179180%_
           _%ctx179182%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id179184%_ _%alias-id179185%_ _%rebind?179186%_)
        (let* ((_%phi179188%_ (gx#current-expander-phi))
               (_%ctx179190%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id179184%_
           _%alias-id179185%_
           _%rebind?179186%_
           _%phi179188%_
           _%ctx179190%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id179192%_ _%alias-id179193%_ _%rebind?179194%_ _%phi179195%_)
        (let ((_%ctx179197%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id179192%_
           _%alias-id179193%_
           _%rebind?179194%_
           _%phi179195%_
           _%ctx179197%_))))
    (define gx#core-bind-alias!
      (lambda _g182330_
        (let ((_g182331_ (##length _g182330_)))
          (cond ((##fx= _g182331_ 2) (apply gx#core-bind-alias!__0 _g182330_))
                ((##fx= _g182331_ 3) (apply gx#core-bind-alias!__1 _g182330_))
                ((##fx= _g182331_ 4) (apply gx#core-bind-alias!__2 _g182330_))
                ((##fx= _g182331_ 5) (apply gx#core-bind-alias!__% _g182330_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g182330_))))))
    (define gx#make-binding-id__%
      (lambda (_%key179114%_ _%syntax?179115%_ _%phi179116%_ _%ctx179117%_)
        (if (uninterned-symbol? _%key179114%_)
            (##gensym 'L)
            (if (pair? _%key179114%_)
                (gensym (##car _%key179114%_))
                (if (##structure-instance-of? _%ctx179117%_ 'gx#top-context::t)
                    (let ((_%ns179122%_
                           (gx#core-context-namespace__% _%ctx179117%_)))
                      (if (and (fxzero? _%phi179116%_) (not _%syntax?179115%_))
                          (if _%ns179122%_
                              (make-symbol__1 _%ns179122%_ '"#" _%key179114%_)
                              _%key179114%_)
                          (if _%syntax?179115%_
                              (make-symbol__1
                               (let ((_%$e179126%_ _%ns179122%_))
                                 (if _%$e179126%_ _%$e179126%_ '""))
                               '"[:"
                               (number->string _%phi179116%_)
                               '":]#"
                               _%key179114%_)
                              (make-symbol__1
                               (let ((_%$e179130%_ _%ns179122%_))
                                 (if _%$e179130%_ _%$e179130%_ '""))
                               '"["
                               (number->string _%phi179116%_)
                               '"]#"
                               _%key179114%_))))
                    (gensym _%key179114%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key179137%_)
        (let* ((_%syntax?179139%_ '#f)
               (_%phi179141%_ (gx#current-expander-phi))
               (_%ctx179143%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key179137%_
           _%syntax?179139%_
           _%phi179141%_
           _%ctx179143%_))))
    (define gx#make-binding-id__1
      (lambda (_%key179145%_ _%syntax?179146%_)
        (let* ((_%phi179148%_ (gx#current-expander-phi))
               (_%ctx179150%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key179145%_
           _%syntax?179146%_
           _%phi179148%_
           _%ctx179150%_))))
    (define gx#make-binding-id__2
      (lambda (_%key179152%_ _%syntax?179153%_ _%phi179154%_)
        (let ((_%ctx179156%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key179152%_
           _%syntax?179153%_
           _%phi179154%_
           _%ctx179156%_))))
    (define gx#make-binding-id
      (lambda _g182332_
        (let ((_g182333_ (##length _g182332_)))
          (cond ((##fx= _g182333_ 1) (apply gx#make-binding-id__0 _g182332_))
                ((##fx= _g182333_ 2) (apply gx#make-binding-id__1 _g182332_))
                ((##fx= _g182333_ 3) (apply gx#make-binding-id__2 _g182332_))
                ((##fx= _g182333_ 4) (apply gx#make-binding-id__% _g182332_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g182332_))))))))
