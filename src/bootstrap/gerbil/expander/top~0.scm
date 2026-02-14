(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1771104507)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx182320%_)
        (letrec ((_%expand-special182322%_
                  (lambda (_%hd182324%_ _%K182325%_ _%rest182326%_ _%r182327%_)
                    (_%K182325%_
                     _%rest182326%_
                     (cons (gx#core-expand-top _%hd182324%_) _%r182327%_)))))
          (gx#core-expand-block__0 _%stx182320%_ _%expand-special182322%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx182014%_)
        (letrec ((_%expand-special182016%_
                  (lambda (_%hd182138%_ _%K182139%_ _%rest182140%_ _%r182141%_)
                    (let* ((_%K182145%_
                            (lambda (_%e182143%_)
                              (_%K182139%_
                               _%rest182140%_
                               (cons _%e182143%_ _%r182141%_))))
                           (_%e182146182188%_ _%hd182138%_)
                           (_%E182183182192%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e182146182188%_)))
                           (_%E182179182204%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182146182188%_)
                                  (let ((_%e182184182196%_
                                         (gx#syntax-e _%e182146182188%_)))
                                    (let ((_%hd182185182199%_
                                           (##car _%e182184182196%_))
                                          (_%tl182186182201%_
                                           (##cdr _%e182184182196%_)))
                                      (if (and (gx#identifier?
                                                _%hd182185182199%_)
                                               (gx#core-identifier=?
                                                _%hd182185182199%_
                                                '%#define-runtime))
                                          (_%K182145%_
                                           (gx#core-expand-define-runtime%
                                            _%hd182138%_))
                                          (_%E182183182192%_))))
                                  (_%E182183182192%_))))
                           (_%E182175182216%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182146182188%_)
                                  (let ((_%e182180182208%_
                                         (gx#syntax-e _%e182146182188%_)))
                                    (let ((_%hd182181182211%_
                                           (##car _%e182180182208%_))
                                          (_%tl182182182213%_
                                           (##cdr _%e182180182208%_)))
                                      (if (and (gx#identifier?
                                                _%hd182181182211%_)
                                               (gx#core-identifier=?
                                                _%hd182181182211%_
                                                '%#define-alias))
                                          (_%K182145%_
                                           (gx#core-expand-define-alias%
                                            _%hd182138%_))
                                          (_%E182179182204%_))))
                                  (_%E182179182204%_))))
                           (_%E182165182228%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182146182188%_)
                                  (let ((_%e182176182220%_
                                         (gx#syntax-e _%e182146182188%_)))
                                    (let ((_%hd182177182223%_
                                           (##car _%e182176182220%_))
                                          (_%tl182178182225%_
                                           (##cdr _%e182176182220%_)))
                                      (if (and (gx#identifier?
                                                _%hd182177182223%_)
                                               (gx#core-identifier=?
                                                _%hd182177182223%_
                                                '%#define-syntax))
                                          (_%K182145%_
                                           (gx#core-expand-define-syntax%
                                            _%hd182138%_))
                                          (_%E182175182216%_))))
                                  (_%E182175182216%_))))
                           (_%E182152182260%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182146182188%_)
                                  (let ((_%e182166182232%_
                                         (gx#syntax-e _%e182146182188%_)))
                                    (let ((_%hd182167182235%_
                                           (##car _%e182166182232%_))
                                          (_%tl182168182237%_
                                           (##cdr _%e182166182232%_)))
                                      (if (and (gx#identifier?
                                                _%hd182167182235%_)
                                               (gx#core-identifier=?
                                                _%hd182167182235%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl182168182237%_)
                                              (let ((_%e182169182240%_
                                                     (gx#syntax-e
                                                      _%tl182168182237%_)))
                                                (let ((_%hd182170182243%_
                                                       (##car _%e182169182240%_))
                                                      (_%tl182171182245%_
                                                       (##cdr _%e182169182240%_)))
                                                  (let ((_%hd-bind182248%_
                                                         _%hd182170182243%_))
                                                    (if (gx#stx-pair?
                                                         _%tl182171182245%_)
                                                        (let ((_%e182172182250%_
                                                               (gx#syntax-e
                                                                _%tl182171182245%_)))
                                                          (let ((_%hd182173182253%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e182172182250%_))
                        (_%tl182174182255%_ (##cdr _%e182172182250%_)))
                    (let ((_%expr182258%_ _%hd182173182253%_))
                      (if (gx#stx-null? _%tl182174182255%_)
                          (if (gx#core-bind-values? _%hd-bind182248%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind182248%_)
                                (_%K182145%_ _%hd182138%_))
                              (_%E182165182228%_))
                          (_%E182165182228%_)))))
                (_%E182165182228%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E182165182228%_))
                                          (_%E182165182228%_))))
                                  (_%E182165182228%_))))
                           (_%E182148182304%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182146182188%_)
                                  (let ((_%e182153182264%_
                                         (gx#syntax-e _%e182146182188%_)))
                                    (let ((_%hd182154182267%_
                                           (##car _%e182153182264%_))
                                          (_%tl182155182269%_
                                           (##cdr _%e182153182264%_)))
                                      (if (and (gx#identifier?
                                                _%hd182154182267%_)
                                               (gx#core-identifier=?
                                                _%hd182154182267%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl182155182269%_)
                                              (let ((_%e182156182272%_
                                                     (gx#syntax-e
                                                      _%tl182155182269%_)))
                                                (let ((_%hd182157182275%_
                                                       (##car _%e182156182272%_))
                                                      (_%tl182158182277%_
                                                       (##cdr _%e182156182272%_)))
                                                  (if (gx#stx-pair?
                                                       _%hd182157182275%_)
                                                      (let ((_%e182162182280%_
                                                             (gx#syntax-e
                                                              _%hd182157182275%_)))
                                                        (let ((_%hd182163182283%_
                                                               (##car _%e182162182280%_))
                                                              (_%tl182164182285%_
                                                               (##cdr _%e182162182280%_)))
                                                          (let ((_%id182288%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd182163182283%_))
                    (if (gx#stx-null? _%tl182164182285%_)
                        (if (gx#stx-pair? _%tl182158182277%_)
                            (let ((_%e182159182290%_
                                   (gx#syntax-e _%tl182158182277%_)))
                              (let ((_%hd182160182293%_
                                     (##car _%e182159182290%_))
                                    (_%tl182161182295%_
                                     (##cdr _%e182159182290%_)))
                                (let* ((_%expr182298%_ _%hd182160182293%_)
                                       (_%props182300%_ _%tl182161182295%_))
                                  (if (gx#identifier? _%id182288%_)
                                      (let ((_%bind182302%_
                                             (gx#core-bind-runtime!__0
                                              _%id182288%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind182302%_
                                         _%props182300%_)
                                        (_%K182145%_ _%hd182138%_))
                                      (_%E182152182260%_)))))
                            (_%E182152182260%_))
                        (_%E182152182260%_)))))
              (_%E182152182260%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E182152182260%_))
                                          (_%E182152182260%_))))
                                  (_%E182152182260%_))))
                           (_%E182147182316%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182146182188%_)
                                  (let ((_%e182149182308%_
                                         (gx#syntax-e _%e182146182188%_)))
                                    (let ((_%hd182150182311%_
                                           (##car _%e182149182308%_))
                                          (_%tl182151182313%_
                                           (##cdr _%e182149182308%_)))
                                      (if (and (gx#identifier?
                                                _%hd182150182311%_)
                                               (gx#core-identifier=?
                                                _%hd182150182311%_
                                                '%#begin-syntax))
                                          (_%K182145%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd182138%_))
                                          (_%E182148182304%_))))
                                  (_%E182148182304%_)))))
                      (_%E182147182316%_))))
                 (_%eval-body182017%_
                  (lambda (_%rbody182025%_)
                    (let _%lp182027%_ ((_%rest182029%_ _%rbody182025%_)
                                       (_%body182030%_ '())
                                       (_%ebody182031%_ '()))
                      (let* ((_%rest182032182040%_ _%rest182029%_)
                             (_%else182034182048%_
                              (lambda ()
                                (values _%body182030%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody182031%_)
                                          (gx#stx-source _%stx182014%_))))))
                             (_%K182036182126%_
                              (lambda (_%rest182051%_ _%hd182052%_)
                                (let* ((_%e182053182070%_ _%hd182052%_)
                                       (_%E182065182074%_
                                        (lambda ()
                                          (_%lp182027%_
                                           _%rest182051%_
                                           (cons _%hd182052%_ _%body182030%_)
                                           (cons _%hd182052%_
                                                 _%ebody182031%_))))
                                       (_%E182055182086%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e182053182070%_)
                                              (let ((_%e182066182078%_
                                                     (gx#syntax-e
                                                      _%e182053182070%_)))
                                                (let ((_%hd182067182081%_
                                                       (##car _%e182066182078%_))
                                                      (_%tl182068182083%_
                                                       (##cdr _%e182066182078%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd182067182081%_)
                                                           (gx#core-identifier=?
                                                            _%hd182067182081%_
                                                            '%#begin-syntax))
                                                      (_%lp182027%_
                                                       _%rest182051%_
                                                       (cons _%hd182052%_
                                                             _%body182030%_)
                                                       _%ebody182031%_)
                                                      (_%E182065182074%_))))
                                              (_%E182065182074%_))))
                                       (_%E182054182122%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e182053182070%_)
                                              (let ((_%e182056182090%_
                                                     (gx#syntax-e
                                                      _%e182053182070%_)))
                                                (let ((_%hd182057182093%_
                                                       (##car _%e182056182090%_))
                                                      (_%tl182058182095%_
                                                       (##cdr _%e182056182090%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd182057182093%_)
                                                           (gx#core-identifier=?
                                                            _%hd182057182093%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl182058182095%_)
                                                          (let ((_%e182059182098%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl182058182095%_)))
                    (let ((_%hd182060182101%_ (##car _%e182059182098%_))
                          (_%tl182061182103%_ (##cdr _%e182059182098%_)))
                      (let ((_%hd-bind182106%_ _%hd182060182101%_))
                        (if (gx#stx-pair? _%tl182061182103%_)
                            (let ((_%e182062182108%_
                                   (gx#syntax-e _%tl182061182103%_)))
                              (let ((_%hd182063182111%_
                                     (##car _%e182062182108%_))
                                    (_%tl182064182113%_
                                     (##cdr _%e182062182108%_)))
                                (let* ((_%expr182116%_ _%hd182063182111%_)
                                       (_%ignore-props182118%_
                                        _%tl182064182113%_)
                                       (_%ehd182120%_
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#define-values)
                                               (cons (gx#core-quote-bind-values
                                                      _%hd-bind182106%_)
                                                     (cons (gx#core-expand-expression
                                                            _%expr182116%_)
                                                           '())))
                                         (gx#stx-source _%hd182052%_))))
                                  (_%lp182027%_
                                   _%rest182051%_
                                   (cons _%ehd182120%_ _%body182030%_)
                                   (cons _%ehd182120%_ _%ebody182031%_)))))
                            (_%E182055182086%_)))))
                  (_%E182055182086%_))
              (_%E182055182086%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E182055182086%_)))))
                                  (_%E182054182122%_)))))
                        (if (pair? _%rest182032182040%_)
                            (let ((_%hd182037182129%_
                                   (##car _%rest182032182040%_))
                                  (_%tl182038182131%_
                                   (##cdr _%rest182032182040%_)))
                              (let* ((_%hd182134%_ _%hd182037182129%_)
                                     (_%rest182136%_ _%tl182038182131%_))
                                (_%K182036182126%_
                                 _%rest182136%_
                                 _%hd182134%_)))
                            (_%else182034182048%_)))))))
          (call-with-parameters__1
           (lambda ()
             (let* ((_%rbody182020%_
                     (gx#core-expand-block__1
                      _%stx182014%_
                      _%expand-special182016%_
                      '#f))
                    (_g182353_ (_%eval-body182017%_ _%rbody182020%_)))
               (begin
                 (let ((_g182354_
                        (if (##values? _g182353_)
                            (##values-length _g182353_)
                            1)))
                   (if (not (##fx= _g182354_ 2))
                       (error "Context expects 2 values" _g182354_)))
                 (let ((_%expanded-body182022%_ (##values-ref _g182353_ 0))
                       (_%value182023%_ (##values-ref _g182353_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body182022%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value182023%_ '())))
                    (gx#stx-source _%stx182014%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx181984%_)
        (let* ((_%e181985181992%_ _%stx181984%_)
               (_%E181987181996%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181985181992%_)))
               (_%E181986182010%_
                (lambda ()
                  (if (gx#stx-pair? _%e181985181992%_)
                      (let ((_%e181988182000%_
                             (gx#syntax-e _%e181985181992%_)))
                        (let ((_%hd181989182003%_ (##car _%e181988182000%_))
                              (_%tl181990182005%_ (##cdr _%e181988182000%_)))
                          (let ((_%body182008%_ _%tl181990182005%_))
                            (if (gx#stx-list? _%body182008%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body182008%_)
                                 (gx#stx-source _%stx181984%_))
                                (_%E181987181996%_)))))
                      (_%E181987181996%_)))))
          (_%E181986182010%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx181982%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx181982%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx181928%_)
        (let* ((_%e181929181942%_ _%stx181928%_)
               (_%E181931181946%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181929181942%_)))
               (_%E181930181978%_
                (lambda ()
                  (if (gx#stx-pair? _%e181929181942%_)
                      (let ((_%e181932181950%_
                             (gx#syntax-e _%e181929181942%_)))
                        (let ((_%hd181933181953%_ (##car _%e181932181950%_))
                              (_%tl181934181955%_ (##cdr _%e181932181950%_)))
                          (if (gx#stx-pair? _%tl181934181955%_)
                              (let ((_%e181935181958%_
                                     (gx#syntax-e _%tl181934181955%_)))
                                (let ((_%hd181936181961%_
                                       (##car _%e181935181958%_))
                                      (_%tl181937181963%_
                                       (##cdr _%e181935181958%_)))
                                  (let ((_%ann181966%_ _%hd181936181961%_))
                                    (if (gx#stx-pair? _%tl181937181963%_)
                                        (let ((_%e181938181968%_
                                               (gx#syntax-e
                                                _%tl181937181963%_)))
                                          (let ((_%hd181939181971%_
                                                 (##car _%e181938181968%_))
                                                (_%tl181940181973%_
                                                 (##cdr _%e181938181968%_)))
                                            (let ((_%expr181976%_
                                                   _%hd181939181971%_))
                                              (if (gx#stx-null?
                                                   _%tl181940181973%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann181966%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr181976%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx181928%_))
                                                  (_%E181931181946%_)))))
                                        (_%E181931181946%_)))))
                              (_%E181931181946%_))))
                      (_%E181931181946%_)))))
          (_%E181930181978%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx181593%_ _%body181594%_)
        (letrec ((_%expand-special181596%_
                  (lambda (_%hd181923%_ _%K181924%_ _%rest181925%_ _%r181926%_)
                    (_%K181924%_
                     '()
                     (cons (_%expand-internal181597%_
                            _%hd181923%_
                            _%rest181925%_)
                           _%r181926%_))))
                 (_%expand-internal181597%_
                  (lambda (_%hd181919%_ _%rest181920%_)
                    (call-with-parameters__1
                     (lambda ()
                       (_%wrap-internal181599%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd181919%_ _%rest181920%_))
                          (gx#stx-source _%stx181593%_))
                         _%expand-internal-special181598%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj182337
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj182337)
                       __obj182337))))
                 (_%expand-internal-special181598%_
                  (lambda (_%hd181757%_ _%K181758%_ _%rest181759%_ _%r181760%_)
                    (let* ((_%e181761181799%_ _%hd181757%_)
                           (_%E181794181803%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e181761181799%_)))
                           (_%E181790181815%_
                            (lambda ()
                              (if (gx#stx-pair? _%e181761181799%_)
                                  (let ((_%e181795181807%_
                                         (gx#syntax-e _%e181761181799%_)))
                                    (let ((_%hd181796181810%_
                                           (##car _%e181795181807%_))
                                          (_%tl181797181812%_
                                           (##cdr _%e181795181807%_)))
                                      (if (and (gx#identifier?
                                                _%hd181796181810%_)
                                               (gx#core-identifier=?
                                                _%hd181796181810%_
                                                '%#declare))
                                          (_%K181758%_
                                           _%rest181759%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd181757%_)
                                                 _%r181760%_))
                                          (_%E181794181803%_))))
                                  (_%E181794181803%_))))
                           (_%E181786181827%_
                            (lambda ()
                              (if (gx#stx-pair? _%e181761181799%_)
                                  (let ((_%e181791181819%_
                                         (gx#syntax-e _%e181761181799%_)))
                                    (let ((_%hd181792181822%_
                                           (##car _%e181791181819%_))
                                          (_%tl181793181824%_
                                           (##cdr _%e181791181819%_)))
                                      (if (and (gx#identifier?
                                                _%hd181792181822%_)
                                               (gx#core-identifier=?
                                                _%hd181792181822%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd181757%_)
                                            (_%K181758%_
                                             _%rest181759%_
                                             _%r181760%_))
                                          (_%E181790181815%_))))
                                  (_%E181790181815%_))))
                           (_%E181776181839%_
                            (lambda ()
                              (if (gx#stx-pair? _%e181761181799%_)
                                  (let ((_%e181787181831%_
                                         (gx#syntax-e _%e181761181799%_)))
                                    (let ((_%hd181788181834%_
                                           (##car _%e181787181831%_))
                                          (_%tl181789181836%_
                                           (##cdr _%e181787181831%_)))
                                      (if (and (gx#identifier?
                                                _%hd181788181834%_)
                                               (gx#core-identifier=?
                                                _%hd181788181834%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd181757%_)
                                            (_%K181758%_
                                             _%rest181759%_
                                             _%r181760%_))
                                          (_%E181786181827%_))))
                                  (_%E181786181827%_))))
                           (_%E181763181871%_
                            (lambda ()
                              (if (gx#stx-pair? _%e181761181799%_)
                                  (let ((_%e181777181843%_
                                         (gx#syntax-e _%e181761181799%_)))
                                    (let ((_%hd181778181846%_
                                           (##car _%e181777181843%_))
                                          (_%tl181779181848%_
                                           (##cdr _%e181777181843%_)))
                                      (if (and (gx#identifier?
                                                _%hd181778181846%_)
                                               (gx#core-identifier=?
                                                _%hd181778181846%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl181779181848%_)
                                              (let ((_%e181780181851%_
                                                     (gx#syntax-e
                                                      _%tl181779181848%_)))
                                                (let ((_%hd181781181854%_
                                                       (##car _%e181780181851%_))
                                                      (_%tl181782181856%_
                                                       (##cdr _%e181780181851%_)))
                                                  (let ((_%hd-bind181859%_
                                                         _%hd181781181854%_))
                                                    (if (gx#stx-pair?
                                                         _%tl181782181856%_)
                                                        (let ((_%e181783181861%_
                                                               (gx#syntax-e
                                                                _%tl181782181856%_)))
                                                          (let ((_%hd181784181864%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e181783181861%_))
                        (_%tl181785181866%_ (##cdr _%e181783181861%_)))
                    (let ((_%expr181869%_ _%hd181784181864%_))
                      (if (gx#stx-null? _%tl181785181866%_)
                          (if (gx#core-bind-values? _%hd-bind181859%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind181859%_)
                                (_%K181758%_
                                 _%rest181759%_
                                 (cons _%hd181757%_ _%r181760%_)))
                              (_%E181776181839%_))
                          (_%E181776181839%_)))))
                (_%E181776181839%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E181776181839%_))
                                          (_%E181776181839%_))))
                                  (_%E181776181839%_))))
                           (_%E181762181915%_
                            (lambda ()
                              (if (gx#stx-pair? _%e181761181799%_)
                                  (let ((_%e181764181875%_
                                         (gx#syntax-e _%e181761181799%_)))
                                    (let ((_%hd181765181878%_
                                           (##car _%e181764181875%_))
                                          (_%tl181766181880%_
                                           (##cdr _%e181764181875%_)))
                                      (if (and (gx#identifier?
                                                _%hd181765181878%_)
                                               (gx#core-identifier=?
                                                _%hd181765181878%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl181766181880%_)
                                              (let ((_%e181767181883%_
                                                     (gx#syntax-e
                                                      _%tl181766181880%_)))
                                                (let ((_%hd181768181886%_
                                                       (##car _%e181767181883%_))
                                                      (_%tl181769181888%_
                                                       (##cdr _%e181767181883%_)))
                                                  (if (gx#stx-pair?
                                                       _%hd181768181886%_)
                                                      (let ((_%e181773181891%_
                                                             (gx#syntax-e
                                                              _%hd181768181886%_)))
                                                        (let ((_%hd181774181894%_
                                                               (##car _%e181773181891%_))
                                                              (_%tl181775181896%_
                                                               (##cdr _%e181773181891%_)))
                                                          (let ((_%id181899%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd181774181894%_))
                    (if (gx#stx-null? _%tl181775181896%_)
                        (if (gx#stx-pair? _%tl181769181888%_)
                            (let ((_%e181770181901%_
                                   (gx#syntax-e _%tl181769181888%_)))
                              (let ((_%hd181771181904%_
                                     (##car _%e181770181901%_))
                                    (_%tl181772181906%_
                                     (##cdr _%e181770181901%_)))
                                (let* ((_%expr181909%_ _%hd181771181904%_)
                                       (_%props181911%_ _%tl181772181906%_))
                                  (if (gx#identifier? _%id181899%_)
                                      (let ((_%bind181913%_
                                             (gx#core-bind-runtime!__0
                                              _%id181899%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind181913%_
                                         _%props181911%_)
                                        (_%K181758%_
                                         _%rest181759%_
                                         (cons _%hd181757%_ _%r181760%_)))
                                      (_%E181763181871%_)))))
                            (_%E181763181871%_))
                        (_%E181763181871%_)))))
              (_%E181763181871%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E181763181871%_))
                                          (_%E181763181871%_))))
                                  (_%E181763181871%_)))))
                      (_%E181762181915%_))))
                 (_%wrap-internal181599%_
                  (lambda (_%rbody181601%_)
                    (let _%lp181603%_ ((_%rest181605%_ _%rbody181601%_)
                                       (_%decls181606%_ '())
                                       (_%bind181607%_ '())
                                       (_%body181608%_ '()))
                      (let* ((_%e181609181616%_ _%rest181605%_)
                             (_%E181611181665%_
                              (lambda ()
                                (let* ((_%body181660%_
                                        (let* ((_%body181619181629%_
                                                _%body181608%_)
                                               (_%else181622181637%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body181608%_)
                                                   (gx#stx-source
                                                    _%stx181593%_)))))
                                          (let ((_%K181627181657%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx181593%_)))
                                                (_%K181624181643%_
                                                 (lambda (_%expr181641%_)
                                                   _%expr181641%_)))
                                            (let ((_%try-match181621181653%_
                                                   (lambda ()
                                                     (if (pair? _%body181619181629%_)
                                                         (let ((_%tl181626181648%_
                                                                (##cdr _%body181619181629%_))
                                                               (_%hd181625181646%_
                                                                (##car _%body181619181629%_)))
                                                           (if (null? _%tl181626181648%_)
                                                               (let ((_%expr181651%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd181625181646%_))
                         (_%K181624181643%_ _%expr181651%_))
                       (_%else181622181637%_)))
                 (_%else181622181637%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%body181619181629%_)
                                                  (_%K181627181657%_)
                                                  (_%try-match181621181653%_))))))
                                       (_%body181662%_
                                        (if (null? _%bind181607%_)
                                            _%body181660%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind181607%_
                                                         (cons _%body181660%_
                                                               '())))
                                             (gx#stx-source _%stx181593%_)))))
                                  (if (null? _%decls181606%_)
                                      _%body181662%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls181606%_
                                                   (cons _%body181662%_ '())))
                                       (gx#stx-source _%stx181593%_))))))
                             (_%E181610181753%_
                              (lambda ()
                                (if (gx#stx-pair? _%e181609181616%_)
                                    (let ((_%e181612181669%_
                                           (gx#syntax-e _%e181609181616%_)))
                                      (let ((_%hd181613181672%_
                                             (##car _%e181612181669%_))
                                            (_%tl181614181674%_
                                             (##cdr _%e181612181669%_)))
                                        (let* ((_%hd181677%_
                                                _%hd181613181672%_)
                                               (_%rest181679%_
                                                _%tl181614181674%_)
                                               (_%e181680181697%_ _%hd181677%_)
                                               (_%E181692181701%_
                                                (lambda ()
                                                  (if (null? _%bind181607%_)
                                                      (_%lp181603%_
                                                       _%rest181679%_
                                                       _%decls181606%_
                                                       _%bind181607%_
                                                       (cons _%hd181677%_
                                                             _%body181608%_))
                                                      (_%lp181603%_
                                                       _%rest181679%_
                                                       _%decls181606%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd181677%_ '()))
                     _%bind181607%_)
               _%body181608%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E181682181715%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e181680181697%_)
                                                      (let ((_%e181693181705%_
                                                             (gx#syntax-e
                                                              _%e181680181697%_)))
                                                        (let ((_%hd181694181708%_
                                                               (##car _%e181693181705%_))
                                                              (_%tl181695181710%_
                                                               (##cdr _%e181693181705%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd181694181708%_)
                           (gx#core-identifier=?
                            _%hd181694181708%_
                            '%#declare))
                      (let ((_%xdecls181713%_ _%tl181695181710%_))
                        (_%lp181603%_
                         _%rest181679%_
                         (gx#stx-foldr cons _%decls181606%_ _%xdecls181713%_)
                         _%bind181607%_
                         _%body181608%_))
                      (_%E181692181701%_))))
              (_%E181692181701%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E181681181749%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e181680181697%_)
                                                      (let ((_%e181683181719%_
                                                             (gx#syntax-e
                                                              _%e181680181697%_)))
                                                        (let ((_%hd181684181722%_
                                                               (##car _%e181683181719%_))
                                                              (_%tl181685181724%_
                                                               (##cdr _%e181683181719%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd181684181722%_)
                           (gx#core-identifier=?
                            _%hd181684181722%_
                            '%#define-values))
                      (if (gx#stx-pair? _%tl181685181724%_)
                          (let ((_%e181686181727%_
                                 (gx#syntax-e _%tl181685181724%_)))
                            (let ((_%hd181687181730%_
                                   (##car _%e181686181727%_))
                                  (_%tl181688181732%_
                                   (##cdr _%e181686181727%_)))
                              (let ((_%hd-bind181735%_ _%hd181687181730%_))
                                (if (gx#stx-pair? _%tl181688181732%_)
                                    (let ((_%e181689181737%_
                                           (gx#syntax-e _%tl181688181732%_)))
                                      (let ((_%hd181690181740%_
                                             (##car _%e181689181737%_))
                                            (_%tl181691181742%_
                                             (##cdr _%e181689181737%_)))
                                        (let* ((_%expr181745%_
                                                _%hd181690181740%_)
                                               (_%ignore-props181747%_
                                                _%tl181691181742%_))
                                          (_%lp181603%_
                                           _%rest181679%_
                                           _%decls181606%_
                                           (cons (cons (gx#core-quote-bind-values
                                                        _%hd-bind181735%_)
                                                       (cons (gx#core-expand-expression
                                                              _%expr181745%_)
                                                             '()))
                                                 _%bind181607%_)
                                           _%body181608%_))))
                                    (_%E181682181715%_)))))
                          (_%E181682181715%_))
                      (_%E181682181715%_))))
              (_%E181682181715%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%E181681181749%_))))
                                    (_%E181611181665%_)))))
                        (_%E181610181753%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body181594%_)
            (gx#stx-source _%stx181593%_))
           _%expand-special181596%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx181531%_)
        (let* ((_%e181532181539%_ _%stx181531%_)
               (_%E181534181543%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181532181539%_)))
               (_%E181533181589%_
                (lambda ()
                  (if (gx#stx-pair? _%e181532181539%_)
                      (let ((_%e181535181547%_
                             (gx#syntax-e _%e181532181539%_)))
                        (let ((_%hd181536181550%_ (##car _%e181535181547%_))
                              (_%tl181537181552%_ (##cdr _%e181535181547%_)))
                          (let ((_%body181555%_ _%tl181537181552%_))
                            (if (gx#stx-list? _%body181555%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl181557%_)
                                     (let* ((_%e181558181565%_ _%decl181557%_)
                                            (_%E181560181569%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e181558181565%_)))
                                            (_%E181559181585%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e181558181565%_)
                                                   (let ((_%e181561181573%_
                                                          (gx#syntax-e
                                                           _%e181558181565%_)))
                                                     (let ((_%hd181562181576%_
                                                            (##car _%e181561181573%_))
                                                           (_%tl181563181578%_
                                                            (##cdr _%e181561181573%_)))
                                                       (let* ((_%head181581%_
                                                               _%hd181562181576%_)
                                                              (_%args181583%_
                                                               _%tl181563181578%_))
                                                         (if (gx#stx-list?
                                                              _%args181583%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl181557%_)
                                                             (_%E181560181569%_)))))
                                                   (_%E181560181569%_)))))
                                       (_%E181559181585%_)))
                                   _%body181555%_))
                                 (gx#stx-source _%stx181531%_))
                                (_%E181534181543%_)))))
                      (_%E181534181543%_)))))
          (_%E181533181589%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx181435%_)
        (let* ((_%e181436181443%_ _%stx181435%_)
               (_%E181438181447%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181436181443%_)))
               (_%E181437181527%_
                (lambda ()
                  (if (gx#stx-pair? _%e181436181443%_)
                      (let ((_%e181439181451%_
                             (gx#syntax-e _%e181436181443%_)))
                        (let ((_%hd181440181454%_ (##car _%e181439181451%_))
                              (_%tl181441181456%_ (##cdr _%e181439181451%_)))
                          (let ((_%body181459%_ _%tl181441181456%_))
                            (let _%lp181461%_ ((_%rest181463%_ _%body181459%_)
                                               (_%r181464%_ '()))
                              (let* ((_%e181465181479%_ _%rest181463%_)
                                     (_%E181477181483%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx181435%_)))
                                     (_%E181467181487%_
                                      (lambda ()
                                        (if (gx#stx-null? _%e181465181479%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r181464%_))
                                             (gx#stx-source _%stx181435%_))
                                            (_%E181477181483%_))))
                                     (_%E181466181523%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e181465181479%_)
                                            (let ((_%e181468181491%_
                                                   (gx#syntax-e
                                                    _%e181465181479%_)))
                                              (let ((_%hd181469181494%_
                                                     (##car _%e181468181491%_))
                                                    (_%tl181470181496%_
                                                     (##cdr _%e181468181491%_)))
                                                (if (gx#stx-pair?
                                                     _%hd181469181494%_)
                                                    (let ((_%e181471181499%_
                                                           (gx#syntax-e
                                                            _%hd181469181494%_)))
                                                      (let ((_%hd181472181502%_
                                                             (##car _%e181471181499%_))
                                                            (_%tl181473181504%_
                                                             (##cdr _%e181471181499%_)))
                                                        (let ((_%id181507%_
                                                               _%hd181472181502%_))
                                                          (if (gx#stx-pair?
                                                               _%tl181473181504%_)
                                                              (let ((_%e181474181509%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl181473181504%_)))
                        (let ((_%hd181475181512%_ (##car _%e181474181509%_))
                              (_%tl181476181514%_ (##cdr _%e181474181509%_)))
                          (let ((_%eid181517%_ _%hd181475181512%_))
                            (if (gx#stx-null? _%tl181476181514%_)
                                (let ((_%rest181519%_ _%tl181470181496%_))
                                  (if (and (gx#identifier? _%id181507%_)
                                           (gx#identifier? _%eid181517%_))
                                      (let ((_%eid181521%_
                                             (gx#stx-e _%eid181517%_)))
                                        (gx#core-bind-extern!__0
                                         _%id181507%_
                                         _%eid181521%_)
                                        (_%lp181461%_
                                         _%rest181519%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id181507%_)
                                                     (cons _%eid181521%_ '()))
                                               _%r181464%_)))
                                      (_%E181467181487%_)))
                                (_%E181467181487%_)))))
                      (_%E181467181487%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E181467181487%_))))
                                            (_%E181467181487%_)))))
                                (_%E181466181523%_))))))
                      (_%E181438181447%_)))))
          (_%E181437181527%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx181324%_)
        (let* ((_%e181325181351%_ _%stx181324%_)
               (_%E181340181355%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181325181351%_)))
               (_%E181327181387%_
                (lambda ()
                  (if (gx#stx-pair? _%e181325181351%_)
                      (let ((_%e181341181359%_
                             (gx#syntax-e _%e181325181351%_)))
                        (let ((_%hd181342181362%_ (##car _%e181341181359%_))
                              (_%tl181343181364%_ (##cdr _%e181341181359%_)))
                          (if (gx#stx-pair? _%tl181343181364%_)
                              (let ((_%e181344181367%_
                                     (gx#syntax-e _%tl181343181364%_)))
                                (let ((_%hd181345181370%_
                                       (##car _%e181344181367%_))
                                      (_%tl181346181372%_
                                       (##cdr _%e181344181367%_)))
                                  (let ((_%hd181375%_ _%hd181345181370%_))
                                    (if (gx#stx-pair? _%tl181346181372%_)
                                        (let ((_%e181347181377%_
                                               (gx#syntax-e
                                                _%tl181346181372%_)))
                                          (let ((_%hd181348181380%_
                                                 (##car _%e181347181377%_))
                                                (_%tl181349181382%_
                                                 (##cdr _%e181347181377%_)))
                                            (let ((_%expr181385%_
                                                   _%hd181348181380%_))
                                              (if (gx#stx-null?
                                                   _%tl181349181382%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd181375%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd181375%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd181375%_)
                             (cons (gx#core-expand-expression _%expr181385%_)
                                   '())))
                 (gx#stx-source _%stx181324%_)))
              (_%E181340181355%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E181340181355%_)))))
                                        (_%E181340181355%_)))))
                              (_%E181340181355%_))))
                      (_%E181340181355%_))))
               (_%E181326181431%_
                (lambda ()
                  (if (gx#stx-pair? _%e181325181351%_)
                      (let ((_%e181328181391%_
                             (gx#syntax-e _%e181325181351%_)))
                        (let ((_%hd181329181394%_ (##car _%e181328181391%_))
                              (_%tl181330181396%_ (##cdr _%e181328181391%_)))
                          (if (gx#stx-pair? _%tl181330181396%_)
                              (let ((_%e181331181399%_
                                     (gx#syntax-e _%tl181330181396%_)))
                                (let ((_%hd181332181402%_
                                       (##car _%e181331181399%_))
                                      (_%tl181333181404%_
                                       (##cdr _%e181331181399%_)))
                                  (if (gx#stx-pair? _%hd181332181402%_)
                                      (let ((_%e181337181407%_
                                             (gx#syntax-e _%hd181332181402%_)))
                                        (let ((_%hd181338181410%_
                                               (##car _%e181337181407%_))
                                              (_%tl181339181412%_
                                               (##cdr _%e181337181407%_)))
                                          (let ((_%id181415%_
                                                 _%hd181338181410%_))
                                            (if (gx#stx-null?
                                                 _%tl181339181412%_)
                                                (if (gx#stx-pair?
                                                     _%tl181333181404%_)
                                                    (let ((_%e181334181417%_
                                                           (gx#syntax-e
                                                            _%tl181333181404%_)))
                                                      (let ((_%hd181335181420%_
                                                             (##car _%e181334181417%_))
                                                            (_%tl181336181422%_
                                                             (##cdr _%e181334181417%_)))
                                                        (let* ((_%expr181425%_
                                                                _%hd181335181420%_)
                                                               (_%props181427%_
                                                                _%tl181336181422%_))
                                                          (if (gx#identifier?
                                                               _%id181415%_)
                                                              (let ((_%bind181429%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#core-bind-runtime!__0 _%id181415%_)))
                        (gx#core-bind-runtime-properties!
                         _%bind181429%_
                         _%props181427%_)
                        (gx#core-quote-syntax__1
                         (cons (gx#core-quote-syntax__0 '%#define-values)
                               (cons (gx#core-quote-bind-values
                                      (cons _%id181415%_ '()))
                                     (cons (gx#core-expand-expression
                                            _%expr181425%_)
                                           '())))
                         (gx#stx-source _%stx181324%_)))
                      (_%E181327181387%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E181327181387%_))
                                                (_%E181327181387%_)))))
                                      (_%E181327181387%_))))
                              (_%E181327181387%_))))
                      (_%E181327181387%_)))))
          (_%E181326181431%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx181263%_)
        (let* ((_%e181264181277%_ _%stx181263%_)
               (_%E181266181281%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181264181277%_)))
               (_%E181265181320%_
                (lambda ()
                  (if (gx#stx-pair? _%e181264181277%_)
                      (let ((_%e181267181285%_
                             (gx#syntax-e _%e181264181277%_)))
                        (let ((_%hd181268181288%_ (##car _%e181267181285%_))
                              (_%tl181269181290%_ (##cdr _%e181267181285%_)))
                          (if (gx#stx-pair? _%tl181269181290%_)
                              (let ((_%e181270181293%_
                                     (gx#syntax-e _%tl181269181290%_)))
                                (let ((_%hd181271181296%_
                                       (##car _%e181270181293%_))
                                      (_%tl181272181298%_
                                       (##cdr _%e181270181293%_)))
                                  (let ((_%id181301%_ _%hd181271181296%_))
                                    (if (gx#stx-pair? _%tl181272181298%_)
                                        (let ((_%e181273181303%_
                                               (gx#syntax-e
                                                _%tl181272181298%_)))
                                          (let ((_%hd181274181306%_
                                                 (##car _%e181273181303%_))
                                                (_%tl181275181308%_
                                                 (##cdr _%e181273181303%_)))
                                            (let* ((_%binding-id181311%_
                                                    _%hd181274181306%_)
                                                   (_%props181313%_
                                                    _%tl181275181308%_))
                                              (if (and (gx#identifier?
                                                        _%id181301%_)
                                                       (gx#identifier?
                                                        _%binding-id181311%_)
                                                       (gx#stx-list?
                                                        _%props181313%_))
                                                  (let* ((_%eid181315%_
                                                          (gx#stx-e
                                                           _%binding-id181311%_))
                                                         (_%bind181317%_
                                                          (gx#core-bind-runtime-reference!__0
                                                           _%id181301%_
                                                           _%eid181315%_)))
                                                    (gx#core-bind-runtime-properties!
                                                     _%bind181317%_
                                                     _%props181313%_)
                                                    (gx#core-quote-syntax__0
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#define-runtime)
                                                           (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id181301%_)
                         (cons _%eid181315%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E181266181281%_)))))
                                        (_%E181266181281%_)))))
                              (_%E181266181281%_))))
                      (_%E181266181281%_)))))
          (_%E181265181320%_))))
    (define gx#core-bind-runtime-properties!
      (lambda (_%bind181198%_ _%props181199%_)
        (letrec ((_%eval-prop181201%_
                  (lambda (_%prop181261%_)
                    (gx#eval-expression+1 _%prop181261%_))))
          (let _%loop181203%_ ((_%rest181205%_ _%props181199%_)
                               (_%props181206%_ '()))
            (let* ((_%e181207181218%_ _%rest181205%_)
                   (_%E181216181222%_
                    (lambda ()
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e181207181218%_)))
                   (_%E181209181226%_
                    (lambda ()
                      (if (gx#stx-null? _%e181207181218%_)
                          (if (null? _%props181206%_)
                              '#!void
                              (##structure-set!
                               _%bind181198%_
                               (reverse! _%props181206%_)
                               '4
                               gx#binding::t
                               '#f))
                          (_%E181216181222%_))))
                   (_%E181208181257%_
                    (lambda ()
                      (if (gx#stx-pair? _%e181207181218%_)
                          (let ((_%e181210181230%_
                                 (gx#syntax-e _%e181207181218%_)))
                            (let ((_%hd181211181233%_
                                   (##car _%e181210181230%_))
                                  (_%tl181212181235%_
                                   (##cdr _%e181210181230%_)))
                              (let ((_%key181238%_ _%hd181211181233%_))
                                (if (gx#stx-pair? _%tl181212181235%_)
                                    (let ((_%e181213181240%_
                                           (gx#syntax-e _%tl181212181235%_)))
                                      (let ((_%hd181214181243%_
                                             (##car _%e181213181240%_))
                                            (_%tl181215181245%_
                                             (##cdr _%e181213181240%_)))
                                        (let* ((_%prop181248%_
                                                _%hd181214181243%_)
                                               (_%rest181250%_
                                                _%tl181215181245%_))
                                          (if (gx#stx-keyword? _%key181238%_)
                                              (let* ((_%key181252%_
                                                      (gx#stx-e _%key181238%_))
                                                     (_%$e181254%_
                                                      _%key181252%_))
                                                (if (eq? 'macro: _%$e181254%_)
                                                    (begin
                                                      (##structure-set!
                                                       _%bind181198%_
                                                       (if (gx#identifier?
                                                            _%prop181248%_)
                                                           (gx#core-quote-syntax__0
                                                            _%prop181248%_)
                                                           (gx#eval-expression+1
                                                            _%prop181248%_))
                                                       '6
                                                       gx#runtime-binding::t
                                                       '#f)
                                                      (_%loop181203%_
                                                       _%rest181250%_
                                                       _%props181206%_))
                                                    (if (eq? 'type:
                                                             _%$e181254%_)
                                                        (begin
                                                          (##structure-set!
                                                           _%bind181198%_
                                                           (gx#eval-expression+1
                                                            _%prop181248%_)
                                                           '5
                                                           gx#runtime-binding::t
                                                           '#f)
                                                          (_%loop181203%_
                                                           _%rest181250%_
                                                           _%props181206%_))
                                                        (_%loop181203%_
                                                         _%rest181250%_
                                                         (cons (gx#eval-expression+1
                                                                _%prop181248%_)
                                                               (cons _%key181252%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%props181206%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E181209181226%_)))))
                                    (_%E181209181226%_)))))
                          (_%E181209181226%_)))))
              (_%E181208181257%_))))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx181141%_)
        (let* ((_%e181142181155%_ _%stx181141%_)
               (_%E181144181159%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181142181155%_)))
               (_%E181143181194%_
                (lambda ()
                  (if (gx#stx-pair? _%e181142181155%_)
                      (let ((_%e181145181163%_
                             (gx#syntax-e _%e181142181155%_)))
                        (let ((_%hd181146181166%_ (##car _%e181145181163%_))
                              (_%tl181147181168%_ (##cdr _%e181145181163%_)))
                          (if (gx#stx-pair? _%tl181147181168%_)
                              (let ((_%e181148181171%_
                                     (gx#syntax-e _%tl181147181168%_)))
                                (let ((_%hd181149181174%_
                                       (##car _%e181148181171%_))
                                      (_%tl181150181176%_
                                       (##cdr _%e181148181171%_)))
                                  (let ((_%id181179%_ _%hd181149181174%_))
                                    (if (gx#stx-pair? _%tl181150181176%_)
                                        (let ((_%e181151181181%_
                                               (gx#syntax-e
                                                _%tl181150181176%_)))
                                          (let ((_%hd181152181184%_
                                                 (##car _%e181151181181%_))
                                                (_%tl181153181186%_
                                                 (##cdr _%e181151181181%_)))
                                            (let ((_%expr181189%_
                                                   _%hd181152181184%_))
                                              (if (gx#stx-null?
                                                   _%tl181153181186%_)
                                                  (if (gx#identifier?
                                                       _%id181179%_)
                                                      (let ((_g182355_
                                                             (gx#core-expand-expression+1
                                                              _%expr181189%_)))
                                                        (begin
                                                          (let ((_g182356_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g182355_)
                             (##values-length _g182355_)
                             1)))
                    (if (not (##fx= _g182356_ 2))
                        (error "Context expects 2 values" _g182356_)))
                  (let ((_%e-stx181191%_ (##values-ref _g182355_ 0))
                        (_%e181192%_ (##values-ref _g182355_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id181179%_ _%e181192%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id181179%_)
                                   (cons _%e-stx181191%_ '())))
                       (gx#stx-source _%stx181141%_))))))
              (_%E181144181159%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E181144181159%_)))))
                                        (_%E181144181159%_)))))
                              (_%E181144181159%_))))
                      (_%E181144181159%_)))))
          (_%E181143181194%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx181085%_)
        (let* ((_%e181086181099%_ _%stx181085%_)
               (_%E181088181103%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181086181099%_)))
               (_%E181087181137%_
                (lambda ()
                  (if (gx#stx-pair? _%e181086181099%_)
                      (let ((_%e181089181107%_
                             (gx#syntax-e _%e181086181099%_)))
                        (let ((_%hd181090181110%_ (##car _%e181089181107%_))
                              (_%tl181091181112%_ (##cdr _%e181089181107%_)))
                          (if (gx#stx-pair? _%tl181091181112%_)
                              (let ((_%e181092181115%_
                                     (gx#syntax-e _%tl181091181112%_)))
                                (let ((_%hd181093181118%_
                                       (##car _%e181092181115%_))
                                      (_%tl181094181120%_
                                       (##cdr _%e181092181115%_)))
                                  (let ((_%id181123%_ _%hd181093181118%_))
                                    (if (gx#stx-pair? _%tl181094181120%_)
                                        (let ((_%e181095181125%_
                                               (gx#syntax-e
                                                _%tl181094181120%_)))
                                          (let ((_%hd181096181128%_
                                                 (##car _%e181095181125%_))
                                                (_%tl181097181130%_
                                                 (##cdr _%e181095181125%_)))
                                            (let ((_%alias-id181133%_
                                                   _%hd181096181128%_))
                                              (if (gx#stx-null?
                                                   _%tl181097181130%_)
                                                  (if (and (gx#identifier?
                                                            _%id181123%_)
                                                           (gx#identifier?
                                                            _%alias-id181133%_))
                                                      (let ((_%alias-id181135%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id181133%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id181123%_
                                                         _%alias-id181135%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id181123%_)
                             (cons _%alias-id181135%_ '())))))
              (_%E181088181103%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E181088181103%_)))))
                                        (_%E181088181103%_)))))
                              (_%E181088181103%_))))
                      (_%E181088181103%_)))))
          (_%E181087181137%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx181028%_ _%wrap?181029%_)
        (let* ((_%e181030181040%_ _%stx181028%_)
               (_%E181032181044%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181030181040%_)))
               (_%E181031181071%_
                (lambda ()
                  (if (gx#stx-pair? _%e181030181040%_)
                      (let ((_%e181033181048%_
                             (gx#syntax-e _%e181030181040%_)))
                        (let ((_%hd181034181051%_ (##car _%e181033181048%_))
                              (_%tl181035181053%_ (##cdr _%e181033181048%_)))
                          (if (gx#stx-pair? _%tl181035181053%_)
                              (let ((_%e181036181056%_
                                     (gx#syntax-e _%tl181035181053%_)))
                                (let ((_%hd181037181059%_
                                       (##car _%e181036181056%_))
                                      (_%tl181038181061%_
                                       (##cdr _%e181036181056%_)))
                                  (let* ((_%hd181064%_ _%hd181037181059%_)
                                         (_%body181066%_ _%tl181038181061%_))
                                    (if (gx#core-bind-values? _%hd181064%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd181064%_)
                                           (let ((_%body181069%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd181064%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx181028%_
                                                               _%body181066%_)
                                                              '()))))
                                             (if _%wrap?181029%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body181069%_)
                                                  (gx#stx-source
                                                   _%stx181028%_))
                                                 _%body181069%_)))
                                         gx#current-expander-context
                                         (let ((__obj182338
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj182338)
                                           __obj182338))
                                        (_%E181032181044%_)))))
                              (_%E181032181044%_))))
                      (_%E181032181044%_)))))
          (_%E181031181071%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx181078%_)
        (let ((_%wrap?181080%_ '#t))
          (gx#core-expand-lambda%__% _%stx181078%_ _%wrap?181080%_))))
    (define gx#core-expand-lambda%
      (lambda _g182357_
        (let ((_g182358_ (##length _g182357_)))
          (cond ((##fx= _g182358_ 1)
                 (apply gx#core-expand-lambda%__0 _g182357_))
                ((##fx= _g182358_ 2)
                 (apply gx#core-expand-lambda%__% _g182357_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g182357_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx180992%_)
        (let* ((_%e180993181000%_ _%stx180992%_)
               (_%E180995181004%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180993181000%_)))
               (_%E180994181023%_
                (lambda ()
                  (if (gx#stx-pair? _%e180993181000%_)
                      (let ((_%e180996181008%_
                             (gx#syntax-e _%e180993181000%_)))
                        (let ((_%hd180997181011%_ (##car _%e180996181008%_))
                              (_%tl180998181013%_ (##cdr _%e180996181008%_)))
                          (let ((_%clauses181016%_ _%tl180998181013%_))
                            (if (gx#stx-list? _%clauses181016%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause181018%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause181018%_)
                                       (let ((_%$e181020%_
                                              (gx#stx-source
                                               _%clause181018%_)))
                                         (if _%$e181020%_
                                             _%$e181020%_
                                             (gx#stx-source _%stx180992%_))))
                                      '#f))
                                   _%clauses181016%_))
                                 (gx#stx-source _%stx180992%_))
                                (_%E180995181004%_)))))
                      (_%E180995181004%_)))))
          (_%E180994181023%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx180946%_)
        (let* ((_%e180947180957%_ _%stx180946%_)
               (_%E180949180961%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180947180957%_)))
               (_%E180948180988%_
                (lambda ()
                  (if (gx#stx-pair? _%e180947180957%_)
                      (let ((_%e180950180965%_
                             (gx#syntax-e _%e180947180957%_)))
                        (let ((_%hd180951180968%_ (##car _%e180950180965%_))
                              (_%tl180952180970%_ (##cdr _%e180950180965%_)))
                          (if (gx#stx-pair? _%tl180952180970%_)
                              (let ((_%e180953180973%_
                                     (gx#syntax-e _%tl180952180970%_)))
                                (let ((_%hd180954180976%_
                                       (##car _%e180953180973%_))
                                      (_%tl180955180978%_
                                       (##cdr _%e180953180973%_)))
                                  (let* ((_%hd180981%_ _%hd180954180976%_)
                                         (_%body180983%_ _%tl180955180978%_))
                                    (if (gx#core-expand-let-bind? _%hd180981%_)
                                        (let ((_%expressions180985%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd180981%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd180981%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd180981%_
                                                           _%expressions180985%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx180946%_
                         _%body180983%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx180946%_)))
                                           gx#current-expander-context
                                           (let ((__obj182339
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj182339)
                                             __obj182339)))
                                        (_%E180949180961%_)))))
                              (_%E180949180961%_))))
                      (_%E180949180961%_)))))
          (_%E180948180988%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx180891%_ _%form180892%_)
        (let* ((_%e180893180903%_ _%stx180891%_)
               (_%E180895180907%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180893180903%_)))
               (_%E180894180932%_
                (lambda ()
                  (if (gx#stx-pair? _%e180893180903%_)
                      (let ((_%e180896180911%_
                             (gx#syntax-e _%e180893180903%_)))
                        (let ((_%hd180897180914%_ (##car _%e180896180911%_))
                              (_%tl180898180916%_ (##cdr _%e180896180911%_)))
                          (if (gx#stx-pair? _%tl180898180916%_)
                              (let ((_%e180899180919%_
                                     (gx#syntax-e _%tl180898180916%_)))
                                (let ((_%hd180900180922%_
                                       (##car _%e180899180919%_))
                                      (_%tl180901180924%_
                                       (##cdr _%e180899180919%_)))
                                  (let* ((_%hd180927%_ _%hd180900180922%_)
                                         (_%body180929%_ _%tl180901180924%_))
                                    (if (gx#core-expand-let-bind? _%hd180927%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd180927%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form180892%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd180927%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd180927%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx180891%_
                                                               _%body180929%_)
                                                              '())))
                                            (gx#stx-source _%stx180891%_)))
                                         gx#current-expander-context
                                         (let ((__obj182340
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj182340)
                                           __obj182340))
                                        (_%E180895180907%_)))))
                              (_%E180895180907%_))))
                      (_%E180895180907%_)))))
          (_%E180894180932%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx180939%_)
        (let ((_%form180941%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx180939%_ _%form180941%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g182359_
        (let ((_g182360_ (##length _g182359_)))
          (cond ((##fx= _g182360_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g182359_))
                ((##fx= _g182360_ 2)
                 (apply gx#core-expand-letrec-values%__% _g182359_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g182359_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx180888%_)
        (gx#core-expand-letrec-values%__% _%stx180888%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx180845%_)
        (if (gx#stx-list? _%stx180845%_)
            (gx#stx-andmap
             (lambda (_%bind180847%_)
               (let* ((_%e180848180858%_ _%bind180847%_)
                      (_%E180850180862%_ (lambda () '#f))
                      (_%E180849180884%_
                       (lambda ()
                         (if (gx#stx-pair? _%e180848180858%_)
                             (let ((_%e180851180866%_
                                    (gx#syntax-e _%e180848180858%_)))
                               (let ((_%hd180852180869%_
                                      (##car _%e180851180866%_))
                                     (_%tl180853180871%_
                                      (##cdr _%e180851180866%_)))
                                 (let ((_%hd180874%_ _%hd180852180869%_))
                                   (if (gx#stx-pair? _%tl180853180871%_)
                                       (let ((_%e180854180876%_
                                              (gx#syntax-e
                                               _%tl180853180871%_)))
                                         (let ((_%hd180855180879%_
                                                (##car _%e180854180876%_))
                                               (_%tl180856180881%_
                                                (##cdr _%e180854180876%_)))
                                           (if (gx#stx-null?
                                                _%tl180856180881%_)
                                               (gx#core-bind-values?
                                                _%hd180874%_)
                                               (_%E180850180862%_))))
                                       (_%E180850180862%_)))))
                             (_%E180850180862%_)))))
                 (_%E180849180884%_)))
             _%stx180845%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind180804%_)
        (let* ((_%e180805180815%_ _%bind180804%_)
               (_%E180807180819%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180805180815%_)))
               (_%E180806180841%_
                (lambda ()
                  (if (gx#stx-pair? _%e180805180815%_)
                      (let ((_%e180808180823%_
                             (gx#syntax-e _%e180805180815%_)))
                        (let ((_%hd180809180826%_ (##car _%e180808180823%_))
                              (_%tl180810180828%_ (##cdr _%e180808180823%_)))
                          (if (gx#stx-pair? _%tl180810180828%_)
                              (let ((_%e180811180831%_
                                     (gx#syntax-e _%tl180810180828%_)))
                                (let ((_%hd180812180834%_
                                       (##car _%e180811180831%_))
                                      (_%tl180813180836%_
                                       (##cdr _%e180811180831%_)))
                                  (let ((_%expr180839%_ _%hd180812180834%_))
                                    (if (gx#stx-null? _%tl180813180836%_)
                                        (gx#core-expand-expression
                                         _%expr180839%_)
                                        (_%E180807180819%_)))))
                              (_%E180807180819%_))))
                      (_%E180807180819%_)))))
          (_%E180806180841%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind180763%_)
        (let* ((_%e180764180774%_ _%bind180763%_)
               (_%E180766180778%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180764180774%_)))
               (_%E180765180800%_
                (lambda ()
                  (if (gx#stx-pair? _%e180764180774%_)
                      (let ((_%e180767180782%_
                             (gx#syntax-e _%e180764180774%_)))
                        (let ((_%hd180768180785%_ (##car _%e180767180782%_))
                              (_%tl180769180787%_ (##cdr _%e180767180782%_)))
                          (let ((_%hd180790%_ _%hd180768180785%_))
                            (if (gx#stx-pair? _%tl180769180787%_)
                                (let ((_%e180770180792%_
                                       (gx#syntax-e _%tl180769180787%_)))
                                  (let ((_%hd180771180795%_
                                         (##car _%e180770180792%_))
                                        (_%tl180772180797%_
                                         (##cdr _%e180770180792%_)))
                                    (if (gx#stx-null? _%tl180772180797%_)
                                        (gx#core-bind-values!__0 _%hd180790%_)
                                        (_%E180766180778%_))))
                                (_%E180766180778%_)))))
                      (_%E180766180778%_)))))
          (_%E180765180800%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind180721%_ _%expr180722%_)
        (let* ((_%e180723180733%_ _%bind180721%_)
               (_%E180725180737%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180723180733%_)))
               (_%E180724180759%_
                (lambda ()
                  (if (gx#stx-pair? _%e180723180733%_)
                      (let ((_%e180726180741%_
                             (gx#syntax-e _%e180723180733%_)))
                        (let ((_%hd180727180744%_ (##car _%e180726180741%_))
                              (_%tl180728180746%_ (##cdr _%e180726180741%_)))
                          (let ((_%hd180749%_ _%hd180727180744%_))
                            (if (gx#stx-pair? _%tl180728180746%_)
                                (let ((_%e180729180751%_
                                       (gx#syntax-e _%tl180728180746%_)))
                                  (let ((_%hd180730180754%_
                                         (##car _%e180729180751%_))
                                        (_%tl180731180756%_
                                         (##cdr _%e180729180751%_)))
                                    (if (gx#stx-null? _%tl180731180756%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd180749%_)
                                              (cons _%expr180722%_ '()))
                                        (_%E180725180737%_))))
                                (_%E180725180737%_)))))
                      (_%E180725180737%_)))))
          (_%E180724180759%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx180675%_)
        (let* ((_%e180676180686%_ _%stx180675%_)
               (_%E180678180690%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180676180686%_)))
               (_%E180677180717%_
                (lambda ()
                  (if (gx#stx-pair? _%e180676180686%_)
                      (let ((_%e180679180694%_
                             (gx#syntax-e _%e180676180686%_)))
                        (let ((_%hd180680180697%_ (##car _%e180679180694%_))
                              (_%tl180681180699%_ (##cdr _%e180679180694%_)))
                          (if (gx#stx-pair? _%tl180681180699%_)
                              (let ((_%e180682180702%_
                                     (gx#syntax-e _%tl180681180699%_)))
                                (let ((_%hd180683180705%_
                                       (##car _%e180682180702%_))
                                      (_%tl180684180707%_
                                       (##cdr _%e180682180702%_)))
                                  (let* ((_%hd180710%_ _%hd180683180705%_)
                                         (_%body180712%_ _%tl180684180707%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd180710%_)
                                        (let ((_%expanders180714%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd180710%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd180710%_
                                              _%expanders180714%_)
                                             (gx#core-expand-local-block
                                              _%stx180675%_
                                              _%body180712%_))
                                           gx#current-expander-context
                                           (let ((__obj182341
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj182341)
                                             __obj182341)))
                                        (_%E180678180690%_)))))
                              (_%E180678180690%_))))
                      (_%E180678180690%_)))))
          (_%E180677180717%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx180624%_)
        (let* ((_%e180625180635%_ _%stx180624%_)
               (_%E180627180639%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180625180635%_)))
               (_%E180626180671%_
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
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd180659%_
                                            (make-list
                                             (gx#stx-length _%hd180659%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g180663180666%_
                                                     _%g180664180668%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g180663180666%_
                                               _%g180664180668%_
                                               '#t))
                                            _%hd180659%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd180659%_))
                                           (gx#core-expand-local-block
                                            _%stx180624%_
                                            _%body180661%_))
                                         gx#current-expander-context
                                         (let ((__obj182342
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj182342)
                                           __obj182342))
                                        (_%E180627180639%_)))))
                              (_%E180627180639%_))))
                      (_%E180627180639%_)))))
          (_%E180626180671%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx180581%_)
        (if (gx#stx-list? _%stx180581%_)
            (gx#stx-andmap
             (lambda (_%bind180583%_)
               (let* ((_%e180584180594%_ _%bind180583%_)
                      (_%E180586180598%_ (lambda () '#f))
                      (_%E180585180620%_
                       (lambda ()
                         (if (gx#stx-pair? _%e180584180594%_)
                             (let ((_%e180587180602%_
                                    (gx#syntax-e _%e180584180594%_)))
                               (let ((_%hd180588180605%_
                                      (##car _%e180587180602%_))
                                     (_%tl180589180607%_
                                      (##cdr _%e180587180602%_)))
                                 (let ((_%hd180610%_ _%hd180588180605%_))
                                   (if (gx#stx-pair? _%tl180589180607%_)
                                       (let ((_%e180590180612%_
                                              (gx#syntax-e
                                               _%tl180589180607%_)))
                                         (let ((_%hd180591180615%_
                                                (##car _%e180590180612%_))
                                               (_%tl180592180617%_
                                                (##cdr _%e180590180612%_)))
                                           (if (gx#stx-null?
                                                _%tl180592180617%_)
                                               (gx#identifier? _%hd180610%_)
                                               (_%E180586180598%_))))
                                       (_%E180586180598%_)))))
                             (_%E180586180598%_)))))
                 (_%E180585180620%_)))
             _%stx180581%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind180537%_)
        (let* ((_%e180538180548%_ _%bind180537%_)
               (_%E180540180552%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180538180548%_)))
               (_%E180539180577%_
                (lambda ()
                  (if (gx#stx-pair? _%e180538180548%_)
                      (let ((_%e180541180556%_
                             (gx#syntax-e _%e180538180548%_)))
                        (let ((_%hd180542180559%_ (##car _%e180541180556%_))
                              (_%tl180543180561%_ (##cdr _%e180541180556%_)))
                          (if (gx#stx-pair? _%tl180543180561%_)
                              (let ((_%e180544180564%_
                                     (gx#syntax-e _%tl180543180561%_)))
                                (let ((_%hd180545180567%_
                                       (##car _%e180544180564%_))
                                      (_%tl180546180569%_
                                       (##cdr _%e180544180564%_)))
                                  (let ((_%expr180572%_ _%hd180545180567%_))
                                    (if (gx#stx-null? _%tl180546180569%_)
                                        (let ((_g182361_
                                               (gx#core-expand-expression+1
                                                _%expr180572%_)))
                                          (begin
                                            (let ((_g182362_
                                                   (if (##values? _g182361_)
                                                       (##values-length
                                                        _g182361_)
                                                       1)))
                                              (if (not (##fx= _g182362_ 2))
                                                  (error "Context expects 2 values"
                                                         _g182362_)))
                                            (let ((_%_180574%_
                                                   (##values-ref _g182361_ 0))
                                                  (_%e180575%_
                                                   (##values-ref _g182361_ 1)))
                                              _%e180575%_)))
                                        (_%E180540180552%_)))))
                              (_%E180540180552%_))))
                      (_%E180540180552%_)))))
          (_%E180539180577%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind180482%_ _%e180483%_ _%rebind?180484%_)
        (let* ((_%e180485180495%_ _%bind180482%_)
               (_%E180487180499%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180485180495%_)))
               (_%E180486180521%_
                (lambda ()
                  (if (gx#stx-pair? _%e180485180495%_)
                      (let ((_%e180488180503%_
                             (gx#syntax-e _%e180485180495%_)))
                        (let ((_%hd180489180506%_ (##car _%e180488180503%_))
                              (_%tl180490180508%_ (##cdr _%e180488180503%_)))
                          (let ((_%id180511%_ _%hd180489180506%_))
                            (if (gx#stx-pair? _%tl180490180508%_)
                                (let ((_%e180491180513%_
                                       (gx#syntax-e _%tl180490180508%_)))
                                  (let ((_%hd180492180516%_
                                         (##car _%e180491180513%_))
                                        (_%tl180493180518%_
                                         (##cdr _%e180491180513%_)))
                                    (if (gx#stx-null? _%tl180493180518%_)
                                        (gx#core-bind-syntax!__1
                                         _%id180511%_
                                         _%e180483%_
                                         _%rebind?180484%_)
                                        (_%E180487180499%_))))
                                (_%E180487180499%_)))))
                      (_%E180487180499%_)))))
          (_%E180486180521%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind180528%_ _%e180529%_)
        (let ((_%rebind?180531%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind180528%_
           _%e180529%_
           _%rebind?180531%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g182363_
        (let ((_g182364_ (##length _g182363_)))
          (cond ((##fx= _g182364_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g182363_))
                ((##fx= _g182364_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g182363_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g182363_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx180440%_)
        (let* ((_%e180441180451%_ _%stx180440%_)
               (_%E180443180455%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180441180451%_)))
               (_%E180442180477%_
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
                                  (let ((_%expr180475%_ _%hd180448180470%_))
                                    (if (gx#stx-null? _%tl180449180472%_)
                                        (gx#core-expand-expression
                                         _%expr180475%_)
                                        (_%E180443180455%_)))))
                              (_%E180443180455%_))))
                      (_%E180443180455%_)))))
          (_%E180442180477%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx180399%_)
        (let* ((_%e180400180410%_ _%stx180399%_)
               (_%E180402180414%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180400180410%_)))
               (_%E180401180436%_
                (lambda ()
                  (if (gx#stx-pair? _%e180400180410%_)
                      (let ((_%e180403180418%_
                             (gx#syntax-e _%e180400180410%_)))
                        (let ((_%hd180404180421%_ (##car _%e180403180418%_))
                              (_%tl180405180423%_ (##cdr _%e180403180418%_)))
                          (if (gx#stx-pair? _%tl180405180423%_)
                              (let ((_%e180406180426%_
                                     (gx#syntax-e _%tl180405180423%_)))
                                (let ((_%hd180407180429%_
                                       (##car _%e180406180426%_))
                                      (_%tl180408180431%_
                                       (##cdr _%e180406180426%_)))
                                  (let ((_%e180434%_ _%hd180407180429%_))
                                    (if (gx#stx-null? _%tl180408180431%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e180434%_)
                                                     '()))
                                         (gx#stx-source _%stx180399%_))
                                        (_%E180402180414%_)))))
                              (_%E180402180414%_))))
                      (_%E180402180414%_)))))
          (_%E180401180436%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx180358%_)
        (let* ((_%e180359180369%_ _%stx180358%_)
               (_%E180361180373%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180359180369%_)))
               (_%E180360180395%_
                (lambda ()
                  (if (gx#stx-pair? _%e180359180369%_)
                      (let ((_%e180362180377%_
                             (gx#syntax-e _%e180359180369%_)))
                        (let ((_%hd180363180380%_ (##car _%e180362180377%_))
                              (_%tl180364180382%_ (##cdr _%e180362180377%_)))
                          (if (gx#stx-pair? _%tl180364180382%_)
                              (let ((_%e180365180385%_
                                     (gx#syntax-e _%tl180364180382%_)))
                                (let ((_%hd180366180388%_
                                       (##car _%e180365180385%_))
                                      (_%tl180367180390%_
                                       (##cdr _%e180365180385%_)))
                                  (let ((_%e180393%_ _%hd180366180388%_))
                                    (if (gx#stx-null? _%tl180367180390%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e180393%_)
                                                     '()))
                                         (gx#stx-source _%stx180358%_))
                                        (_%E180361180373%_)))))
                              (_%E180361180373%_))))
                      (_%E180361180373%_)))))
          (_%E180360180395%_))))
    (define gx#core-expand-call%
      (lambda (_%stx180252%_)
        (letrec ((_%expand-runtime-call180254%_
                  (lambda (_%rator-expr180355%_ _%args180356%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons*
                      '%#call
                      _%rator-expr180355%_
                      (gx#stx-map1 gx#core-expand-expression _%args180356%_))
                     (gx#stx-source _%stx180252%_)))))
          (let* ((_%e180255180265%_ _%stx180252%_)
                 (_%E180257180269%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e180255180265%_)))
                 (_%E180256180351%_
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
                                    (let* ((_%rator180289%_ _%hd180262180284%_)
                                           (_%args180291%_ _%tl180263180286%_))
                                      (if (gx#stx-list? _%args180291%_)
                                          (let* ((_%rator-expr180293%_
                                                  (gx#core-expand-expression
                                                   _%rator180289%_))
                                                 (_%e180294180304%_
                                                  _%rator-expr180293%_)
                                                 (_%E180296180308%_
                                                  (lambda ()
                                                    (_%expand-runtime-call180254%_
                                                     _%rator-expr180293%_
                                                     _%args180291%_)))
                                                 (_%E180295180347%_
                                                  (lambda ()
                                                    (if (gx#stx-pair?
                                                         _%e180294180304%_)
                                                        (let ((_%e180297180312%_
                                                               (gx#syntax-e
                                                                _%e180294180304%_)))
                                                          (let ((_%hd180298180315%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e180297180312%_))
                        (_%tl180299180317%_ (##cdr _%e180297180312%_)))
                    (if (and (gx#identifier? _%hd180298180315%_)
                             (gx#core-identifier=? _%hd180298180315%_ '%#ref))
                        (if (gx#stx-pair? _%tl180299180317%_)
                            (let ((_%e180300180320%_
                                   (gx#syntax-e _%tl180299180317%_)))
                              (let ((_%hd180301180323%_
                                     (##car _%e180300180320%_))
                                    (_%tl180302180325%_
                                     (##cdr _%e180300180320%_)))
                                (let ((_%id180328%_ _%hd180301180323%_))
                                  (if (gx#stx-null? _%tl180302180325%_)
                                      (let ((_%$e180330%_
                                             (gx#resolve-identifier__0
                                              _%id180328%_)))
                                        (if _%$e180330%_
                                            ((lambda (_%bind180333%_)
                                               (let _%again180335%_ ((_%bind180337%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%bind180333%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%$e180339%_
                                                        (if (##structure-instance-of?
                                                             _%bind180337%_
                                                             'gx#runtime-binding::t)
                                                            (##unchecked-structure-ref
                                                             _%bind180337%_
                                                             '6
                                                             '#f
                                                             '#f)
                                                            '#f)))
                                                   (if _%$e180339%_
                                                       ((lambda (_%macro180342%_)
                                                          (gx#core-expand-expression
                                                           (gx#stx-wrap-source
                                                            (cons _%macro180342%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%args180291%_)
                    (gx#stx-source _%stx180252%_))))
                _%$e180339%_)
               (if (##structure-direct-instance-of?
                    _%bind180337%_
                    'gx#import-binding::t)
                   (_%again180335%_
                    (##unchecked-structure-ref _%bind180337%_ '5 '#f '#f))
                   (_%expand-runtime-call180254%_
                    _%rator-expr180293%_
                    _%args180291%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%$e180330%_)
                                            (_%expand-runtime-call180254%_
                                             _%rator-expr180293%_
                                             _%args180291%_)))
                                      (_%E180296180308%_)))))
                            (_%E180296180308%_))
                        (_%E180296180308%_))))
                (_%E180296180308%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E180295180347%_))
                                          (_%E180257180269%_)))))
                                (_%E180257180269%_))))
                        (_%E180257180269%_)))))
            (_%E180256180351%_)))))
    (define gx#core-expand-if%
      (lambda (_%stx180185%_)
        (let* ((_%e180186180202%_ _%stx180185%_)
               (_%E180188180206%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180186180202%_)))
               (_%E180187180248%_
                (lambda ()
                  (if (gx#stx-pair? _%e180186180202%_)
                      (let ((_%e180189180210%_
                             (gx#syntax-e _%e180186180202%_)))
                        (let ((_%hd180190180213%_ (##car _%e180189180210%_))
                              (_%tl180191180215%_ (##cdr _%e180189180210%_)))
                          (if (gx#stx-pair? _%tl180191180215%_)
                              (let ((_%e180192180218%_
                                     (gx#syntax-e _%tl180191180215%_)))
                                (let ((_%hd180193180221%_
                                       (##car _%e180192180218%_))
                                      (_%tl180194180223%_
                                       (##cdr _%e180192180218%_)))
                                  (let ((_%test180226%_ _%hd180193180221%_))
                                    (if (gx#stx-pair? _%tl180194180223%_)
                                        (let ((_%e180195180228%_
                                               (gx#syntax-e
                                                _%tl180194180223%_)))
                                          (let ((_%hd180196180231%_
                                                 (##car _%e180195180228%_))
                                                (_%tl180197180233%_
                                                 (##cdr _%e180195180228%_)))
                                            (let ((_%K180236%_
                                                   _%hd180196180231%_))
                                              (if (gx#stx-pair?
                                                   _%tl180197180233%_)
                                                  (let ((_%e180198180238%_
                                                         (gx#syntax-e
                                                          _%tl180197180233%_)))
                                                    (let ((_%hd180199180241%_
                                                           (##car _%e180198180238%_))
                                                          (_%tl180200180243%_
                                                           (##cdr _%e180198180238%_)))
                                                      (let ((_%E180246%_
                                                             _%hd180199180241%_))
                                                        (if (gx#stx-null?
                                                             _%tl180200180243%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test180226%_)
                                 (cons (gx#core-expand-expression _%K180236%_)
                                       (cons (gx#core-expand-expression
                                              _%E180246%_)
                                             '()))))
                     (gx#stx-source _%stx180185%_))
                    (_%E180188180206%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E180188180206%_)))))
                                        (_%E180188180206%_)))))
                              (_%E180188180206%_))))
                      (_%E180188180206%_)))))
          (_%E180187180248%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx180144%_)
        (let* ((_%e180145180155%_ _%stx180144%_)
               (_%E180147180159%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180145180155%_)))
               (_%E180146180181%_
                (lambda ()
                  (if (gx#stx-pair? _%e180145180155%_)
                      (let ((_%e180148180163%_
                             (gx#syntax-e _%e180145180155%_)))
                        (let ((_%hd180149180166%_ (##car _%e180148180163%_))
                              (_%tl180150180168%_ (##cdr _%e180148180163%_)))
                          (if (gx#stx-pair? _%tl180150180168%_)
                              (let ((_%e180151180171%_
                                     (gx#syntax-e _%tl180150180168%_)))
                                (let ((_%hd180152180174%_
                                       (##car _%e180151180171%_))
                                      (_%tl180153180176%_
                                       (##cdr _%e180151180171%_)))
                                  (let ((_%id180179%_ _%hd180152180174%_))
                                    (if (gx#stx-null? _%tl180153180176%_)
                                        (if (gx#identifier? _%id180179%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id180179%_
                                                          _%stx180144%_)
                                                         '()))
                                             (gx#stx-source _%stx180144%_))
                                            (_%E180147180159%_))
                                        (_%E180147180159%_)))))
                              (_%E180147180159%_))))
                      (_%E180147180159%_)))))
          (_%E180146180181%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx180090%_)
        (let* ((_%e180091180104%_ _%stx180090%_)
               (_%E180093180108%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180091180104%_)))
               (_%E180092180140%_
                (lambda ()
                  (if (gx#stx-pair? _%e180091180104%_)
                      (let ((_%e180094180112%_
                             (gx#syntax-e _%e180091180104%_)))
                        (let ((_%hd180095180115%_ (##car _%e180094180112%_))
                              (_%tl180096180117%_ (##cdr _%e180094180112%_)))
                          (if (gx#stx-pair? _%tl180096180117%_)
                              (let ((_%e180097180120%_
                                     (gx#syntax-e _%tl180096180117%_)))
                                (let ((_%hd180098180123%_
                                       (##car _%e180097180120%_))
                                      (_%tl180099180125%_
                                       (##cdr _%e180097180120%_)))
                                  (let ((_%id180128%_ _%hd180098180123%_))
                                    (if (gx#stx-pair? _%tl180099180125%_)
                                        (let ((_%e180100180130%_
                                               (gx#syntax-e
                                                _%tl180099180125%_)))
                                          (let ((_%hd180101180133%_
                                                 (##car _%e180100180130%_))
                                                (_%tl180102180135%_
                                                 (##cdr _%e180100180130%_)))
                                            (let ((_%expr180138%_
                                                   _%hd180101180133%_))
                                              (if (gx#stx-null?
                                                   _%tl180102180135%_)
                                                  (if (gx#identifier?
                                                       _%id180128%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id180128%_
                            _%stx180090%_)
                           (cons (gx#core-expand-expression _%expr180138%_)
                                 '())))
               (gx#stx-source _%stx180090%_))
              (_%E180093180108%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E180093180108%_)))))
                                        (_%E180093180108%_)))))
                              (_%E180093180108%_))))
                      (_%E180093180108%_)))))
          (_%E180092180140%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx179935%_)
        (letrec ((_%generate179937%_
                  (lambda (_%body179967%_)
                    (let _%lp179969%_ ((_%rest179971%_ _%body179967%_)
                                       (_%ns179972%_
                                        (gx#core-context-namespace__0))
                                       (_%r179973%_ '()))
                      (let* ((_%e179974179989%_ _%rest179971%_)
                             (_%E179987179993%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e179974179989%_)))
                             (_%E179983179997%_
                              (lambda ()
                                (if (gx#stx-null? _%e179974179989%_)
                                    (reverse _%r179973%_)
                                    (_%E179987179993%_))))
                             (_%E179976180054%_
                              (lambda ()
                                (if (gx#stx-pair? _%e179974179989%_)
                                    (let ((_%e179984180001%_
                                           (gx#syntax-e _%e179974179989%_)))
                                      (let ((_%hd179985180004%_
                                             (##car _%e179984180001%_))
                                            (_%tl179986180006%_
                                             (##cdr _%e179984180001%_)))
                                        (let* ((_%hd180009%_
                                                _%hd179985180004%_)
                                               (_%rest180011%_
                                                _%tl179986180006%_))
                                          (if (gx#identifier? _%hd180009%_)
                                              (_%lp179969%_
                                               _%rest180011%_
                                               _%ns179972%_
                                               (cons (cons _%hd180009%_
                                                           (cons (if _%ns179972%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd180009%_
                              _%ns179972%_
                              '"#"
                              _%hd180009%_)
                             _%hd180009%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r179973%_))
                                              (let* ((_%e180012180022%_
                                                      _%hd180009%_)
                                                     (_%E180014180026%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%e180012180022%_)))
                                                     (_%E180013180050%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e180012180022%_)
                                                            (let ((_%e180015180030%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e180012180022%_)))
                      (let ((_%hd180016180033%_ (##car _%e180015180030%_))
                            (_%tl180017180035%_ (##cdr _%e180015180030%_)))
                        (let ((_%id180038%_ _%hd180016180033%_))
                          (if (gx#stx-pair? _%tl180017180035%_)
                              (let ((_%e180018180040%_
                                     (gx#syntax-e _%tl180017180035%_)))
                                (let ((_%hd180019180043%_
                                       (##car _%e180018180040%_))
                                      (_%tl180020180045%_
                                       (##cdr _%e180018180040%_)))
                                  (let ((_%eid180048%_ _%hd180019180043%_))
                                    (if (gx#stx-null? _%tl180020180045%_)
                                        (if (and (gx#identifier? _%id180038%_)
                                                 (gx#identifier?
                                                  _%eid180048%_))
                                            (_%lp179969%_
                                             _%rest180011%_
                                             _%ns179972%_
                                             (cons (cons _%id180038%_
                                                         (cons _%eid180048%_
                                                               '()))
                                                   _%r179973%_))
                                            (_%E180014180026%_))
                                        (_%E180014180026%_)))))
                              (_%E180014180026%_)))))
                    (_%E180014180026%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E180013180050%_))))))
                                    (_%E179983179997%_))))
                             (_%E179975180086%_
                              (lambda ()
                                (if (gx#stx-pair? _%e179974179989%_)
                                    (let ((_%e179977180058%_
                                           (gx#syntax-e _%e179974179989%_)))
                                      (let ((_%hd179978180061%_
                                             (##car _%e179977180058%_))
                                            (_%tl179979180063%_
                                             (##cdr _%e179977180058%_)))
                                        (if (eq? (gx#stx-e _%hd179978180061%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl179979180063%_)
                                                (let ((_%e179980180066%_
                                                       (gx#syntax-e
                                                        _%tl179979180063%_)))
                                                  (let ((_%hd179981180069%_
                                                         (##car _%e179980180066%_))
                                                        (_%tl179982180071%_
                                                         (##cdr _%e179980180066%_)))
                                                    (let* ((_%ns180074%_
                                                            _%hd179981180069%_)
                                                           (_%rest180076%_
                                                            _%tl179982180071%_)
                                                           (_%ns180084%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns180074%_)
                        (symbol->string (gx#stx-e _%ns180074%_))
                        (if (or (gx#stx-string? _%ns180074%_)
                                (gx#stx-false? _%ns180074%_))
                            (gx#stx-e _%ns180074%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx179935%_
                             _%ns180074%_)))))
              (_%lp179969%_ _%rest180076%_ _%ns180084%_ _%r179973%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E179976180054%_))
                                            (_%E179976180054%_))))
                                    (_%E179976180054%_)))))
                        (_%E179975180086%_))))))
          (let* ((_%e179938179945%_ _%stx179935%_)
                 (_%E179940179949%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e179938179945%_)))
                 (_%E179939179963%_
                  (lambda ()
                    (if (gx#stx-pair? _%e179938179945%_)
                        (let ((_%e179941179953%_
                               (gx#syntax-e _%e179938179945%_)))
                          (let ((_%hd179942179956%_ (##car _%e179941179953%_))
                                (_%tl179943179958%_ (##cdr _%e179941179953%_)))
                            (let ((_%body179961%_ _%tl179943179958%_))
                              (if (gx#stx-list? _%body179961%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate179937%_ _%body179961%_))
                                  (_%E179940179949%_)))))
                        (_%E179940179949%_)))))
            (_%E179939179963%_)))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx179892%_)
        (let* ((_%e179893179903%_ _%stx179892%_)
               (_%E179895179907%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e179893179903%_)))
               (_%E179894179931%_
                (lambda ()
                  (if (gx#stx-pair? _%e179893179903%_)
                      (let ((_%e179896179911%_
                             (gx#syntax-e _%e179893179903%_)))
                        (let ((_%hd179897179914%_ (##car _%e179896179911%_))
                              (_%tl179898179916%_ (##cdr _%e179896179911%_)))
                          (if (gx#stx-pair? _%tl179898179916%_)
                              (let ((_%e179899179919%_
                                     (gx#syntax-e _%tl179898179916%_)))
                                (let ((_%hd179900179922%_
                                       (##car _%e179899179919%_))
                                      (_%tl179901179924%_
                                       (##cdr _%e179899179919%_)))
                                  (let* ((_%hd179927%_ _%hd179900179922%_)
                                         (_%body179929%_ _%tl179901179924%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd179927%_)
                                             (gx#stx-list? _%body179929%_)
                                             (not (gx#stx-null?
                                                   _%body179929%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd179927%_)
                                         _%body179929%_)
                                        (_%E179895179907%_)))))
                              (_%E179895179907%_))))
                      (_%E179895179907%_)))))
          (_%E179894179931%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx179828%_)
        (letrec ((_%generate179830%_
                  (lambda (_%clause179860%_)
                    (let* ((_%e179861179868%_ _%clause179860%_)
                           (_%E179863179872%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx179828%_
                               _%clause179860%_)))
                           (_%E179862179888%_
                            (lambda ()
                              (if (gx#stx-pair? _%e179861179868%_)
                                  (let ((_%e179864179876%_
                                         (gx#syntax-e _%e179861179868%_)))
                                    (let ((_%hd179865179879%_
                                           (##car _%e179864179876%_))
                                          (_%tl179866179881%_
                                           (##cdr _%e179864179876%_)))
                                      (let* ((_%hd179884%_ _%hd179865179879%_)
                                             (_%body179886%_
                                              _%tl179866179881%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd179884%_)
                                                 (gx#stx-list? _%body179886%_)
                                                 (not (gx#stx-null?
                                                       _%body179886%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd179884%_)
                                                   _%body179886%_)
                                             (gx#stx-source _%clause179860%_))
                                            (_%E179863179872%_)))))
                                  (_%E179863179872%_)))))
                      (_%E179862179888%_)))))
          (let* ((_%e179831179838%_ _%stx179828%_)
                 (_%E179833179842%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e179831179838%_)))
                 (_%E179832179856%_
                  (lambda ()
                    (if (gx#stx-pair? _%e179831179838%_)
                        (let ((_%e179834179846%_
                               (gx#syntax-e _%e179831179838%_)))
                          (let ((_%hd179835179849%_ (##car _%e179834179846%_))
                                (_%tl179836179851%_ (##cdr _%e179834179846%_)))
                            (let ((_%clauses179854%_ _%tl179836179851%_))
                              (if (gx#stx-list? _%clauses179854%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate179830%_
                                    _%clauses179854%_))
                                  (_%E179833179842%_)))))
                        (_%E179833179842%_)))))
            (_%E179832179856%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx179729%_ _%form179730%_)
        (letrec ((_%generate179732%_
                  (lambda (_%bind179775%_)
                    (let* ((_%e179776179786%_ _%bind179775%_)
                           (_%E179778179790%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx179729%_
                               _%bind179775%_)))
                           (_%E179777179814%_
                            (lambda ()
                              (if (gx#stx-pair? _%e179776179786%_)
                                  (let ((_%e179779179794%_
                                         (gx#syntax-e _%e179776179786%_)))
                                    (let ((_%hd179780179797%_
                                           (##car _%e179779179794%_))
                                          (_%tl179781179799%_
                                           (##cdr _%e179779179794%_)))
                                      (let ((_%ids179802%_ _%hd179780179797%_))
                                        (if (gx#stx-pair? _%tl179781179799%_)
                                            (let ((_%e179782179804%_
                                                   (gx#syntax-e
                                                    _%tl179781179799%_)))
                                              (let ((_%hd179783179807%_
                                                     (##car _%e179782179804%_))
                                                    (_%tl179784179809%_
                                                     (##cdr _%e179782179804%_)))
                                                (let ((_%expr179812%_
                                                       _%hd179783179807%_))
                                                  (if (gx#stx-null?
                                                       _%tl179784179809%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids179802%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids179802%_)
                        (cons _%expr179812%_ '()))
                  (_%E179778179790%_))
              (_%E179778179790%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E179778179790%_)))))
                                  (_%E179778179790%_)))))
                      (_%E179777179814%_)))))
          (let* ((_%e179733179743%_ _%stx179729%_)
                 (_%E179735179747%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e179733179743%_)))
                 (_%E179734179771%_
                  (lambda ()
                    (if (gx#stx-pair? _%e179733179743%_)
                        (let ((_%e179736179751%_
                               (gx#syntax-e _%e179733179743%_)))
                          (let ((_%hd179737179754%_ (##car _%e179736179751%_))
                                (_%tl179738179756%_ (##cdr _%e179736179751%_)))
                            (if (gx#stx-pair? _%tl179738179756%_)
                                (let ((_%e179739179759%_
                                       (gx#syntax-e _%tl179738179756%_)))
                                  (let ((_%hd179740179762%_
                                         (##car _%e179739179759%_))
                                        (_%tl179741179764%_
                                         (##cdr _%e179739179759%_)))
                                    (let* ((_%hd179767%_ _%hd179740179762%_)
                                           (_%body179769%_ _%tl179741179764%_))
                                      (if (and (gx#stx-list? _%hd179767%_)
                                               (gx#stx-list? _%body179769%_)
                                               (not (gx#stx-null?
                                                     _%body179769%_)))
                                          (gx#core-cons*
                                           _%form179730%_
                                           (gx#stx-map1
                                            _%generate179732%_
                                            _%hd179767%_)
                                           _%body179769%_)
                                          (_%E179735179747%_)))))
                                (_%E179735179747%_))))
                        (_%E179735179747%_)))))
            (_%E179734179771%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx179821%_)
        (let ((_%form179823%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx179821%_ _%form179823%_))))
    (define gx#macro-expand-let-values
      (lambda _g182365_
        (let ((_g182366_ (##length _g182365_)))
          (cond ((##fx= _g182366_ 1)
                 (apply gx#macro-expand-let-values__0 _g182365_))
                ((##fx= _g182366_ 2)
                 (apply gx#macro-expand-let-values__% _g182365_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g182365_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx179726%_)
        (gx#macro-expand-let-values__% _%stx179726%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx179724%_)
        (gx#macro-expand-let-values__% _%stx179724%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx179615%_)
        (let* ((_%e179616179642%_ _%stx179615%_)
               (_%E179628179646%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e179616179642%_)))
               (_%E179618179688%_
                (lambda ()
                  (if (gx#stx-pair? _%e179616179642%_)
                      (let ((_%e179629179650%_
                             (gx#syntax-e _%e179616179642%_)))
                        (let ((_%hd179630179653%_ (##car _%e179629179650%_))
                              (_%tl179631179655%_ (##cdr _%e179629179650%_)))
                          (if (gx#stx-pair? _%tl179631179655%_)
                              (let ((_%e179632179658%_
                                     (gx#syntax-e _%tl179631179655%_)))
                                (let ((_%hd179633179661%_
                                       (##car _%e179632179658%_))
                                      (_%tl179634179663%_
                                       (##cdr _%e179632179658%_)))
                                  (let ((_%test179666%_ _%hd179633179661%_))
                                    (if (gx#stx-pair? _%tl179634179663%_)
                                        (let ((_%e179635179668%_
                                               (gx#syntax-e
                                                _%tl179634179663%_)))
                                          (let ((_%hd179636179671%_
                                                 (##car _%e179635179668%_))
                                                (_%tl179637179673%_
                                                 (##cdr _%e179635179668%_)))
                                            (let ((_%K179676%_
                                                   _%hd179636179671%_))
                                              (if (gx#stx-pair?
                                                   _%tl179637179673%_)
                                                  (let ((_%e179638179678%_
                                                         (gx#syntax-e
                                                          _%tl179637179673%_)))
                                                    (let ((_%hd179639179681%_
                                                           (##car _%e179638179678%_))
                                                          (_%tl179640179683%_
                                                           (##cdr _%e179638179678%_)))
                                                      (let ((_%E179686%_
                                                             _%hd179639179681%_))
                                                        (if (gx#stx-null?
                                                             _%tl179640179683%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test179666%_
                                                             _%K179676%_
                                                             _%E179686%_)
                                                            (_%E179628179646%_)))))
                                                  (_%E179628179646%_)))))
                                        (_%E179628179646%_)))))
                              (_%E179628179646%_))))
                      (_%E179628179646%_))))
               (_%E179617179720%_
                (lambda ()
                  (if (gx#stx-pair? _%e179616179642%_)
                      (let ((_%e179619179692%_
                             (gx#syntax-e _%e179616179642%_)))
                        (let ((_%hd179620179695%_ (##car _%e179619179692%_))
                              (_%tl179621179697%_ (##cdr _%e179619179692%_)))
                          (if (gx#stx-pair? _%tl179621179697%_)
                              (let ((_%e179622179700%_
                                     (gx#syntax-e _%tl179621179697%_)))
                                (let ((_%hd179623179703%_
                                       (##car _%e179622179700%_))
                                      (_%tl179624179705%_
                                       (##cdr _%e179622179700%_)))
                                  (let ((_%test179708%_ _%hd179623179703%_))
                                    (if (gx#stx-pair? _%tl179624179705%_)
                                        (let ((_%e179625179710%_
                                               (gx#syntax-e
                                                _%tl179624179705%_)))
                                          (let ((_%hd179626179713%_
                                                 (##car _%e179625179710%_))
                                                (_%tl179627179715%_
                                                 (##cdr _%e179625179710%_)))
                                            (let ((_%K179718%_
                                                   _%hd179626179713%_))
                                              (if (gx#stx-null?
                                                   _%tl179627179715%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test179708%_
                                                   _%K179718%_
                                                   '#!void)
                                                  (_%E179618179688%_)))))
                                        (_%E179618179688%_)))))
                              (_%E179618179688%_))))
                      (_%E179618179688%_)))))
          (_%E179617179720%_))))
    (define gx#free-identifier=?
      (lambda (_%xid179600%_ _%yid179601%_)
        (let ((_%xe179603%_ (gx#resolve-identifier__0 _%xid179600%_))
              (_%ye179604%_ (gx#resolve-identifier__0 _%yid179601%_)))
          (if (and _%xe179603%_ _%ye179604%_)
              (let ((_%$e179607%_ (eq? _%xe179603%_ _%ye179604%_)))
                (if _%$e179607%_
                    _%$e179607%_
                    (if (##structure-instance-of? _%xe179603%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye179604%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe179603%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye179604%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe179603%_ _%ye179604%_)
                  '#f
                  (gx#stx-eq? _%xid179600%_ _%yid179601%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid179581%_ _%yid179582%_)
        (letrec ((_%context179584%_
                  (lambda (_%e179598%_)
                    (if (##structure-direct-instance-of?
                         _%e179598%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e179598%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks179585%_
                  (lambda (_%e179593%_)
                    (if (symbol? _%e179593%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e179593%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e179593%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e179593%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap179586%_
                  (lambda (_%e179591%_)
                    (if (symbol? _%e179591%_)
                        _%e179591%_
                        (gx#syntax-local-unwrap _%e179591%_)))))
          (let ((_%x179588%_ (_%unwrap179586%_ _%xid179581%_))
                (_%y179589%_ (_%unwrap179586%_ _%yid179582%_)))
            (if (gx#stx-eq? _%x179588%_ _%y179589%_)
                (if (eq? (_%context179584%_ _%x179588%_)
                         (_%context179584%_ _%y179589%_))
                    (equal? (_%marks179585%_ _%x179588%_)
                            (_%marks179585%_ _%y179589%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx179579%_)
        (if (gx#identifier? _%stx179579%_)
            (gx#core-identifier=? _%stx179579%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx179577%_)
        (if (gx#identifier? _%stx179577%_)
            (gx#core-identifier=? _%stx179577%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx179520%_ _%where179521%_)
        (let _%lp179523%_ ((_%rest179525%_ (gx#syntax->list _%stx179520%_)))
          (let* ((_%rest179526179534%_ _%rest179525%_)
                 (_%else179528179542%_ (lambda () '#t))
                 (_%K179530179555%_
                  (lambda (_%rest179545%_ _%hd179546%_)
                    (if (gx#identifier? _%hd179546%_)
                        (if (__find (lambda (_%g179548179550%_)
                                      (gx#bound-identifier=?
                                       _%g179548179550%_
                                       _%hd179546%_))
                                    _%rest179545%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where179521%_
                             _%hd179546%_)
                            (_%lp179523%_ _%rest179545%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where179521%_
                         _%hd179546%_)))))
            (if (pair? _%rest179526179534%_)
                (let ((_%hd179531179558%_ (##car _%rest179526179534%_))
                      (_%tl179532179560%_ (##cdr _%rest179526179534%_)))
                  (let* ((_%hd179563%_ _%hd179531179558%_)
                         (_%rest179565%_ _%tl179532179560%_))
                    (_%K179530179555%_ _%rest179565%_ _%hd179563%_)))
                (_%else179528179542%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx179570%_)
        (let ((_%where179572%_ _%stx179570%_))
          (gx#check-duplicate-identifiers__% _%stx179570%_ _%where179572%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g182367_
        (let ((_g182368_ (##length _g182367_)))
          (cond ((##fx= _g182368_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g182367_))
                ((##fx= _g182368_ 2)
                 (apply gx#check-duplicate-identifiers__% _g182367_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g182367_))))))
    (define gx#core-bind-values?
      (lambda (_%stx179512%_)
        (gx#stx-andmap
         (lambda (_%x179514%_)
           (let ((_%$e179516%_ (gx#identifier? _%x179514%_)))
             (if _%$e179516%_ _%$e179516%_ (gx#stx-false? _%x179514%_))))
         _%stx179512%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx179476%_ _%rebind?179477%_ _%phi179478%_ _%ctx179479%_)
        (gx#stx-for-each1
         (lambda (_%id179481%_)
           (if (gx#identifier? _%id179481%_)
               (gx#core-bind-runtime!__%
                _%id179481%_
                _%rebind?179477%_
                _%phi179478%_
                _%ctx179479%_)
               '#!void))
         _%stx179476%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx179486%_)
        (let* ((_%rebind?179488%_ '#f)
               (_%phi179490%_ (gx#current-expander-phi))
               (_%ctx179492%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx179486%_
           _%rebind?179488%_
           _%phi179490%_
           _%ctx179492%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx179494%_ _%rebind?179495%_)
        (let* ((_%phi179497%_ (gx#current-expander-phi))
               (_%ctx179499%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx179494%_
           _%rebind?179495%_
           _%phi179497%_
           _%ctx179499%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx179501%_ _%rebind?179502%_ _%phi179503%_)
        (let ((_%ctx179505%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx179501%_
           _%rebind?179502%_
           _%phi179503%_
           _%ctx179505%_))))
    (define gx#core-bind-values!
      (lambda _g182369_
        (let ((_g182370_ (##length _g182369_)))
          (cond ((##fx= _g182370_ 1) (apply gx#core-bind-values!__0 _g182369_))
                ((##fx= _g182370_ 2) (apply gx#core-bind-values!__1 _g182369_))
                ((##fx= _g182370_ 3) (apply gx#core-bind-values!__2 _g182369_))
                ((##fx= _g182370_ 4) (apply gx#core-bind-values!__% _g182369_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g182369_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx179471%_)
        (gx#stx-map1
         (lambda (_%x179473%_)
           (if (gx#identifier? _%x179473%_)
               (gx#core-quote-syntax__0 _%x179473%_)
               '#f))
         _%stx179471%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx179464%_)
        (if (gx#identifier? _%stx179464%_)
            (let* ((_%bind179466%_ (gx#resolve-identifier__0 _%stx179464%_))
                   (_%$e179468%_ (not _%bind179466%_)))
              (if _%$e179468%_
                  _%$e179468%_
                  (##structure-instance-of?
                   _%bind179466%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id179453%_ _%form179454%_)
        (let ((_%bind179456%_ (gx#resolve-identifier__0 _%id179453%_)))
          (if (##structure-instance-of? _%bind179456%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id179453%_)
              (if (not _%bind179456%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id179453%_)))
                      (gx#core-quote-syntax__0 _%id179453%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form179454%_
                       _%id179453%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form179454%_
                   _%id179453%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id179408%_ _%rebind?179409%_ _%phi179410%_ _%ctx179411%_)
        (let* ((_%key179413%_ (gx#core-identifier-key _%id179408%_))
               (_%eid179415%_
                (gx#make-binding-id__%
                 _%key179413%_
                 '#f
                 _%phi179410%_
                 _%ctx179411%_))
               (_%bind179421%_
                (if (##structure-instance-of?
                     _%ctx179411%_
                     'gx#module-context::t)
                    (let ((__obj182346
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
                       __obj182346
                       _%eid179415%_
                       _%key179413%_
                       _%phi179410%_
                       _%ctx179411%_)
                      __obj182346)
                    (if (##structure-instance-of?
                         _%ctx179411%_
                         'gx#top-context::t)
                        (let ((__obj182345
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj182345
                           _%eid179415%_
                           _%key179413%_
                           _%phi179410%_)
                          __obj182345)
                        (if (##structure-instance-of?
                             _%ctx179411%_
                             'gx#local-context::t)
                            (let ((__obj182344
                                   (##structure
                                    gx#local-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#local-binding:::init!
                               __obj182344
                               _%eid179415%_
                               _%key179413%_
                               _%phi179410%_)
                              __obj182344)
                            (let ((__obj182343
                                   (##structure
                                    gx#runtime-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#runtime-binding:::init!
                               __obj182343
                               _%eid179415%_
                               _%key179413%_
                               _%phi179410%_)
                              __obj182343))))))
          (gx#bind-identifier!__%
           _%id179408%_
           _%bind179421%_
           _%rebind?179409%_
           _%phi179410%_
           _%ctx179411%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id179427%_)
        (let* ((_%rebind?179429%_ '#f)
               (_%phi179431%_ (gx#current-expander-phi))
               (_%ctx179433%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id179427%_
           _%rebind?179429%_
           _%phi179431%_
           _%ctx179433%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id179435%_ _%rebind?179436%_)
        (let* ((_%phi179438%_ (gx#current-expander-phi))
               (_%ctx179440%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id179435%_
           _%rebind?179436%_
           _%phi179438%_
           _%ctx179440%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id179442%_ _%rebind?179443%_ _%phi179444%_)
        (let ((_%ctx179446%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id179442%_
           _%rebind?179443%_
           _%phi179444%_
           _%ctx179446%_))))
    (define gx#core-bind-runtime!
      (lambda _g182371_
        (let ((_g182372_ (##length _g182371_)))
          (cond ((##fx= _g182372_ 1)
                 (apply gx#core-bind-runtime!__0 _g182371_))
                ((##fx= _g182372_ 2)
                 (apply gx#core-bind-runtime!__1 _g182371_))
                ((##fx= _g182372_ 3)
                 (apply gx#core-bind-runtime!__2 _g182371_))
                ((##fx= _g182372_ 4)
                 (apply gx#core-bind-runtime!__% _g182371_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g182371_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id179360%_
               _%eid179361%_
               _%rebind?179362%_
               _%phi179363%_
               _%ctx179364%_)
        (let* ((_%key179366%_ (gx#core-identifier-key _%id179360%_))
               (_%bind179371%_
                (if (##structure-instance-of?
                     _%ctx179364%_
                     'gx#module-context::t)
                    (let ((__obj182349
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
                       __obj182349
                       _%eid179361%_
                       _%key179366%_
                       _%phi179363%_
                       _%ctx179364%_)
                      __obj182349)
                    (if (##structure-instance-of?
                         _%ctx179364%_
                         'gx#top-context::t)
                        (let ((__obj182348
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj182348
                           _%eid179361%_
                           _%key179366%_
                           _%phi179363%_)
                          __obj182348)
                        (let ((__obj182347
                               (##structure
                                gx#runtime-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#runtime-binding:::init!
                           __obj182347
                           _%eid179361%_
                           _%key179366%_
                           _%phi179363%_)
                          __obj182347)))))
          (gx#bind-identifier!__%
           _%id179360%_
           _%bind179371%_
           _%rebind?179362%_
           _%phi179363%_
           _%ctx179364%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id179377%_ _%eid179378%_)
        (let* ((_%rebind?179380%_ '#f)
               (_%phi179382%_ (gx#current-expander-phi))
               (_%ctx179384%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id179377%_
           _%eid179378%_
           _%rebind?179380%_
           _%phi179382%_
           _%ctx179384%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id179386%_ _%eid179387%_ _%rebind?179388%_)
        (let* ((_%phi179390%_ (gx#current-expander-phi))
               (_%ctx179392%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id179386%_
           _%eid179387%_
           _%rebind?179388%_
           _%phi179390%_
           _%ctx179392%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id179394%_ _%eid179395%_ _%rebind?179396%_ _%phi179397%_)
        (let ((_%ctx179399%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id179394%_
           _%eid179395%_
           _%rebind?179396%_
           _%phi179397%_
           _%ctx179399%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g182373_
        (let ((_g182374_ (##length _g182373_)))
          (cond ((##fx= _g182374_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g182373_))
                ((##fx= _g182374_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g182373_))
                ((##fx= _g182374_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g182373_))
                ((##fx= _g182374_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g182373_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g182373_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id179320%_
               _%eid179321%_
               _%rebind?179322%_
               _%phi179323%_
               _%ctx179324%_)
        (gx#bind-identifier!__%
         _%id179320%_
         (let ((__obj182350
                (##structure gx#extern-binding::t '#f '#f '#f '#f '#f '#f)))
           (gx#extern-binding:::init!
            __obj182350
            _%eid179321%_
            (gx#core-identifier-key _%id179320%_)
            _%phi179323%_)
           __obj182350)
         _%rebind?179322%_
         _%phi179323%_
         _%ctx179324%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id179329%_ _%eid179330%_)
        (let* ((_%rebind?179332%_ '#f)
               (_%phi179334%_ (gx#current-expander-phi))
               (_%ctx179336%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id179329%_
           _%eid179330%_
           _%rebind?179332%_
           _%phi179334%_
           _%ctx179336%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id179338%_ _%eid179339%_ _%rebind?179340%_)
        (let* ((_%phi179342%_ (gx#current-expander-phi))
               (_%ctx179344%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id179338%_
           _%eid179339%_
           _%rebind?179340%_
           _%phi179342%_
           _%ctx179344%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id179346%_ _%eid179347%_ _%rebind?179348%_ _%phi179349%_)
        (let ((_%ctx179351%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id179346%_
           _%eid179347%_
           _%rebind?179348%_
           _%phi179349%_
           _%ctx179351%_))))
    (define gx#core-bind-extern!
      (lambda _g182375_
        (let ((_g182376_ (##length _g182375_)))
          (cond ((##fx= _g182376_ 2) (apply gx#core-bind-extern!__0 _g182375_))
                ((##fx= _g182376_ 3) (apply gx#core-bind-extern!__1 _g182375_))
                ((##fx= _g182376_ 4) (apply gx#core-bind-extern!__2 _g182375_))
                ((##fx= _g182376_ 5) (apply gx#core-bind-extern!__% _g182375_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g182375_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id179274%_
               _%e179275%_
               _%rebind?179276%_
               _%phi179277%_
               _%ctx179278%_)
        (gx#bind-identifier!__%
         _%id179274%_
         (let ((_%key179283%_ (gx#core-identifier-key _%id179274%_))
               (_%e179284%_
                (if (or (##structure-instance-of? _%e179275%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e179275%_
                         'gx#expander-context::t))
                    _%e179275%_
                    (##structure
                     gx#user-expander::t
                     _%e179275%_
                     _%ctx179278%_
                     _%phi179277%_))))
           (let ((__obj182351
                  (##structure gx#syntax-binding::t '#f '#f '#f '#f '#f)))
             (gx#syntax-binding:::init!
              __obj182351
              (gx#make-binding-id__%
               _%key179283%_
               '#t
               _%phi179277%_
               _%ctx179278%_)
              _%key179283%_
              _%phi179277%_
              _%e179284%_)
             __obj182351))
         _%rebind?179276%_
         _%phi179277%_
         _%ctx179278%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id179289%_ _%e179290%_)
        (let* ((_%rebind?179292%_ '#f)
               (_%phi179294%_ (gx#current-expander-phi))
               (_%ctx179296%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id179289%_
           _%e179290%_
           _%rebind?179292%_
           _%phi179294%_
           _%ctx179296%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id179298%_ _%e179299%_ _%rebind?179300%_)
        (let* ((_%phi179302%_ (gx#current-expander-phi))
               (_%ctx179304%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id179298%_
           _%e179299%_
           _%rebind?179300%_
           _%phi179302%_
           _%ctx179304%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id179306%_ _%e179307%_ _%rebind?179308%_ _%phi179309%_)
        (let ((_%ctx179311%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id179306%_
           _%e179307%_
           _%rebind?179308%_
           _%phi179309%_
           _%ctx179311%_))))
    (define gx#core-bind-syntax!
      (lambda _g182377_
        (let ((_g182378_ (##length _g182377_)))
          (cond ((##fx= _g182378_ 2) (apply gx#core-bind-syntax!__0 _g182377_))
                ((##fx= _g182378_ 3) (apply gx#core-bind-syntax!__1 _g182377_))
                ((##fx= _g182378_ 4) (apply gx#core-bind-syntax!__2 _g182377_))
                ((##fx= _g182378_ 5) (apply gx#core-bind-syntax!__% _g182377_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g182377_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id179257%_ _%e179258%_ _%rebind?179259%_)
        (gx#core-bind-syntax!__%
         _%id179257%_
         _%e179258%_
         _%rebind?179259%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id179264%_ _%e179265%_)
        (let ((_%rebind?179267%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id179264%_
           _%e179265%_
           _%rebind?179267%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g182379_
        (let ((_g182380_ (##length _g182379_)))
          (cond ((##fx= _g182380_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g182379_))
                ((##fx= _g182380_ 3)
                 (apply gx#core-bind-root-syntax!__% _g182379_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g182379_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id179215%_
               _%alias-id179216%_
               _%rebind?179217%_
               _%phi179218%_
               _%ctx179219%_)
        (gx#bind-identifier!__%
         _%id179215%_
         (let* ((_%key179221%_ (gx#core-identifier-key _%id179215%_))
                (__obj182352
                 (##structure gx#alias-binding::t '#f '#f '#f '#f '#f)))
           (gx#alias-binding:::init!
            __obj182352
            (gx#make-binding-id__%
             _%key179221%_
             '#t
             _%phi179218%_
             _%ctx179219%_)
            _%key179221%_
            _%phi179218%_
            _%alias-id179216%_)
           __obj182352)
         _%rebind?179217%_
         _%phi179218%_
         _%ctx179219%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id179226%_ _%alias-id179227%_)
        (let* ((_%rebind?179229%_ '#f)
               (_%phi179231%_ (gx#current-expander-phi))
               (_%ctx179233%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id179226%_
           _%alias-id179227%_
           _%rebind?179229%_
           _%phi179231%_
           _%ctx179233%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id179235%_ _%alias-id179236%_ _%rebind?179237%_)
        (let* ((_%phi179239%_ (gx#current-expander-phi))
               (_%ctx179241%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id179235%_
           _%alias-id179236%_
           _%rebind?179237%_
           _%phi179239%_
           _%ctx179241%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id179243%_ _%alias-id179244%_ _%rebind?179245%_ _%phi179246%_)
        (let ((_%ctx179248%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id179243%_
           _%alias-id179244%_
           _%rebind?179245%_
           _%phi179246%_
           _%ctx179248%_))))
    (define gx#core-bind-alias!
      (lambda _g182381_
        (let ((_g182382_ (##length _g182381_)))
          (cond ((##fx= _g182382_ 2) (apply gx#core-bind-alias!__0 _g182381_))
                ((##fx= _g182382_ 3) (apply gx#core-bind-alias!__1 _g182381_))
                ((##fx= _g182382_ 4) (apply gx#core-bind-alias!__2 _g182381_))
                ((##fx= _g182382_ 5) (apply gx#core-bind-alias!__% _g182381_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g182381_))))))
    (define gx#make-binding-id__%
      (lambda (_%key179165%_ _%syntax?179166%_ _%phi179167%_ _%ctx179168%_)
        (if (uninterned-symbol? _%key179165%_)
            (##gensym 'L)
            (if (pair? _%key179165%_)
                (gensym (##car _%key179165%_))
                (if (##structure-instance-of? _%ctx179168%_ 'gx#top-context::t)
                    (let ((_%ns179173%_
                           (gx#core-context-namespace__% _%ctx179168%_)))
                      (if (and (fxzero? _%phi179167%_) (not _%syntax?179166%_))
                          (if _%ns179173%_
                              (make-symbol__1 _%ns179173%_ '"#" _%key179165%_)
                              _%key179165%_)
                          (if _%syntax?179166%_
                              (make-symbol__1
                               (let ((_%$e179177%_ _%ns179173%_))
                                 (if _%$e179177%_ _%$e179177%_ '""))
                               '"[:"
                               (number->string _%phi179167%_)
                               '":]#"
                               _%key179165%_)
                              (make-symbol__1
                               (let ((_%$e179181%_ _%ns179173%_))
                                 (if _%$e179181%_ _%$e179181%_ '""))
                               '"["
                               (number->string _%phi179167%_)
                               '"]#"
                               _%key179165%_))))
                    (gensym _%key179165%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key179188%_)
        (let* ((_%syntax?179190%_ '#f)
               (_%phi179192%_ (gx#current-expander-phi))
               (_%ctx179194%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key179188%_
           _%syntax?179190%_
           _%phi179192%_
           _%ctx179194%_))))
    (define gx#make-binding-id__1
      (lambda (_%key179196%_ _%syntax?179197%_)
        (let* ((_%phi179199%_ (gx#current-expander-phi))
               (_%ctx179201%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key179196%_
           _%syntax?179197%_
           _%phi179199%_
           _%ctx179201%_))))
    (define gx#make-binding-id__2
      (lambda (_%key179203%_ _%syntax?179204%_ _%phi179205%_)
        (let ((_%ctx179207%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key179203%_
           _%syntax?179204%_
           _%phi179205%_
           _%ctx179207%_))))
    (define gx#make-binding-id
      (lambda _g182383_
        (let ((_g182384_ (##length _g182383_)))
          (cond ((##fx= _g182384_ 1) (apply gx#make-binding-id__0 _g182383_))
                ((##fx= _g182384_ 2) (apply gx#make-binding-id__1 _g182383_))
                ((##fx= _g182384_ 3) (apply gx#make-binding-id__2 _g182383_))
                ((##fx= _g182384_ 4) (apply gx#make-binding-id__% _g182383_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g182383_))))))))
