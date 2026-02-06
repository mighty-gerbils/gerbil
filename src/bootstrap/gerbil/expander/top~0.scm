(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1770342548)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx171316%_)
        (letrec ((_%expand-special171318%_
                  (lambda (_%hd171320%_ _%K171321%_ _%rest171322%_ _%r171323%_)
                    (_%K171321%_
                     _%rest171322%_
                     (cons (gx#core-expand-top _%hd171320%_) _%r171323%_)))))
          (gx#core-expand-block__0 _%stx171316%_ _%expand-special171318%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx171010%_)
        (letrec ((_%expand-special171012%_
                  (lambda (_%hd171134%_ _%K171135%_ _%rest171136%_ _%r171137%_)
                    (let* ((_%K171141%_
                            (lambda (_%e171139%_)
                              (_%K171135%_
                               _%rest171136%_
                               (cons _%e171139%_ _%r171137%_))))
                           (_%e171142171184%_ _%hd171134%_)
                           (_%E171179171188%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e171142171184%_)))
                           (_%E171175171200%_
                            (lambda ()
                              (if (gx#stx-pair? _%e171142171184%_)
                                  (let ((_%e171180171192%_
                                         (gx#syntax-e _%e171142171184%_)))
                                    (let ((_%hd171181171195%_
                                           (##car _%e171180171192%_))
                                          (_%tl171182171197%_
                                           (##cdr _%e171180171192%_)))
                                      (if (and (gx#identifier?
                                                _%hd171181171195%_)
                                               (gx#core-identifier=?
                                                _%hd171181171195%_
                                                '%#define-runtime))
                                          (_%K171141%_
                                           (gx#core-expand-define-runtime%
                                            _%hd171134%_))
                                          (_%E171179171188%_))))
                                  (_%E171179171188%_))))
                           (_%E171171171212%_
                            (lambda ()
                              (if (gx#stx-pair? _%e171142171184%_)
                                  (let ((_%e171176171204%_
                                         (gx#syntax-e _%e171142171184%_)))
                                    (let ((_%hd171177171207%_
                                           (##car _%e171176171204%_))
                                          (_%tl171178171209%_
                                           (##cdr _%e171176171204%_)))
                                      (if (and (gx#identifier?
                                                _%hd171177171207%_)
                                               (gx#core-identifier=?
                                                _%hd171177171207%_
                                                '%#define-alias))
                                          (_%K171141%_
                                           (gx#core-expand-define-alias%
                                            _%hd171134%_))
                                          (_%E171175171200%_))))
                                  (_%E171175171200%_))))
                           (_%E171161171224%_
                            (lambda ()
                              (if (gx#stx-pair? _%e171142171184%_)
                                  (let ((_%e171172171216%_
                                         (gx#syntax-e _%e171142171184%_)))
                                    (let ((_%hd171173171219%_
                                           (##car _%e171172171216%_))
                                          (_%tl171174171221%_
                                           (##cdr _%e171172171216%_)))
                                      (if (and (gx#identifier?
                                                _%hd171173171219%_)
                                               (gx#core-identifier=?
                                                _%hd171173171219%_
                                                '%#define-syntax))
                                          (_%K171141%_
                                           (gx#core-expand-define-syntax%
                                            _%hd171134%_))
                                          (_%E171171171212%_))))
                                  (_%E171171171212%_))))
                           (_%E171148171256%_
                            (lambda ()
                              (if (gx#stx-pair? _%e171142171184%_)
                                  (let ((_%e171162171228%_
                                         (gx#syntax-e _%e171142171184%_)))
                                    (let ((_%hd171163171231%_
                                           (##car _%e171162171228%_))
                                          (_%tl171164171233%_
                                           (##cdr _%e171162171228%_)))
                                      (if (and (gx#identifier?
                                                _%hd171163171231%_)
                                               (gx#core-identifier=?
                                                _%hd171163171231%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl171164171233%_)
                                              (let ((_%e171165171236%_
                                                     (gx#syntax-e
                                                      _%tl171164171233%_)))
                                                (let ((_%hd171166171239%_
                                                       (##car _%e171165171236%_))
                                                      (_%tl171167171241%_
                                                       (##cdr _%e171165171236%_)))
                                                  (let ((_%hd-bind171244%_
                                                         _%hd171166171239%_))
                                                    (if (gx#stx-pair?
                                                         _%tl171167171241%_)
                                                        (let ((_%e171168171246%_
                                                               (gx#syntax-e
                                                                _%tl171167171241%_)))
                                                          (let ((_%hd171169171249%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e171168171246%_))
                        (_%tl171170171251%_ (##cdr _%e171168171246%_)))
                    (let ((_%expr171254%_ _%hd171169171249%_))
                      (if (gx#stx-null? _%tl171170171251%_)
                          (if (gx#core-bind-values? _%hd-bind171244%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind171244%_)
                                (_%K171141%_ _%hd171134%_))
                              (_%E171161171224%_))
                          (_%E171161171224%_)))))
                (_%E171161171224%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E171161171224%_))
                                          (_%E171161171224%_))))
                                  (_%E171161171224%_))))
                           (_%E171144171300%_
                            (lambda ()
                              (if (gx#stx-pair? _%e171142171184%_)
                                  (let ((_%e171149171260%_
                                         (gx#syntax-e _%e171142171184%_)))
                                    (let ((_%hd171150171263%_
                                           (##car _%e171149171260%_))
                                          (_%tl171151171265%_
                                           (##cdr _%e171149171260%_)))
                                      (if (and (gx#identifier?
                                                _%hd171150171263%_)
                                               (gx#core-identifier=?
                                                _%hd171150171263%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl171151171265%_)
                                              (let ((_%e171152171268%_
                                                     (gx#syntax-e
                                                      _%tl171151171265%_)))
                                                (let ((_%hd171153171271%_
                                                       (##car _%e171152171268%_))
                                                      (_%tl171154171273%_
                                                       (##cdr _%e171152171268%_)))
                                                  (if (gx#stx-pair?
                                                       _%hd171153171271%_)
                                                      (let ((_%e171158171276%_
                                                             (gx#syntax-e
                                                              _%hd171153171271%_)))
                                                        (let ((_%hd171159171279%_
                                                               (##car _%e171158171276%_))
                                                              (_%tl171160171281%_
                                                               (##cdr _%e171158171276%_)))
                                                          (let ((_%id171284%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd171159171279%_))
                    (if (gx#stx-null? _%tl171160171281%_)
                        (if (gx#stx-pair? _%tl171154171273%_)
                            (let ((_%e171155171286%_
                                   (gx#syntax-e _%tl171154171273%_)))
                              (let ((_%hd171156171289%_
                                     (##car _%e171155171286%_))
                                    (_%tl171157171291%_
                                     (##cdr _%e171155171286%_)))
                                (let* ((_%expr171294%_ _%hd171156171289%_)
                                       (_%props171296%_ _%tl171157171291%_))
                                  (if (gx#identifier? _%id171284%_)
                                      (let ((_%bind171298%_
                                             (gx#core-bind-runtime!__0
                                              _%id171284%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind171298%_
                                         _%props171296%_)
                                        (_%K171141%_ _%hd171134%_))
                                      (_%E171148171256%_)))))
                            (_%E171148171256%_))
                        (_%E171148171256%_)))))
              (_%E171148171256%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E171148171256%_))
                                          (_%E171148171256%_))))
                                  (_%E171148171256%_))))
                           (_%E171143171312%_
                            (lambda ()
                              (if (gx#stx-pair? _%e171142171184%_)
                                  (let ((_%e171145171304%_
                                         (gx#syntax-e _%e171142171184%_)))
                                    (let ((_%hd171146171307%_
                                           (##car _%e171145171304%_))
                                          (_%tl171147171309%_
                                           (##cdr _%e171145171304%_)))
                                      (if (and (gx#identifier?
                                                _%hd171146171307%_)
                                               (gx#core-identifier=?
                                                _%hd171146171307%_
                                                '%#begin-syntax))
                                          (_%K171141%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd171134%_))
                                          (_%E171144171300%_))))
                                  (_%E171144171300%_)))))
                      (_%E171143171312%_))))
                 (_%eval-body171013%_
                  (lambda (_%rbody171021%_)
                    (let _%lp171023%_ ((_%rest171025%_ _%rbody171021%_)
                                       (_%body171026%_ '())
                                       (_%ebody171027%_ '()))
                      (let* ((_%rest171028171036%_ _%rest171025%_)
                             (_%else171030171044%_
                              (lambda ()
                                (values _%body171026%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody171027%_)
                                          (gx#stx-source _%stx171010%_))))))
                             (_%K171032171122%_
                              (lambda (_%rest171047%_ _%hd171048%_)
                                (let* ((_%e171049171066%_ _%hd171048%_)
                                       (_%E171061171070%_
                                        (lambda ()
                                          (_%lp171023%_
                                           _%rest171047%_
                                           (cons _%hd171048%_ _%body171026%_)
                                           (cons _%hd171048%_
                                                 _%ebody171027%_))))
                                       (_%E171051171082%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e171049171066%_)
                                              (let ((_%e171062171074%_
                                                     (gx#syntax-e
                                                      _%e171049171066%_)))
                                                (let ((_%hd171063171077%_
                                                       (##car _%e171062171074%_))
                                                      (_%tl171064171079%_
                                                       (##cdr _%e171062171074%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd171063171077%_)
                                                           (gx#core-identifier=?
                                                            _%hd171063171077%_
                                                            '%#begin-syntax))
                                                      (_%lp171023%_
                                                       _%rest171047%_
                                                       (cons _%hd171048%_
                                                             _%body171026%_)
                                                       _%ebody171027%_)
                                                      (_%E171061171070%_))))
                                              (_%E171061171070%_))))
                                       (_%E171050171118%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e171049171066%_)
                                              (let ((_%e171052171086%_
                                                     (gx#syntax-e
                                                      _%e171049171066%_)))
                                                (let ((_%hd171053171089%_
                                                       (##car _%e171052171086%_))
                                                      (_%tl171054171091%_
                                                       (##cdr _%e171052171086%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd171053171089%_)
                                                           (gx#core-identifier=?
                                                            _%hd171053171089%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl171054171091%_)
                                                          (let ((_%e171055171094%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl171054171091%_)))
                    (let ((_%hd171056171097%_ (##car _%e171055171094%_))
                          (_%tl171057171099%_ (##cdr _%e171055171094%_)))
                      (let ((_%hd-bind171102%_ _%hd171056171097%_))
                        (if (gx#stx-pair? _%tl171057171099%_)
                            (let ((_%e171058171104%_
                                   (gx#syntax-e _%tl171057171099%_)))
                              (let ((_%hd171059171107%_
                                     (##car _%e171058171104%_))
                                    (_%tl171060171109%_
                                     (##cdr _%e171058171104%_)))
                                (let* ((_%expr171112%_ _%hd171059171107%_)
                                       (_%ignore-props171114%_
                                        _%tl171060171109%_)
                                       (_%ehd171116%_
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#define-values)
                                               (cons (gx#core-quote-bind-values
                                                      _%hd-bind171102%_)
                                                     (cons (gx#core-expand-expression
                                                            _%expr171112%_)
                                                           '())))
                                         (gx#stx-source _%hd171048%_))))
                                  (_%lp171023%_
                                   _%rest171047%_
                                   (cons _%ehd171116%_ _%body171026%_)
                                   (cons _%ehd171116%_ _%ebody171027%_)))))
                            (_%E171051171082%_)))))
                  (_%E171051171082%_))
              (_%E171051171082%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E171051171082%_)))))
                                  (_%E171050171118%_)))))
                        (if (pair? _%rest171028171036%_)
                            (let ((_%hd171033171125%_
                                   (##car _%rest171028171036%_))
                                  (_%tl171034171127%_
                                   (##cdr _%rest171028171036%_)))
                              (let* ((_%hd171130%_ _%hd171033171125%_)
                                     (_%rest171132%_ _%tl171034171127%_))
                                (_%K171032171122%_
                                 _%rest171132%_
                                 _%hd171130%_)))
                            (_%else171030171044%_)))))))
          (call-with-parameters__1
           (lambda ()
             (let* ((_%rbody171016%_
                     (gx#core-expand-block__1
                      _%stx171010%_
                      _%expand-special171012%_
                      '#f))
                    (_g171349_ (_%eval-body171013%_ _%rbody171016%_)))
               (begin
                 (let ((_g171350_
                        (if (##values? _g171349_)
                            (##values-length _g171349_)
                            1)))
                   (if (not (##fx= _g171350_ 2))
                       (error "Context expects 2 values" _g171350_)))
                 (let ((_%expanded-body171018%_ (##values-ref _g171349_ 0))
                       (_%value171019%_ (##values-ref _g171349_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body171018%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value171019%_ '())))
                    (gx#stx-source _%stx171010%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx170980%_)
        (let* ((_%e170981170988%_ _%stx170980%_)
               (_%E170983170992%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e170981170988%_)))
               (_%E170982171006%_
                (lambda ()
                  (if (gx#stx-pair? _%e170981170988%_)
                      (let ((_%e170984170996%_
                             (gx#syntax-e _%e170981170988%_)))
                        (let ((_%hd170985170999%_ (##car _%e170984170996%_))
                              (_%tl170986171001%_ (##cdr _%e170984170996%_)))
                          (let ((_%body171004%_ _%tl170986171001%_))
                            (if (gx#stx-list? _%body171004%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body171004%_)
                                 (gx#stx-source _%stx170980%_))
                                (_%E170983170992%_)))))
                      (_%E170983170992%_)))))
          (_%E170982171006%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx170978%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx170978%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx170924%_)
        (let* ((_%e170925170938%_ _%stx170924%_)
               (_%E170927170942%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e170925170938%_)))
               (_%E170926170974%_
                (lambda ()
                  (if (gx#stx-pair? _%e170925170938%_)
                      (let ((_%e170928170946%_
                             (gx#syntax-e _%e170925170938%_)))
                        (let ((_%hd170929170949%_ (##car _%e170928170946%_))
                              (_%tl170930170951%_ (##cdr _%e170928170946%_)))
                          (if (gx#stx-pair? _%tl170930170951%_)
                              (let ((_%e170931170954%_
                                     (gx#syntax-e _%tl170930170951%_)))
                                (let ((_%hd170932170957%_
                                       (##car _%e170931170954%_))
                                      (_%tl170933170959%_
                                       (##cdr _%e170931170954%_)))
                                  (let ((_%ann170962%_ _%hd170932170957%_))
                                    (if (gx#stx-pair? _%tl170933170959%_)
                                        (let ((_%e170934170964%_
                                               (gx#syntax-e
                                                _%tl170933170959%_)))
                                          (let ((_%hd170935170967%_
                                                 (##car _%e170934170964%_))
                                                (_%tl170936170969%_
                                                 (##cdr _%e170934170964%_)))
                                            (let ((_%expr170972%_
                                                   _%hd170935170967%_))
                                              (if (gx#stx-null?
                                                   _%tl170936170969%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann170962%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr170972%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx170924%_))
                                                  (_%E170927170942%_)))))
                                        (_%E170927170942%_)))))
                              (_%E170927170942%_))))
                      (_%E170927170942%_)))))
          (_%E170926170974%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx170589%_ _%body170590%_)
        (letrec ((_%expand-special170592%_
                  (lambda (_%hd170919%_ _%K170920%_ _%rest170921%_ _%r170922%_)
                    (_%K170920%_
                     '()
                     (cons (_%expand-internal170593%_
                            _%hd170919%_
                            _%rest170921%_)
                           _%r170922%_))))
                 (_%expand-internal170593%_
                  (lambda (_%hd170915%_ _%rest170916%_)
                    (call-with-parameters__1
                     (lambda ()
                       (_%wrap-internal170595%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd170915%_ _%rest170916%_))
                          (gx#stx-source _%stx170589%_))
                         _%expand-internal-special170594%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj171333
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj171333)
                       __obj171333))))
                 (_%expand-internal-special170594%_
                  (lambda (_%hd170753%_ _%K170754%_ _%rest170755%_ _%r170756%_)
                    (let* ((_%e170757170795%_ _%hd170753%_)
                           (_%E170790170799%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e170757170795%_)))
                           (_%E170786170811%_
                            (lambda ()
                              (if (gx#stx-pair? _%e170757170795%_)
                                  (let ((_%e170791170803%_
                                         (gx#syntax-e _%e170757170795%_)))
                                    (let ((_%hd170792170806%_
                                           (##car _%e170791170803%_))
                                          (_%tl170793170808%_
                                           (##cdr _%e170791170803%_)))
                                      (if (and (gx#identifier?
                                                _%hd170792170806%_)
                                               (gx#core-identifier=?
                                                _%hd170792170806%_
                                                '%#declare))
                                          (_%K170754%_
                                           _%rest170755%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd170753%_)
                                                 _%r170756%_))
                                          (_%E170790170799%_))))
                                  (_%E170790170799%_))))
                           (_%E170782170823%_
                            (lambda ()
                              (if (gx#stx-pair? _%e170757170795%_)
                                  (let ((_%e170787170815%_
                                         (gx#syntax-e _%e170757170795%_)))
                                    (let ((_%hd170788170818%_
                                           (##car _%e170787170815%_))
                                          (_%tl170789170820%_
                                           (##cdr _%e170787170815%_)))
                                      (if (and (gx#identifier?
                                                _%hd170788170818%_)
                                               (gx#core-identifier=?
                                                _%hd170788170818%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd170753%_)
                                            (_%K170754%_
                                             _%rest170755%_
                                             _%r170756%_))
                                          (_%E170786170811%_))))
                                  (_%E170786170811%_))))
                           (_%E170772170835%_
                            (lambda ()
                              (if (gx#stx-pair? _%e170757170795%_)
                                  (let ((_%e170783170827%_
                                         (gx#syntax-e _%e170757170795%_)))
                                    (let ((_%hd170784170830%_
                                           (##car _%e170783170827%_))
                                          (_%tl170785170832%_
                                           (##cdr _%e170783170827%_)))
                                      (if (and (gx#identifier?
                                                _%hd170784170830%_)
                                               (gx#core-identifier=?
                                                _%hd170784170830%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd170753%_)
                                            (_%K170754%_
                                             _%rest170755%_
                                             _%r170756%_))
                                          (_%E170782170823%_))))
                                  (_%E170782170823%_))))
                           (_%E170759170867%_
                            (lambda ()
                              (if (gx#stx-pair? _%e170757170795%_)
                                  (let ((_%e170773170839%_
                                         (gx#syntax-e _%e170757170795%_)))
                                    (let ((_%hd170774170842%_
                                           (##car _%e170773170839%_))
                                          (_%tl170775170844%_
                                           (##cdr _%e170773170839%_)))
                                      (if (and (gx#identifier?
                                                _%hd170774170842%_)
                                               (gx#core-identifier=?
                                                _%hd170774170842%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl170775170844%_)
                                              (let ((_%e170776170847%_
                                                     (gx#syntax-e
                                                      _%tl170775170844%_)))
                                                (let ((_%hd170777170850%_
                                                       (##car _%e170776170847%_))
                                                      (_%tl170778170852%_
                                                       (##cdr _%e170776170847%_)))
                                                  (let ((_%hd-bind170855%_
                                                         _%hd170777170850%_))
                                                    (if (gx#stx-pair?
                                                         _%tl170778170852%_)
                                                        (let ((_%e170779170857%_
                                                               (gx#syntax-e
                                                                _%tl170778170852%_)))
                                                          (let ((_%hd170780170860%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e170779170857%_))
                        (_%tl170781170862%_ (##cdr _%e170779170857%_)))
                    (let ((_%expr170865%_ _%hd170780170860%_))
                      (if (gx#stx-null? _%tl170781170862%_)
                          (if (gx#core-bind-values? _%hd-bind170855%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind170855%_)
                                (_%K170754%_
                                 _%rest170755%_
                                 (cons _%hd170753%_ _%r170756%_)))
                              (_%E170772170835%_))
                          (_%E170772170835%_)))))
                (_%E170772170835%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E170772170835%_))
                                          (_%E170772170835%_))))
                                  (_%E170772170835%_))))
                           (_%E170758170911%_
                            (lambda ()
                              (if (gx#stx-pair? _%e170757170795%_)
                                  (let ((_%e170760170871%_
                                         (gx#syntax-e _%e170757170795%_)))
                                    (let ((_%hd170761170874%_
                                           (##car _%e170760170871%_))
                                          (_%tl170762170876%_
                                           (##cdr _%e170760170871%_)))
                                      (if (and (gx#identifier?
                                                _%hd170761170874%_)
                                               (gx#core-identifier=?
                                                _%hd170761170874%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl170762170876%_)
                                              (let ((_%e170763170879%_
                                                     (gx#syntax-e
                                                      _%tl170762170876%_)))
                                                (let ((_%hd170764170882%_
                                                       (##car _%e170763170879%_))
                                                      (_%tl170765170884%_
                                                       (##cdr _%e170763170879%_)))
                                                  (if (gx#stx-pair?
                                                       _%hd170764170882%_)
                                                      (let ((_%e170769170887%_
                                                             (gx#syntax-e
                                                              _%hd170764170882%_)))
                                                        (let ((_%hd170770170890%_
                                                               (##car _%e170769170887%_))
                                                              (_%tl170771170892%_
                                                               (##cdr _%e170769170887%_)))
                                                          (let ((_%id170895%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd170770170890%_))
                    (if (gx#stx-null? _%tl170771170892%_)
                        (if (gx#stx-pair? _%tl170765170884%_)
                            (let ((_%e170766170897%_
                                   (gx#syntax-e _%tl170765170884%_)))
                              (let ((_%hd170767170900%_
                                     (##car _%e170766170897%_))
                                    (_%tl170768170902%_
                                     (##cdr _%e170766170897%_)))
                                (let* ((_%expr170905%_ _%hd170767170900%_)
                                       (_%props170907%_ _%tl170768170902%_))
                                  (if (gx#identifier? _%id170895%_)
                                      (let ((_%bind170909%_
                                             (gx#core-bind-runtime!__0
                                              _%id170895%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind170909%_
                                         _%props170907%_)
                                        (_%K170754%_
                                         _%rest170755%_
                                         (cons _%hd170753%_ _%r170756%_)))
                                      (_%E170759170867%_)))))
                            (_%E170759170867%_))
                        (_%E170759170867%_)))))
              (_%E170759170867%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E170759170867%_))
                                          (_%E170759170867%_))))
                                  (_%E170759170867%_)))))
                      (_%E170758170911%_))))
                 (_%wrap-internal170595%_
                  (lambda (_%rbody170597%_)
                    (let _%lp170599%_ ((_%rest170601%_ _%rbody170597%_)
                                       (_%decls170602%_ '())
                                       (_%bind170603%_ '())
                                       (_%body170604%_ '()))
                      (let* ((_%e170605170612%_ _%rest170601%_)
                             (_%E170607170661%_
                              (lambda ()
                                (let* ((_%body170656%_
                                        (let* ((_%body170615170625%_
                                                _%body170604%_)
                                               (_%else170618170633%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body170604%_)
                                                   (gx#stx-source
                                                    _%stx170589%_)))))
                                          (let ((_%K170623170653%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx170589%_)))
                                                (_%K170620170639%_
                                                 (lambda (_%expr170637%_)
                                                   _%expr170637%_)))
                                            (let ((_%try-match170617170649%_
                                                   (lambda ()
                                                     (if (pair? _%body170615170625%_)
                                                         (let ((_%tl170622170644%_
                                                                (##cdr _%body170615170625%_))
                                                               (_%hd170621170642%_
                                                                (##car _%body170615170625%_)))
                                                           (if (null? _%tl170622170644%_)
                                                               (let ((_%expr170647%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd170621170642%_))
                         (_%K170620170639%_ _%expr170647%_))
                       (_%else170618170633%_)))
                 (_%else170618170633%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%body170615170625%_)
                                                  (_%K170623170653%_)
                                                  (_%try-match170617170649%_))))))
                                       (_%body170658%_
                                        (if (null? _%bind170603%_)
                                            _%body170656%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind170603%_
                                                         (cons _%body170656%_
                                                               '())))
                                             (gx#stx-source _%stx170589%_)))))
                                  (if (null? _%decls170602%_)
                                      _%body170658%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls170602%_
                                                   (cons _%body170658%_ '())))
                                       (gx#stx-source _%stx170589%_))))))
                             (_%E170606170749%_
                              (lambda ()
                                (if (gx#stx-pair? _%e170605170612%_)
                                    (let ((_%e170608170665%_
                                           (gx#syntax-e _%e170605170612%_)))
                                      (let ((_%hd170609170668%_
                                             (##car _%e170608170665%_))
                                            (_%tl170610170670%_
                                             (##cdr _%e170608170665%_)))
                                        (let* ((_%hd170673%_
                                                _%hd170609170668%_)
                                               (_%rest170675%_
                                                _%tl170610170670%_)
                                               (_%e170676170693%_ _%hd170673%_)
                                               (_%E170688170697%_
                                                (lambda ()
                                                  (if (null? _%bind170603%_)
                                                      (_%lp170599%_
                                                       _%rest170675%_
                                                       _%decls170602%_
                                                       _%bind170603%_
                                                       (cons _%hd170673%_
                                                             _%body170604%_))
                                                      (_%lp170599%_
                                                       _%rest170675%_
                                                       _%decls170602%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd170673%_ '()))
                     _%bind170603%_)
               _%body170604%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E170678170711%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e170676170693%_)
                                                      (let ((_%e170689170701%_
                                                             (gx#syntax-e
                                                              _%e170676170693%_)))
                                                        (let ((_%hd170690170704%_
                                                               (##car _%e170689170701%_))
                                                              (_%tl170691170706%_
                                                               (##cdr _%e170689170701%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd170690170704%_)
                           (gx#core-identifier=?
                            _%hd170690170704%_
                            '%#declare))
                      (let ((_%xdecls170709%_ _%tl170691170706%_))
                        (_%lp170599%_
                         _%rest170675%_
                         (gx#stx-foldr cons _%decls170602%_ _%xdecls170709%_)
                         _%bind170603%_
                         _%body170604%_))
                      (_%E170688170697%_))))
              (_%E170688170697%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E170677170745%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e170676170693%_)
                                                      (let ((_%e170679170715%_
                                                             (gx#syntax-e
                                                              _%e170676170693%_)))
                                                        (let ((_%hd170680170718%_
                                                               (##car _%e170679170715%_))
                                                              (_%tl170681170720%_
                                                               (##cdr _%e170679170715%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd170680170718%_)
                           (gx#core-identifier=?
                            _%hd170680170718%_
                            '%#define-values))
                      (if (gx#stx-pair? _%tl170681170720%_)
                          (let ((_%e170682170723%_
                                 (gx#syntax-e _%tl170681170720%_)))
                            (let ((_%hd170683170726%_
                                   (##car _%e170682170723%_))
                                  (_%tl170684170728%_
                                   (##cdr _%e170682170723%_)))
                              (let ((_%hd-bind170731%_ _%hd170683170726%_))
                                (if (gx#stx-pair? _%tl170684170728%_)
                                    (let ((_%e170685170733%_
                                           (gx#syntax-e _%tl170684170728%_)))
                                      (let ((_%hd170686170736%_
                                             (##car _%e170685170733%_))
                                            (_%tl170687170738%_
                                             (##cdr _%e170685170733%_)))
                                        (let* ((_%expr170741%_
                                                _%hd170686170736%_)
                                               (_%ignore-props170743%_
                                                _%tl170687170738%_))
                                          (_%lp170599%_
                                           _%rest170675%_
                                           _%decls170602%_
                                           (cons (cons (gx#core-quote-bind-values
                                                        _%hd-bind170731%_)
                                                       (cons (gx#core-expand-expression
                                                              _%expr170741%_)
                                                             '()))
                                                 _%bind170603%_)
                                           _%body170604%_))))
                                    (_%E170678170711%_)))))
                          (_%E170678170711%_))
                      (_%E170678170711%_))))
              (_%E170678170711%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%E170677170745%_))))
                                    (_%E170607170661%_)))))
                        (_%E170606170749%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body170590%_)
            (gx#stx-source _%stx170589%_))
           _%expand-special170592%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx170527%_)
        (let* ((_%e170528170535%_ _%stx170527%_)
               (_%E170530170539%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e170528170535%_)))
               (_%E170529170585%_
                (lambda ()
                  (if (gx#stx-pair? _%e170528170535%_)
                      (let ((_%e170531170543%_
                             (gx#syntax-e _%e170528170535%_)))
                        (let ((_%hd170532170546%_ (##car _%e170531170543%_))
                              (_%tl170533170548%_ (##cdr _%e170531170543%_)))
                          (let ((_%body170551%_ _%tl170533170548%_))
                            (if (gx#stx-list? _%body170551%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl170553%_)
                                     (let* ((_%e170554170561%_ _%decl170553%_)
                                            (_%E170556170565%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e170554170561%_)))
                                            (_%E170555170581%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e170554170561%_)
                                                   (let ((_%e170557170569%_
                                                          (gx#syntax-e
                                                           _%e170554170561%_)))
                                                     (let ((_%hd170558170572%_
                                                            (##car _%e170557170569%_))
                                                           (_%tl170559170574%_
                                                            (##cdr _%e170557170569%_)))
                                                       (let* ((_%head170577%_
                                                               _%hd170558170572%_)
                                                              (_%args170579%_
                                                               _%tl170559170574%_))
                                                         (if (gx#stx-list?
                                                              _%args170579%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl170553%_)
                                                             (_%E170556170565%_)))))
                                                   (_%E170556170565%_)))))
                                       (_%E170555170581%_)))
                                   _%body170551%_))
                                 (gx#stx-source _%stx170527%_))
                                (_%E170530170539%_)))))
                      (_%E170530170539%_)))))
          (_%E170529170585%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx170431%_)
        (let* ((_%e170432170439%_ _%stx170431%_)
               (_%E170434170443%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e170432170439%_)))
               (_%E170433170523%_
                (lambda ()
                  (if (gx#stx-pair? _%e170432170439%_)
                      (let ((_%e170435170447%_
                             (gx#syntax-e _%e170432170439%_)))
                        (let ((_%hd170436170450%_ (##car _%e170435170447%_))
                              (_%tl170437170452%_ (##cdr _%e170435170447%_)))
                          (let ((_%body170455%_ _%tl170437170452%_))
                            (let _%lp170457%_ ((_%rest170459%_ _%body170455%_)
                                               (_%r170460%_ '()))
                              (let* ((_%e170461170475%_ _%rest170459%_)
                                     (_%E170473170479%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx170431%_)))
                                     (_%E170463170483%_
                                      (lambda ()
                                        (if (gx#stx-null? _%e170461170475%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r170460%_))
                                             (gx#stx-source _%stx170431%_))
                                            (_%E170473170479%_))))
                                     (_%E170462170519%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e170461170475%_)
                                            (let ((_%e170464170487%_
                                                   (gx#syntax-e
                                                    _%e170461170475%_)))
                                              (let ((_%hd170465170490%_
                                                     (##car _%e170464170487%_))
                                                    (_%tl170466170492%_
                                                     (##cdr _%e170464170487%_)))
                                                (if (gx#stx-pair?
                                                     _%hd170465170490%_)
                                                    (let ((_%e170467170495%_
                                                           (gx#syntax-e
                                                            _%hd170465170490%_)))
                                                      (let ((_%hd170468170498%_
                                                             (##car _%e170467170495%_))
                                                            (_%tl170469170500%_
                                                             (##cdr _%e170467170495%_)))
                                                        (let ((_%id170503%_
                                                               _%hd170468170498%_))
                                                          (if (gx#stx-pair?
                                                               _%tl170469170500%_)
                                                              (let ((_%e170470170505%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl170469170500%_)))
                        (let ((_%hd170471170508%_ (##car _%e170470170505%_))
                              (_%tl170472170510%_ (##cdr _%e170470170505%_)))
                          (let ((_%eid170513%_ _%hd170471170508%_))
                            (if (gx#stx-null? _%tl170472170510%_)
                                (let ((_%rest170515%_ _%tl170466170492%_))
                                  (if (and (gx#identifier? _%id170503%_)
                                           (gx#identifier? _%eid170513%_))
                                      (let ((_%eid170517%_
                                             (gx#stx-e _%eid170513%_)))
                                        (gx#core-bind-extern!__0
                                         _%id170503%_
                                         _%eid170517%_)
                                        (_%lp170457%_
                                         _%rest170515%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id170503%_)
                                                     (cons _%eid170517%_ '()))
                                               _%r170460%_)))
                                      (_%E170463170483%_)))
                                (_%E170463170483%_)))))
                      (_%E170463170483%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E170463170483%_))))
                                            (_%E170463170483%_)))))
                                (_%E170462170519%_))))))
                      (_%E170434170443%_)))))
          (_%E170433170523%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx170320%_)
        (let* ((_%e170321170347%_ _%stx170320%_)
               (_%E170336170351%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e170321170347%_)))
               (_%E170323170383%_
                (lambda ()
                  (if (gx#stx-pair? _%e170321170347%_)
                      (let ((_%e170337170355%_
                             (gx#syntax-e _%e170321170347%_)))
                        (let ((_%hd170338170358%_ (##car _%e170337170355%_))
                              (_%tl170339170360%_ (##cdr _%e170337170355%_)))
                          (if (gx#stx-pair? _%tl170339170360%_)
                              (let ((_%e170340170363%_
                                     (gx#syntax-e _%tl170339170360%_)))
                                (let ((_%hd170341170366%_
                                       (##car _%e170340170363%_))
                                      (_%tl170342170368%_
                                       (##cdr _%e170340170363%_)))
                                  (let ((_%hd170371%_ _%hd170341170366%_))
                                    (if (gx#stx-pair? _%tl170342170368%_)
                                        (let ((_%e170343170373%_
                                               (gx#syntax-e
                                                _%tl170342170368%_)))
                                          (let ((_%hd170344170376%_
                                                 (##car _%e170343170373%_))
                                                (_%tl170345170378%_
                                                 (##cdr _%e170343170373%_)))
                                            (let ((_%expr170381%_
                                                   _%hd170344170376%_))
                                              (if (gx#stx-null?
                                                   _%tl170345170378%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd170371%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd170371%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd170371%_)
                             (cons (gx#core-expand-expression _%expr170381%_)
                                   '())))
                 (gx#stx-source _%stx170320%_)))
              (_%E170336170351%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E170336170351%_)))))
                                        (_%E170336170351%_)))))
                              (_%E170336170351%_))))
                      (_%E170336170351%_))))
               (_%E170322170427%_
                (lambda ()
                  (if (gx#stx-pair? _%e170321170347%_)
                      (let ((_%e170324170387%_
                             (gx#syntax-e _%e170321170347%_)))
                        (let ((_%hd170325170390%_ (##car _%e170324170387%_))
                              (_%tl170326170392%_ (##cdr _%e170324170387%_)))
                          (if (gx#stx-pair? _%tl170326170392%_)
                              (let ((_%e170327170395%_
                                     (gx#syntax-e _%tl170326170392%_)))
                                (let ((_%hd170328170398%_
                                       (##car _%e170327170395%_))
                                      (_%tl170329170400%_
                                       (##cdr _%e170327170395%_)))
                                  (if (gx#stx-pair? _%hd170328170398%_)
                                      (let ((_%e170333170403%_
                                             (gx#syntax-e _%hd170328170398%_)))
                                        (let ((_%hd170334170406%_
                                               (##car _%e170333170403%_))
                                              (_%tl170335170408%_
                                               (##cdr _%e170333170403%_)))
                                          (let ((_%id170411%_
                                                 _%hd170334170406%_))
                                            (if (gx#stx-null?
                                                 _%tl170335170408%_)
                                                (if (gx#stx-pair?
                                                     _%tl170329170400%_)
                                                    (let ((_%e170330170413%_
                                                           (gx#syntax-e
                                                            _%tl170329170400%_)))
                                                      (let ((_%hd170331170416%_
                                                             (##car _%e170330170413%_))
                                                            (_%tl170332170418%_
                                                             (##cdr _%e170330170413%_)))
                                                        (let* ((_%expr170421%_
                                                                _%hd170331170416%_)
                                                               (_%props170423%_
                                                                _%tl170332170418%_))
                                                          (if (gx#identifier?
                                                               _%id170411%_)
                                                              (let ((_%bind170425%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#core-bind-runtime!__0 _%id170411%_)))
                        (gx#core-bind-runtime-properties!
                         _%bind170425%_
                         _%props170423%_)
                        (gx#core-quote-syntax__1
                         (cons (gx#core-quote-syntax__0 '%#define-values)
                               (cons (gx#core-quote-bind-values
                                      (cons _%id170411%_ '()))
                                     (cons (gx#core-expand-expression
                                            _%expr170421%_)
                                           '())))
                         (gx#stx-source _%stx170320%_)))
                      (_%E170323170383%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E170323170383%_))
                                                (_%E170323170383%_)))))
                                      (_%E170323170383%_))))
                              (_%E170323170383%_))))
                      (_%E170323170383%_)))))
          (_%E170322170427%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx170259%_)
        (let* ((_%e170260170273%_ _%stx170259%_)
               (_%E170262170277%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e170260170273%_)))
               (_%E170261170316%_
                (lambda ()
                  (if (gx#stx-pair? _%e170260170273%_)
                      (let ((_%e170263170281%_
                             (gx#syntax-e _%e170260170273%_)))
                        (let ((_%hd170264170284%_ (##car _%e170263170281%_))
                              (_%tl170265170286%_ (##cdr _%e170263170281%_)))
                          (if (gx#stx-pair? _%tl170265170286%_)
                              (let ((_%e170266170289%_
                                     (gx#syntax-e _%tl170265170286%_)))
                                (let ((_%hd170267170292%_
                                       (##car _%e170266170289%_))
                                      (_%tl170268170294%_
                                       (##cdr _%e170266170289%_)))
                                  (let ((_%id170297%_ _%hd170267170292%_))
                                    (if (gx#stx-pair? _%tl170268170294%_)
                                        (let ((_%e170269170299%_
                                               (gx#syntax-e
                                                _%tl170268170294%_)))
                                          (let ((_%hd170270170302%_
                                                 (##car _%e170269170299%_))
                                                (_%tl170271170304%_
                                                 (##cdr _%e170269170299%_)))
                                            (let* ((_%binding-id170307%_
                                                    _%hd170270170302%_)
                                                   (_%props170309%_
                                                    _%tl170271170304%_))
                                              (if (and (gx#identifier?
                                                        _%id170297%_)
                                                       (gx#identifier?
                                                        _%binding-id170307%_)
                                                       (gx#stx-list?
                                                        _%props170309%_))
                                                  (let* ((_%eid170311%_
                                                          (gx#stx-e
                                                           _%binding-id170307%_))
                                                         (_%bind170313%_
                                                          (gx#core-bind-runtime-reference!__0
                                                           _%id170297%_
                                                           _%eid170311%_)))
                                                    (gx#core-bind-runtime-properties!
                                                     _%bind170313%_
                                                     _%props170309%_)
                                                    (gx#core-quote-syntax__0
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#define-runtime)
                                                           (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id170297%_)
                         (cons _%eid170311%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E170262170277%_)))))
                                        (_%E170262170277%_)))))
                              (_%E170262170277%_))))
                      (_%E170262170277%_)))))
          (_%E170261170316%_))))
    (define gx#core-bind-runtime-properties!
      (lambda (_%bind170194%_ _%props170195%_)
        (letrec ((_%eval-prop170197%_
                  (lambda (_%prop170257%_)
                    (gx#eval-expression+1 _%prop170257%_))))
          (let _%loop170199%_ ((_%rest170201%_ _%props170195%_)
                               (_%props170202%_ '()))
            (let* ((_%e170203170214%_ _%rest170201%_)
                   (_%E170212170218%_
                    (lambda ()
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e170203170214%_)))
                   (_%E170205170222%_
                    (lambda ()
                      (if (gx#stx-null? _%e170203170214%_)
                          (if (null? _%props170202%_)
                              '#!void
                              (##structure-set!
                               _%bind170194%_
                               (reverse! _%props170202%_)
                               '4
                               gx#binding::t
                               '#f))
                          (_%E170212170218%_))))
                   (_%E170204170253%_
                    (lambda ()
                      (if (gx#stx-pair? _%e170203170214%_)
                          (let ((_%e170206170226%_
                                 (gx#syntax-e _%e170203170214%_)))
                            (let ((_%hd170207170229%_
                                   (##car _%e170206170226%_))
                                  (_%tl170208170231%_
                                   (##cdr _%e170206170226%_)))
                              (let ((_%key170234%_ _%hd170207170229%_))
                                (if (gx#stx-pair? _%tl170208170231%_)
                                    (let ((_%e170209170236%_
                                           (gx#syntax-e _%tl170208170231%_)))
                                      (let ((_%hd170210170239%_
                                             (##car _%e170209170236%_))
                                            (_%tl170211170241%_
                                             (##cdr _%e170209170236%_)))
                                        (let* ((_%prop170244%_
                                                _%hd170210170239%_)
                                               (_%rest170246%_
                                                _%tl170211170241%_))
                                          (if (gx#stx-keyword? _%key170234%_)
                                              (let* ((_%key170248%_
                                                      (gx#stx-e _%key170234%_))
                                                     (_%$e170250%_
                                                      _%key170248%_))
                                                (if (eq? 'macro: _%$e170250%_)
                                                    (begin
                                                      (##structure-set!
                                                       _%bind170194%_
                                                       (if (gx#identifier?
                                                            _%prop170244%_)
                                                           (gx#core-quote-syntax__0
                                                            _%prop170244%_)
                                                           (gx#eval-expression+1
                                                            _%prop170244%_))
                                                       '6
                                                       gx#runtime-binding::t
                                                       '#f)
                                                      (_%loop170199%_
                                                       _%rest170246%_
                                                       _%props170202%_))
                                                    (if (eq? 'type:
                                                             _%$e170250%_)
                                                        (begin
                                                          (##structure-set!
                                                           _%bind170194%_
                                                           (gx#eval-expression+1
                                                            _%prop170244%_)
                                                           '5
                                                           gx#runtime-binding::t
                                                           '#f)
                                                          (_%loop170199%_
                                                           _%rest170246%_
                                                           _%props170202%_))
                                                        (_%loop170199%_
                                                         _%rest170246%_
                                                         (cons (gx#eval-expression+1
                                                                _%prop170244%_)
                                                               (cons _%key170248%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%props170202%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E170205170222%_)))))
                                    (_%E170205170222%_)))))
                          (_%E170205170222%_)))))
              (_%E170204170253%_))))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx170137%_)
        (let* ((_%e170138170151%_ _%stx170137%_)
               (_%E170140170155%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e170138170151%_)))
               (_%E170139170190%_
                (lambda ()
                  (if (gx#stx-pair? _%e170138170151%_)
                      (let ((_%e170141170159%_
                             (gx#syntax-e _%e170138170151%_)))
                        (let ((_%hd170142170162%_ (##car _%e170141170159%_))
                              (_%tl170143170164%_ (##cdr _%e170141170159%_)))
                          (if (gx#stx-pair? _%tl170143170164%_)
                              (let ((_%e170144170167%_
                                     (gx#syntax-e _%tl170143170164%_)))
                                (let ((_%hd170145170170%_
                                       (##car _%e170144170167%_))
                                      (_%tl170146170172%_
                                       (##cdr _%e170144170167%_)))
                                  (let ((_%id170175%_ _%hd170145170170%_))
                                    (if (gx#stx-pair? _%tl170146170172%_)
                                        (let ((_%e170147170177%_
                                               (gx#syntax-e
                                                _%tl170146170172%_)))
                                          (let ((_%hd170148170180%_
                                                 (##car _%e170147170177%_))
                                                (_%tl170149170182%_
                                                 (##cdr _%e170147170177%_)))
                                            (let ((_%expr170185%_
                                                   _%hd170148170180%_))
                                              (if (gx#stx-null?
                                                   _%tl170149170182%_)
                                                  (if (gx#identifier?
                                                       _%id170175%_)
                                                      (let ((_g171351_
                                                             (gx#core-expand-expression+1
                                                              _%expr170185%_)))
                                                        (begin
                                                          (let ((_g171352_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g171351_)
                             (##values-length _g171351_)
                             1)))
                    (if (not (##fx= _g171352_ 2))
                        (error "Context expects 2 values" _g171352_)))
                  (let ((_%e-stx170187%_ (##values-ref _g171351_ 0))
                        (_%e170188%_ (##values-ref _g171351_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id170175%_ _%e170188%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id170175%_)
                                   (cons _%e-stx170187%_ '())))
                       (gx#stx-source _%stx170137%_))))))
              (_%E170140170155%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E170140170155%_)))))
                                        (_%E170140170155%_)))))
                              (_%E170140170155%_))))
                      (_%E170140170155%_)))))
          (_%E170139170190%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx170081%_)
        (let* ((_%e170082170095%_ _%stx170081%_)
               (_%E170084170099%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e170082170095%_)))
               (_%E170083170133%_
                (lambda ()
                  (if (gx#stx-pair? _%e170082170095%_)
                      (let ((_%e170085170103%_
                             (gx#syntax-e _%e170082170095%_)))
                        (let ((_%hd170086170106%_ (##car _%e170085170103%_))
                              (_%tl170087170108%_ (##cdr _%e170085170103%_)))
                          (if (gx#stx-pair? _%tl170087170108%_)
                              (let ((_%e170088170111%_
                                     (gx#syntax-e _%tl170087170108%_)))
                                (let ((_%hd170089170114%_
                                       (##car _%e170088170111%_))
                                      (_%tl170090170116%_
                                       (##cdr _%e170088170111%_)))
                                  (let ((_%id170119%_ _%hd170089170114%_))
                                    (if (gx#stx-pair? _%tl170090170116%_)
                                        (let ((_%e170091170121%_
                                               (gx#syntax-e
                                                _%tl170090170116%_)))
                                          (let ((_%hd170092170124%_
                                                 (##car _%e170091170121%_))
                                                (_%tl170093170126%_
                                                 (##cdr _%e170091170121%_)))
                                            (let ((_%alias-id170129%_
                                                   _%hd170092170124%_))
                                              (if (gx#stx-null?
                                                   _%tl170093170126%_)
                                                  (if (and (gx#identifier?
                                                            _%id170119%_)
                                                           (gx#identifier?
                                                            _%alias-id170129%_))
                                                      (let ((_%alias-id170131%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id170129%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id170119%_
                                                         _%alias-id170131%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id170119%_)
                             (cons _%alias-id170131%_ '())))))
              (_%E170084170099%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E170084170099%_)))))
                                        (_%E170084170099%_)))))
                              (_%E170084170099%_))))
                      (_%E170084170099%_)))))
          (_%E170083170133%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx170024%_ _%wrap?170025%_)
        (let* ((_%e170026170036%_ _%stx170024%_)
               (_%E170028170040%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e170026170036%_)))
               (_%E170027170067%_
                (lambda ()
                  (if (gx#stx-pair? _%e170026170036%_)
                      (let ((_%e170029170044%_
                             (gx#syntax-e _%e170026170036%_)))
                        (let ((_%hd170030170047%_ (##car _%e170029170044%_))
                              (_%tl170031170049%_ (##cdr _%e170029170044%_)))
                          (if (gx#stx-pair? _%tl170031170049%_)
                              (let ((_%e170032170052%_
                                     (gx#syntax-e _%tl170031170049%_)))
                                (let ((_%hd170033170055%_
                                       (##car _%e170032170052%_))
                                      (_%tl170034170057%_
                                       (##cdr _%e170032170052%_)))
                                  (let* ((_%hd170060%_ _%hd170033170055%_)
                                         (_%body170062%_ _%tl170034170057%_))
                                    (if (gx#core-bind-values? _%hd170060%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd170060%_)
                                           (let ((_%body170065%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd170060%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx170024%_
                                                               _%body170062%_)
                                                              '()))))
                                             (if _%wrap?170025%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body170065%_)
                                                  (gx#stx-source
                                                   _%stx170024%_))
                                                 _%body170065%_)))
                                         gx#current-expander-context
                                         (let ((__obj171334
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj171334)
                                           __obj171334))
                                        (_%E170028170040%_)))))
                              (_%E170028170040%_))))
                      (_%E170028170040%_)))))
          (_%E170027170067%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx170074%_)
        (let ((_%wrap?170076%_ '#t))
          (gx#core-expand-lambda%__% _%stx170074%_ _%wrap?170076%_))))
    (define gx#core-expand-lambda%
      (lambda _g171353_
        (let ((_g171354_ (##length _g171353_)))
          (cond ((##fx= _g171354_ 1)
                 (apply gx#core-expand-lambda%__0 _g171353_))
                ((##fx= _g171354_ 2)
                 (apply gx#core-expand-lambda%__% _g171353_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g171353_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx169988%_)
        (let* ((_%e169989169996%_ _%stx169988%_)
               (_%E169991170000%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e169989169996%_)))
               (_%E169990170019%_
                (lambda ()
                  (if (gx#stx-pair? _%e169989169996%_)
                      (let ((_%e169992170004%_
                             (gx#syntax-e _%e169989169996%_)))
                        (let ((_%hd169993170007%_ (##car _%e169992170004%_))
                              (_%tl169994170009%_ (##cdr _%e169992170004%_)))
                          (let ((_%clauses170012%_ _%tl169994170009%_))
                            (if (gx#stx-list? _%clauses170012%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause170014%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause170014%_)
                                       (let ((_%$e170016%_
                                              (gx#stx-source
                                               _%clause170014%_)))
                                         (if _%$e170016%_
                                             _%$e170016%_
                                             (gx#stx-source _%stx169988%_))))
                                      '#f))
                                   _%clauses170012%_))
                                 (gx#stx-source _%stx169988%_))
                                (_%E169991170000%_)))))
                      (_%E169991170000%_)))))
          (_%E169990170019%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx169942%_)
        (let* ((_%e169943169953%_ _%stx169942%_)
               (_%E169945169957%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e169943169953%_)))
               (_%E169944169984%_
                (lambda ()
                  (if (gx#stx-pair? _%e169943169953%_)
                      (let ((_%e169946169961%_
                             (gx#syntax-e _%e169943169953%_)))
                        (let ((_%hd169947169964%_ (##car _%e169946169961%_))
                              (_%tl169948169966%_ (##cdr _%e169946169961%_)))
                          (if (gx#stx-pair? _%tl169948169966%_)
                              (let ((_%e169949169969%_
                                     (gx#syntax-e _%tl169948169966%_)))
                                (let ((_%hd169950169972%_
                                       (##car _%e169949169969%_))
                                      (_%tl169951169974%_
                                       (##cdr _%e169949169969%_)))
                                  (let* ((_%hd169977%_ _%hd169950169972%_)
                                         (_%body169979%_ _%tl169951169974%_))
                                    (if (gx#core-expand-let-bind? _%hd169977%_)
                                        (let ((_%expressions169981%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd169977%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd169977%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd169977%_
                                                           _%expressions169981%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx169942%_
                         _%body169979%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx169942%_)))
                                           gx#current-expander-context
                                           (let ((__obj171335
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj171335)
                                             __obj171335)))
                                        (_%E169945169957%_)))))
                              (_%E169945169957%_))))
                      (_%E169945169957%_)))))
          (_%E169944169984%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx169887%_ _%form169888%_)
        (let* ((_%e169889169899%_ _%stx169887%_)
               (_%E169891169903%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e169889169899%_)))
               (_%E169890169928%_
                (lambda ()
                  (if (gx#stx-pair? _%e169889169899%_)
                      (let ((_%e169892169907%_
                             (gx#syntax-e _%e169889169899%_)))
                        (let ((_%hd169893169910%_ (##car _%e169892169907%_))
                              (_%tl169894169912%_ (##cdr _%e169892169907%_)))
                          (if (gx#stx-pair? _%tl169894169912%_)
                              (let ((_%e169895169915%_
                                     (gx#syntax-e _%tl169894169912%_)))
                                (let ((_%hd169896169918%_
                                       (##car _%e169895169915%_))
                                      (_%tl169897169920%_
                                       (##cdr _%e169895169915%_)))
                                  (let* ((_%hd169923%_ _%hd169896169918%_)
                                         (_%body169925%_ _%tl169897169920%_))
                                    (if (gx#core-expand-let-bind? _%hd169923%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd169923%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form169888%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd169923%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd169923%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx169887%_
                                                               _%body169925%_)
                                                              '())))
                                            (gx#stx-source _%stx169887%_)))
                                         gx#current-expander-context
                                         (let ((__obj171336
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj171336)
                                           __obj171336))
                                        (_%E169891169903%_)))))
                              (_%E169891169903%_))))
                      (_%E169891169903%_)))))
          (_%E169890169928%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx169935%_)
        (let ((_%form169937%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx169935%_ _%form169937%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g171355_
        (let ((_g171356_ (##length _g171355_)))
          (cond ((##fx= _g171356_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g171355_))
                ((##fx= _g171356_ 2)
                 (apply gx#core-expand-letrec-values%__% _g171355_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g171355_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx169884%_)
        (gx#core-expand-letrec-values%__% _%stx169884%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx169841%_)
        (if (gx#stx-list? _%stx169841%_)
            (gx#stx-andmap
             (lambda (_%bind169843%_)
               (let* ((_%e169844169854%_ _%bind169843%_)
                      (_%E169846169858%_ (lambda () '#f))
                      (_%E169845169880%_
                       (lambda ()
                         (if (gx#stx-pair? _%e169844169854%_)
                             (let ((_%e169847169862%_
                                    (gx#syntax-e _%e169844169854%_)))
                               (let ((_%hd169848169865%_
                                      (##car _%e169847169862%_))
                                     (_%tl169849169867%_
                                      (##cdr _%e169847169862%_)))
                                 (let ((_%hd169870%_ _%hd169848169865%_))
                                   (if (gx#stx-pair? _%tl169849169867%_)
                                       (let ((_%e169850169872%_
                                              (gx#syntax-e
                                               _%tl169849169867%_)))
                                         (let ((_%hd169851169875%_
                                                (##car _%e169850169872%_))
                                               (_%tl169852169877%_
                                                (##cdr _%e169850169872%_)))
                                           (if (gx#stx-null?
                                                _%tl169852169877%_)
                                               (gx#core-bind-values?
                                                _%hd169870%_)
                                               (_%E169846169858%_))))
                                       (_%E169846169858%_)))))
                             (_%E169846169858%_)))))
                 (_%E169845169880%_)))
             _%stx169841%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind169800%_)
        (let* ((_%e169801169811%_ _%bind169800%_)
               (_%E169803169815%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e169801169811%_)))
               (_%E169802169837%_
                (lambda ()
                  (if (gx#stx-pair? _%e169801169811%_)
                      (let ((_%e169804169819%_
                             (gx#syntax-e _%e169801169811%_)))
                        (let ((_%hd169805169822%_ (##car _%e169804169819%_))
                              (_%tl169806169824%_ (##cdr _%e169804169819%_)))
                          (if (gx#stx-pair? _%tl169806169824%_)
                              (let ((_%e169807169827%_
                                     (gx#syntax-e _%tl169806169824%_)))
                                (let ((_%hd169808169830%_
                                       (##car _%e169807169827%_))
                                      (_%tl169809169832%_
                                       (##cdr _%e169807169827%_)))
                                  (let ((_%expr169835%_ _%hd169808169830%_))
                                    (if (gx#stx-null? _%tl169809169832%_)
                                        (gx#core-expand-expression
                                         _%expr169835%_)
                                        (_%E169803169815%_)))))
                              (_%E169803169815%_))))
                      (_%E169803169815%_)))))
          (_%E169802169837%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind169759%_)
        (let* ((_%e169760169770%_ _%bind169759%_)
               (_%E169762169774%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e169760169770%_)))
               (_%E169761169796%_
                (lambda ()
                  (if (gx#stx-pair? _%e169760169770%_)
                      (let ((_%e169763169778%_
                             (gx#syntax-e _%e169760169770%_)))
                        (let ((_%hd169764169781%_ (##car _%e169763169778%_))
                              (_%tl169765169783%_ (##cdr _%e169763169778%_)))
                          (let ((_%hd169786%_ _%hd169764169781%_))
                            (if (gx#stx-pair? _%tl169765169783%_)
                                (let ((_%e169766169788%_
                                       (gx#syntax-e _%tl169765169783%_)))
                                  (let ((_%hd169767169791%_
                                         (##car _%e169766169788%_))
                                        (_%tl169768169793%_
                                         (##cdr _%e169766169788%_)))
                                    (if (gx#stx-null? _%tl169768169793%_)
                                        (gx#core-bind-values!__0 _%hd169786%_)
                                        (_%E169762169774%_))))
                                (_%E169762169774%_)))))
                      (_%E169762169774%_)))))
          (_%E169761169796%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind169717%_ _%expr169718%_)
        (let* ((_%e169719169729%_ _%bind169717%_)
               (_%E169721169733%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e169719169729%_)))
               (_%E169720169755%_
                (lambda ()
                  (if (gx#stx-pair? _%e169719169729%_)
                      (let ((_%e169722169737%_
                             (gx#syntax-e _%e169719169729%_)))
                        (let ((_%hd169723169740%_ (##car _%e169722169737%_))
                              (_%tl169724169742%_ (##cdr _%e169722169737%_)))
                          (let ((_%hd169745%_ _%hd169723169740%_))
                            (if (gx#stx-pair? _%tl169724169742%_)
                                (let ((_%e169725169747%_
                                       (gx#syntax-e _%tl169724169742%_)))
                                  (let ((_%hd169726169750%_
                                         (##car _%e169725169747%_))
                                        (_%tl169727169752%_
                                         (##cdr _%e169725169747%_)))
                                    (if (gx#stx-null? _%tl169727169752%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd169745%_)
                                              (cons _%expr169718%_ '()))
                                        (_%E169721169733%_))))
                                (_%E169721169733%_)))))
                      (_%E169721169733%_)))))
          (_%E169720169755%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx169671%_)
        (let* ((_%e169672169682%_ _%stx169671%_)
               (_%E169674169686%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e169672169682%_)))
               (_%E169673169713%_
                (lambda ()
                  (if (gx#stx-pair? _%e169672169682%_)
                      (let ((_%e169675169690%_
                             (gx#syntax-e _%e169672169682%_)))
                        (let ((_%hd169676169693%_ (##car _%e169675169690%_))
                              (_%tl169677169695%_ (##cdr _%e169675169690%_)))
                          (if (gx#stx-pair? _%tl169677169695%_)
                              (let ((_%e169678169698%_
                                     (gx#syntax-e _%tl169677169695%_)))
                                (let ((_%hd169679169701%_
                                       (##car _%e169678169698%_))
                                      (_%tl169680169703%_
                                       (##cdr _%e169678169698%_)))
                                  (let* ((_%hd169706%_ _%hd169679169701%_)
                                         (_%body169708%_ _%tl169680169703%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd169706%_)
                                        (let ((_%expanders169710%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd169706%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd169706%_
                                              _%expanders169710%_)
                                             (gx#core-expand-local-block
                                              _%stx169671%_
                                              _%body169708%_))
                                           gx#current-expander-context
                                           (let ((__obj171337
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj171337)
                                             __obj171337)))
                                        (_%E169674169686%_)))))
                              (_%E169674169686%_))))
                      (_%E169674169686%_)))))
          (_%E169673169713%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx169620%_)
        (let* ((_%e169621169631%_ _%stx169620%_)
               (_%E169623169635%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e169621169631%_)))
               (_%E169622169667%_
                (lambda ()
                  (if (gx#stx-pair? _%e169621169631%_)
                      (let ((_%e169624169639%_
                             (gx#syntax-e _%e169621169631%_)))
                        (let ((_%hd169625169642%_ (##car _%e169624169639%_))
                              (_%tl169626169644%_ (##cdr _%e169624169639%_)))
                          (if (gx#stx-pair? _%tl169626169644%_)
                              (let ((_%e169627169647%_
                                     (gx#syntax-e _%tl169626169644%_)))
                                (let ((_%hd169628169650%_
                                       (##car _%e169627169647%_))
                                      (_%tl169629169652%_
                                       (##cdr _%e169627169647%_)))
                                  (let* ((_%hd169655%_ _%hd169628169650%_)
                                         (_%body169657%_ _%tl169629169652%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd169655%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd169655%_
                                            (make-list
                                             (gx#stx-length _%hd169655%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g169659169662%_
                                                     _%g169660169664%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g169659169662%_
                                               _%g169660169664%_
                                               '#t))
                                            _%hd169655%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd169655%_))
                                           (gx#core-expand-local-block
                                            _%stx169620%_
                                            _%body169657%_))
                                         gx#current-expander-context
                                         (let ((__obj171338
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj171338)
                                           __obj171338))
                                        (_%E169623169635%_)))))
                              (_%E169623169635%_))))
                      (_%E169623169635%_)))))
          (_%E169622169667%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx169577%_)
        (if (gx#stx-list? _%stx169577%_)
            (gx#stx-andmap
             (lambda (_%bind169579%_)
               (let* ((_%e169580169590%_ _%bind169579%_)
                      (_%E169582169594%_ (lambda () '#f))
                      (_%E169581169616%_
                       (lambda ()
                         (if (gx#stx-pair? _%e169580169590%_)
                             (let ((_%e169583169598%_
                                    (gx#syntax-e _%e169580169590%_)))
                               (let ((_%hd169584169601%_
                                      (##car _%e169583169598%_))
                                     (_%tl169585169603%_
                                      (##cdr _%e169583169598%_)))
                                 (let ((_%hd169606%_ _%hd169584169601%_))
                                   (if (gx#stx-pair? _%tl169585169603%_)
                                       (let ((_%e169586169608%_
                                              (gx#syntax-e
                                               _%tl169585169603%_)))
                                         (let ((_%hd169587169611%_
                                                (##car _%e169586169608%_))
                                               (_%tl169588169613%_
                                                (##cdr _%e169586169608%_)))
                                           (if (gx#stx-null?
                                                _%tl169588169613%_)
                                               (gx#identifier? _%hd169606%_)
                                               (_%E169582169594%_))))
                                       (_%E169582169594%_)))))
                             (_%E169582169594%_)))))
                 (_%E169581169616%_)))
             _%stx169577%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind169533%_)
        (let* ((_%e169534169544%_ _%bind169533%_)
               (_%E169536169548%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e169534169544%_)))
               (_%E169535169573%_
                (lambda ()
                  (if (gx#stx-pair? _%e169534169544%_)
                      (let ((_%e169537169552%_
                             (gx#syntax-e _%e169534169544%_)))
                        (let ((_%hd169538169555%_ (##car _%e169537169552%_))
                              (_%tl169539169557%_ (##cdr _%e169537169552%_)))
                          (if (gx#stx-pair? _%tl169539169557%_)
                              (let ((_%e169540169560%_
                                     (gx#syntax-e _%tl169539169557%_)))
                                (let ((_%hd169541169563%_
                                       (##car _%e169540169560%_))
                                      (_%tl169542169565%_
                                       (##cdr _%e169540169560%_)))
                                  (let ((_%expr169568%_ _%hd169541169563%_))
                                    (if (gx#stx-null? _%tl169542169565%_)
                                        (let ((_g171357_
                                               (gx#core-expand-expression+1
                                                _%expr169568%_)))
                                          (begin
                                            (let ((_g171358_
                                                   (if (##values? _g171357_)
                                                       (##values-length
                                                        _g171357_)
                                                       1)))
                                              (if (not (##fx= _g171358_ 2))
                                                  (error "Context expects 2 values"
                                                         _g171358_)))
                                            (let ((_%_169570%_
                                                   (##values-ref _g171357_ 0))
                                                  (_%e169571%_
                                                   (##values-ref _g171357_ 1)))
                                              _%e169571%_)))
                                        (_%E169536169548%_)))))
                              (_%E169536169548%_))))
                      (_%E169536169548%_)))))
          (_%E169535169573%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind169478%_ _%e169479%_ _%rebind?169480%_)
        (let* ((_%e169481169491%_ _%bind169478%_)
               (_%E169483169495%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e169481169491%_)))
               (_%E169482169517%_
                (lambda ()
                  (if (gx#stx-pair? _%e169481169491%_)
                      (let ((_%e169484169499%_
                             (gx#syntax-e _%e169481169491%_)))
                        (let ((_%hd169485169502%_ (##car _%e169484169499%_))
                              (_%tl169486169504%_ (##cdr _%e169484169499%_)))
                          (let ((_%id169507%_ _%hd169485169502%_))
                            (if (gx#stx-pair? _%tl169486169504%_)
                                (let ((_%e169487169509%_
                                       (gx#syntax-e _%tl169486169504%_)))
                                  (let ((_%hd169488169512%_
                                         (##car _%e169487169509%_))
                                        (_%tl169489169514%_
                                         (##cdr _%e169487169509%_)))
                                    (if (gx#stx-null? _%tl169489169514%_)
                                        (gx#core-bind-syntax!__1
                                         _%id169507%_
                                         _%e169479%_
                                         _%rebind?169480%_)
                                        (_%E169483169495%_))))
                                (_%E169483169495%_)))))
                      (_%E169483169495%_)))))
          (_%E169482169517%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind169524%_ _%e169525%_)
        (let ((_%rebind?169527%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind169524%_
           _%e169525%_
           _%rebind?169527%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g171359_
        (let ((_g171360_ (##length _g171359_)))
          (cond ((##fx= _g171360_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g171359_))
                ((##fx= _g171360_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g171359_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g171359_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx169436%_)
        (let* ((_%e169437169447%_ _%stx169436%_)
               (_%E169439169451%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e169437169447%_)))
               (_%E169438169473%_
                (lambda ()
                  (if (gx#stx-pair? _%e169437169447%_)
                      (let ((_%e169440169455%_
                             (gx#syntax-e _%e169437169447%_)))
                        (let ((_%hd169441169458%_ (##car _%e169440169455%_))
                              (_%tl169442169460%_ (##cdr _%e169440169455%_)))
                          (if (gx#stx-pair? _%tl169442169460%_)
                              (let ((_%e169443169463%_
                                     (gx#syntax-e _%tl169442169460%_)))
                                (let ((_%hd169444169466%_
                                       (##car _%e169443169463%_))
                                      (_%tl169445169468%_
                                       (##cdr _%e169443169463%_)))
                                  (let ((_%expr169471%_ _%hd169444169466%_))
                                    (if (gx#stx-null? _%tl169445169468%_)
                                        (gx#core-expand-expression
                                         _%expr169471%_)
                                        (_%E169439169451%_)))))
                              (_%E169439169451%_))))
                      (_%E169439169451%_)))))
          (_%E169438169473%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx169395%_)
        (let* ((_%e169396169406%_ _%stx169395%_)
               (_%E169398169410%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e169396169406%_)))
               (_%E169397169432%_
                (lambda ()
                  (if (gx#stx-pair? _%e169396169406%_)
                      (let ((_%e169399169414%_
                             (gx#syntax-e _%e169396169406%_)))
                        (let ((_%hd169400169417%_ (##car _%e169399169414%_))
                              (_%tl169401169419%_ (##cdr _%e169399169414%_)))
                          (if (gx#stx-pair? _%tl169401169419%_)
                              (let ((_%e169402169422%_
                                     (gx#syntax-e _%tl169401169419%_)))
                                (let ((_%hd169403169425%_
                                       (##car _%e169402169422%_))
                                      (_%tl169404169427%_
                                       (##cdr _%e169402169422%_)))
                                  (let ((_%e169430%_ _%hd169403169425%_))
                                    (if (gx#stx-null? _%tl169404169427%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e169430%_)
                                                     '()))
                                         (gx#stx-source _%stx169395%_))
                                        (_%E169398169410%_)))))
                              (_%E169398169410%_))))
                      (_%E169398169410%_)))))
          (_%E169397169432%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx169354%_)
        (let* ((_%e169355169365%_ _%stx169354%_)
               (_%E169357169369%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e169355169365%_)))
               (_%E169356169391%_
                (lambda ()
                  (if (gx#stx-pair? _%e169355169365%_)
                      (let ((_%e169358169373%_
                             (gx#syntax-e _%e169355169365%_)))
                        (let ((_%hd169359169376%_ (##car _%e169358169373%_))
                              (_%tl169360169378%_ (##cdr _%e169358169373%_)))
                          (if (gx#stx-pair? _%tl169360169378%_)
                              (let ((_%e169361169381%_
                                     (gx#syntax-e _%tl169360169378%_)))
                                (let ((_%hd169362169384%_
                                       (##car _%e169361169381%_))
                                      (_%tl169363169386%_
                                       (##cdr _%e169361169381%_)))
                                  (let ((_%e169389%_ _%hd169362169384%_))
                                    (if (gx#stx-null? _%tl169363169386%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e169389%_)
                                                     '()))
                                         (gx#stx-source _%stx169354%_))
                                        (_%E169357169369%_)))))
                              (_%E169357169369%_))))
                      (_%E169357169369%_)))))
          (_%E169356169391%_))))
    (define gx#core-expand-call%
      (lambda (_%stx169248%_)
        (letrec ((_%expand-runtime-call169250%_
                  (lambda (_%rator-expr169351%_ _%args169352%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons*
                      '%#call
                      _%rator-expr169351%_
                      (gx#stx-map1 gx#core-expand-expression _%args169352%_))
                     (gx#stx-source _%stx169248%_)))))
          (let* ((_%e169251169261%_ _%stx169248%_)
                 (_%E169253169265%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e169251169261%_)))
                 (_%E169252169347%_
                  (lambda ()
                    (if (gx#stx-pair? _%e169251169261%_)
                        (let ((_%e169254169269%_
                               (gx#syntax-e _%e169251169261%_)))
                          (let ((_%hd169255169272%_ (##car _%e169254169269%_))
                                (_%tl169256169274%_ (##cdr _%e169254169269%_)))
                            (if (gx#stx-pair? _%tl169256169274%_)
                                (let ((_%e169257169277%_
                                       (gx#syntax-e _%tl169256169274%_)))
                                  (let ((_%hd169258169280%_
                                         (##car _%e169257169277%_))
                                        (_%tl169259169282%_
                                         (##cdr _%e169257169277%_)))
                                    (let* ((_%rator169285%_ _%hd169258169280%_)
                                           (_%args169287%_ _%tl169259169282%_))
                                      (if (gx#stx-list? _%args169287%_)
                                          (let* ((_%rator-expr169289%_
                                                  (gx#core-expand-expression
                                                   _%rator169285%_))
                                                 (_%e169290169300%_
                                                  _%rator-expr169289%_)
                                                 (_%E169292169304%_
                                                  (lambda ()
                                                    (_%expand-runtime-call169250%_
                                                     _%rator-expr169289%_
                                                     _%args169287%_)))
                                                 (_%E169291169343%_
                                                  (lambda ()
                                                    (if (gx#stx-pair?
                                                         _%e169290169300%_)
                                                        (let ((_%e169293169308%_
                                                               (gx#syntax-e
                                                                _%e169290169300%_)))
                                                          (let ((_%hd169294169311%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e169293169308%_))
                        (_%tl169295169313%_ (##cdr _%e169293169308%_)))
                    (if (and (gx#identifier? _%hd169294169311%_)
                             (gx#core-identifier=? _%hd169294169311%_ '%#ref))
                        (if (gx#stx-pair? _%tl169295169313%_)
                            (let ((_%e169296169316%_
                                   (gx#syntax-e _%tl169295169313%_)))
                              (let ((_%hd169297169319%_
                                     (##car _%e169296169316%_))
                                    (_%tl169298169321%_
                                     (##cdr _%e169296169316%_)))
                                (let ((_%id169324%_ _%hd169297169319%_))
                                  (if (gx#stx-null? _%tl169298169321%_)
                                      (let ((_%$e169326%_
                                             (gx#resolve-identifier__0
                                              (gx#datum->syntax__0 '#f 'id))))
                                        (if _%$e169326%_
                                            ((lambda (_%bind169329%_)
                                               (let _%again169331%_ ((_%bind169333%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%bind169329%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%$e169335%_
                                                        (if (##structure-instance-of?
                                                             _%bind169333%_
                                                             'gx#runtime-binding::t)
                                                            (##unchecked-structure-ref
                                                             _%bind169333%_
                                                             '6
                                                             '#f
                                                             '#f)
                                                            '#f)))
                                                   (if _%$e169335%_
                                                       ((lambda (_%macro169338%_)
                                                          (gx#core-expand-expression
                                                           (gx#stx-wrap-source
                                                            (cons (gx#syntax-local-value__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%macro169338%_)
                          _%args169287%_)
                    (gx#stx-source _%stx169248%_))))
                _%$e169335%_)
               (if (##structure-direct-instance-of?
                    _%bind169333%_
                    'gx#import-binding::t)
                   (_%again169331%_
                    (##unchecked-structure-ref _%bind169333%_ '5 '#f '#f))
                   (_%expand-runtime-call169250%_
                    _%rator-expr169289%_
                    _%args169287%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%$e169326%_)
                                            (_%expand-runtime-call169250%_
                                             _%rator-expr169289%_
                                             _%args169287%_)))
                                      (_%E169292169304%_)))))
                            (_%E169292169304%_))
                        (_%E169292169304%_))))
                (_%E169292169304%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E169291169343%_))
                                          (_%E169253169265%_)))))
                                (_%E169253169265%_))))
                        (_%E169253169265%_)))))
            (_%E169252169347%_)))))
    (define gx#core-expand-if%
      (lambda (_%stx169181%_)
        (let* ((_%e169182169198%_ _%stx169181%_)
               (_%E169184169202%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e169182169198%_)))
               (_%E169183169244%_
                (lambda ()
                  (if (gx#stx-pair? _%e169182169198%_)
                      (let ((_%e169185169206%_
                             (gx#syntax-e _%e169182169198%_)))
                        (let ((_%hd169186169209%_ (##car _%e169185169206%_))
                              (_%tl169187169211%_ (##cdr _%e169185169206%_)))
                          (if (gx#stx-pair? _%tl169187169211%_)
                              (let ((_%e169188169214%_
                                     (gx#syntax-e _%tl169187169211%_)))
                                (let ((_%hd169189169217%_
                                       (##car _%e169188169214%_))
                                      (_%tl169190169219%_
                                       (##cdr _%e169188169214%_)))
                                  (let ((_%test169222%_ _%hd169189169217%_))
                                    (if (gx#stx-pair? _%tl169190169219%_)
                                        (let ((_%e169191169224%_
                                               (gx#syntax-e
                                                _%tl169190169219%_)))
                                          (let ((_%hd169192169227%_
                                                 (##car _%e169191169224%_))
                                                (_%tl169193169229%_
                                                 (##cdr _%e169191169224%_)))
                                            (let ((_%K169232%_
                                                   _%hd169192169227%_))
                                              (if (gx#stx-pair?
                                                   _%tl169193169229%_)
                                                  (let ((_%e169194169234%_
                                                         (gx#syntax-e
                                                          _%tl169193169229%_)))
                                                    (let ((_%hd169195169237%_
                                                           (##car _%e169194169234%_))
                                                          (_%tl169196169239%_
                                                           (##cdr _%e169194169234%_)))
                                                      (let ((_%E169242%_
                                                             _%hd169195169237%_))
                                                        (if (gx#stx-null?
                                                             _%tl169196169239%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test169222%_)
                                 (cons (gx#core-expand-expression _%K169232%_)
                                       (cons (gx#core-expand-expression
                                              _%E169242%_)
                                             '()))))
                     (gx#stx-source _%stx169181%_))
                    (_%E169184169202%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E169184169202%_)))))
                                        (_%E169184169202%_)))))
                              (_%E169184169202%_))))
                      (_%E169184169202%_)))))
          (_%E169183169244%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx169140%_)
        (let* ((_%e169141169151%_ _%stx169140%_)
               (_%E169143169155%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e169141169151%_)))
               (_%E169142169177%_
                (lambda ()
                  (if (gx#stx-pair? _%e169141169151%_)
                      (let ((_%e169144169159%_
                             (gx#syntax-e _%e169141169151%_)))
                        (let ((_%hd169145169162%_ (##car _%e169144169159%_))
                              (_%tl169146169164%_ (##cdr _%e169144169159%_)))
                          (if (gx#stx-pair? _%tl169146169164%_)
                              (let ((_%e169147169167%_
                                     (gx#syntax-e _%tl169146169164%_)))
                                (let ((_%hd169148169170%_
                                       (##car _%e169147169167%_))
                                      (_%tl169149169172%_
                                       (##cdr _%e169147169167%_)))
                                  (let ((_%id169175%_ _%hd169148169170%_))
                                    (if (gx#stx-null? _%tl169149169172%_)
                                        (if (gx#identifier? _%id169175%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id169175%_
                                                          _%stx169140%_)
                                                         '()))
                                             (gx#stx-source _%stx169140%_))
                                            (_%E169143169155%_))
                                        (_%E169143169155%_)))))
                              (_%E169143169155%_))))
                      (_%E169143169155%_)))))
          (_%E169142169177%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx169086%_)
        (let* ((_%e169087169100%_ _%stx169086%_)
               (_%E169089169104%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e169087169100%_)))
               (_%E169088169136%_
                (lambda ()
                  (if (gx#stx-pair? _%e169087169100%_)
                      (let ((_%e169090169108%_
                             (gx#syntax-e _%e169087169100%_)))
                        (let ((_%hd169091169111%_ (##car _%e169090169108%_))
                              (_%tl169092169113%_ (##cdr _%e169090169108%_)))
                          (if (gx#stx-pair? _%tl169092169113%_)
                              (let ((_%e169093169116%_
                                     (gx#syntax-e _%tl169092169113%_)))
                                (let ((_%hd169094169119%_
                                       (##car _%e169093169116%_))
                                      (_%tl169095169121%_
                                       (##cdr _%e169093169116%_)))
                                  (let ((_%id169124%_ _%hd169094169119%_))
                                    (if (gx#stx-pair? _%tl169095169121%_)
                                        (let ((_%e169096169126%_
                                               (gx#syntax-e
                                                _%tl169095169121%_)))
                                          (let ((_%hd169097169129%_
                                                 (##car _%e169096169126%_))
                                                (_%tl169098169131%_
                                                 (##cdr _%e169096169126%_)))
                                            (let ((_%expr169134%_
                                                   _%hd169097169129%_))
                                              (if (gx#stx-null?
                                                   _%tl169098169131%_)
                                                  (if (gx#identifier?
                                                       _%id169124%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id169124%_
                            _%stx169086%_)
                           (cons (gx#core-expand-expression _%expr169134%_)
                                 '())))
               (gx#stx-source _%stx169086%_))
              (_%E169089169104%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E169089169104%_)))))
                                        (_%E169089169104%_)))))
                              (_%E169089169104%_))))
                      (_%E169089169104%_)))))
          (_%E169088169136%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx168931%_)
        (letrec ((_%generate168933%_
                  (lambda (_%body168963%_)
                    (let _%lp168965%_ ((_%rest168967%_ _%body168963%_)
                                       (_%ns168968%_
                                        (gx#core-context-namespace__0))
                                       (_%r168969%_ '()))
                      (let* ((_%e168970168985%_ _%rest168967%_)
                             (_%E168983168989%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e168970168985%_)))
                             (_%E168979168993%_
                              (lambda ()
                                (if (gx#stx-null? _%e168970168985%_)
                                    (reverse _%r168969%_)
                                    (_%E168983168989%_))))
                             (_%E168972169050%_
                              (lambda ()
                                (if (gx#stx-pair? _%e168970168985%_)
                                    (let ((_%e168980168997%_
                                           (gx#syntax-e _%e168970168985%_)))
                                      (let ((_%hd168981169000%_
                                             (##car _%e168980168997%_))
                                            (_%tl168982169002%_
                                             (##cdr _%e168980168997%_)))
                                        (let* ((_%hd169005%_
                                                _%hd168981169000%_)
                                               (_%rest169007%_
                                                _%tl168982169002%_))
                                          (if (gx#identifier? _%hd169005%_)
                                              (_%lp168965%_
                                               _%rest169007%_
                                               _%ns168968%_
                                               (cons (cons _%hd169005%_
                                                           (cons (if _%ns168968%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd169005%_
                              _%ns168968%_
                              '"#"
                              _%hd169005%_)
                             _%hd169005%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r168969%_))
                                              (let* ((_%e169008169018%_
                                                      _%hd169005%_)
                                                     (_%E169010169022%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%e169008169018%_)))
                                                     (_%E169009169046%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e169008169018%_)
                                                            (let ((_%e169011169026%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e169008169018%_)))
                      (let ((_%hd169012169029%_ (##car _%e169011169026%_))
                            (_%tl169013169031%_ (##cdr _%e169011169026%_)))
                        (let ((_%id169034%_ _%hd169012169029%_))
                          (if (gx#stx-pair? _%tl169013169031%_)
                              (let ((_%e169014169036%_
                                     (gx#syntax-e _%tl169013169031%_)))
                                (let ((_%hd169015169039%_
                                       (##car _%e169014169036%_))
                                      (_%tl169016169041%_
                                       (##cdr _%e169014169036%_)))
                                  (let ((_%eid169044%_ _%hd169015169039%_))
                                    (if (gx#stx-null? _%tl169016169041%_)
                                        (if (and (gx#identifier? _%id169034%_)
                                                 (gx#identifier?
                                                  _%eid169044%_))
                                            (_%lp168965%_
                                             _%rest169007%_
                                             _%ns168968%_
                                             (cons (cons _%id169034%_
                                                         (cons _%eid169044%_
                                                               '()))
                                                   _%r168969%_))
                                            (_%E169010169022%_))
                                        (_%E169010169022%_)))))
                              (_%E169010169022%_)))))
                    (_%E169010169022%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E169009169046%_))))))
                                    (_%E168979168993%_))))
                             (_%E168971169082%_
                              (lambda ()
                                (if (gx#stx-pair? _%e168970168985%_)
                                    (let ((_%e168973169054%_
                                           (gx#syntax-e _%e168970168985%_)))
                                      (let ((_%hd168974169057%_
                                             (##car _%e168973169054%_))
                                            (_%tl168975169059%_
                                             (##cdr _%e168973169054%_)))
                                        (if (eq? (gx#stx-e _%hd168974169057%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl168975169059%_)
                                                (let ((_%e168976169062%_
                                                       (gx#syntax-e
                                                        _%tl168975169059%_)))
                                                  (let ((_%hd168977169065%_
                                                         (##car _%e168976169062%_))
                                                        (_%tl168978169067%_
                                                         (##cdr _%e168976169062%_)))
                                                    (let* ((_%ns169070%_
                                                            _%hd168977169065%_)
                                                           (_%rest169072%_
                                                            _%tl168978169067%_)
                                                           (_%ns169080%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns169070%_)
                        (symbol->string (gx#stx-e _%ns169070%_))
                        (if (or (gx#stx-string? _%ns169070%_)
                                (gx#stx-false? _%ns169070%_))
                            (gx#stx-e _%ns169070%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx168931%_
                             _%ns169070%_)))))
              (_%lp168965%_ _%rest169072%_ _%ns169080%_ _%r168969%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E168972169050%_))
                                            (_%E168972169050%_))))
                                    (_%E168972169050%_)))))
                        (_%E168971169082%_))))))
          (let* ((_%e168934168941%_ _%stx168931%_)
                 (_%E168936168945%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e168934168941%_)))
                 (_%E168935168959%_
                  (lambda ()
                    (if (gx#stx-pair? _%e168934168941%_)
                        (let ((_%e168937168949%_
                               (gx#syntax-e _%e168934168941%_)))
                          (let ((_%hd168938168952%_ (##car _%e168937168949%_))
                                (_%tl168939168954%_ (##cdr _%e168937168949%_)))
                            (let ((_%body168957%_ _%tl168939168954%_))
                              (if (gx#stx-list? _%body168957%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate168933%_ _%body168957%_))
                                  (_%E168936168945%_)))))
                        (_%E168936168945%_)))))
            (_%E168935168959%_)))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx168888%_)
        (let* ((_%e168889168899%_ _%stx168888%_)
               (_%E168891168903%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e168889168899%_)))
               (_%E168890168927%_
                (lambda ()
                  (if (gx#stx-pair? _%e168889168899%_)
                      (let ((_%e168892168907%_
                             (gx#syntax-e _%e168889168899%_)))
                        (let ((_%hd168893168910%_ (##car _%e168892168907%_))
                              (_%tl168894168912%_ (##cdr _%e168892168907%_)))
                          (if (gx#stx-pair? _%tl168894168912%_)
                              (let ((_%e168895168915%_
                                     (gx#syntax-e _%tl168894168912%_)))
                                (let ((_%hd168896168918%_
                                       (##car _%e168895168915%_))
                                      (_%tl168897168920%_
                                       (##cdr _%e168895168915%_)))
                                  (let* ((_%hd168923%_ _%hd168896168918%_)
                                         (_%body168925%_ _%tl168897168920%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd168923%_)
                                             (gx#stx-list? _%body168925%_)
                                             (not (gx#stx-null?
                                                   _%body168925%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd168923%_)
                                         _%body168925%_)
                                        (_%E168891168903%_)))))
                              (_%E168891168903%_))))
                      (_%E168891168903%_)))))
          (_%E168890168927%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx168824%_)
        (letrec ((_%generate168826%_
                  (lambda (_%clause168856%_)
                    (let* ((_%e168857168864%_ _%clause168856%_)
                           (_%E168859168868%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx168824%_
                               _%clause168856%_)))
                           (_%E168858168884%_
                            (lambda ()
                              (if (gx#stx-pair? _%e168857168864%_)
                                  (let ((_%e168860168872%_
                                         (gx#syntax-e _%e168857168864%_)))
                                    (let ((_%hd168861168875%_
                                           (##car _%e168860168872%_))
                                          (_%tl168862168877%_
                                           (##cdr _%e168860168872%_)))
                                      (let* ((_%hd168880%_ _%hd168861168875%_)
                                             (_%body168882%_
                                              _%tl168862168877%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd168880%_)
                                                 (gx#stx-list? _%body168882%_)
                                                 (not (gx#stx-null?
                                                       _%body168882%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd168880%_)
                                                   _%body168882%_)
                                             (gx#stx-source _%clause168856%_))
                                            (_%E168859168868%_)))))
                                  (_%E168859168868%_)))))
                      (_%E168858168884%_)))))
          (let* ((_%e168827168834%_ _%stx168824%_)
                 (_%E168829168838%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e168827168834%_)))
                 (_%E168828168852%_
                  (lambda ()
                    (if (gx#stx-pair? _%e168827168834%_)
                        (let ((_%e168830168842%_
                               (gx#syntax-e _%e168827168834%_)))
                          (let ((_%hd168831168845%_ (##car _%e168830168842%_))
                                (_%tl168832168847%_ (##cdr _%e168830168842%_)))
                            (let ((_%clauses168850%_ _%tl168832168847%_))
                              (if (gx#stx-list? _%clauses168850%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate168826%_
                                    _%clauses168850%_))
                                  (_%E168829168838%_)))))
                        (_%E168829168838%_)))))
            (_%E168828168852%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx168725%_ _%form168726%_)
        (letrec ((_%generate168728%_
                  (lambda (_%bind168771%_)
                    (let* ((_%e168772168782%_ _%bind168771%_)
                           (_%E168774168786%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx168725%_
                               _%bind168771%_)))
                           (_%E168773168810%_
                            (lambda ()
                              (if (gx#stx-pair? _%e168772168782%_)
                                  (let ((_%e168775168790%_
                                         (gx#syntax-e _%e168772168782%_)))
                                    (let ((_%hd168776168793%_
                                           (##car _%e168775168790%_))
                                          (_%tl168777168795%_
                                           (##cdr _%e168775168790%_)))
                                      (let ((_%ids168798%_ _%hd168776168793%_))
                                        (if (gx#stx-pair? _%tl168777168795%_)
                                            (let ((_%e168778168800%_
                                                   (gx#syntax-e
                                                    _%tl168777168795%_)))
                                              (let ((_%hd168779168803%_
                                                     (##car _%e168778168800%_))
                                                    (_%tl168780168805%_
                                                     (##cdr _%e168778168800%_)))
                                                (let ((_%expr168808%_
                                                       _%hd168779168803%_))
                                                  (if (gx#stx-null?
                                                       _%tl168780168805%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids168798%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids168798%_)
                        (cons _%expr168808%_ '()))
                  (_%E168774168786%_))
              (_%E168774168786%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E168774168786%_)))))
                                  (_%E168774168786%_)))))
                      (_%E168773168810%_)))))
          (let* ((_%e168729168739%_ _%stx168725%_)
                 (_%E168731168743%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e168729168739%_)))
                 (_%E168730168767%_
                  (lambda ()
                    (if (gx#stx-pair? _%e168729168739%_)
                        (let ((_%e168732168747%_
                               (gx#syntax-e _%e168729168739%_)))
                          (let ((_%hd168733168750%_ (##car _%e168732168747%_))
                                (_%tl168734168752%_ (##cdr _%e168732168747%_)))
                            (if (gx#stx-pair? _%tl168734168752%_)
                                (let ((_%e168735168755%_
                                       (gx#syntax-e _%tl168734168752%_)))
                                  (let ((_%hd168736168758%_
                                         (##car _%e168735168755%_))
                                        (_%tl168737168760%_
                                         (##cdr _%e168735168755%_)))
                                    (let* ((_%hd168763%_ _%hd168736168758%_)
                                           (_%body168765%_ _%tl168737168760%_))
                                      (if (and (gx#stx-list? _%hd168763%_)
                                               (gx#stx-list? _%body168765%_)
                                               (not (gx#stx-null?
                                                     _%body168765%_)))
                                          (gx#core-cons*
                                           _%form168726%_
                                           (gx#stx-map1
                                            _%generate168728%_
                                            _%hd168763%_)
                                           _%body168765%_)
                                          (_%E168731168743%_)))))
                                (_%E168731168743%_))))
                        (_%E168731168743%_)))))
            (_%E168730168767%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx168817%_)
        (let ((_%form168819%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx168817%_ _%form168819%_))))
    (define gx#macro-expand-let-values
      (lambda _g171361_
        (let ((_g171362_ (##length _g171361_)))
          (cond ((##fx= _g171362_ 1)
                 (apply gx#macro-expand-let-values__0 _g171361_))
                ((##fx= _g171362_ 2)
                 (apply gx#macro-expand-let-values__% _g171361_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g171361_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx168722%_)
        (gx#macro-expand-let-values__% _%stx168722%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx168720%_)
        (gx#macro-expand-let-values__% _%stx168720%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx168611%_)
        (let* ((_%e168612168638%_ _%stx168611%_)
               (_%E168624168642%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e168612168638%_)))
               (_%E168614168684%_
                (lambda ()
                  (if (gx#stx-pair? _%e168612168638%_)
                      (let ((_%e168625168646%_
                             (gx#syntax-e _%e168612168638%_)))
                        (let ((_%hd168626168649%_ (##car _%e168625168646%_))
                              (_%tl168627168651%_ (##cdr _%e168625168646%_)))
                          (if (gx#stx-pair? _%tl168627168651%_)
                              (let ((_%e168628168654%_
                                     (gx#syntax-e _%tl168627168651%_)))
                                (let ((_%hd168629168657%_
                                       (##car _%e168628168654%_))
                                      (_%tl168630168659%_
                                       (##cdr _%e168628168654%_)))
                                  (let ((_%test168662%_ _%hd168629168657%_))
                                    (if (gx#stx-pair? _%tl168630168659%_)
                                        (let ((_%e168631168664%_
                                               (gx#syntax-e
                                                _%tl168630168659%_)))
                                          (let ((_%hd168632168667%_
                                                 (##car _%e168631168664%_))
                                                (_%tl168633168669%_
                                                 (##cdr _%e168631168664%_)))
                                            (let ((_%K168672%_
                                                   _%hd168632168667%_))
                                              (if (gx#stx-pair?
                                                   _%tl168633168669%_)
                                                  (let ((_%e168634168674%_
                                                         (gx#syntax-e
                                                          _%tl168633168669%_)))
                                                    (let ((_%hd168635168677%_
                                                           (##car _%e168634168674%_))
                                                          (_%tl168636168679%_
                                                           (##cdr _%e168634168674%_)))
                                                      (let ((_%E168682%_
                                                             _%hd168635168677%_))
                                                        (if (gx#stx-null?
                                                             _%tl168636168679%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test168662%_
                                                             _%K168672%_
                                                             _%E168682%_)
                                                            (_%E168624168642%_)))))
                                                  (_%E168624168642%_)))))
                                        (_%E168624168642%_)))))
                              (_%E168624168642%_))))
                      (_%E168624168642%_))))
               (_%E168613168716%_
                (lambda ()
                  (if (gx#stx-pair? _%e168612168638%_)
                      (let ((_%e168615168688%_
                             (gx#syntax-e _%e168612168638%_)))
                        (let ((_%hd168616168691%_ (##car _%e168615168688%_))
                              (_%tl168617168693%_ (##cdr _%e168615168688%_)))
                          (if (gx#stx-pair? _%tl168617168693%_)
                              (let ((_%e168618168696%_
                                     (gx#syntax-e _%tl168617168693%_)))
                                (let ((_%hd168619168699%_
                                       (##car _%e168618168696%_))
                                      (_%tl168620168701%_
                                       (##cdr _%e168618168696%_)))
                                  (let ((_%test168704%_ _%hd168619168699%_))
                                    (if (gx#stx-pair? _%tl168620168701%_)
                                        (let ((_%e168621168706%_
                                               (gx#syntax-e
                                                _%tl168620168701%_)))
                                          (let ((_%hd168622168709%_
                                                 (##car _%e168621168706%_))
                                                (_%tl168623168711%_
                                                 (##cdr _%e168621168706%_)))
                                            (let ((_%K168714%_
                                                   _%hd168622168709%_))
                                              (if (gx#stx-null?
                                                   _%tl168623168711%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test168704%_
                                                   _%K168714%_
                                                   '#!void)
                                                  (_%E168614168684%_)))))
                                        (_%E168614168684%_)))))
                              (_%E168614168684%_))))
                      (_%E168614168684%_)))))
          (_%E168613168716%_))))
    (define gx#free-identifier=?
      (lambda (_%xid168596%_ _%yid168597%_)
        (let ((_%xe168599%_ (gx#resolve-identifier__0 _%xid168596%_))
              (_%ye168600%_ (gx#resolve-identifier__0 _%yid168597%_)))
          (if (and _%xe168599%_ _%ye168600%_)
              (let ((_%$e168603%_ (eq? _%xe168599%_ _%ye168600%_)))
                (if _%$e168603%_
                    _%$e168603%_
                    (if (##structure-instance-of? _%xe168599%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye168600%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe168599%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye168600%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe168599%_ _%ye168600%_)
                  '#f
                  (gx#stx-eq? _%xid168596%_ _%yid168597%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid168577%_ _%yid168578%_)
        (letrec ((_%context168580%_
                  (lambda (_%e168594%_)
                    (if (##structure-direct-instance-of?
                         _%e168594%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e168594%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks168581%_
                  (lambda (_%e168589%_)
                    (if (symbol? _%e168589%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e168589%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e168589%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e168589%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap168582%_
                  (lambda (_%e168587%_)
                    (if (symbol? _%e168587%_)
                        _%e168587%_
                        (gx#syntax-local-unwrap _%e168587%_)))))
          (let ((_%x168584%_ (_%unwrap168582%_ _%xid168577%_))
                (_%y168585%_ (_%unwrap168582%_ _%yid168578%_)))
            (if (gx#stx-eq? _%x168584%_ _%y168585%_)
                (if (eq? (_%context168580%_ _%x168584%_)
                         (_%context168580%_ _%y168585%_))
                    (equal? (_%marks168581%_ _%x168584%_)
                            (_%marks168581%_ _%y168585%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx168575%_)
        (if (gx#identifier? _%stx168575%_)
            (gx#core-identifier=? _%stx168575%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx168573%_)
        (if (gx#identifier? _%stx168573%_)
            (gx#core-identifier=? _%stx168573%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx168516%_ _%where168517%_)
        (let _%lp168519%_ ((_%rest168521%_ (gx#syntax->list _%stx168516%_)))
          (let* ((_%rest168522168530%_ _%rest168521%_)
                 (_%else168524168538%_ (lambda () '#t))
                 (_%K168526168551%_
                  (lambda (_%rest168541%_ _%hd168542%_)
                    (if (gx#identifier? _%hd168542%_)
                        (if (__find (lambda (_%g168544168546%_)
                                      (gx#bound-identifier=?
                                       _%g168544168546%_
                                       _%hd168542%_))
                                    _%rest168541%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where168517%_
                             _%hd168542%_)
                            (_%lp168519%_ _%rest168541%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where168517%_
                         _%hd168542%_)))))
            (if (pair? _%rest168522168530%_)
                (let ((_%hd168527168554%_ (##car _%rest168522168530%_))
                      (_%tl168528168556%_ (##cdr _%rest168522168530%_)))
                  (let* ((_%hd168559%_ _%hd168527168554%_)
                         (_%rest168561%_ _%tl168528168556%_))
                    (_%K168526168551%_ _%rest168561%_ _%hd168559%_)))
                (_%else168524168538%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx168566%_)
        (let ((_%where168568%_ _%stx168566%_))
          (gx#check-duplicate-identifiers__% _%stx168566%_ _%where168568%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g171363_
        (let ((_g171364_ (##length _g171363_)))
          (cond ((##fx= _g171364_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g171363_))
                ((##fx= _g171364_ 2)
                 (apply gx#check-duplicate-identifiers__% _g171363_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g171363_))))))
    (define gx#core-bind-values?
      (lambda (_%stx168508%_)
        (gx#stx-andmap
         (lambda (_%x168510%_)
           (let ((_%$e168512%_ (gx#identifier? _%x168510%_)))
             (if _%$e168512%_ _%$e168512%_ (gx#stx-false? _%x168510%_))))
         _%stx168508%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx168472%_ _%rebind?168473%_ _%phi168474%_ _%ctx168475%_)
        (gx#stx-for-each1
         (lambda (_%id168477%_)
           (if (gx#identifier? _%id168477%_)
               (gx#core-bind-runtime!__%
                _%id168477%_
                _%rebind?168473%_
                _%phi168474%_
                _%ctx168475%_)
               '#!void))
         _%stx168472%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx168482%_)
        (let* ((_%rebind?168484%_ '#f)
               (_%phi168486%_ (gx#current-expander-phi))
               (_%ctx168488%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx168482%_
           _%rebind?168484%_
           _%phi168486%_
           _%ctx168488%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx168490%_ _%rebind?168491%_)
        (let* ((_%phi168493%_ (gx#current-expander-phi))
               (_%ctx168495%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx168490%_
           _%rebind?168491%_
           _%phi168493%_
           _%ctx168495%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx168497%_ _%rebind?168498%_ _%phi168499%_)
        (let ((_%ctx168501%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx168497%_
           _%rebind?168498%_
           _%phi168499%_
           _%ctx168501%_))))
    (define gx#core-bind-values!
      (lambda _g171365_
        (let ((_g171366_ (##length _g171365_)))
          (cond ((##fx= _g171366_ 1) (apply gx#core-bind-values!__0 _g171365_))
                ((##fx= _g171366_ 2) (apply gx#core-bind-values!__1 _g171365_))
                ((##fx= _g171366_ 3) (apply gx#core-bind-values!__2 _g171365_))
                ((##fx= _g171366_ 4) (apply gx#core-bind-values!__% _g171365_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g171365_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx168467%_)
        (gx#stx-map1
         (lambda (_%x168469%_)
           (if (gx#identifier? _%x168469%_)
               (gx#core-quote-syntax__0 _%x168469%_)
               '#f))
         _%stx168467%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx168460%_)
        (if (gx#identifier? _%stx168460%_)
            (let* ((_%bind168462%_ (gx#resolve-identifier__0 _%stx168460%_))
                   (_%$e168464%_ (not _%bind168462%_)))
              (if _%$e168464%_
                  _%$e168464%_
                  (##structure-instance-of?
                   _%bind168462%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id168449%_ _%form168450%_)
        (let ((_%bind168452%_ (gx#resolve-identifier__0 _%id168449%_)))
          (if (##structure-instance-of? _%bind168452%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id168449%_)
              (if (not _%bind168452%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id168449%_)))
                      (gx#core-quote-syntax__0 _%id168449%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form168450%_
                       _%id168449%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form168450%_
                   _%id168449%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id168404%_ _%rebind?168405%_ _%phi168406%_ _%ctx168407%_)
        (let* ((_%key168409%_ (gx#core-identifier-key _%id168404%_))
               (_%eid168411%_
                (gx#make-binding-id__%
                 _%key168409%_
                 '#f
                 _%phi168406%_
                 _%ctx168407%_))
               (_%bind168417%_
                (if (##structure-instance-of?
                     _%ctx168407%_
                     'gx#module-context::t)
                    (let ((__obj171342
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
                       __obj171342
                       _%eid168411%_
                       _%key168409%_
                       _%phi168406%_
                       _%ctx168407%_)
                      __obj171342)
                    (if (##structure-instance-of?
                         _%ctx168407%_
                         'gx#top-context::t)
                        (let ((__obj171341
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj171341
                           _%eid168411%_
                           _%key168409%_
                           _%phi168406%_)
                          __obj171341)
                        (if (##structure-instance-of?
                             _%ctx168407%_
                             'gx#local-context::t)
                            (let ((__obj171340
                                   (##structure
                                    gx#local-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#local-binding:::init!
                               __obj171340
                               _%eid168411%_
                               _%key168409%_
                               _%phi168406%_)
                              __obj171340)
                            (let ((__obj171339
                                   (##structure
                                    gx#runtime-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#runtime-binding:::init!
                               __obj171339
                               _%eid168411%_
                               _%key168409%_
                               _%phi168406%_)
                              __obj171339))))))
          (gx#bind-identifier!__%
           _%id168404%_
           _%bind168417%_
           _%rebind?168405%_
           _%phi168406%_
           _%ctx168407%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id168423%_)
        (let* ((_%rebind?168425%_ '#f)
               (_%phi168427%_ (gx#current-expander-phi))
               (_%ctx168429%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id168423%_
           _%rebind?168425%_
           _%phi168427%_
           _%ctx168429%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id168431%_ _%rebind?168432%_)
        (let* ((_%phi168434%_ (gx#current-expander-phi))
               (_%ctx168436%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id168431%_
           _%rebind?168432%_
           _%phi168434%_
           _%ctx168436%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id168438%_ _%rebind?168439%_ _%phi168440%_)
        (let ((_%ctx168442%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id168438%_
           _%rebind?168439%_
           _%phi168440%_
           _%ctx168442%_))))
    (define gx#core-bind-runtime!
      (lambda _g171367_
        (let ((_g171368_ (##length _g171367_)))
          (cond ((##fx= _g171368_ 1)
                 (apply gx#core-bind-runtime!__0 _g171367_))
                ((##fx= _g171368_ 2)
                 (apply gx#core-bind-runtime!__1 _g171367_))
                ((##fx= _g171368_ 3)
                 (apply gx#core-bind-runtime!__2 _g171367_))
                ((##fx= _g171368_ 4)
                 (apply gx#core-bind-runtime!__% _g171367_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g171367_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id168356%_
               _%eid168357%_
               _%rebind?168358%_
               _%phi168359%_
               _%ctx168360%_)
        (let* ((_%key168362%_ (gx#core-identifier-key _%id168356%_))
               (_%bind168367%_
                (if (##structure-instance-of?
                     _%ctx168360%_
                     'gx#module-context::t)
                    (let ((__obj171345
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
                       __obj171345
                       _%eid168357%_
                       _%key168362%_
                       _%phi168359%_
                       _%ctx168360%_)
                      __obj171345)
                    (if (##structure-instance-of?
                         _%ctx168360%_
                         'gx#top-context::t)
                        (let ((__obj171344
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj171344
                           _%eid168357%_
                           _%key168362%_
                           _%phi168359%_)
                          __obj171344)
                        (let ((__obj171343
                               (##structure
                                gx#runtime-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#runtime-binding:::init!
                           __obj171343
                           _%eid168357%_
                           _%key168362%_
                           _%phi168359%_)
                          __obj171343)))))
          (gx#bind-identifier!__%
           _%id168356%_
           _%bind168367%_
           _%rebind?168358%_
           _%phi168359%_
           _%ctx168360%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id168373%_ _%eid168374%_)
        (let* ((_%rebind?168376%_ '#f)
               (_%phi168378%_ (gx#current-expander-phi))
               (_%ctx168380%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id168373%_
           _%eid168374%_
           _%rebind?168376%_
           _%phi168378%_
           _%ctx168380%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id168382%_ _%eid168383%_ _%rebind?168384%_)
        (let* ((_%phi168386%_ (gx#current-expander-phi))
               (_%ctx168388%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id168382%_
           _%eid168383%_
           _%rebind?168384%_
           _%phi168386%_
           _%ctx168388%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id168390%_ _%eid168391%_ _%rebind?168392%_ _%phi168393%_)
        (let ((_%ctx168395%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id168390%_
           _%eid168391%_
           _%rebind?168392%_
           _%phi168393%_
           _%ctx168395%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g171369_
        (let ((_g171370_ (##length _g171369_)))
          (cond ((##fx= _g171370_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g171369_))
                ((##fx= _g171370_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g171369_))
                ((##fx= _g171370_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g171369_))
                ((##fx= _g171370_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g171369_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g171369_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id168316%_
               _%eid168317%_
               _%rebind?168318%_
               _%phi168319%_
               _%ctx168320%_)
        (gx#bind-identifier!__%
         _%id168316%_
         (let ((__obj171346
                (##structure gx#extern-binding::t '#f '#f '#f '#f '#f '#f)))
           (gx#extern-binding:::init!
            __obj171346
            _%eid168317%_
            (gx#core-identifier-key _%id168316%_)
            _%phi168319%_)
           __obj171346)
         _%rebind?168318%_
         _%phi168319%_
         _%ctx168320%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id168325%_ _%eid168326%_)
        (let* ((_%rebind?168328%_ '#f)
               (_%phi168330%_ (gx#current-expander-phi))
               (_%ctx168332%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id168325%_
           _%eid168326%_
           _%rebind?168328%_
           _%phi168330%_
           _%ctx168332%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id168334%_ _%eid168335%_ _%rebind?168336%_)
        (let* ((_%phi168338%_ (gx#current-expander-phi))
               (_%ctx168340%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id168334%_
           _%eid168335%_
           _%rebind?168336%_
           _%phi168338%_
           _%ctx168340%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id168342%_ _%eid168343%_ _%rebind?168344%_ _%phi168345%_)
        (let ((_%ctx168347%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id168342%_
           _%eid168343%_
           _%rebind?168344%_
           _%phi168345%_
           _%ctx168347%_))))
    (define gx#core-bind-extern!
      (lambda _g171371_
        (let ((_g171372_ (##length _g171371_)))
          (cond ((##fx= _g171372_ 2) (apply gx#core-bind-extern!__0 _g171371_))
                ((##fx= _g171372_ 3) (apply gx#core-bind-extern!__1 _g171371_))
                ((##fx= _g171372_ 4) (apply gx#core-bind-extern!__2 _g171371_))
                ((##fx= _g171372_ 5) (apply gx#core-bind-extern!__% _g171371_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g171371_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id168270%_
               _%e168271%_
               _%rebind?168272%_
               _%phi168273%_
               _%ctx168274%_)
        (gx#bind-identifier!__%
         _%id168270%_
         (let ((_%key168279%_ (gx#core-identifier-key _%id168270%_))
               (_%e168280%_
                (if (or (##structure-instance-of? _%e168271%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e168271%_
                         'gx#expander-context::t))
                    _%e168271%_
                    (##structure
                     gx#user-expander::t
                     _%e168271%_
                     _%ctx168274%_
                     _%phi168273%_))))
           (let ((__obj171347
                  (##structure gx#syntax-binding::t '#f '#f '#f '#f '#f)))
             (gx#syntax-binding:::init!
              __obj171347
              (gx#make-binding-id__%
               _%key168279%_
               '#t
               _%phi168273%_
               _%ctx168274%_)
              _%key168279%_
              _%phi168273%_
              _%e168280%_)
             __obj171347))
         _%rebind?168272%_
         _%phi168273%_
         _%ctx168274%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id168285%_ _%e168286%_)
        (let* ((_%rebind?168288%_ '#f)
               (_%phi168290%_ (gx#current-expander-phi))
               (_%ctx168292%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id168285%_
           _%e168286%_
           _%rebind?168288%_
           _%phi168290%_
           _%ctx168292%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id168294%_ _%e168295%_ _%rebind?168296%_)
        (let* ((_%phi168298%_ (gx#current-expander-phi))
               (_%ctx168300%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id168294%_
           _%e168295%_
           _%rebind?168296%_
           _%phi168298%_
           _%ctx168300%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id168302%_ _%e168303%_ _%rebind?168304%_ _%phi168305%_)
        (let ((_%ctx168307%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id168302%_
           _%e168303%_
           _%rebind?168304%_
           _%phi168305%_
           _%ctx168307%_))))
    (define gx#core-bind-syntax!
      (lambda _g171373_
        (let ((_g171374_ (##length _g171373_)))
          (cond ((##fx= _g171374_ 2) (apply gx#core-bind-syntax!__0 _g171373_))
                ((##fx= _g171374_ 3) (apply gx#core-bind-syntax!__1 _g171373_))
                ((##fx= _g171374_ 4) (apply gx#core-bind-syntax!__2 _g171373_))
                ((##fx= _g171374_ 5) (apply gx#core-bind-syntax!__% _g171373_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g171373_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id168253%_ _%e168254%_ _%rebind?168255%_)
        (gx#core-bind-syntax!__%
         _%id168253%_
         _%e168254%_
         _%rebind?168255%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id168260%_ _%e168261%_)
        (let ((_%rebind?168263%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id168260%_
           _%e168261%_
           _%rebind?168263%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g171375_
        (let ((_g171376_ (##length _g171375_)))
          (cond ((##fx= _g171376_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g171375_))
                ((##fx= _g171376_ 3)
                 (apply gx#core-bind-root-syntax!__% _g171375_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g171375_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id168211%_
               _%alias-id168212%_
               _%rebind?168213%_
               _%phi168214%_
               _%ctx168215%_)
        (gx#bind-identifier!__%
         _%id168211%_
         (let* ((_%key168217%_ (gx#core-identifier-key _%id168211%_))
                (__obj171348
                 (##structure gx#alias-binding::t '#f '#f '#f '#f '#f)))
           (gx#alias-binding:::init!
            __obj171348
            (gx#make-binding-id__%
             _%key168217%_
             '#t
             _%phi168214%_
             _%ctx168215%_)
            _%key168217%_
            _%phi168214%_
            _%alias-id168212%_)
           __obj171348)
         _%rebind?168213%_
         _%phi168214%_
         _%ctx168215%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id168222%_ _%alias-id168223%_)
        (let* ((_%rebind?168225%_ '#f)
               (_%phi168227%_ (gx#current-expander-phi))
               (_%ctx168229%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id168222%_
           _%alias-id168223%_
           _%rebind?168225%_
           _%phi168227%_
           _%ctx168229%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id168231%_ _%alias-id168232%_ _%rebind?168233%_)
        (let* ((_%phi168235%_ (gx#current-expander-phi))
               (_%ctx168237%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id168231%_
           _%alias-id168232%_
           _%rebind?168233%_
           _%phi168235%_
           _%ctx168237%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id168239%_ _%alias-id168240%_ _%rebind?168241%_ _%phi168242%_)
        (let ((_%ctx168244%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id168239%_
           _%alias-id168240%_
           _%rebind?168241%_
           _%phi168242%_
           _%ctx168244%_))))
    (define gx#core-bind-alias!
      (lambda _g171377_
        (let ((_g171378_ (##length _g171377_)))
          (cond ((##fx= _g171378_ 2) (apply gx#core-bind-alias!__0 _g171377_))
                ((##fx= _g171378_ 3) (apply gx#core-bind-alias!__1 _g171377_))
                ((##fx= _g171378_ 4) (apply gx#core-bind-alias!__2 _g171377_))
                ((##fx= _g171378_ 5) (apply gx#core-bind-alias!__% _g171377_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g171377_))))))
    (define gx#make-binding-id__%
      (lambda (_%key168161%_ _%syntax?168162%_ _%phi168163%_ _%ctx168164%_)
        (if (uninterned-symbol? _%key168161%_)
            (##gensym 'L)
            (if (pair? _%key168161%_)
                (gensym (##car _%key168161%_))
                (if (##structure-instance-of? _%ctx168164%_ 'gx#top-context::t)
                    (let ((_%ns168169%_
                           (gx#core-context-namespace__% _%ctx168164%_)))
                      (if (and (fxzero? _%phi168163%_) (not _%syntax?168162%_))
                          (if _%ns168169%_
                              (make-symbol__1 _%ns168169%_ '"#" _%key168161%_)
                              _%key168161%_)
                          (if _%syntax?168162%_
                              (make-symbol__1
                               (let ((_%$e168173%_ _%ns168169%_))
                                 (if _%$e168173%_ _%$e168173%_ '""))
                               '"[:"
                               (number->string _%phi168163%_)
                               '":]#"
                               _%key168161%_)
                              (make-symbol__1
                               (let ((_%$e168177%_ _%ns168169%_))
                                 (if _%$e168177%_ _%$e168177%_ '""))
                               '"["
                               (number->string _%phi168163%_)
                               '"]#"
                               _%key168161%_))))
                    (gensym _%key168161%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key168184%_)
        (let* ((_%syntax?168186%_ '#f)
               (_%phi168188%_ (gx#current-expander-phi))
               (_%ctx168190%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key168184%_
           _%syntax?168186%_
           _%phi168188%_
           _%ctx168190%_))))
    (define gx#make-binding-id__1
      (lambda (_%key168192%_ _%syntax?168193%_)
        (let* ((_%phi168195%_ (gx#current-expander-phi))
               (_%ctx168197%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key168192%_
           _%syntax?168193%_
           _%phi168195%_
           _%ctx168197%_))))
    (define gx#make-binding-id__2
      (lambda (_%key168199%_ _%syntax?168200%_ _%phi168201%_)
        (let ((_%ctx168203%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key168199%_
           _%syntax?168200%_
           _%phi168201%_
           _%ctx168203%_))))
    (define gx#make-binding-id
      (lambda _g171379_
        (let ((_g171380_ (##length _g171379_)))
          (cond ((##fx= _g171380_ 1) (apply gx#make-binding-id__0 _g171379_))
                ((##fx= _g171380_ 2) (apply gx#make-binding-id__1 _g171379_))
                ((##fx= _g171380_ 3) (apply gx#make-binding-id__2 _g171379_))
                ((##fx= _g171380_ 4) (apply gx#make-binding-id__% _g171379_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g171379_))))))))
