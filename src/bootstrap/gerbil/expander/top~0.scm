(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1771101401)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx182216%_)
        (letrec ((_%expand-special182218%_
                  (lambda (_%hd182220%_ _%K182221%_ _%rest182222%_ _%r182223%_)
                    (_%K182221%_
                     _%rest182222%_
                     (cons (gx#core-expand-top _%hd182220%_) _%r182223%_)))))
          (gx#core-expand-block__0 _%stx182216%_ _%expand-special182218%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx181910%_)
        (letrec ((_%expand-special181912%_
                  (lambda (_%hd182034%_ _%K182035%_ _%rest182036%_ _%r182037%_)
                    (let* ((_%K182041%_
                            (lambda (_%e182039%_)
                              (_%K182035%_
                               _%rest182036%_
                               (cons _%e182039%_ _%r182037%_))))
                           (_%e182042182084%_ _%hd182034%_)
                           (_%E182079182088%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e182042182084%_)))
                           (_%E182075182100%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182042182084%_)
                                  (let ((_%e182080182092%_
                                         (gx#syntax-e _%e182042182084%_)))
                                    (let ((_%hd182081182095%_
                                           (##car _%e182080182092%_))
                                          (_%tl182082182097%_
                                           (##cdr _%e182080182092%_)))
                                      (if (and (gx#identifier?
                                                _%hd182081182095%_)
                                               (gx#core-identifier=?
                                                _%hd182081182095%_
                                                '%#define-runtime))
                                          (_%K182041%_
                                           (gx#core-expand-define-runtime%
                                            _%hd182034%_))
                                          (_%E182079182088%_))))
                                  (_%E182079182088%_))))
                           (_%E182071182112%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182042182084%_)
                                  (let ((_%e182076182104%_
                                         (gx#syntax-e _%e182042182084%_)))
                                    (let ((_%hd182077182107%_
                                           (##car _%e182076182104%_))
                                          (_%tl182078182109%_
                                           (##cdr _%e182076182104%_)))
                                      (if (and (gx#identifier?
                                                _%hd182077182107%_)
                                               (gx#core-identifier=?
                                                _%hd182077182107%_
                                                '%#define-alias))
                                          (_%K182041%_
                                           (gx#core-expand-define-alias%
                                            _%hd182034%_))
                                          (_%E182075182100%_))))
                                  (_%E182075182100%_))))
                           (_%E182061182124%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182042182084%_)
                                  (let ((_%e182072182116%_
                                         (gx#syntax-e _%e182042182084%_)))
                                    (let ((_%hd182073182119%_
                                           (##car _%e182072182116%_))
                                          (_%tl182074182121%_
                                           (##cdr _%e182072182116%_)))
                                      (if (and (gx#identifier?
                                                _%hd182073182119%_)
                                               (gx#core-identifier=?
                                                _%hd182073182119%_
                                                '%#define-syntax))
                                          (_%K182041%_
                                           (gx#core-expand-define-syntax%
                                            _%hd182034%_))
                                          (_%E182071182112%_))))
                                  (_%E182071182112%_))))
                           (_%E182048182156%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182042182084%_)
                                  (let ((_%e182062182128%_
                                         (gx#syntax-e _%e182042182084%_)))
                                    (let ((_%hd182063182131%_
                                           (##car _%e182062182128%_))
                                          (_%tl182064182133%_
                                           (##cdr _%e182062182128%_)))
                                      (if (and (gx#identifier?
                                                _%hd182063182131%_)
                                               (gx#core-identifier=?
                                                _%hd182063182131%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl182064182133%_)
                                              (let ((_%e182065182136%_
                                                     (gx#syntax-e
                                                      _%tl182064182133%_)))
                                                (let ((_%hd182066182139%_
                                                       (##car _%e182065182136%_))
                                                      (_%tl182067182141%_
                                                       (##cdr _%e182065182136%_)))
                                                  (let ((_%hd-bind182144%_
                                                         _%hd182066182139%_))
                                                    (if (gx#stx-pair?
                                                         _%tl182067182141%_)
                                                        (let ((_%e182068182146%_
                                                               (gx#syntax-e
                                                                _%tl182067182141%_)))
                                                          (let ((_%hd182069182149%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e182068182146%_))
                        (_%tl182070182151%_ (##cdr _%e182068182146%_)))
                    (let ((_%expr182154%_ _%hd182069182149%_))
                      (if (gx#stx-null? _%tl182070182151%_)
                          (if (gx#core-bind-values? _%hd-bind182144%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind182144%_)
                                (_%K182041%_ _%hd182034%_))
                              (_%E182061182124%_))
                          (_%E182061182124%_)))))
                (_%E182061182124%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E182061182124%_))
                                          (_%E182061182124%_))))
                                  (_%E182061182124%_))))
                           (_%E182044182200%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182042182084%_)
                                  (let ((_%e182049182160%_
                                         (gx#syntax-e _%e182042182084%_)))
                                    (let ((_%hd182050182163%_
                                           (##car _%e182049182160%_))
                                          (_%tl182051182165%_
                                           (##cdr _%e182049182160%_)))
                                      (if (and (gx#identifier?
                                                _%hd182050182163%_)
                                               (gx#core-identifier=?
                                                _%hd182050182163%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl182051182165%_)
                                              (let ((_%e182052182168%_
                                                     (gx#syntax-e
                                                      _%tl182051182165%_)))
                                                (let ((_%hd182053182171%_
                                                       (##car _%e182052182168%_))
                                                      (_%tl182054182173%_
                                                       (##cdr _%e182052182168%_)))
                                                  (if (gx#stx-pair?
                                                       _%hd182053182171%_)
                                                      (let ((_%e182058182176%_
                                                             (gx#syntax-e
                                                              _%hd182053182171%_)))
                                                        (let ((_%hd182059182179%_
                                                               (##car _%e182058182176%_))
                                                              (_%tl182060182181%_
                                                               (##cdr _%e182058182176%_)))
                                                          (let ((_%id182184%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd182059182179%_))
                    (if (gx#stx-null? _%tl182060182181%_)
                        (if (gx#stx-pair? _%tl182054182173%_)
                            (let ((_%e182055182186%_
                                   (gx#syntax-e _%tl182054182173%_)))
                              (let ((_%hd182056182189%_
                                     (##car _%e182055182186%_))
                                    (_%tl182057182191%_
                                     (##cdr _%e182055182186%_)))
                                (let* ((_%expr182194%_ _%hd182056182189%_)
                                       (_%props182196%_ _%tl182057182191%_))
                                  (if (gx#identifier? _%id182184%_)
                                      (let ((_%bind182198%_
                                             (gx#core-bind-runtime!__0
                                              _%id182184%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind182198%_
                                         _%props182196%_)
                                        (_%K182041%_ _%hd182034%_))
                                      (_%E182048182156%_)))))
                            (_%E182048182156%_))
                        (_%E182048182156%_)))))
              (_%E182048182156%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E182048182156%_))
                                          (_%E182048182156%_))))
                                  (_%E182048182156%_))))
                           (_%E182043182212%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182042182084%_)
                                  (let ((_%e182045182204%_
                                         (gx#syntax-e _%e182042182084%_)))
                                    (let ((_%hd182046182207%_
                                           (##car _%e182045182204%_))
                                          (_%tl182047182209%_
                                           (##cdr _%e182045182204%_)))
                                      (if (and (gx#identifier?
                                                _%hd182046182207%_)
                                               (gx#core-identifier=?
                                                _%hd182046182207%_
                                                '%#begin-syntax))
                                          (_%K182041%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd182034%_))
                                          (_%E182044182200%_))))
                                  (_%E182044182200%_)))))
                      (_%E182043182212%_))))
                 (_%eval-body181913%_
                  (lambda (_%rbody181921%_)
                    (let _%lp181923%_ ((_%rest181925%_ _%rbody181921%_)
                                       (_%body181926%_ '())
                                       (_%ebody181927%_ '()))
                      (let* ((_%rest181928181936%_ _%rest181925%_)
                             (_%else181930181944%_
                              (lambda ()
                                (values _%body181926%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody181927%_)
                                          (gx#stx-source _%stx181910%_))))))
                             (_%K181932182022%_
                              (lambda (_%rest181947%_ _%hd181948%_)
                                (let* ((_%e181949181966%_ _%hd181948%_)
                                       (_%E181961181970%_
                                        (lambda ()
                                          (_%lp181923%_
                                           _%rest181947%_
                                           (cons _%hd181948%_ _%body181926%_)
                                           (cons _%hd181948%_
                                                 _%ebody181927%_))))
                                       (_%E181951181982%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e181949181966%_)
                                              (let ((_%e181962181974%_
                                                     (gx#syntax-e
                                                      _%e181949181966%_)))
                                                (let ((_%hd181963181977%_
                                                       (##car _%e181962181974%_))
                                                      (_%tl181964181979%_
                                                       (##cdr _%e181962181974%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd181963181977%_)
                                                           (gx#core-identifier=?
                                                            _%hd181963181977%_
                                                            '%#begin-syntax))
                                                      (_%lp181923%_
                                                       _%rest181947%_
                                                       (cons _%hd181948%_
                                                             _%body181926%_)
                                                       _%ebody181927%_)
                                                      (_%E181961181970%_))))
                                              (_%E181961181970%_))))
                                       (_%E181950182018%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e181949181966%_)
                                              (let ((_%e181952181986%_
                                                     (gx#syntax-e
                                                      _%e181949181966%_)))
                                                (let ((_%hd181953181989%_
                                                       (##car _%e181952181986%_))
                                                      (_%tl181954181991%_
                                                       (##cdr _%e181952181986%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd181953181989%_)
                                                           (gx#core-identifier=?
                                                            _%hd181953181989%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl181954181991%_)
                                                          (let ((_%e181955181994%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl181954181991%_)))
                    (let ((_%hd181956181997%_ (##car _%e181955181994%_))
                          (_%tl181957181999%_ (##cdr _%e181955181994%_)))
                      (let ((_%hd-bind182002%_ _%hd181956181997%_))
                        (if (gx#stx-pair? _%tl181957181999%_)
                            (let ((_%e181958182004%_
                                   (gx#syntax-e _%tl181957181999%_)))
                              (let ((_%hd181959182007%_
                                     (##car _%e181958182004%_))
                                    (_%tl181960182009%_
                                     (##cdr _%e181958182004%_)))
                                (let* ((_%expr182012%_ _%hd181959182007%_)
                                       (_%ignore-props182014%_
                                        _%tl181960182009%_)
                                       (_%ehd182016%_
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#define-values)
                                               (cons (gx#core-quote-bind-values
                                                      _%hd-bind182002%_)
                                                     (cons (gx#core-expand-expression
                                                            _%expr182012%_)
                                                           '())))
                                         (gx#stx-source _%hd181948%_))))
                                  (_%lp181923%_
                                   _%rest181947%_
                                   (cons _%ehd182016%_ _%body181926%_)
                                   (cons _%ehd182016%_ _%ebody181927%_)))))
                            (_%E181951181982%_)))))
                  (_%E181951181982%_))
              (_%E181951181982%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E181951181982%_)))))
                                  (_%E181950182018%_)))))
                        (if (pair? _%rest181928181936%_)
                            (let ((_%hd181933182025%_
                                   (##car _%rest181928181936%_))
                                  (_%tl181934182027%_
                                   (##cdr _%rest181928181936%_)))
                              (let* ((_%hd182030%_ _%hd181933182025%_)
                                     (_%rest182032%_ _%tl181934182027%_))
                                (_%K181932182022%_
                                 _%rest182032%_
                                 _%hd182030%_)))
                            (_%else181930181944%_)))))))
          (call-with-parameters__1
           (lambda ()
             (let* ((_%rbody181916%_
                     (gx#core-expand-block__1
                      _%stx181910%_
                      _%expand-special181912%_
                      '#f))
                    (_g182249_ (_%eval-body181913%_ _%rbody181916%_)))
               (begin
                 (let ((_g182250_
                        (if (##values? _g182249_)
                            (##values-length _g182249_)
                            1)))
                   (if (not (##fx= _g182250_ 2))
                       (error "Context expects 2 values" _g182250_)))
                 (let ((_%expanded-body181918%_ (##values-ref _g182249_ 0))
                       (_%value181919%_ (##values-ref _g182249_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body181918%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value181919%_ '())))
                    (gx#stx-source _%stx181910%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx181880%_)
        (let* ((_%e181881181888%_ _%stx181880%_)
               (_%E181883181892%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181881181888%_)))
               (_%E181882181906%_
                (lambda ()
                  (if (gx#stx-pair? _%e181881181888%_)
                      (let ((_%e181884181896%_
                             (gx#syntax-e _%e181881181888%_)))
                        (let ((_%hd181885181899%_ (##car _%e181884181896%_))
                              (_%tl181886181901%_ (##cdr _%e181884181896%_)))
                          (let ((_%body181904%_ _%tl181886181901%_))
                            (if (gx#stx-list? _%body181904%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body181904%_)
                                 (gx#stx-source _%stx181880%_))
                                (_%E181883181892%_)))))
                      (_%E181883181892%_)))))
          (_%E181882181906%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx181878%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx181878%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx181824%_)
        (let* ((_%e181825181838%_ _%stx181824%_)
               (_%E181827181842%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181825181838%_)))
               (_%E181826181874%_
                (lambda ()
                  (if (gx#stx-pair? _%e181825181838%_)
                      (let ((_%e181828181846%_
                             (gx#syntax-e _%e181825181838%_)))
                        (let ((_%hd181829181849%_ (##car _%e181828181846%_))
                              (_%tl181830181851%_ (##cdr _%e181828181846%_)))
                          (if (gx#stx-pair? _%tl181830181851%_)
                              (let ((_%e181831181854%_
                                     (gx#syntax-e _%tl181830181851%_)))
                                (let ((_%hd181832181857%_
                                       (##car _%e181831181854%_))
                                      (_%tl181833181859%_
                                       (##cdr _%e181831181854%_)))
                                  (let ((_%ann181862%_ _%hd181832181857%_))
                                    (if (gx#stx-pair? _%tl181833181859%_)
                                        (let ((_%e181834181864%_
                                               (gx#syntax-e
                                                _%tl181833181859%_)))
                                          (let ((_%hd181835181867%_
                                                 (##car _%e181834181864%_))
                                                (_%tl181836181869%_
                                                 (##cdr _%e181834181864%_)))
                                            (let ((_%expr181872%_
                                                   _%hd181835181867%_))
                                              (if (gx#stx-null?
                                                   _%tl181836181869%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann181862%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr181872%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx181824%_))
                                                  (_%E181827181842%_)))))
                                        (_%E181827181842%_)))))
                              (_%E181827181842%_))))
                      (_%E181827181842%_)))))
          (_%E181826181874%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx181489%_ _%body181490%_)
        (letrec ((_%expand-special181492%_
                  (lambda (_%hd181819%_ _%K181820%_ _%rest181821%_ _%r181822%_)
                    (_%K181820%_
                     '()
                     (cons (_%expand-internal181493%_
                            _%hd181819%_
                            _%rest181821%_)
                           _%r181822%_))))
                 (_%expand-internal181493%_
                  (lambda (_%hd181815%_ _%rest181816%_)
                    (call-with-parameters__1
                     (lambda ()
                       (_%wrap-internal181495%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd181815%_ _%rest181816%_))
                          (gx#stx-source _%stx181489%_))
                         _%expand-internal-special181494%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj182233
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj182233)
                       __obj182233))))
                 (_%expand-internal-special181494%_
                  (lambda (_%hd181653%_ _%K181654%_ _%rest181655%_ _%r181656%_)
                    (let* ((_%e181657181695%_ _%hd181653%_)
                           (_%E181690181699%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e181657181695%_)))
                           (_%E181686181711%_
                            (lambda ()
                              (if (gx#stx-pair? _%e181657181695%_)
                                  (let ((_%e181691181703%_
                                         (gx#syntax-e _%e181657181695%_)))
                                    (let ((_%hd181692181706%_
                                           (##car _%e181691181703%_))
                                          (_%tl181693181708%_
                                           (##cdr _%e181691181703%_)))
                                      (if (and (gx#identifier?
                                                _%hd181692181706%_)
                                               (gx#core-identifier=?
                                                _%hd181692181706%_
                                                '%#declare))
                                          (_%K181654%_
                                           _%rest181655%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd181653%_)
                                                 _%r181656%_))
                                          (_%E181690181699%_))))
                                  (_%E181690181699%_))))
                           (_%E181682181723%_
                            (lambda ()
                              (if (gx#stx-pair? _%e181657181695%_)
                                  (let ((_%e181687181715%_
                                         (gx#syntax-e _%e181657181695%_)))
                                    (let ((_%hd181688181718%_
                                           (##car _%e181687181715%_))
                                          (_%tl181689181720%_
                                           (##cdr _%e181687181715%_)))
                                      (if (and (gx#identifier?
                                                _%hd181688181718%_)
                                               (gx#core-identifier=?
                                                _%hd181688181718%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd181653%_)
                                            (_%K181654%_
                                             _%rest181655%_
                                             _%r181656%_))
                                          (_%E181686181711%_))))
                                  (_%E181686181711%_))))
                           (_%E181672181735%_
                            (lambda ()
                              (if (gx#stx-pair? _%e181657181695%_)
                                  (let ((_%e181683181727%_
                                         (gx#syntax-e _%e181657181695%_)))
                                    (let ((_%hd181684181730%_
                                           (##car _%e181683181727%_))
                                          (_%tl181685181732%_
                                           (##cdr _%e181683181727%_)))
                                      (if (and (gx#identifier?
                                                _%hd181684181730%_)
                                               (gx#core-identifier=?
                                                _%hd181684181730%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd181653%_)
                                            (_%K181654%_
                                             _%rest181655%_
                                             _%r181656%_))
                                          (_%E181682181723%_))))
                                  (_%E181682181723%_))))
                           (_%E181659181767%_
                            (lambda ()
                              (if (gx#stx-pair? _%e181657181695%_)
                                  (let ((_%e181673181739%_
                                         (gx#syntax-e _%e181657181695%_)))
                                    (let ((_%hd181674181742%_
                                           (##car _%e181673181739%_))
                                          (_%tl181675181744%_
                                           (##cdr _%e181673181739%_)))
                                      (if (and (gx#identifier?
                                                _%hd181674181742%_)
                                               (gx#core-identifier=?
                                                _%hd181674181742%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl181675181744%_)
                                              (let ((_%e181676181747%_
                                                     (gx#syntax-e
                                                      _%tl181675181744%_)))
                                                (let ((_%hd181677181750%_
                                                       (##car _%e181676181747%_))
                                                      (_%tl181678181752%_
                                                       (##cdr _%e181676181747%_)))
                                                  (let ((_%hd-bind181755%_
                                                         _%hd181677181750%_))
                                                    (if (gx#stx-pair?
                                                         _%tl181678181752%_)
                                                        (let ((_%e181679181757%_
                                                               (gx#syntax-e
                                                                _%tl181678181752%_)))
                                                          (let ((_%hd181680181760%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e181679181757%_))
                        (_%tl181681181762%_ (##cdr _%e181679181757%_)))
                    (let ((_%expr181765%_ _%hd181680181760%_))
                      (if (gx#stx-null? _%tl181681181762%_)
                          (if (gx#core-bind-values? _%hd-bind181755%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind181755%_)
                                (_%K181654%_
                                 _%rest181655%_
                                 (cons _%hd181653%_ _%r181656%_)))
                              (_%E181672181735%_))
                          (_%E181672181735%_)))))
                (_%E181672181735%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E181672181735%_))
                                          (_%E181672181735%_))))
                                  (_%E181672181735%_))))
                           (_%E181658181811%_
                            (lambda ()
                              (if (gx#stx-pair? _%e181657181695%_)
                                  (let ((_%e181660181771%_
                                         (gx#syntax-e _%e181657181695%_)))
                                    (let ((_%hd181661181774%_
                                           (##car _%e181660181771%_))
                                          (_%tl181662181776%_
                                           (##cdr _%e181660181771%_)))
                                      (if (and (gx#identifier?
                                                _%hd181661181774%_)
                                               (gx#core-identifier=?
                                                _%hd181661181774%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl181662181776%_)
                                              (let ((_%e181663181779%_
                                                     (gx#syntax-e
                                                      _%tl181662181776%_)))
                                                (let ((_%hd181664181782%_
                                                       (##car _%e181663181779%_))
                                                      (_%tl181665181784%_
                                                       (##cdr _%e181663181779%_)))
                                                  (if (gx#stx-pair?
                                                       _%hd181664181782%_)
                                                      (let ((_%e181669181787%_
                                                             (gx#syntax-e
                                                              _%hd181664181782%_)))
                                                        (let ((_%hd181670181790%_
                                                               (##car _%e181669181787%_))
                                                              (_%tl181671181792%_
                                                               (##cdr _%e181669181787%_)))
                                                          (let ((_%id181795%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd181670181790%_))
                    (if (gx#stx-null? _%tl181671181792%_)
                        (if (gx#stx-pair? _%tl181665181784%_)
                            (let ((_%e181666181797%_
                                   (gx#syntax-e _%tl181665181784%_)))
                              (let ((_%hd181667181800%_
                                     (##car _%e181666181797%_))
                                    (_%tl181668181802%_
                                     (##cdr _%e181666181797%_)))
                                (let* ((_%expr181805%_ _%hd181667181800%_)
                                       (_%props181807%_ _%tl181668181802%_))
                                  (if (gx#identifier? _%id181795%_)
                                      (let ((_%bind181809%_
                                             (gx#core-bind-runtime!__0
                                              _%id181795%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind181809%_
                                         _%props181807%_)
                                        (_%K181654%_
                                         _%rest181655%_
                                         (cons _%hd181653%_ _%r181656%_)))
                                      (_%E181659181767%_)))))
                            (_%E181659181767%_))
                        (_%E181659181767%_)))))
              (_%E181659181767%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E181659181767%_))
                                          (_%E181659181767%_))))
                                  (_%E181659181767%_)))))
                      (_%E181658181811%_))))
                 (_%wrap-internal181495%_
                  (lambda (_%rbody181497%_)
                    (let _%lp181499%_ ((_%rest181501%_ _%rbody181497%_)
                                       (_%decls181502%_ '())
                                       (_%bind181503%_ '())
                                       (_%body181504%_ '()))
                      (let* ((_%e181505181512%_ _%rest181501%_)
                             (_%E181507181561%_
                              (lambda ()
                                (let* ((_%body181556%_
                                        (let* ((_%body181515181525%_
                                                _%body181504%_)
                                               (_%else181518181533%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body181504%_)
                                                   (gx#stx-source
                                                    _%stx181489%_)))))
                                          (let ((_%K181523181553%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx181489%_)))
                                                (_%K181520181539%_
                                                 (lambda (_%expr181537%_)
                                                   _%expr181537%_)))
                                            (let ((_%try-match181517181549%_
                                                   (lambda ()
                                                     (if (pair? _%body181515181525%_)
                                                         (let ((_%tl181522181544%_
                                                                (##cdr _%body181515181525%_))
                                                               (_%hd181521181542%_
                                                                (##car _%body181515181525%_)))
                                                           (if (null? _%tl181522181544%_)
                                                               (let ((_%expr181547%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd181521181542%_))
                         (_%K181520181539%_ _%expr181547%_))
                       (_%else181518181533%_)))
                 (_%else181518181533%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%body181515181525%_)
                                                  (_%K181523181553%_)
                                                  (_%try-match181517181549%_))))))
                                       (_%body181558%_
                                        (if (null? _%bind181503%_)
                                            _%body181556%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind181503%_
                                                         (cons _%body181556%_
                                                               '())))
                                             (gx#stx-source _%stx181489%_)))))
                                  (if (null? _%decls181502%_)
                                      _%body181558%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls181502%_
                                                   (cons _%body181558%_ '())))
                                       (gx#stx-source _%stx181489%_))))))
                             (_%E181506181649%_
                              (lambda ()
                                (if (gx#stx-pair? _%e181505181512%_)
                                    (let ((_%e181508181565%_
                                           (gx#syntax-e _%e181505181512%_)))
                                      (let ((_%hd181509181568%_
                                             (##car _%e181508181565%_))
                                            (_%tl181510181570%_
                                             (##cdr _%e181508181565%_)))
                                        (let* ((_%hd181573%_
                                                _%hd181509181568%_)
                                               (_%rest181575%_
                                                _%tl181510181570%_)
                                               (_%e181576181593%_ _%hd181573%_)
                                               (_%E181588181597%_
                                                (lambda ()
                                                  (if (null? _%bind181503%_)
                                                      (_%lp181499%_
                                                       _%rest181575%_
                                                       _%decls181502%_
                                                       _%bind181503%_
                                                       (cons _%hd181573%_
                                                             _%body181504%_))
                                                      (_%lp181499%_
                                                       _%rest181575%_
                                                       _%decls181502%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd181573%_ '()))
                     _%bind181503%_)
               _%body181504%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E181578181611%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e181576181593%_)
                                                      (let ((_%e181589181601%_
                                                             (gx#syntax-e
                                                              _%e181576181593%_)))
                                                        (let ((_%hd181590181604%_
                                                               (##car _%e181589181601%_))
                                                              (_%tl181591181606%_
                                                               (##cdr _%e181589181601%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd181590181604%_)
                           (gx#core-identifier=?
                            _%hd181590181604%_
                            '%#declare))
                      (let ((_%xdecls181609%_ _%tl181591181606%_))
                        (_%lp181499%_
                         _%rest181575%_
                         (gx#stx-foldr cons _%decls181502%_ _%xdecls181609%_)
                         _%bind181503%_
                         _%body181504%_))
                      (_%E181588181597%_))))
              (_%E181588181597%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E181577181645%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e181576181593%_)
                                                      (let ((_%e181579181615%_
                                                             (gx#syntax-e
                                                              _%e181576181593%_)))
                                                        (let ((_%hd181580181618%_
                                                               (##car _%e181579181615%_))
                                                              (_%tl181581181620%_
                                                               (##cdr _%e181579181615%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd181580181618%_)
                           (gx#core-identifier=?
                            _%hd181580181618%_
                            '%#define-values))
                      (if (gx#stx-pair? _%tl181581181620%_)
                          (let ((_%e181582181623%_
                                 (gx#syntax-e _%tl181581181620%_)))
                            (let ((_%hd181583181626%_
                                   (##car _%e181582181623%_))
                                  (_%tl181584181628%_
                                   (##cdr _%e181582181623%_)))
                              (let ((_%hd-bind181631%_ _%hd181583181626%_))
                                (if (gx#stx-pair? _%tl181584181628%_)
                                    (let ((_%e181585181633%_
                                           (gx#syntax-e _%tl181584181628%_)))
                                      (let ((_%hd181586181636%_
                                             (##car _%e181585181633%_))
                                            (_%tl181587181638%_
                                             (##cdr _%e181585181633%_)))
                                        (let* ((_%expr181641%_
                                                _%hd181586181636%_)
                                               (_%ignore-props181643%_
                                                _%tl181587181638%_))
                                          (_%lp181499%_
                                           _%rest181575%_
                                           _%decls181502%_
                                           (cons (cons (gx#core-quote-bind-values
                                                        _%hd-bind181631%_)
                                                       (cons (gx#core-expand-expression
                                                              _%expr181641%_)
                                                             '()))
                                                 _%bind181503%_)
                                           _%body181504%_))))
                                    (_%E181578181611%_)))))
                          (_%E181578181611%_))
                      (_%E181578181611%_))))
              (_%E181578181611%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%E181577181645%_))))
                                    (_%E181507181561%_)))))
                        (_%E181506181649%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body181490%_)
            (gx#stx-source _%stx181489%_))
           _%expand-special181492%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx181427%_)
        (let* ((_%e181428181435%_ _%stx181427%_)
               (_%E181430181439%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181428181435%_)))
               (_%E181429181485%_
                (lambda ()
                  (if (gx#stx-pair? _%e181428181435%_)
                      (let ((_%e181431181443%_
                             (gx#syntax-e _%e181428181435%_)))
                        (let ((_%hd181432181446%_ (##car _%e181431181443%_))
                              (_%tl181433181448%_ (##cdr _%e181431181443%_)))
                          (let ((_%body181451%_ _%tl181433181448%_))
                            (if (gx#stx-list? _%body181451%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl181453%_)
                                     (let* ((_%e181454181461%_ _%decl181453%_)
                                            (_%E181456181465%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e181454181461%_)))
                                            (_%E181455181481%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e181454181461%_)
                                                   (let ((_%e181457181469%_
                                                          (gx#syntax-e
                                                           _%e181454181461%_)))
                                                     (let ((_%hd181458181472%_
                                                            (##car _%e181457181469%_))
                                                           (_%tl181459181474%_
                                                            (##cdr _%e181457181469%_)))
                                                       (let* ((_%head181477%_
                                                               _%hd181458181472%_)
                                                              (_%args181479%_
                                                               _%tl181459181474%_))
                                                         (if (gx#stx-list?
                                                              _%args181479%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl181453%_)
                                                             (_%E181456181465%_)))))
                                                   (_%E181456181465%_)))))
                                       (_%E181455181481%_)))
                                   _%body181451%_))
                                 (gx#stx-source _%stx181427%_))
                                (_%E181430181439%_)))))
                      (_%E181430181439%_)))))
          (_%E181429181485%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx181331%_)
        (let* ((_%e181332181339%_ _%stx181331%_)
               (_%E181334181343%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181332181339%_)))
               (_%E181333181423%_
                (lambda ()
                  (if (gx#stx-pair? _%e181332181339%_)
                      (let ((_%e181335181347%_
                             (gx#syntax-e _%e181332181339%_)))
                        (let ((_%hd181336181350%_ (##car _%e181335181347%_))
                              (_%tl181337181352%_ (##cdr _%e181335181347%_)))
                          (let ((_%body181355%_ _%tl181337181352%_))
                            (let _%lp181357%_ ((_%rest181359%_ _%body181355%_)
                                               (_%r181360%_ '()))
                              (let* ((_%e181361181375%_ _%rest181359%_)
                                     (_%E181373181379%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx181331%_)))
                                     (_%E181363181383%_
                                      (lambda ()
                                        (if (gx#stx-null? _%e181361181375%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r181360%_))
                                             (gx#stx-source _%stx181331%_))
                                            (_%E181373181379%_))))
                                     (_%E181362181419%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e181361181375%_)
                                            (let ((_%e181364181387%_
                                                   (gx#syntax-e
                                                    _%e181361181375%_)))
                                              (let ((_%hd181365181390%_
                                                     (##car _%e181364181387%_))
                                                    (_%tl181366181392%_
                                                     (##cdr _%e181364181387%_)))
                                                (if (gx#stx-pair?
                                                     _%hd181365181390%_)
                                                    (let ((_%e181367181395%_
                                                           (gx#syntax-e
                                                            _%hd181365181390%_)))
                                                      (let ((_%hd181368181398%_
                                                             (##car _%e181367181395%_))
                                                            (_%tl181369181400%_
                                                             (##cdr _%e181367181395%_)))
                                                        (let ((_%id181403%_
                                                               _%hd181368181398%_))
                                                          (if (gx#stx-pair?
                                                               _%tl181369181400%_)
                                                              (let ((_%e181370181405%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl181369181400%_)))
                        (let ((_%hd181371181408%_ (##car _%e181370181405%_))
                              (_%tl181372181410%_ (##cdr _%e181370181405%_)))
                          (let ((_%eid181413%_ _%hd181371181408%_))
                            (if (gx#stx-null? _%tl181372181410%_)
                                (let ((_%rest181415%_ _%tl181366181392%_))
                                  (if (and (gx#identifier? _%id181403%_)
                                           (gx#identifier? _%eid181413%_))
                                      (let ((_%eid181417%_
                                             (gx#stx-e _%eid181413%_)))
                                        (gx#core-bind-extern!__0
                                         _%id181403%_
                                         _%eid181417%_)
                                        (_%lp181357%_
                                         _%rest181415%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id181403%_)
                                                     (cons _%eid181417%_ '()))
                                               _%r181360%_)))
                                      (_%E181363181383%_)))
                                (_%E181363181383%_)))))
                      (_%E181363181383%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E181363181383%_))))
                                            (_%E181363181383%_)))))
                                (_%E181362181419%_))))))
                      (_%E181334181343%_)))))
          (_%E181333181423%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx181220%_)
        (let* ((_%e181221181247%_ _%stx181220%_)
               (_%E181236181251%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181221181247%_)))
               (_%E181223181283%_
                (lambda ()
                  (if (gx#stx-pair? _%e181221181247%_)
                      (let ((_%e181237181255%_
                             (gx#syntax-e _%e181221181247%_)))
                        (let ((_%hd181238181258%_ (##car _%e181237181255%_))
                              (_%tl181239181260%_ (##cdr _%e181237181255%_)))
                          (if (gx#stx-pair? _%tl181239181260%_)
                              (let ((_%e181240181263%_
                                     (gx#syntax-e _%tl181239181260%_)))
                                (let ((_%hd181241181266%_
                                       (##car _%e181240181263%_))
                                      (_%tl181242181268%_
                                       (##cdr _%e181240181263%_)))
                                  (let ((_%hd181271%_ _%hd181241181266%_))
                                    (if (gx#stx-pair? _%tl181242181268%_)
                                        (let ((_%e181243181273%_
                                               (gx#syntax-e
                                                _%tl181242181268%_)))
                                          (let ((_%hd181244181276%_
                                                 (##car _%e181243181273%_))
                                                (_%tl181245181278%_
                                                 (##cdr _%e181243181273%_)))
                                            (let ((_%expr181281%_
                                                   _%hd181244181276%_))
                                              (if (gx#stx-null?
                                                   _%tl181245181278%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd181271%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd181271%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd181271%_)
                             (cons (gx#core-expand-expression _%expr181281%_)
                                   '())))
                 (gx#stx-source _%stx181220%_)))
              (_%E181236181251%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E181236181251%_)))))
                                        (_%E181236181251%_)))))
                              (_%E181236181251%_))))
                      (_%E181236181251%_))))
               (_%E181222181327%_
                (lambda ()
                  (if (gx#stx-pair? _%e181221181247%_)
                      (let ((_%e181224181287%_
                             (gx#syntax-e _%e181221181247%_)))
                        (let ((_%hd181225181290%_ (##car _%e181224181287%_))
                              (_%tl181226181292%_ (##cdr _%e181224181287%_)))
                          (if (gx#stx-pair? _%tl181226181292%_)
                              (let ((_%e181227181295%_
                                     (gx#syntax-e _%tl181226181292%_)))
                                (let ((_%hd181228181298%_
                                       (##car _%e181227181295%_))
                                      (_%tl181229181300%_
                                       (##cdr _%e181227181295%_)))
                                  (if (gx#stx-pair? _%hd181228181298%_)
                                      (let ((_%e181233181303%_
                                             (gx#syntax-e _%hd181228181298%_)))
                                        (let ((_%hd181234181306%_
                                               (##car _%e181233181303%_))
                                              (_%tl181235181308%_
                                               (##cdr _%e181233181303%_)))
                                          (let ((_%id181311%_
                                                 _%hd181234181306%_))
                                            (if (gx#stx-null?
                                                 _%tl181235181308%_)
                                                (if (gx#stx-pair?
                                                     _%tl181229181300%_)
                                                    (let ((_%e181230181313%_
                                                           (gx#syntax-e
                                                            _%tl181229181300%_)))
                                                      (let ((_%hd181231181316%_
                                                             (##car _%e181230181313%_))
                                                            (_%tl181232181318%_
                                                             (##cdr _%e181230181313%_)))
                                                        (let* ((_%expr181321%_
                                                                _%hd181231181316%_)
                                                               (_%props181323%_
                                                                _%tl181232181318%_))
                                                          (if (gx#identifier?
                                                               _%id181311%_)
                                                              (let ((_%bind181325%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#core-bind-runtime!__0 _%id181311%_)))
                        (gx#core-bind-runtime-properties!
                         _%bind181325%_
                         _%props181323%_)
                        (gx#core-quote-syntax__1
                         (cons (gx#core-quote-syntax__0 '%#define-values)
                               (cons (gx#core-quote-bind-values
                                      (cons _%id181311%_ '()))
                                     (cons (gx#core-expand-expression
                                            _%expr181321%_)
                                           '())))
                         (gx#stx-source _%stx181220%_)))
                      (_%E181223181283%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E181223181283%_))
                                                (_%E181223181283%_)))))
                                      (_%E181223181283%_))))
                              (_%E181223181283%_))))
                      (_%E181223181283%_)))))
          (_%E181222181327%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx181159%_)
        (let* ((_%e181160181173%_ _%stx181159%_)
               (_%E181162181177%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181160181173%_)))
               (_%E181161181216%_
                (lambda ()
                  (if (gx#stx-pair? _%e181160181173%_)
                      (let ((_%e181163181181%_
                             (gx#syntax-e _%e181160181173%_)))
                        (let ((_%hd181164181184%_ (##car _%e181163181181%_))
                              (_%tl181165181186%_ (##cdr _%e181163181181%_)))
                          (if (gx#stx-pair? _%tl181165181186%_)
                              (let ((_%e181166181189%_
                                     (gx#syntax-e _%tl181165181186%_)))
                                (let ((_%hd181167181192%_
                                       (##car _%e181166181189%_))
                                      (_%tl181168181194%_
                                       (##cdr _%e181166181189%_)))
                                  (let ((_%id181197%_ _%hd181167181192%_))
                                    (if (gx#stx-pair? _%tl181168181194%_)
                                        (let ((_%e181169181199%_
                                               (gx#syntax-e
                                                _%tl181168181194%_)))
                                          (let ((_%hd181170181202%_
                                                 (##car _%e181169181199%_))
                                                (_%tl181171181204%_
                                                 (##cdr _%e181169181199%_)))
                                            (let* ((_%binding-id181207%_
                                                    _%hd181170181202%_)
                                                   (_%props181209%_
                                                    _%tl181171181204%_))
                                              (if (and (gx#identifier?
                                                        _%id181197%_)
                                                       (gx#identifier?
                                                        _%binding-id181207%_)
                                                       (gx#stx-list?
                                                        _%props181209%_))
                                                  (let* ((_%eid181211%_
                                                          (gx#stx-e
                                                           _%binding-id181207%_))
                                                         (_%bind181213%_
                                                          (gx#core-bind-runtime-reference!__0
                                                           _%id181197%_
                                                           _%eid181211%_)))
                                                    (gx#core-bind-runtime-properties!
                                                     _%bind181213%_
                                                     _%props181209%_)
                                                    (gx#core-quote-syntax__0
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#define-runtime)
                                                           (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id181197%_)
                         (cons _%eid181211%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E181162181177%_)))))
                                        (_%E181162181177%_)))))
                              (_%E181162181177%_))))
                      (_%E181162181177%_)))))
          (_%E181161181216%_))))
    (define gx#core-bind-runtime-properties!
      (lambda (_%bind181094%_ _%props181095%_)
        (letrec ((_%eval-prop181097%_
                  (lambda (_%prop181157%_)
                    (gx#eval-expression+1 _%prop181157%_))))
          (let _%loop181099%_ ((_%rest181101%_ _%props181095%_)
                               (_%props181102%_ '()))
            (let* ((_%e181103181114%_ _%rest181101%_)
                   (_%E181112181118%_
                    (lambda ()
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e181103181114%_)))
                   (_%E181105181122%_
                    (lambda ()
                      (if (gx#stx-null? _%e181103181114%_)
                          (if (null? _%props181102%_)
                              '#!void
                              (##structure-set!
                               _%bind181094%_
                               (reverse! _%props181102%_)
                               '4
                               gx#binding::t
                               '#f))
                          (_%E181112181118%_))))
                   (_%E181104181153%_
                    (lambda ()
                      (if (gx#stx-pair? _%e181103181114%_)
                          (let ((_%e181106181126%_
                                 (gx#syntax-e _%e181103181114%_)))
                            (let ((_%hd181107181129%_
                                   (##car _%e181106181126%_))
                                  (_%tl181108181131%_
                                   (##cdr _%e181106181126%_)))
                              (let ((_%key181134%_ _%hd181107181129%_))
                                (if (gx#stx-pair? _%tl181108181131%_)
                                    (let ((_%e181109181136%_
                                           (gx#syntax-e _%tl181108181131%_)))
                                      (let ((_%hd181110181139%_
                                             (##car _%e181109181136%_))
                                            (_%tl181111181141%_
                                             (##cdr _%e181109181136%_)))
                                        (let* ((_%prop181144%_
                                                _%hd181110181139%_)
                                               (_%rest181146%_
                                                _%tl181111181141%_))
                                          (if (gx#stx-keyword? _%key181134%_)
                                              (let* ((_%key181148%_
                                                      (gx#stx-e _%key181134%_))
                                                     (_%$e181150%_
                                                      _%key181148%_))
                                                (if (eq? 'macro: _%$e181150%_)
                                                    (begin
                                                      (##structure-set!
                                                       _%bind181094%_
                                                       (if (gx#identifier?
                                                            _%prop181144%_)
                                                           (gx#core-quote-syntax__0
                                                            _%prop181144%_)
                                                           (gx#eval-expression+1
                                                            _%prop181144%_))
                                                       '6
                                                       gx#runtime-binding::t
                                                       '#f)
                                                      (_%loop181099%_
                                                       _%rest181146%_
                                                       _%props181102%_))
                                                    (if (eq? 'type:
                                                             _%$e181150%_)
                                                        (begin
                                                          (##structure-set!
                                                           _%bind181094%_
                                                           (gx#eval-expression+1
                                                            _%prop181144%_)
                                                           '5
                                                           gx#runtime-binding::t
                                                           '#f)
                                                          (_%loop181099%_
                                                           _%rest181146%_
                                                           _%props181102%_))
                                                        (_%loop181099%_
                                                         _%rest181146%_
                                                         (cons (gx#eval-expression+1
                                                                _%prop181144%_)
                                                               (cons _%key181148%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%props181102%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E181105181122%_)))))
                                    (_%E181105181122%_)))))
                          (_%E181105181122%_)))))
              (_%E181104181153%_))))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx181037%_)
        (let* ((_%e181038181051%_ _%stx181037%_)
               (_%E181040181055%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181038181051%_)))
               (_%E181039181090%_
                (lambda ()
                  (if (gx#stx-pair? _%e181038181051%_)
                      (let ((_%e181041181059%_
                             (gx#syntax-e _%e181038181051%_)))
                        (let ((_%hd181042181062%_ (##car _%e181041181059%_))
                              (_%tl181043181064%_ (##cdr _%e181041181059%_)))
                          (if (gx#stx-pair? _%tl181043181064%_)
                              (let ((_%e181044181067%_
                                     (gx#syntax-e _%tl181043181064%_)))
                                (let ((_%hd181045181070%_
                                       (##car _%e181044181067%_))
                                      (_%tl181046181072%_
                                       (##cdr _%e181044181067%_)))
                                  (let ((_%id181075%_ _%hd181045181070%_))
                                    (if (gx#stx-pair? _%tl181046181072%_)
                                        (let ((_%e181047181077%_
                                               (gx#syntax-e
                                                _%tl181046181072%_)))
                                          (let ((_%hd181048181080%_
                                                 (##car _%e181047181077%_))
                                                (_%tl181049181082%_
                                                 (##cdr _%e181047181077%_)))
                                            (let ((_%expr181085%_
                                                   _%hd181048181080%_))
                                              (if (gx#stx-null?
                                                   _%tl181049181082%_)
                                                  (if (gx#identifier?
                                                       _%id181075%_)
                                                      (let ((_g182251_
                                                             (gx#core-expand-expression+1
                                                              _%expr181085%_)))
                                                        (begin
                                                          (let ((_g182252_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g182251_)
                             (##values-length _g182251_)
                             1)))
                    (if (not (##fx= _g182252_ 2))
                        (error "Context expects 2 values" _g182252_)))
                  (let ((_%e-stx181087%_ (##values-ref _g182251_ 0))
                        (_%e181088%_ (##values-ref _g182251_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id181075%_ _%e181088%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id181075%_)
                                   (cons _%e-stx181087%_ '())))
                       (gx#stx-source _%stx181037%_))))))
              (_%E181040181055%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E181040181055%_)))))
                                        (_%E181040181055%_)))))
                              (_%E181040181055%_))))
                      (_%E181040181055%_)))))
          (_%E181039181090%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx180981%_)
        (let* ((_%e180982180995%_ _%stx180981%_)
               (_%E180984180999%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180982180995%_)))
               (_%E180983181033%_
                (lambda ()
                  (if (gx#stx-pair? _%e180982180995%_)
                      (let ((_%e180985181003%_
                             (gx#syntax-e _%e180982180995%_)))
                        (let ((_%hd180986181006%_ (##car _%e180985181003%_))
                              (_%tl180987181008%_ (##cdr _%e180985181003%_)))
                          (if (gx#stx-pair? _%tl180987181008%_)
                              (let ((_%e180988181011%_
                                     (gx#syntax-e _%tl180987181008%_)))
                                (let ((_%hd180989181014%_
                                       (##car _%e180988181011%_))
                                      (_%tl180990181016%_
                                       (##cdr _%e180988181011%_)))
                                  (let ((_%id181019%_ _%hd180989181014%_))
                                    (if (gx#stx-pair? _%tl180990181016%_)
                                        (let ((_%e180991181021%_
                                               (gx#syntax-e
                                                _%tl180990181016%_)))
                                          (let ((_%hd180992181024%_
                                                 (##car _%e180991181021%_))
                                                (_%tl180993181026%_
                                                 (##cdr _%e180991181021%_)))
                                            (let ((_%alias-id181029%_
                                                   _%hd180992181024%_))
                                              (if (gx#stx-null?
                                                   _%tl180993181026%_)
                                                  (if (and (gx#identifier?
                                                            _%id181019%_)
                                                           (gx#identifier?
                                                            _%alias-id181029%_))
                                                      (let ((_%alias-id181031%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id181029%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id181019%_
                                                         _%alias-id181031%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id181019%_)
                             (cons _%alias-id181031%_ '())))))
              (_%E180984180999%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E180984180999%_)))))
                                        (_%E180984180999%_)))))
                              (_%E180984180999%_))))
                      (_%E180984180999%_)))))
          (_%E180983181033%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx180924%_ _%wrap?180925%_)
        (let* ((_%e180926180936%_ _%stx180924%_)
               (_%E180928180940%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180926180936%_)))
               (_%E180927180967%_
                (lambda ()
                  (if (gx#stx-pair? _%e180926180936%_)
                      (let ((_%e180929180944%_
                             (gx#syntax-e _%e180926180936%_)))
                        (let ((_%hd180930180947%_ (##car _%e180929180944%_))
                              (_%tl180931180949%_ (##cdr _%e180929180944%_)))
                          (if (gx#stx-pair? _%tl180931180949%_)
                              (let ((_%e180932180952%_
                                     (gx#syntax-e _%tl180931180949%_)))
                                (let ((_%hd180933180955%_
                                       (##car _%e180932180952%_))
                                      (_%tl180934180957%_
                                       (##cdr _%e180932180952%_)))
                                  (let* ((_%hd180960%_ _%hd180933180955%_)
                                         (_%body180962%_ _%tl180934180957%_))
                                    (if (gx#core-bind-values? _%hd180960%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd180960%_)
                                           (let ((_%body180965%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd180960%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx180924%_
                                                               _%body180962%_)
                                                              '()))))
                                             (if _%wrap?180925%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body180965%_)
                                                  (gx#stx-source
                                                   _%stx180924%_))
                                                 _%body180965%_)))
                                         gx#current-expander-context
                                         (let ((__obj182234
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj182234)
                                           __obj182234))
                                        (_%E180928180940%_)))))
                              (_%E180928180940%_))))
                      (_%E180928180940%_)))))
          (_%E180927180967%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx180974%_)
        (let ((_%wrap?180976%_ '#t))
          (gx#core-expand-lambda%__% _%stx180974%_ _%wrap?180976%_))))
    (define gx#core-expand-lambda%
      (lambda _g182253_
        (let ((_g182254_ (##length _g182253_)))
          (cond ((##fx= _g182254_ 1)
                 (apply gx#core-expand-lambda%__0 _g182253_))
                ((##fx= _g182254_ 2)
                 (apply gx#core-expand-lambda%__% _g182253_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g182253_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx180888%_)
        (let* ((_%e180889180896%_ _%stx180888%_)
               (_%E180891180900%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180889180896%_)))
               (_%E180890180919%_
                (lambda ()
                  (if (gx#stx-pair? _%e180889180896%_)
                      (let ((_%e180892180904%_
                             (gx#syntax-e _%e180889180896%_)))
                        (let ((_%hd180893180907%_ (##car _%e180892180904%_))
                              (_%tl180894180909%_ (##cdr _%e180892180904%_)))
                          (let ((_%clauses180912%_ _%tl180894180909%_))
                            (if (gx#stx-list? _%clauses180912%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause180914%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause180914%_)
                                       (let ((_%$e180916%_
                                              (gx#stx-source
                                               _%clause180914%_)))
                                         (if _%$e180916%_
                                             _%$e180916%_
                                             (gx#stx-source _%stx180888%_))))
                                      '#f))
                                   _%clauses180912%_))
                                 (gx#stx-source _%stx180888%_))
                                (_%E180891180900%_)))))
                      (_%E180891180900%_)))))
          (_%E180890180919%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx180842%_)
        (let* ((_%e180843180853%_ _%stx180842%_)
               (_%E180845180857%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180843180853%_)))
               (_%E180844180884%_
                (lambda ()
                  (if (gx#stx-pair? _%e180843180853%_)
                      (let ((_%e180846180861%_
                             (gx#syntax-e _%e180843180853%_)))
                        (let ((_%hd180847180864%_ (##car _%e180846180861%_))
                              (_%tl180848180866%_ (##cdr _%e180846180861%_)))
                          (if (gx#stx-pair? _%tl180848180866%_)
                              (let ((_%e180849180869%_
                                     (gx#syntax-e _%tl180848180866%_)))
                                (let ((_%hd180850180872%_
                                       (##car _%e180849180869%_))
                                      (_%tl180851180874%_
                                       (##cdr _%e180849180869%_)))
                                  (let* ((_%hd180877%_ _%hd180850180872%_)
                                         (_%body180879%_ _%tl180851180874%_))
                                    (if (gx#core-expand-let-bind? _%hd180877%_)
                                        (let ((_%expressions180881%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd180877%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd180877%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd180877%_
                                                           _%expressions180881%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx180842%_
                         _%body180879%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx180842%_)))
                                           gx#current-expander-context
                                           (let ((__obj182235
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj182235)
                                             __obj182235)))
                                        (_%E180845180857%_)))))
                              (_%E180845180857%_))))
                      (_%E180845180857%_)))))
          (_%E180844180884%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx180787%_ _%form180788%_)
        (let* ((_%e180789180799%_ _%stx180787%_)
               (_%E180791180803%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180789180799%_)))
               (_%E180790180828%_
                (lambda ()
                  (if (gx#stx-pair? _%e180789180799%_)
                      (let ((_%e180792180807%_
                             (gx#syntax-e _%e180789180799%_)))
                        (let ((_%hd180793180810%_ (##car _%e180792180807%_))
                              (_%tl180794180812%_ (##cdr _%e180792180807%_)))
                          (if (gx#stx-pair? _%tl180794180812%_)
                              (let ((_%e180795180815%_
                                     (gx#syntax-e _%tl180794180812%_)))
                                (let ((_%hd180796180818%_
                                       (##car _%e180795180815%_))
                                      (_%tl180797180820%_
                                       (##cdr _%e180795180815%_)))
                                  (let* ((_%hd180823%_ _%hd180796180818%_)
                                         (_%body180825%_ _%tl180797180820%_))
                                    (if (gx#core-expand-let-bind? _%hd180823%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd180823%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form180788%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd180823%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd180823%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx180787%_
                                                               _%body180825%_)
                                                              '())))
                                            (gx#stx-source _%stx180787%_)))
                                         gx#current-expander-context
                                         (let ((__obj182236
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj182236)
                                           __obj182236))
                                        (_%E180791180803%_)))))
                              (_%E180791180803%_))))
                      (_%E180791180803%_)))))
          (_%E180790180828%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx180835%_)
        (let ((_%form180837%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx180835%_ _%form180837%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g182255_
        (let ((_g182256_ (##length _g182255_)))
          (cond ((##fx= _g182256_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g182255_))
                ((##fx= _g182256_ 2)
                 (apply gx#core-expand-letrec-values%__% _g182255_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g182255_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx180784%_)
        (gx#core-expand-letrec-values%__% _%stx180784%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx180741%_)
        (if (gx#stx-list? _%stx180741%_)
            (gx#stx-andmap
             (lambda (_%bind180743%_)
               (let* ((_%e180744180754%_ _%bind180743%_)
                      (_%E180746180758%_ (lambda () '#f))
                      (_%E180745180780%_
                       (lambda ()
                         (if (gx#stx-pair? _%e180744180754%_)
                             (let ((_%e180747180762%_
                                    (gx#syntax-e _%e180744180754%_)))
                               (let ((_%hd180748180765%_
                                      (##car _%e180747180762%_))
                                     (_%tl180749180767%_
                                      (##cdr _%e180747180762%_)))
                                 (let ((_%hd180770%_ _%hd180748180765%_))
                                   (if (gx#stx-pair? _%tl180749180767%_)
                                       (let ((_%e180750180772%_
                                              (gx#syntax-e
                                               _%tl180749180767%_)))
                                         (let ((_%hd180751180775%_
                                                (##car _%e180750180772%_))
                                               (_%tl180752180777%_
                                                (##cdr _%e180750180772%_)))
                                           (if (gx#stx-null?
                                                _%tl180752180777%_)
                                               (gx#core-bind-values?
                                                _%hd180770%_)
                                               (_%E180746180758%_))))
                                       (_%E180746180758%_)))))
                             (_%E180746180758%_)))))
                 (_%E180745180780%_)))
             _%stx180741%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind180700%_)
        (let* ((_%e180701180711%_ _%bind180700%_)
               (_%E180703180715%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180701180711%_)))
               (_%E180702180737%_
                (lambda ()
                  (if (gx#stx-pair? _%e180701180711%_)
                      (let ((_%e180704180719%_
                             (gx#syntax-e _%e180701180711%_)))
                        (let ((_%hd180705180722%_ (##car _%e180704180719%_))
                              (_%tl180706180724%_ (##cdr _%e180704180719%_)))
                          (if (gx#stx-pair? _%tl180706180724%_)
                              (let ((_%e180707180727%_
                                     (gx#syntax-e _%tl180706180724%_)))
                                (let ((_%hd180708180730%_
                                       (##car _%e180707180727%_))
                                      (_%tl180709180732%_
                                       (##cdr _%e180707180727%_)))
                                  (let ((_%expr180735%_ _%hd180708180730%_))
                                    (if (gx#stx-null? _%tl180709180732%_)
                                        (gx#core-expand-expression
                                         _%expr180735%_)
                                        (_%E180703180715%_)))))
                              (_%E180703180715%_))))
                      (_%E180703180715%_)))))
          (_%E180702180737%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind180659%_)
        (let* ((_%e180660180670%_ _%bind180659%_)
               (_%E180662180674%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180660180670%_)))
               (_%E180661180696%_
                (lambda ()
                  (if (gx#stx-pair? _%e180660180670%_)
                      (let ((_%e180663180678%_
                             (gx#syntax-e _%e180660180670%_)))
                        (let ((_%hd180664180681%_ (##car _%e180663180678%_))
                              (_%tl180665180683%_ (##cdr _%e180663180678%_)))
                          (let ((_%hd180686%_ _%hd180664180681%_))
                            (if (gx#stx-pair? _%tl180665180683%_)
                                (let ((_%e180666180688%_
                                       (gx#syntax-e _%tl180665180683%_)))
                                  (let ((_%hd180667180691%_
                                         (##car _%e180666180688%_))
                                        (_%tl180668180693%_
                                         (##cdr _%e180666180688%_)))
                                    (if (gx#stx-null? _%tl180668180693%_)
                                        (gx#core-bind-values!__0 _%hd180686%_)
                                        (_%E180662180674%_))))
                                (_%E180662180674%_)))))
                      (_%E180662180674%_)))))
          (_%E180661180696%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind180617%_ _%expr180618%_)
        (let* ((_%e180619180629%_ _%bind180617%_)
               (_%E180621180633%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180619180629%_)))
               (_%E180620180655%_
                (lambda ()
                  (if (gx#stx-pair? _%e180619180629%_)
                      (let ((_%e180622180637%_
                             (gx#syntax-e _%e180619180629%_)))
                        (let ((_%hd180623180640%_ (##car _%e180622180637%_))
                              (_%tl180624180642%_ (##cdr _%e180622180637%_)))
                          (let ((_%hd180645%_ _%hd180623180640%_))
                            (if (gx#stx-pair? _%tl180624180642%_)
                                (let ((_%e180625180647%_
                                       (gx#syntax-e _%tl180624180642%_)))
                                  (let ((_%hd180626180650%_
                                         (##car _%e180625180647%_))
                                        (_%tl180627180652%_
                                         (##cdr _%e180625180647%_)))
                                    (if (gx#stx-null? _%tl180627180652%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd180645%_)
                                              (cons _%expr180618%_ '()))
                                        (_%E180621180633%_))))
                                (_%E180621180633%_)))))
                      (_%E180621180633%_)))))
          (_%E180620180655%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx180571%_)
        (let* ((_%e180572180582%_ _%stx180571%_)
               (_%E180574180586%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180572180582%_)))
               (_%E180573180613%_
                (lambda ()
                  (if (gx#stx-pair? _%e180572180582%_)
                      (let ((_%e180575180590%_
                             (gx#syntax-e _%e180572180582%_)))
                        (let ((_%hd180576180593%_ (##car _%e180575180590%_))
                              (_%tl180577180595%_ (##cdr _%e180575180590%_)))
                          (if (gx#stx-pair? _%tl180577180595%_)
                              (let ((_%e180578180598%_
                                     (gx#syntax-e _%tl180577180595%_)))
                                (let ((_%hd180579180601%_
                                       (##car _%e180578180598%_))
                                      (_%tl180580180603%_
                                       (##cdr _%e180578180598%_)))
                                  (let* ((_%hd180606%_ _%hd180579180601%_)
                                         (_%body180608%_ _%tl180580180603%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd180606%_)
                                        (let ((_%expanders180610%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd180606%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd180606%_
                                              _%expanders180610%_)
                                             (gx#core-expand-local-block
                                              _%stx180571%_
                                              _%body180608%_))
                                           gx#current-expander-context
                                           (let ((__obj182237
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj182237)
                                             __obj182237)))
                                        (_%E180574180586%_)))))
                              (_%E180574180586%_))))
                      (_%E180574180586%_)))))
          (_%E180573180613%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx180520%_)
        (let* ((_%e180521180531%_ _%stx180520%_)
               (_%E180523180535%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180521180531%_)))
               (_%E180522180567%_
                (lambda ()
                  (if (gx#stx-pair? _%e180521180531%_)
                      (let ((_%e180524180539%_
                             (gx#syntax-e _%e180521180531%_)))
                        (let ((_%hd180525180542%_ (##car _%e180524180539%_))
                              (_%tl180526180544%_ (##cdr _%e180524180539%_)))
                          (if (gx#stx-pair? _%tl180526180544%_)
                              (let ((_%e180527180547%_
                                     (gx#syntax-e _%tl180526180544%_)))
                                (let ((_%hd180528180550%_
                                       (##car _%e180527180547%_))
                                      (_%tl180529180552%_
                                       (##cdr _%e180527180547%_)))
                                  (let* ((_%hd180555%_ _%hd180528180550%_)
                                         (_%body180557%_ _%tl180529180552%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd180555%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd180555%_
                                            (make-list
                                             (gx#stx-length _%hd180555%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g180559180562%_
                                                     _%g180560180564%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g180559180562%_
                                               _%g180560180564%_
                                               '#t))
                                            _%hd180555%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd180555%_))
                                           (gx#core-expand-local-block
                                            _%stx180520%_
                                            _%body180557%_))
                                         gx#current-expander-context
                                         (let ((__obj182238
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj182238)
                                           __obj182238))
                                        (_%E180523180535%_)))))
                              (_%E180523180535%_))))
                      (_%E180523180535%_)))))
          (_%E180522180567%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx180477%_)
        (if (gx#stx-list? _%stx180477%_)
            (gx#stx-andmap
             (lambda (_%bind180479%_)
               (let* ((_%e180480180490%_ _%bind180479%_)
                      (_%E180482180494%_ (lambda () '#f))
                      (_%E180481180516%_
                       (lambda ()
                         (if (gx#stx-pair? _%e180480180490%_)
                             (let ((_%e180483180498%_
                                    (gx#syntax-e _%e180480180490%_)))
                               (let ((_%hd180484180501%_
                                      (##car _%e180483180498%_))
                                     (_%tl180485180503%_
                                      (##cdr _%e180483180498%_)))
                                 (let ((_%hd180506%_ _%hd180484180501%_))
                                   (if (gx#stx-pair? _%tl180485180503%_)
                                       (let ((_%e180486180508%_
                                              (gx#syntax-e
                                               _%tl180485180503%_)))
                                         (let ((_%hd180487180511%_
                                                (##car _%e180486180508%_))
                                               (_%tl180488180513%_
                                                (##cdr _%e180486180508%_)))
                                           (if (gx#stx-null?
                                                _%tl180488180513%_)
                                               (gx#identifier? _%hd180506%_)
                                               (_%E180482180494%_))))
                                       (_%E180482180494%_)))))
                             (_%E180482180494%_)))))
                 (_%E180481180516%_)))
             _%stx180477%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind180433%_)
        (let* ((_%e180434180444%_ _%bind180433%_)
               (_%E180436180448%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180434180444%_)))
               (_%E180435180473%_
                (lambda ()
                  (if (gx#stx-pair? _%e180434180444%_)
                      (let ((_%e180437180452%_
                             (gx#syntax-e _%e180434180444%_)))
                        (let ((_%hd180438180455%_ (##car _%e180437180452%_))
                              (_%tl180439180457%_ (##cdr _%e180437180452%_)))
                          (if (gx#stx-pair? _%tl180439180457%_)
                              (let ((_%e180440180460%_
                                     (gx#syntax-e _%tl180439180457%_)))
                                (let ((_%hd180441180463%_
                                       (##car _%e180440180460%_))
                                      (_%tl180442180465%_
                                       (##cdr _%e180440180460%_)))
                                  (let ((_%expr180468%_ _%hd180441180463%_))
                                    (if (gx#stx-null? _%tl180442180465%_)
                                        (let ((_g182257_
                                               (gx#core-expand-expression+1
                                                _%expr180468%_)))
                                          (begin
                                            (let ((_g182258_
                                                   (if (##values? _g182257_)
                                                       (##values-length
                                                        _g182257_)
                                                       1)))
                                              (if (not (##fx= _g182258_ 2))
                                                  (error "Context expects 2 values"
                                                         _g182258_)))
                                            (let ((_%_180470%_
                                                   (##values-ref _g182257_ 0))
                                                  (_%e180471%_
                                                   (##values-ref _g182257_ 1)))
                                              _%e180471%_)))
                                        (_%E180436180448%_)))))
                              (_%E180436180448%_))))
                      (_%E180436180448%_)))))
          (_%E180435180473%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind180378%_ _%e180379%_ _%rebind?180380%_)
        (let* ((_%e180381180391%_ _%bind180378%_)
               (_%E180383180395%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180381180391%_)))
               (_%E180382180417%_
                (lambda ()
                  (if (gx#stx-pair? _%e180381180391%_)
                      (let ((_%e180384180399%_
                             (gx#syntax-e _%e180381180391%_)))
                        (let ((_%hd180385180402%_ (##car _%e180384180399%_))
                              (_%tl180386180404%_ (##cdr _%e180384180399%_)))
                          (let ((_%id180407%_ _%hd180385180402%_))
                            (if (gx#stx-pair? _%tl180386180404%_)
                                (let ((_%e180387180409%_
                                       (gx#syntax-e _%tl180386180404%_)))
                                  (let ((_%hd180388180412%_
                                         (##car _%e180387180409%_))
                                        (_%tl180389180414%_
                                         (##cdr _%e180387180409%_)))
                                    (if (gx#stx-null? _%tl180389180414%_)
                                        (gx#core-bind-syntax!__1
                                         _%id180407%_
                                         _%e180379%_
                                         _%rebind?180380%_)
                                        (_%E180383180395%_))))
                                (_%E180383180395%_)))))
                      (_%E180383180395%_)))))
          (_%E180382180417%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind180424%_ _%e180425%_)
        (let ((_%rebind?180427%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind180424%_
           _%e180425%_
           _%rebind?180427%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g182259_
        (let ((_g182260_ (##length _g182259_)))
          (cond ((##fx= _g182260_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g182259_))
                ((##fx= _g182260_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g182259_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g182259_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx180336%_)
        (let* ((_%e180337180347%_ _%stx180336%_)
               (_%E180339180351%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180337180347%_)))
               (_%E180338180373%_
                (lambda ()
                  (if (gx#stx-pair? _%e180337180347%_)
                      (let ((_%e180340180355%_
                             (gx#syntax-e _%e180337180347%_)))
                        (let ((_%hd180341180358%_ (##car _%e180340180355%_))
                              (_%tl180342180360%_ (##cdr _%e180340180355%_)))
                          (if (gx#stx-pair? _%tl180342180360%_)
                              (let ((_%e180343180363%_
                                     (gx#syntax-e _%tl180342180360%_)))
                                (let ((_%hd180344180366%_
                                       (##car _%e180343180363%_))
                                      (_%tl180345180368%_
                                       (##cdr _%e180343180363%_)))
                                  (let ((_%expr180371%_ _%hd180344180366%_))
                                    (if (gx#stx-null? _%tl180345180368%_)
                                        (gx#core-expand-expression
                                         _%expr180371%_)
                                        (_%E180339180351%_)))))
                              (_%E180339180351%_))))
                      (_%E180339180351%_)))))
          (_%E180338180373%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx180295%_)
        (let* ((_%e180296180306%_ _%stx180295%_)
               (_%E180298180310%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180296180306%_)))
               (_%E180297180332%_
                (lambda ()
                  (if (gx#stx-pair? _%e180296180306%_)
                      (let ((_%e180299180314%_
                             (gx#syntax-e _%e180296180306%_)))
                        (let ((_%hd180300180317%_ (##car _%e180299180314%_))
                              (_%tl180301180319%_ (##cdr _%e180299180314%_)))
                          (if (gx#stx-pair? _%tl180301180319%_)
                              (let ((_%e180302180322%_
                                     (gx#syntax-e _%tl180301180319%_)))
                                (let ((_%hd180303180325%_
                                       (##car _%e180302180322%_))
                                      (_%tl180304180327%_
                                       (##cdr _%e180302180322%_)))
                                  (let ((_%e180330%_ _%hd180303180325%_))
                                    (if (gx#stx-null? _%tl180304180327%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e180330%_)
                                                     '()))
                                         (gx#stx-source _%stx180295%_))
                                        (_%E180298180310%_)))))
                              (_%E180298180310%_))))
                      (_%E180298180310%_)))))
          (_%E180297180332%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx180254%_)
        (let* ((_%e180255180265%_ _%stx180254%_)
               (_%E180257180269%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180255180265%_)))
               (_%E180256180291%_
                (lambda ()
                  (if (gx#stx-pair? _%e180255180265%_)
                      (let ((_%e180258180273%_
                             (gx#syntax-e _%e180255180265%_)))
                        (let ((_%hd180259180276%_ (##car _%e180258180273%_))
                              (_%tl180260180278%_ (##cdr _%e180258180273%_)))
                          (if (gx#stx-pair? _%tl180260180278%_)
                              (let ((_%e180261180281%_
                                     (gx#syntax-e _%tl180260180278%_)))
                                (let ((_%hd180262180284%_
                                       (##car _%e180261180281%_))
                                      (_%tl180263180286%_
                                       (##cdr _%e180261180281%_)))
                                  (let ((_%e180289%_ _%hd180262180284%_))
                                    (if (gx#stx-null? _%tl180263180286%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e180289%_)
                                                     '()))
                                         (gx#stx-source _%stx180254%_))
                                        (_%E180257180269%_)))))
                              (_%E180257180269%_))))
                      (_%E180257180269%_)))))
          (_%E180256180291%_))))
    (define gx#core-expand-call%
      (lambda (_%stx180148%_)
        (letrec ((_%expand-runtime-call180150%_
                  (lambda (_%rator-expr180251%_ _%args180252%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons*
                      '%#call
                      _%rator-expr180251%_
                      (gx#stx-map1 gx#core-expand-expression _%args180252%_))
                     (gx#stx-source _%stx180148%_)))))
          (let* ((_%e180151180161%_ _%stx180148%_)
                 (_%E180153180165%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e180151180161%_)))
                 (_%E180152180247%_
                  (lambda ()
                    (if (gx#stx-pair? _%e180151180161%_)
                        (let ((_%e180154180169%_
                               (gx#syntax-e _%e180151180161%_)))
                          (let ((_%hd180155180172%_ (##car _%e180154180169%_))
                                (_%tl180156180174%_ (##cdr _%e180154180169%_)))
                            (if (gx#stx-pair? _%tl180156180174%_)
                                (let ((_%e180157180177%_
                                       (gx#syntax-e _%tl180156180174%_)))
                                  (let ((_%hd180158180180%_
                                         (##car _%e180157180177%_))
                                        (_%tl180159180182%_
                                         (##cdr _%e180157180177%_)))
                                    (let* ((_%rator180185%_ _%hd180158180180%_)
                                           (_%args180187%_ _%tl180159180182%_))
                                      (if (gx#stx-list? _%args180187%_)
                                          (let* ((_%rator-expr180189%_
                                                  (gx#core-expand-expression
                                                   _%rator180185%_))
                                                 (_%e180190180200%_
                                                  _%rator-expr180189%_)
                                                 (_%E180192180204%_
                                                  (lambda ()
                                                    (_%expand-runtime-call180150%_
                                                     _%rator-expr180189%_
                                                     _%args180187%_)))
                                                 (_%E180191180243%_
                                                  (lambda ()
                                                    (if (gx#stx-pair?
                                                         _%e180190180200%_)
                                                        (let ((_%e180193180208%_
                                                               (gx#syntax-e
                                                                _%e180190180200%_)))
                                                          (let ((_%hd180194180211%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e180193180208%_))
                        (_%tl180195180213%_ (##cdr _%e180193180208%_)))
                    (if (and (gx#identifier? _%hd180194180211%_)
                             (gx#core-identifier=? _%hd180194180211%_ '%#ref))
                        (if (gx#stx-pair? _%tl180195180213%_)
                            (let ((_%e180196180216%_
                                   (gx#syntax-e _%tl180195180213%_)))
                              (let ((_%hd180197180219%_
                                     (##car _%e180196180216%_))
                                    (_%tl180198180221%_
                                     (##cdr _%e180196180216%_)))
                                (let ((_%id180224%_ _%hd180197180219%_))
                                  (if (gx#stx-null? _%tl180198180221%_)
                                      (let ((_%$e180226%_
                                             (gx#resolve-identifier__0
                                              _%id180224%_)))
                                        (if _%$e180226%_
                                            ((lambda (_%bind180229%_)
                                               (let _%again180231%_ ((_%bind180233%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%bind180229%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%$e180235%_
                                                        (if (##structure-instance-of?
                                                             _%bind180233%_
                                                             'gx#runtime-binding::t)
                                                            (##unchecked-structure-ref
                                                             _%bind180233%_
                                                             '6
                                                             '#f
                                                             '#f)
                                                            '#f)))
                                                   (if _%$e180235%_
                                                       ((lambda (_%macro180238%_)
                                                          (gx#core-expand-expression
                                                           (gx#stx-wrap-source
                                                            (cons _%macro180238%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%args180187%_)
                    (gx#stx-source _%stx180148%_))))
                _%$e180235%_)
               (if (##structure-direct-instance-of?
                    _%bind180233%_
                    'gx#import-binding::t)
                   (_%again180231%_
                    (##unchecked-structure-ref _%bind180233%_ '5 '#f '#f))
                   (_%expand-runtime-call180150%_
                    _%rator-expr180189%_
                    _%args180187%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%$e180226%_)
                                            (_%expand-runtime-call180150%_
                                             _%rator-expr180189%_
                                             _%args180187%_)))
                                      (_%E180192180204%_)))))
                            (_%E180192180204%_))
                        (_%E180192180204%_))))
                (_%E180192180204%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E180191180243%_))
                                          (_%E180153180165%_)))))
                                (_%E180153180165%_))))
                        (_%E180153180165%_)))))
            (_%E180152180247%_)))))
    (define gx#core-expand-if%
      (lambda (_%stx180081%_)
        (let* ((_%e180082180098%_ _%stx180081%_)
               (_%E180084180102%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180082180098%_)))
               (_%E180083180144%_
                (lambda ()
                  (if (gx#stx-pair? _%e180082180098%_)
                      (let ((_%e180085180106%_
                             (gx#syntax-e _%e180082180098%_)))
                        (let ((_%hd180086180109%_ (##car _%e180085180106%_))
                              (_%tl180087180111%_ (##cdr _%e180085180106%_)))
                          (if (gx#stx-pair? _%tl180087180111%_)
                              (let ((_%e180088180114%_
                                     (gx#syntax-e _%tl180087180111%_)))
                                (let ((_%hd180089180117%_
                                       (##car _%e180088180114%_))
                                      (_%tl180090180119%_
                                       (##cdr _%e180088180114%_)))
                                  (let ((_%test180122%_ _%hd180089180117%_))
                                    (if (gx#stx-pair? _%tl180090180119%_)
                                        (let ((_%e180091180124%_
                                               (gx#syntax-e
                                                _%tl180090180119%_)))
                                          (let ((_%hd180092180127%_
                                                 (##car _%e180091180124%_))
                                                (_%tl180093180129%_
                                                 (##cdr _%e180091180124%_)))
                                            (let ((_%K180132%_
                                                   _%hd180092180127%_))
                                              (if (gx#stx-pair?
                                                   _%tl180093180129%_)
                                                  (let ((_%e180094180134%_
                                                         (gx#syntax-e
                                                          _%tl180093180129%_)))
                                                    (let ((_%hd180095180137%_
                                                           (##car _%e180094180134%_))
                                                          (_%tl180096180139%_
                                                           (##cdr _%e180094180134%_)))
                                                      (let ((_%E180142%_
                                                             _%hd180095180137%_))
                                                        (if (gx#stx-null?
                                                             _%tl180096180139%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test180122%_)
                                 (cons (gx#core-expand-expression _%K180132%_)
                                       (cons (gx#core-expand-expression
                                              _%E180142%_)
                                             '()))))
                     (gx#stx-source _%stx180081%_))
                    (_%E180084180102%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E180084180102%_)))))
                                        (_%E180084180102%_)))))
                              (_%E180084180102%_))))
                      (_%E180084180102%_)))))
          (_%E180083180144%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx180040%_)
        (let* ((_%e180041180051%_ _%stx180040%_)
               (_%E180043180055%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180041180051%_)))
               (_%E180042180077%_
                (lambda ()
                  (if (gx#stx-pair? _%e180041180051%_)
                      (let ((_%e180044180059%_
                             (gx#syntax-e _%e180041180051%_)))
                        (let ((_%hd180045180062%_ (##car _%e180044180059%_))
                              (_%tl180046180064%_ (##cdr _%e180044180059%_)))
                          (if (gx#stx-pair? _%tl180046180064%_)
                              (let ((_%e180047180067%_
                                     (gx#syntax-e _%tl180046180064%_)))
                                (let ((_%hd180048180070%_
                                       (##car _%e180047180067%_))
                                      (_%tl180049180072%_
                                       (##cdr _%e180047180067%_)))
                                  (let ((_%id180075%_ _%hd180048180070%_))
                                    (if (gx#stx-null? _%tl180049180072%_)
                                        (if (gx#identifier? _%id180075%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id180075%_
                                                          _%stx180040%_)
                                                         '()))
                                             (gx#stx-source _%stx180040%_))
                                            (_%E180043180055%_))
                                        (_%E180043180055%_)))))
                              (_%E180043180055%_))))
                      (_%E180043180055%_)))))
          (_%E180042180077%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx179986%_)
        (let* ((_%e179987180000%_ _%stx179986%_)
               (_%E179989180004%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e179987180000%_)))
               (_%E179988180036%_
                (lambda ()
                  (if (gx#stx-pair? _%e179987180000%_)
                      (let ((_%e179990180008%_
                             (gx#syntax-e _%e179987180000%_)))
                        (let ((_%hd179991180011%_ (##car _%e179990180008%_))
                              (_%tl179992180013%_ (##cdr _%e179990180008%_)))
                          (if (gx#stx-pair? _%tl179992180013%_)
                              (let ((_%e179993180016%_
                                     (gx#syntax-e _%tl179992180013%_)))
                                (let ((_%hd179994180019%_
                                       (##car _%e179993180016%_))
                                      (_%tl179995180021%_
                                       (##cdr _%e179993180016%_)))
                                  (let ((_%id180024%_ _%hd179994180019%_))
                                    (if (gx#stx-pair? _%tl179995180021%_)
                                        (let ((_%e179996180026%_
                                               (gx#syntax-e
                                                _%tl179995180021%_)))
                                          (let ((_%hd179997180029%_
                                                 (##car _%e179996180026%_))
                                                (_%tl179998180031%_
                                                 (##cdr _%e179996180026%_)))
                                            (let ((_%expr180034%_
                                                   _%hd179997180029%_))
                                              (if (gx#stx-null?
                                                   _%tl179998180031%_)
                                                  (if (gx#identifier?
                                                       _%id180024%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id180024%_
                            _%stx179986%_)
                           (cons (gx#core-expand-expression _%expr180034%_)
                                 '())))
               (gx#stx-source _%stx179986%_))
              (_%E179989180004%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E179989180004%_)))))
                                        (_%E179989180004%_)))))
                              (_%E179989180004%_))))
                      (_%E179989180004%_)))))
          (_%E179988180036%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx179831%_)
        (letrec ((_%generate179833%_
                  (lambda (_%body179863%_)
                    (let _%lp179865%_ ((_%rest179867%_ _%body179863%_)
                                       (_%ns179868%_
                                        (gx#core-context-namespace__0))
                                       (_%r179869%_ '()))
                      (let* ((_%e179870179885%_ _%rest179867%_)
                             (_%E179883179889%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e179870179885%_)))
                             (_%E179879179893%_
                              (lambda ()
                                (if (gx#stx-null? _%e179870179885%_)
                                    (reverse _%r179869%_)
                                    (_%E179883179889%_))))
                             (_%E179872179950%_
                              (lambda ()
                                (if (gx#stx-pair? _%e179870179885%_)
                                    (let ((_%e179880179897%_
                                           (gx#syntax-e _%e179870179885%_)))
                                      (let ((_%hd179881179900%_
                                             (##car _%e179880179897%_))
                                            (_%tl179882179902%_
                                             (##cdr _%e179880179897%_)))
                                        (let* ((_%hd179905%_
                                                _%hd179881179900%_)
                                               (_%rest179907%_
                                                _%tl179882179902%_))
                                          (if (gx#identifier? _%hd179905%_)
                                              (_%lp179865%_
                                               _%rest179907%_
                                               _%ns179868%_
                                               (cons (cons _%hd179905%_
                                                           (cons (if _%ns179868%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd179905%_
                              _%ns179868%_
                              '"#"
                              _%hd179905%_)
                             _%hd179905%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r179869%_))
                                              (let* ((_%e179908179918%_
                                                      _%hd179905%_)
                                                     (_%E179910179922%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%e179908179918%_)))
                                                     (_%E179909179946%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e179908179918%_)
                                                            (let ((_%e179911179926%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e179908179918%_)))
                      (let ((_%hd179912179929%_ (##car _%e179911179926%_))
                            (_%tl179913179931%_ (##cdr _%e179911179926%_)))
                        (let ((_%id179934%_ _%hd179912179929%_))
                          (if (gx#stx-pair? _%tl179913179931%_)
                              (let ((_%e179914179936%_
                                     (gx#syntax-e _%tl179913179931%_)))
                                (let ((_%hd179915179939%_
                                       (##car _%e179914179936%_))
                                      (_%tl179916179941%_
                                       (##cdr _%e179914179936%_)))
                                  (let ((_%eid179944%_ _%hd179915179939%_))
                                    (if (gx#stx-null? _%tl179916179941%_)
                                        (if (and (gx#identifier? _%id179934%_)
                                                 (gx#identifier?
                                                  _%eid179944%_))
                                            (_%lp179865%_
                                             _%rest179907%_
                                             _%ns179868%_
                                             (cons (cons _%id179934%_
                                                         (cons _%eid179944%_
                                                               '()))
                                                   _%r179869%_))
                                            (_%E179910179922%_))
                                        (_%E179910179922%_)))))
                              (_%E179910179922%_)))))
                    (_%E179910179922%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E179909179946%_))))))
                                    (_%E179879179893%_))))
                             (_%E179871179982%_
                              (lambda ()
                                (if (gx#stx-pair? _%e179870179885%_)
                                    (let ((_%e179873179954%_
                                           (gx#syntax-e _%e179870179885%_)))
                                      (let ((_%hd179874179957%_
                                             (##car _%e179873179954%_))
                                            (_%tl179875179959%_
                                             (##cdr _%e179873179954%_)))
                                        (if (eq? (gx#stx-e _%hd179874179957%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl179875179959%_)
                                                (let ((_%e179876179962%_
                                                       (gx#syntax-e
                                                        _%tl179875179959%_)))
                                                  (let ((_%hd179877179965%_
                                                         (##car _%e179876179962%_))
                                                        (_%tl179878179967%_
                                                         (##cdr _%e179876179962%_)))
                                                    (let* ((_%ns179970%_
                                                            _%hd179877179965%_)
                                                           (_%rest179972%_
                                                            _%tl179878179967%_)
                                                           (_%ns179980%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns179970%_)
                        (symbol->string (gx#stx-e _%ns179970%_))
                        (if (or (gx#stx-string? _%ns179970%_)
                                (gx#stx-false? _%ns179970%_))
                            (gx#stx-e _%ns179970%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx179831%_
                             _%ns179970%_)))))
              (_%lp179865%_ _%rest179972%_ _%ns179980%_ _%r179869%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E179872179950%_))
                                            (_%E179872179950%_))))
                                    (_%E179872179950%_)))))
                        (_%E179871179982%_))))))
          (let* ((_%e179834179841%_ _%stx179831%_)
                 (_%E179836179845%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e179834179841%_)))
                 (_%E179835179859%_
                  (lambda ()
                    (if (gx#stx-pair? _%e179834179841%_)
                        (let ((_%e179837179849%_
                               (gx#syntax-e _%e179834179841%_)))
                          (let ((_%hd179838179852%_ (##car _%e179837179849%_))
                                (_%tl179839179854%_ (##cdr _%e179837179849%_)))
                            (let ((_%body179857%_ _%tl179839179854%_))
                              (if (gx#stx-list? _%body179857%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate179833%_ _%body179857%_))
                                  (_%E179836179845%_)))))
                        (_%E179836179845%_)))))
            (_%E179835179859%_)))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx179788%_)
        (let* ((_%e179789179799%_ _%stx179788%_)
               (_%E179791179803%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e179789179799%_)))
               (_%E179790179827%_
                (lambda ()
                  (if (gx#stx-pair? _%e179789179799%_)
                      (let ((_%e179792179807%_
                             (gx#syntax-e _%e179789179799%_)))
                        (let ((_%hd179793179810%_ (##car _%e179792179807%_))
                              (_%tl179794179812%_ (##cdr _%e179792179807%_)))
                          (if (gx#stx-pair? _%tl179794179812%_)
                              (let ((_%e179795179815%_
                                     (gx#syntax-e _%tl179794179812%_)))
                                (let ((_%hd179796179818%_
                                       (##car _%e179795179815%_))
                                      (_%tl179797179820%_
                                       (##cdr _%e179795179815%_)))
                                  (let* ((_%hd179823%_ _%hd179796179818%_)
                                         (_%body179825%_ _%tl179797179820%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd179823%_)
                                             (gx#stx-list? _%body179825%_)
                                             (not (gx#stx-null?
                                                   _%body179825%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd179823%_)
                                         _%body179825%_)
                                        (_%E179791179803%_)))))
                              (_%E179791179803%_))))
                      (_%E179791179803%_)))))
          (_%E179790179827%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx179724%_)
        (letrec ((_%generate179726%_
                  (lambda (_%clause179756%_)
                    (let* ((_%e179757179764%_ _%clause179756%_)
                           (_%E179759179768%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx179724%_
                               _%clause179756%_)))
                           (_%E179758179784%_
                            (lambda ()
                              (if (gx#stx-pair? _%e179757179764%_)
                                  (let ((_%e179760179772%_
                                         (gx#syntax-e _%e179757179764%_)))
                                    (let ((_%hd179761179775%_
                                           (##car _%e179760179772%_))
                                          (_%tl179762179777%_
                                           (##cdr _%e179760179772%_)))
                                      (let* ((_%hd179780%_ _%hd179761179775%_)
                                             (_%body179782%_
                                              _%tl179762179777%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd179780%_)
                                                 (gx#stx-list? _%body179782%_)
                                                 (not (gx#stx-null?
                                                       _%body179782%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd179780%_)
                                                   _%body179782%_)
                                             (gx#stx-source _%clause179756%_))
                                            (_%E179759179768%_)))))
                                  (_%E179759179768%_)))))
                      (_%E179758179784%_)))))
          (let* ((_%e179727179734%_ _%stx179724%_)
                 (_%E179729179738%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e179727179734%_)))
                 (_%E179728179752%_
                  (lambda ()
                    (if (gx#stx-pair? _%e179727179734%_)
                        (let ((_%e179730179742%_
                               (gx#syntax-e _%e179727179734%_)))
                          (let ((_%hd179731179745%_ (##car _%e179730179742%_))
                                (_%tl179732179747%_ (##cdr _%e179730179742%_)))
                            (let ((_%clauses179750%_ _%tl179732179747%_))
                              (if (gx#stx-list? _%clauses179750%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate179726%_
                                    _%clauses179750%_))
                                  (_%E179729179738%_)))))
                        (_%E179729179738%_)))))
            (_%E179728179752%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx179625%_ _%form179626%_)
        (letrec ((_%generate179628%_
                  (lambda (_%bind179671%_)
                    (let* ((_%e179672179682%_ _%bind179671%_)
                           (_%E179674179686%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx179625%_
                               _%bind179671%_)))
                           (_%E179673179710%_
                            (lambda ()
                              (if (gx#stx-pair? _%e179672179682%_)
                                  (let ((_%e179675179690%_
                                         (gx#syntax-e _%e179672179682%_)))
                                    (let ((_%hd179676179693%_
                                           (##car _%e179675179690%_))
                                          (_%tl179677179695%_
                                           (##cdr _%e179675179690%_)))
                                      (let ((_%ids179698%_ _%hd179676179693%_))
                                        (if (gx#stx-pair? _%tl179677179695%_)
                                            (let ((_%e179678179700%_
                                                   (gx#syntax-e
                                                    _%tl179677179695%_)))
                                              (let ((_%hd179679179703%_
                                                     (##car _%e179678179700%_))
                                                    (_%tl179680179705%_
                                                     (##cdr _%e179678179700%_)))
                                                (let ((_%expr179708%_
                                                       _%hd179679179703%_))
                                                  (if (gx#stx-null?
                                                       _%tl179680179705%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids179698%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids179698%_)
                        (cons _%expr179708%_ '()))
                  (_%E179674179686%_))
              (_%E179674179686%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E179674179686%_)))))
                                  (_%E179674179686%_)))))
                      (_%E179673179710%_)))))
          (let* ((_%e179629179639%_ _%stx179625%_)
                 (_%E179631179643%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e179629179639%_)))
                 (_%E179630179667%_
                  (lambda ()
                    (if (gx#stx-pair? _%e179629179639%_)
                        (let ((_%e179632179647%_
                               (gx#syntax-e _%e179629179639%_)))
                          (let ((_%hd179633179650%_ (##car _%e179632179647%_))
                                (_%tl179634179652%_ (##cdr _%e179632179647%_)))
                            (if (gx#stx-pair? _%tl179634179652%_)
                                (let ((_%e179635179655%_
                                       (gx#syntax-e _%tl179634179652%_)))
                                  (let ((_%hd179636179658%_
                                         (##car _%e179635179655%_))
                                        (_%tl179637179660%_
                                         (##cdr _%e179635179655%_)))
                                    (let* ((_%hd179663%_ _%hd179636179658%_)
                                           (_%body179665%_ _%tl179637179660%_))
                                      (if (and (gx#stx-list? _%hd179663%_)
                                               (gx#stx-list? _%body179665%_)
                                               (not (gx#stx-null?
                                                     _%body179665%_)))
                                          (gx#core-cons*
                                           _%form179626%_
                                           (gx#stx-map1
                                            _%generate179628%_
                                            _%hd179663%_)
                                           _%body179665%_)
                                          (_%E179631179643%_)))))
                                (_%E179631179643%_))))
                        (_%E179631179643%_)))))
            (_%E179630179667%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx179717%_)
        (let ((_%form179719%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx179717%_ _%form179719%_))))
    (define gx#macro-expand-let-values
      (lambda _g182261_
        (let ((_g182262_ (##length _g182261_)))
          (cond ((##fx= _g182262_ 1)
                 (apply gx#macro-expand-let-values__0 _g182261_))
                ((##fx= _g182262_ 2)
                 (apply gx#macro-expand-let-values__% _g182261_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g182261_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx179622%_)
        (gx#macro-expand-let-values__% _%stx179622%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx179620%_)
        (gx#macro-expand-let-values__% _%stx179620%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx179511%_)
        (let* ((_%e179512179538%_ _%stx179511%_)
               (_%E179524179542%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e179512179538%_)))
               (_%E179514179584%_
                (lambda ()
                  (if (gx#stx-pair? _%e179512179538%_)
                      (let ((_%e179525179546%_
                             (gx#syntax-e _%e179512179538%_)))
                        (let ((_%hd179526179549%_ (##car _%e179525179546%_))
                              (_%tl179527179551%_ (##cdr _%e179525179546%_)))
                          (if (gx#stx-pair? _%tl179527179551%_)
                              (let ((_%e179528179554%_
                                     (gx#syntax-e _%tl179527179551%_)))
                                (let ((_%hd179529179557%_
                                       (##car _%e179528179554%_))
                                      (_%tl179530179559%_
                                       (##cdr _%e179528179554%_)))
                                  (let ((_%test179562%_ _%hd179529179557%_))
                                    (if (gx#stx-pair? _%tl179530179559%_)
                                        (let ((_%e179531179564%_
                                               (gx#syntax-e
                                                _%tl179530179559%_)))
                                          (let ((_%hd179532179567%_
                                                 (##car _%e179531179564%_))
                                                (_%tl179533179569%_
                                                 (##cdr _%e179531179564%_)))
                                            (let ((_%K179572%_
                                                   _%hd179532179567%_))
                                              (if (gx#stx-pair?
                                                   _%tl179533179569%_)
                                                  (let ((_%e179534179574%_
                                                         (gx#syntax-e
                                                          _%tl179533179569%_)))
                                                    (let ((_%hd179535179577%_
                                                           (##car _%e179534179574%_))
                                                          (_%tl179536179579%_
                                                           (##cdr _%e179534179574%_)))
                                                      (let ((_%E179582%_
                                                             _%hd179535179577%_))
                                                        (if (gx#stx-null?
                                                             _%tl179536179579%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test179562%_
                                                             _%K179572%_
                                                             _%E179582%_)
                                                            (_%E179524179542%_)))))
                                                  (_%E179524179542%_)))))
                                        (_%E179524179542%_)))))
                              (_%E179524179542%_))))
                      (_%E179524179542%_))))
               (_%E179513179616%_
                (lambda ()
                  (if (gx#stx-pair? _%e179512179538%_)
                      (let ((_%e179515179588%_
                             (gx#syntax-e _%e179512179538%_)))
                        (let ((_%hd179516179591%_ (##car _%e179515179588%_))
                              (_%tl179517179593%_ (##cdr _%e179515179588%_)))
                          (if (gx#stx-pair? _%tl179517179593%_)
                              (let ((_%e179518179596%_
                                     (gx#syntax-e _%tl179517179593%_)))
                                (let ((_%hd179519179599%_
                                       (##car _%e179518179596%_))
                                      (_%tl179520179601%_
                                       (##cdr _%e179518179596%_)))
                                  (let ((_%test179604%_ _%hd179519179599%_))
                                    (if (gx#stx-pair? _%tl179520179601%_)
                                        (let ((_%e179521179606%_
                                               (gx#syntax-e
                                                _%tl179520179601%_)))
                                          (let ((_%hd179522179609%_
                                                 (##car _%e179521179606%_))
                                                (_%tl179523179611%_
                                                 (##cdr _%e179521179606%_)))
                                            (let ((_%K179614%_
                                                   _%hd179522179609%_))
                                              (if (gx#stx-null?
                                                   _%tl179523179611%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test179604%_
                                                   _%K179614%_
                                                   '#!void)
                                                  (_%E179514179584%_)))))
                                        (_%E179514179584%_)))))
                              (_%E179514179584%_))))
                      (_%E179514179584%_)))))
          (_%E179513179616%_))))
    (define gx#free-identifier=?
      (lambda (_%xid179496%_ _%yid179497%_)
        (let ((_%xe179499%_ (gx#resolve-identifier__0 _%xid179496%_))
              (_%ye179500%_ (gx#resolve-identifier__0 _%yid179497%_)))
          (if (and _%xe179499%_ _%ye179500%_)
              (let ((_%$e179503%_ (eq? _%xe179499%_ _%ye179500%_)))
                (if _%$e179503%_
                    _%$e179503%_
                    (if (##structure-instance-of? _%xe179499%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye179500%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe179499%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye179500%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe179499%_ _%ye179500%_)
                  '#f
                  (gx#stx-eq? _%xid179496%_ _%yid179497%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid179477%_ _%yid179478%_)
        (letrec ((_%context179480%_
                  (lambda (_%e179494%_)
                    (if (##structure-direct-instance-of?
                         _%e179494%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e179494%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks179481%_
                  (lambda (_%e179489%_)
                    (if (symbol? _%e179489%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e179489%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e179489%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e179489%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap179482%_
                  (lambda (_%e179487%_)
                    (if (symbol? _%e179487%_)
                        _%e179487%_
                        (gx#syntax-local-unwrap _%e179487%_)))))
          (let ((_%x179484%_ (_%unwrap179482%_ _%xid179477%_))
                (_%y179485%_ (_%unwrap179482%_ _%yid179478%_)))
            (if (gx#stx-eq? _%x179484%_ _%y179485%_)
                (if (eq? (_%context179480%_ _%x179484%_)
                         (_%context179480%_ _%y179485%_))
                    (equal? (_%marks179481%_ _%x179484%_)
                            (_%marks179481%_ _%y179485%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx179475%_)
        (if (gx#identifier? _%stx179475%_)
            (gx#core-identifier=? _%stx179475%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx179473%_)
        (if (gx#identifier? _%stx179473%_)
            (gx#core-identifier=? _%stx179473%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx179416%_ _%where179417%_)
        (let _%lp179419%_ ((_%rest179421%_ (gx#syntax->list _%stx179416%_)))
          (let* ((_%rest179422179430%_ _%rest179421%_)
                 (_%else179424179438%_ (lambda () '#t))
                 (_%K179426179451%_
                  (lambda (_%rest179441%_ _%hd179442%_)
                    (if (gx#identifier? _%hd179442%_)
                        (if (__find (lambda (_%g179444179446%_)
                                      (gx#bound-identifier=?
                                       _%g179444179446%_
                                       _%hd179442%_))
                                    _%rest179441%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where179417%_
                             _%hd179442%_)
                            (_%lp179419%_ _%rest179441%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where179417%_
                         _%hd179442%_)))))
            (if (pair? _%rest179422179430%_)
                (let ((_%hd179427179454%_ (##car _%rest179422179430%_))
                      (_%tl179428179456%_ (##cdr _%rest179422179430%_)))
                  (let* ((_%hd179459%_ _%hd179427179454%_)
                         (_%rest179461%_ _%tl179428179456%_))
                    (_%K179426179451%_ _%rest179461%_ _%hd179459%_)))
                (_%else179424179438%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx179466%_)
        (let ((_%where179468%_ _%stx179466%_))
          (gx#check-duplicate-identifiers__% _%stx179466%_ _%where179468%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g182263_
        (let ((_g182264_ (##length _g182263_)))
          (cond ((##fx= _g182264_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g182263_))
                ((##fx= _g182264_ 2)
                 (apply gx#check-duplicate-identifiers__% _g182263_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g182263_))))))
    (define gx#core-bind-values?
      (lambda (_%stx179408%_)
        (gx#stx-andmap
         (lambda (_%x179410%_)
           (let ((_%$e179412%_ (gx#identifier? _%x179410%_)))
             (if _%$e179412%_ _%$e179412%_ (gx#stx-false? _%x179410%_))))
         _%stx179408%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx179372%_ _%rebind?179373%_ _%phi179374%_ _%ctx179375%_)
        (gx#stx-for-each1
         (lambda (_%id179377%_)
           (if (gx#identifier? _%id179377%_)
               (gx#core-bind-runtime!__%
                _%id179377%_
                _%rebind?179373%_
                _%phi179374%_
                _%ctx179375%_)
               '#!void))
         _%stx179372%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx179382%_)
        (let* ((_%rebind?179384%_ '#f)
               (_%phi179386%_ (gx#current-expander-phi))
               (_%ctx179388%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx179382%_
           _%rebind?179384%_
           _%phi179386%_
           _%ctx179388%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx179390%_ _%rebind?179391%_)
        (let* ((_%phi179393%_ (gx#current-expander-phi))
               (_%ctx179395%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx179390%_
           _%rebind?179391%_
           _%phi179393%_
           _%ctx179395%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx179397%_ _%rebind?179398%_ _%phi179399%_)
        (let ((_%ctx179401%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx179397%_
           _%rebind?179398%_
           _%phi179399%_
           _%ctx179401%_))))
    (define gx#core-bind-values!
      (lambda _g182265_
        (let ((_g182266_ (##length _g182265_)))
          (cond ((##fx= _g182266_ 1) (apply gx#core-bind-values!__0 _g182265_))
                ((##fx= _g182266_ 2) (apply gx#core-bind-values!__1 _g182265_))
                ((##fx= _g182266_ 3) (apply gx#core-bind-values!__2 _g182265_))
                ((##fx= _g182266_ 4) (apply gx#core-bind-values!__% _g182265_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g182265_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx179367%_)
        (gx#stx-map1
         (lambda (_%x179369%_)
           (if (gx#identifier? _%x179369%_)
               (gx#core-quote-syntax__0 _%x179369%_)
               '#f))
         _%stx179367%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx179360%_)
        (if (gx#identifier? _%stx179360%_)
            (let* ((_%bind179362%_ (gx#resolve-identifier__0 _%stx179360%_))
                   (_%$e179364%_ (not _%bind179362%_)))
              (if _%$e179364%_
                  _%$e179364%_
                  (##structure-instance-of?
                   _%bind179362%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id179349%_ _%form179350%_)
        (let ((_%bind179352%_ (gx#resolve-identifier__0 _%id179349%_)))
          (if (##structure-instance-of? _%bind179352%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id179349%_)
              (if (not _%bind179352%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id179349%_)))
                      (gx#core-quote-syntax__0 _%id179349%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form179350%_
                       _%id179349%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form179350%_
                   _%id179349%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id179304%_ _%rebind?179305%_ _%phi179306%_ _%ctx179307%_)
        (let* ((_%key179309%_ (gx#core-identifier-key _%id179304%_))
               (_%eid179311%_
                (gx#make-binding-id__%
                 _%key179309%_
                 '#f
                 _%phi179306%_
                 _%ctx179307%_))
               (_%bind179317%_
                (if (##structure-instance-of?
                     _%ctx179307%_
                     'gx#module-context::t)
                    (let ((__obj182242
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
                       __obj182242
                       _%eid179311%_
                       _%key179309%_
                       _%phi179306%_
                       _%ctx179307%_)
                      __obj182242)
                    (if (##structure-instance-of?
                         _%ctx179307%_
                         'gx#top-context::t)
                        (let ((__obj182241
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj182241
                           _%eid179311%_
                           _%key179309%_
                           _%phi179306%_)
                          __obj182241)
                        (if (##structure-instance-of?
                             _%ctx179307%_
                             'gx#local-context::t)
                            (let ((__obj182240
                                   (##structure
                                    gx#local-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#local-binding:::init!
                               __obj182240
                               _%eid179311%_
                               _%key179309%_
                               _%phi179306%_)
                              __obj182240)
                            (let ((__obj182239
                                   (##structure
                                    gx#runtime-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#runtime-binding:::init!
                               __obj182239
                               _%eid179311%_
                               _%key179309%_
                               _%phi179306%_)
                              __obj182239))))))
          (gx#bind-identifier!__%
           _%id179304%_
           _%bind179317%_
           _%rebind?179305%_
           _%phi179306%_
           _%ctx179307%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id179323%_)
        (let* ((_%rebind?179325%_ '#f)
               (_%phi179327%_ (gx#current-expander-phi))
               (_%ctx179329%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id179323%_
           _%rebind?179325%_
           _%phi179327%_
           _%ctx179329%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id179331%_ _%rebind?179332%_)
        (let* ((_%phi179334%_ (gx#current-expander-phi))
               (_%ctx179336%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id179331%_
           _%rebind?179332%_
           _%phi179334%_
           _%ctx179336%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id179338%_ _%rebind?179339%_ _%phi179340%_)
        (let ((_%ctx179342%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id179338%_
           _%rebind?179339%_
           _%phi179340%_
           _%ctx179342%_))))
    (define gx#core-bind-runtime!
      (lambda _g182267_
        (let ((_g182268_ (##length _g182267_)))
          (cond ((##fx= _g182268_ 1)
                 (apply gx#core-bind-runtime!__0 _g182267_))
                ((##fx= _g182268_ 2)
                 (apply gx#core-bind-runtime!__1 _g182267_))
                ((##fx= _g182268_ 3)
                 (apply gx#core-bind-runtime!__2 _g182267_))
                ((##fx= _g182268_ 4)
                 (apply gx#core-bind-runtime!__% _g182267_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g182267_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id179256%_
               _%eid179257%_
               _%rebind?179258%_
               _%phi179259%_
               _%ctx179260%_)
        (let* ((_%key179262%_ (gx#core-identifier-key _%id179256%_))
               (_%bind179267%_
                (if (##structure-instance-of?
                     _%ctx179260%_
                     'gx#module-context::t)
                    (let ((__obj182245
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
                       __obj182245
                       _%eid179257%_
                       _%key179262%_
                       _%phi179259%_
                       _%ctx179260%_)
                      __obj182245)
                    (if (##structure-instance-of?
                         _%ctx179260%_
                         'gx#top-context::t)
                        (let ((__obj182244
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj182244
                           _%eid179257%_
                           _%key179262%_
                           _%phi179259%_)
                          __obj182244)
                        (let ((__obj182243
                               (##structure
                                gx#runtime-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#runtime-binding:::init!
                           __obj182243
                           _%eid179257%_
                           _%key179262%_
                           _%phi179259%_)
                          __obj182243)))))
          (gx#bind-identifier!__%
           _%id179256%_
           _%bind179267%_
           _%rebind?179258%_
           _%phi179259%_
           _%ctx179260%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id179273%_ _%eid179274%_)
        (let* ((_%rebind?179276%_ '#f)
               (_%phi179278%_ (gx#current-expander-phi))
               (_%ctx179280%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id179273%_
           _%eid179274%_
           _%rebind?179276%_
           _%phi179278%_
           _%ctx179280%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id179282%_ _%eid179283%_ _%rebind?179284%_)
        (let* ((_%phi179286%_ (gx#current-expander-phi))
               (_%ctx179288%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id179282%_
           _%eid179283%_
           _%rebind?179284%_
           _%phi179286%_
           _%ctx179288%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id179290%_ _%eid179291%_ _%rebind?179292%_ _%phi179293%_)
        (let ((_%ctx179295%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id179290%_
           _%eid179291%_
           _%rebind?179292%_
           _%phi179293%_
           _%ctx179295%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g182269_
        (let ((_g182270_ (##length _g182269_)))
          (cond ((##fx= _g182270_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g182269_))
                ((##fx= _g182270_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g182269_))
                ((##fx= _g182270_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g182269_))
                ((##fx= _g182270_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g182269_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g182269_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id179216%_
               _%eid179217%_
               _%rebind?179218%_
               _%phi179219%_
               _%ctx179220%_)
        (gx#bind-identifier!__%
         _%id179216%_
         (let ((__obj182246
                (##structure gx#extern-binding::t '#f '#f '#f '#f '#f '#f)))
           (gx#extern-binding:::init!
            __obj182246
            _%eid179217%_
            (gx#core-identifier-key _%id179216%_)
            _%phi179219%_)
           __obj182246)
         _%rebind?179218%_
         _%phi179219%_
         _%ctx179220%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id179225%_ _%eid179226%_)
        (let* ((_%rebind?179228%_ '#f)
               (_%phi179230%_ (gx#current-expander-phi))
               (_%ctx179232%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id179225%_
           _%eid179226%_
           _%rebind?179228%_
           _%phi179230%_
           _%ctx179232%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id179234%_ _%eid179235%_ _%rebind?179236%_)
        (let* ((_%phi179238%_ (gx#current-expander-phi))
               (_%ctx179240%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id179234%_
           _%eid179235%_
           _%rebind?179236%_
           _%phi179238%_
           _%ctx179240%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id179242%_ _%eid179243%_ _%rebind?179244%_ _%phi179245%_)
        (let ((_%ctx179247%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id179242%_
           _%eid179243%_
           _%rebind?179244%_
           _%phi179245%_
           _%ctx179247%_))))
    (define gx#core-bind-extern!
      (lambda _g182271_
        (let ((_g182272_ (##length _g182271_)))
          (cond ((##fx= _g182272_ 2) (apply gx#core-bind-extern!__0 _g182271_))
                ((##fx= _g182272_ 3) (apply gx#core-bind-extern!__1 _g182271_))
                ((##fx= _g182272_ 4) (apply gx#core-bind-extern!__2 _g182271_))
                ((##fx= _g182272_ 5) (apply gx#core-bind-extern!__% _g182271_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g182271_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id179170%_
               _%e179171%_
               _%rebind?179172%_
               _%phi179173%_
               _%ctx179174%_)
        (gx#bind-identifier!__%
         _%id179170%_
         (let ((_%key179179%_ (gx#core-identifier-key _%id179170%_))
               (_%e179180%_
                (if (or (##structure-instance-of? _%e179171%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e179171%_
                         'gx#expander-context::t))
                    _%e179171%_
                    (##structure
                     gx#user-expander::t
                     _%e179171%_
                     _%ctx179174%_
                     _%phi179173%_))))
           (let ((__obj182247
                  (##structure gx#syntax-binding::t '#f '#f '#f '#f '#f)))
             (gx#syntax-binding:::init!
              __obj182247
              (gx#make-binding-id__%
               _%key179179%_
               '#t
               _%phi179173%_
               _%ctx179174%_)
              _%key179179%_
              _%phi179173%_
              _%e179180%_)
             __obj182247))
         _%rebind?179172%_
         _%phi179173%_
         _%ctx179174%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id179185%_ _%e179186%_)
        (let* ((_%rebind?179188%_ '#f)
               (_%phi179190%_ (gx#current-expander-phi))
               (_%ctx179192%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id179185%_
           _%e179186%_
           _%rebind?179188%_
           _%phi179190%_
           _%ctx179192%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id179194%_ _%e179195%_ _%rebind?179196%_)
        (let* ((_%phi179198%_ (gx#current-expander-phi))
               (_%ctx179200%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id179194%_
           _%e179195%_
           _%rebind?179196%_
           _%phi179198%_
           _%ctx179200%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id179202%_ _%e179203%_ _%rebind?179204%_ _%phi179205%_)
        (let ((_%ctx179207%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id179202%_
           _%e179203%_
           _%rebind?179204%_
           _%phi179205%_
           _%ctx179207%_))))
    (define gx#core-bind-syntax!
      (lambda _g182273_
        (let ((_g182274_ (##length _g182273_)))
          (cond ((##fx= _g182274_ 2) (apply gx#core-bind-syntax!__0 _g182273_))
                ((##fx= _g182274_ 3) (apply gx#core-bind-syntax!__1 _g182273_))
                ((##fx= _g182274_ 4) (apply gx#core-bind-syntax!__2 _g182273_))
                ((##fx= _g182274_ 5) (apply gx#core-bind-syntax!__% _g182273_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g182273_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id179153%_ _%e179154%_ _%rebind?179155%_)
        (gx#core-bind-syntax!__%
         _%id179153%_
         _%e179154%_
         _%rebind?179155%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id179160%_ _%e179161%_)
        (let ((_%rebind?179163%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id179160%_
           _%e179161%_
           _%rebind?179163%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g182275_
        (let ((_g182276_ (##length _g182275_)))
          (cond ((##fx= _g182276_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g182275_))
                ((##fx= _g182276_ 3)
                 (apply gx#core-bind-root-syntax!__% _g182275_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g182275_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id179111%_
               _%alias-id179112%_
               _%rebind?179113%_
               _%phi179114%_
               _%ctx179115%_)
        (gx#bind-identifier!__%
         _%id179111%_
         (let* ((_%key179117%_ (gx#core-identifier-key _%id179111%_))
                (__obj182248
                 (##structure gx#alias-binding::t '#f '#f '#f '#f '#f)))
           (gx#alias-binding:::init!
            __obj182248
            (gx#make-binding-id__%
             _%key179117%_
             '#t
             _%phi179114%_
             _%ctx179115%_)
            _%key179117%_
            _%phi179114%_
            _%alias-id179112%_)
           __obj182248)
         _%rebind?179113%_
         _%phi179114%_
         _%ctx179115%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id179122%_ _%alias-id179123%_)
        (let* ((_%rebind?179125%_ '#f)
               (_%phi179127%_ (gx#current-expander-phi))
               (_%ctx179129%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id179122%_
           _%alias-id179123%_
           _%rebind?179125%_
           _%phi179127%_
           _%ctx179129%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id179131%_ _%alias-id179132%_ _%rebind?179133%_)
        (let* ((_%phi179135%_ (gx#current-expander-phi))
               (_%ctx179137%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id179131%_
           _%alias-id179132%_
           _%rebind?179133%_
           _%phi179135%_
           _%ctx179137%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id179139%_ _%alias-id179140%_ _%rebind?179141%_ _%phi179142%_)
        (let ((_%ctx179144%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id179139%_
           _%alias-id179140%_
           _%rebind?179141%_
           _%phi179142%_
           _%ctx179144%_))))
    (define gx#core-bind-alias!
      (lambda _g182277_
        (let ((_g182278_ (##length _g182277_)))
          (cond ((##fx= _g182278_ 2) (apply gx#core-bind-alias!__0 _g182277_))
                ((##fx= _g182278_ 3) (apply gx#core-bind-alias!__1 _g182277_))
                ((##fx= _g182278_ 4) (apply gx#core-bind-alias!__2 _g182277_))
                ((##fx= _g182278_ 5) (apply gx#core-bind-alias!__% _g182277_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g182277_))))))
    (define gx#make-binding-id__%
      (lambda (_%key179061%_ _%syntax?179062%_ _%phi179063%_ _%ctx179064%_)
        (if (uninterned-symbol? _%key179061%_)
            (##gensym 'L)
            (if (pair? _%key179061%_)
                (gensym (##car _%key179061%_))
                (if (##structure-instance-of? _%ctx179064%_ 'gx#top-context::t)
                    (let ((_%ns179069%_
                           (gx#core-context-namespace__% _%ctx179064%_)))
                      (if (and (fxzero? _%phi179063%_) (not _%syntax?179062%_))
                          (if _%ns179069%_
                              (make-symbol__1 _%ns179069%_ '"#" _%key179061%_)
                              _%key179061%_)
                          (if _%syntax?179062%_
                              (make-symbol__1
                               (let ((_%$e179073%_ _%ns179069%_))
                                 (if _%$e179073%_ _%$e179073%_ '""))
                               '"[:"
                               (number->string _%phi179063%_)
                               '":]#"
                               _%key179061%_)
                              (make-symbol__1
                               (let ((_%$e179077%_ _%ns179069%_))
                                 (if _%$e179077%_ _%$e179077%_ '""))
                               '"["
                               (number->string _%phi179063%_)
                               '"]#"
                               _%key179061%_))))
                    (gensym _%key179061%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key179084%_)
        (let* ((_%syntax?179086%_ '#f)
               (_%phi179088%_ (gx#current-expander-phi))
               (_%ctx179090%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key179084%_
           _%syntax?179086%_
           _%phi179088%_
           _%ctx179090%_))))
    (define gx#make-binding-id__1
      (lambda (_%key179092%_ _%syntax?179093%_)
        (let* ((_%phi179095%_ (gx#current-expander-phi))
               (_%ctx179097%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key179092%_
           _%syntax?179093%_
           _%phi179095%_
           _%ctx179097%_))))
    (define gx#make-binding-id__2
      (lambda (_%key179099%_ _%syntax?179100%_ _%phi179101%_)
        (let ((_%ctx179103%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key179099%_
           _%syntax?179100%_
           _%phi179101%_
           _%ctx179103%_))))
    (define gx#make-binding-id
      (lambda _g182279_
        (let ((_g182280_ (##length _g182279_)))
          (cond ((##fx= _g182280_ 1) (apply gx#make-binding-id__0 _g182279_))
                ((##fx= _g182280_ 2) (apply gx#make-binding-id__1 _g182279_))
                ((##fx= _g182280_ 3) (apply gx#make-binding-id__2 _g182279_))
                ((##fx= _g182280_ 4) (apply gx#make-binding-id__% _g182279_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g182279_))))))))
