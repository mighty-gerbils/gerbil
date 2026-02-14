(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1771093449)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx181793%_)
        (letrec ((_%expand-special181795%_
                  (lambda (_%hd181797%_ _%K181798%_ _%rest181799%_ _%r181800%_)
                    (_%K181798%_
                     _%rest181799%_
                     (cons (gx#core-expand-top _%hd181797%_) _%r181800%_)))))
          (gx#core-expand-block__0 _%stx181793%_ _%expand-special181795%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx181487%_)
        (letrec ((_%expand-special181489%_
                  (lambda (_%hd181611%_ _%K181612%_ _%rest181613%_ _%r181614%_)
                    (let* ((_%K181618%_
                            (lambda (_%e181616%_)
                              (_%K181612%_
                               _%rest181613%_
                               (cons _%e181616%_ _%r181614%_))))
                           (_%e181619181661%_ _%hd181611%_)
                           (_%E181656181665%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e181619181661%_)))
                           (_%E181652181677%_
                            (lambda ()
                              (if (gx#stx-pair? _%e181619181661%_)
                                  (let ((_%e181657181669%_
                                         (gx#syntax-e _%e181619181661%_)))
                                    (let ((_%hd181658181672%_
                                           (##car _%e181657181669%_))
                                          (_%tl181659181674%_
                                           (##cdr _%e181657181669%_)))
                                      (if (and (gx#identifier?
                                                _%hd181658181672%_)
                                               (gx#core-identifier=?
                                                _%hd181658181672%_
                                                '%#define-runtime))
                                          (_%K181618%_
                                           (gx#core-expand-define-runtime%
                                            _%hd181611%_))
                                          (_%E181656181665%_))))
                                  (_%E181656181665%_))))
                           (_%E181648181689%_
                            (lambda ()
                              (if (gx#stx-pair? _%e181619181661%_)
                                  (let ((_%e181653181681%_
                                         (gx#syntax-e _%e181619181661%_)))
                                    (let ((_%hd181654181684%_
                                           (##car _%e181653181681%_))
                                          (_%tl181655181686%_
                                           (##cdr _%e181653181681%_)))
                                      (if (and (gx#identifier?
                                                _%hd181654181684%_)
                                               (gx#core-identifier=?
                                                _%hd181654181684%_
                                                '%#define-alias))
                                          (_%K181618%_
                                           (gx#core-expand-define-alias%
                                            _%hd181611%_))
                                          (_%E181652181677%_))))
                                  (_%E181652181677%_))))
                           (_%E181638181701%_
                            (lambda ()
                              (if (gx#stx-pair? _%e181619181661%_)
                                  (let ((_%e181649181693%_
                                         (gx#syntax-e _%e181619181661%_)))
                                    (let ((_%hd181650181696%_
                                           (##car _%e181649181693%_))
                                          (_%tl181651181698%_
                                           (##cdr _%e181649181693%_)))
                                      (if (and (gx#identifier?
                                                _%hd181650181696%_)
                                               (gx#core-identifier=?
                                                _%hd181650181696%_
                                                '%#define-syntax))
                                          (_%K181618%_
                                           (gx#core-expand-define-syntax%
                                            _%hd181611%_))
                                          (_%E181648181689%_))))
                                  (_%E181648181689%_))))
                           (_%E181625181733%_
                            (lambda ()
                              (if (gx#stx-pair? _%e181619181661%_)
                                  (let ((_%e181639181705%_
                                         (gx#syntax-e _%e181619181661%_)))
                                    (let ((_%hd181640181708%_
                                           (##car _%e181639181705%_))
                                          (_%tl181641181710%_
                                           (##cdr _%e181639181705%_)))
                                      (if (and (gx#identifier?
                                                _%hd181640181708%_)
                                               (gx#core-identifier=?
                                                _%hd181640181708%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl181641181710%_)
                                              (let ((_%e181642181713%_
                                                     (gx#syntax-e
                                                      _%tl181641181710%_)))
                                                (let ((_%hd181643181716%_
                                                       (##car _%e181642181713%_))
                                                      (_%tl181644181718%_
                                                       (##cdr _%e181642181713%_)))
                                                  (let ((_%hd-bind181721%_
                                                         _%hd181643181716%_))
                                                    (if (gx#stx-pair?
                                                         _%tl181644181718%_)
                                                        (let ((_%e181645181723%_
                                                               (gx#syntax-e
                                                                _%tl181644181718%_)))
                                                          (let ((_%hd181646181726%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e181645181723%_))
                        (_%tl181647181728%_ (##cdr _%e181645181723%_)))
                    (let ((_%expr181731%_ _%hd181646181726%_))
                      (if (gx#stx-null? _%tl181647181728%_)
                          (if (gx#core-bind-values? _%hd-bind181721%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind181721%_)
                                (_%K181618%_ _%hd181611%_))
                              (_%E181638181701%_))
                          (_%E181638181701%_)))))
                (_%E181638181701%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E181638181701%_))
                                          (_%E181638181701%_))))
                                  (_%E181638181701%_))))
                           (_%E181621181777%_
                            (lambda ()
                              (if (gx#stx-pair? _%e181619181661%_)
                                  (let ((_%e181626181737%_
                                         (gx#syntax-e _%e181619181661%_)))
                                    (let ((_%hd181627181740%_
                                           (##car _%e181626181737%_))
                                          (_%tl181628181742%_
                                           (##cdr _%e181626181737%_)))
                                      (if (and (gx#identifier?
                                                _%hd181627181740%_)
                                               (gx#core-identifier=?
                                                _%hd181627181740%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl181628181742%_)
                                              (let ((_%e181629181745%_
                                                     (gx#syntax-e
                                                      _%tl181628181742%_)))
                                                (let ((_%hd181630181748%_
                                                       (##car _%e181629181745%_))
                                                      (_%tl181631181750%_
                                                       (##cdr _%e181629181745%_)))
                                                  (if (gx#stx-pair?
                                                       _%hd181630181748%_)
                                                      (let ((_%e181635181753%_
                                                             (gx#syntax-e
                                                              _%hd181630181748%_)))
                                                        (let ((_%hd181636181756%_
                                                               (##car _%e181635181753%_))
                                                              (_%tl181637181758%_
                                                               (##cdr _%e181635181753%_)))
                                                          (let ((_%id181761%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd181636181756%_))
                    (if (gx#stx-null? _%tl181637181758%_)
                        (if (gx#stx-pair? _%tl181631181750%_)
                            (let ((_%e181632181763%_
                                   (gx#syntax-e _%tl181631181750%_)))
                              (let ((_%hd181633181766%_
                                     (##car _%e181632181763%_))
                                    (_%tl181634181768%_
                                     (##cdr _%e181632181763%_)))
                                (let* ((_%expr181771%_ _%hd181633181766%_)
                                       (_%props181773%_ _%tl181634181768%_))
                                  (if (gx#identifier? _%id181761%_)
                                      (let ((_%bind181775%_
                                             (gx#core-bind-runtime!__0
                                              _%id181761%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind181775%_
                                         _%props181773%_)
                                        (_%K181618%_ _%hd181611%_))
                                      (_%E181625181733%_)))))
                            (_%E181625181733%_))
                        (_%E181625181733%_)))))
              (_%E181625181733%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E181625181733%_))
                                          (_%E181625181733%_))))
                                  (_%E181625181733%_))))
                           (_%E181620181789%_
                            (lambda ()
                              (if (gx#stx-pair? _%e181619181661%_)
                                  (let ((_%e181622181781%_
                                         (gx#syntax-e _%e181619181661%_)))
                                    (let ((_%hd181623181784%_
                                           (##car _%e181622181781%_))
                                          (_%tl181624181786%_
                                           (##cdr _%e181622181781%_)))
                                      (if (and (gx#identifier?
                                                _%hd181623181784%_)
                                               (gx#core-identifier=?
                                                _%hd181623181784%_
                                                '%#begin-syntax))
                                          (_%K181618%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd181611%_))
                                          (_%E181621181777%_))))
                                  (_%E181621181777%_)))))
                      (_%E181620181789%_))))
                 (_%eval-body181490%_
                  (lambda (_%rbody181498%_)
                    (let _%lp181500%_ ((_%rest181502%_ _%rbody181498%_)
                                       (_%body181503%_ '())
                                       (_%ebody181504%_ '()))
                      (let* ((_%rest181505181513%_ _%rest181502%_)
                             (_%else181507181521%_
                              (lambda ()
                                (values _%body181503%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody181504%_)
                                          (gx#stx-source _%stx181487%_))))))
                             (_%K181509181599%_
                              (lambda (_%rest181524%_ _%hd181525%_)
                                (let* ((_%e181526181543%_ _%hd181525%_)
                                       (_%E181538181547%_
                                        (lambda ()
                                          (_%lp181500%_
                                           _%rest181524%_
                                           (cons _%hd181525%_ _%body181503%_)
                                           (cons _%hd181525%_
                                                 _%ebody181504%_))))
                                       (_%E181528181559%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e181526181543%_)
                                              (let ((_%e181539181551%_
                                                     (gx#syntax-e
                                                      _%e181526181543%_)))
                                                (let ((_%hd181540181554%_
                                                       (##car _%e181539181551%_))
                                                      (_%tl181541181556%_
                                                       (##cdr _%e181539181551%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd181540181554%_)
                                                           (gx#core-identifier=?
                                                            _%hd181540181554%_
                                                            '%#begin-syntax))
                                                      (_%lp181500%_
                                                       _%rest181524%_
                                                       (cons _%hd181525%_
                                                             _%body181503%_)
                                                       _%ebody181504%_)
                                                      (_%E181538181547%_))))
                                              (_%E181538181547%_))))
                                       (_%E181527181595%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e181526181543%_)
                                              (let ((_%e181529181563%_
                                                     (gx#syntax-e
                                                      _%e181526181543%_)))
                                                (let ((_%hd181530181566%_
                                                       (##car _%e181529181563%_))
                                                      (_%tl181531181568%_
                                                       (##cdr _%e181529181563%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd181530181566%_)
                                                           (gx#core-identifier=?
                                                            _%hd181530181566%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl181531181568%_)
                                                          (let ((_%e181532181571%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl181531181568%_)))
                    (let ((_%hd181533181574%_ (##car _%e181532181571%_))
                          (_%tl181534181576%_ (##cdr _%e181532181571%_)))
                      (let ((_%hd-bind181579%_ _%hd181533181574%_))
                        (if (gx#stx-pair? _%tl181534181576%_)
                            (let ((_%e181535181581%_
                                   (gx#syntax-e _%tl181534181576%_)))
                              (let ((_%hd181536181584%_
                                     (##car _%e181535181581%_))
                                    (_%tl181537181586%_
                                     (##cdr _%e181535181581%_)))
                                (let* ((_%expr181589%_ _%hd181536181584%_)
                                       (_%ignore-props181591%_
                                        _%tl181537181586%_)
                                       (_%ehd181593%_
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#define-values)
                                               (cons (gx#core-quote-bind-values
                                                      _%hd-bind181579%_)
                                                     (cons (gx#core-expand-expression
                                                            _%expr181589%_)
                                                           '())))
                                         (gx#stx-source _%hd181525%_))))
                                  (_%lp181500%_
                                   _%rest181524%_
                                   (cons _%ehd181593%_ _%body181503%_)
                                   (cons _%ehd181593%_ _%ebody181504%_)))))
                            (_%E181528181559%_)))))
                  (_%E181528181559%_))
              (_%E181528181559%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E181528181559%_)))))
                                  (_%E181527181595%_)))))
                        (if (pair? _%rest181505181513%_)
                            (let ((_%hd181510181602%_
                                   (##car _%rest181505181513%_))
                                  (_%tl181511181604%_
                                   (##cdr _%rest181505181513%_)))
                              (let* ((_%hd181607%_ _%hd181510181602%_)
                                     (_%rest181609%_ _%tl181511181604%_))
                                (_%K181509181599%_
                                 _%rest181609%_
                                 _%hd181607%_)))
                            (_%else181507181521%_)))))))
          (call-with-parameters__1
           (lambda ()
             (let* ((_%rbody181493%_
                     (gx#core-expand-block__1
                      _%stx181487%_
                      _%expand-special181489%_
                      '#f))
                    (_g181826_ (_%eval-body181490%_ _%rbody181493%_)))
               (begin
                 (let ((_g181827_
                        (if (##values? _g181826_)
                            (##values-length _g181826_)
                            1)))
                   (if (not (##fx= _g181827_ 2))
                       (error "Context expects 2 values" _g181827_)))
                 (let ((_%expanded-body181495%_ (##values-ref _g181826_ 0))
                       (_%value181496%_ (##values-ref _g181826_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body181495%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value181496%_ '())))
                    (gx#stx-source _%stx181487%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx181457%_)
        (let* ((_%e181458181465%_ _%stx181457%_)
               (_%E181460181469%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181458181465%_)))
               (_%E181459181483%_
                (lambda ()
                  (if (gx#stx-pair? _%e181458181465%_)
                      (let ((_%e181461181473%_
                             (gx#syntax-e _%e181458181465%_)))
                        (let ((_%hd181462181476%_ (##car _%e181461181473%_))
                              (_%tl181463181478%_ (##cdr _%e181461181473%_)))
                          (let ((_%body181481%_ _%tl181463181478%_))
                            (if (gx#stx-list? _%body181481%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body181481%_)
                                 (gx#stx-source _%stx181457%_))
                                (_%E181460181469%_)))))
                      (_%E181460181469%_)))))
          (_%E181459181483%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx181455%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx181455%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx181401%_)
        (let* ((_%e181402181415%_ _%stx181401%_)
               (_%E181404181419%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181402181415%_)))
               (_%E181403181451%_
                (lambda ()
                  (if (gx#stx-pair? _%e181402181415%_)
                      (let ((_%e181405181423%_
                             (gx#syntax-e _%e181402181415%_)))
                        (let ((_%hd181406181426%_ (##car _%e181405181423%_))
                              (_%tl181407181428%_ (##cdr _%e181405181423%_)))
                          (if (gx#stx-pair? _%tl181407181428%_)
                              (let ((_%e181408181431%_
                                     (gx#syntax-e _%tl181407181428%_)))
                                (let ((_%hd181409181434%_
                                       (##car _%e181408181431%_))
                                      (_%tl181410181436%_
                                       (##cdr _%e181408181431%_)))
                                  (let ((_%ann181439%_ _%hd181409181434%_))
                                    (if (gx#stx-pair? _%tl181410181436%_)
                                        (let ((_%e181411181441%_
                                               (gx#syntax-e
                                                _%tl181410181436%_)))
                                          (let ((_%hd181412181444%_
                                                 (##car _%e181411181441%_))
                                                (_%tl181413181446%_
                                                 (##cdr _%e181411181441%_)))
                                            (let ((_%expr181449%_
                                                   _%hd181412181444%_))
                                              (if (gx#stx-null?
                                                   _%tl181413181446%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann181439%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr181449%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx181401%_))
                                                  (_%E181404181419%_)))))
                                        (_%E181404181419%_)))))
                              (_%E181404181419%_))))
                      (_%E181404181419%_)))))
          (_%E181403181451%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx181066%_ _%body181067%_)
        (letrec ((_%expand-special181069%_
                  (lambda (_%hd181396%_ _%K181397%_ _%rest181398%_ _%r181399%_)
                    (_%K181397%_
                     '()
                     (cons (_%expand-internal181070%_
                            _%hd181396%_
                            _%rest181398%_)
                           _%r181399%_))))
                 (_%expand-internal181070%_
                  (lambda (_%hd181392%_ _%rest181393%_)
                    (call-with-parameters__1
                     (lambda ()
                       (_%wrap-internal181072%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd181392%_ _%rest181393%_))
                          (gx#stx-source _%stx181066%_))
                         _%expand-internal-special181071%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj181810
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj181810)
                       __obj181810))))
                 (_%expand-internal-special181071%_
                  (lambda (_%hd181230%_ _%K181231%_ _%rest181232%_ _%r181233%_)
                    (let* ((_%e181234181272%_ _%hd181230%_)
                           (_%E181267181276%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e181234181272%_)))
                           (_%E181263181288%_
                            (lambda ()
                              (if (gx#stx-pair? _%e181234181272%_)
                                  (let ((_%e181268181280%_
                                         (gx#syntax-e _%e181234181272%_)))
                                    (let ((_%hd181269181283%_
                                           (##car _%e181268181280%_))
                                          (_%tl181270181285%_
                                           (##cdr _%e181268181280%_)))
                                      (if (and (gx#identifier?
                                                _%hd181269181283%_)
                                               (gx#core-identifier=?
                                                _%hd181269181283%_
                                                '%#declare))
                                          (_%K181231%_
                                           _%rest181232%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd181230%_)
                                                 _%r181233%_))
                                          (_%E181267181276%_))))
                                  (_%E181267181276%_))))
                           (_%E181259181300%_
                            (lambda ()
                              (if (gx#stx-pair? _%e181234181272%_)
                                  (let ((_%e181264181292%_
                                         (gx#syntax-e _%e181234181272%_)))
                                    (let ((_%hd181265181295%_
                                           (##car _%e181264181292%_))
                                          (_%tl181266181297%_
                                           (##cdr _%e181264181292%_)))
                                      (if (and (gx#identifier?
                                                _%hd181265181295%_)
                                               (gx#core-identifier=?
                                                _%hd181265181295%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd181230%_)
                                            (_%K181231%_
                                             _%rest181232%_
                                             _%r181233%_))
                                          (_%E181263181288%_))))
                                  (_%E181263181288%_))))
                           (_%E181249181312%_
                            (lambda ()
                              (if (gx#stx-pair? _%e181234181272%_)
                                  (let ((_%e181260181304%_
                                         (gx#syntax-e _%e181234181272%_)))
                                    (let ((_%hd181261181307%_
                                           (##car _%e181260181304%_))
                                          (_%tl181262181309%_
                                           (##cdr _%e181260181304%_)))
                                      (if (and (gx#identifier?
                                                _%hd181261181307%_)
                                               (gx#core-identifier=?
                                                _%hd181261181307%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd181230%_)
                                            (_%K181231%_
                                             _%rest181232%_
                                             _%r181233%_))
                                          (_%E181259181300%_))))
                                  (_%E181259181300%_))))
                           (_%E181236181344%_
                            (lambda ()
                              (if (gx#stx-pair? _%e181234181272%_)
                                  (let ((_%e181250181316%_
                                         (gx#syntax-e _%e181234181272%_)))
                                    (let ((_%hd181251181319%_
                                           (##car _%e181250181316%_))
                                          (_%tl181252181321%_
                                           (##cdr _%e181250181316%_)))
                                      (if (and (gx#identifier?
                                                _%hd181251181319%_)
                                               (gx#core-identifier=?
                                                _%hd181251181319%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl181252181321%_)
                                              (let ((_%e181253181324%_
                                                     (gx#syntax-e
                                                      _%tl181252181321%_)))
                                                (let ((_%hd181254181327%_
                                                       (##car _%e181253181324%_))
                                                      (_%tl181255181329%_
                                                       (##cdr _%e181253181324%_)))
                                                  (let ((_%hd-bind181332%_
                                                         _%hd181254181327%_))
                                                    (if (gx#stx-pair?
                                                         _%tl181255181329%_)
                                                        (let ((_%e181256181334%_
                                                               (gx#syntax-e
                                                                _%tl181255181329%_)))
                                                          (let ((_%hd181257181337%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e181256181334%_))
                        (_%tl181258181339%_ (##cdr _%e181256181334%_)))
                    (let ((_%expr181342%_ _%hd181257181337%_))
                      (if (gx#stx-null? _%tl181258181339%_)
                          (if (gx#core-bind-values? _%hd-bind181332%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind181332%_)
                                (_%K181231%_
                                 _%rest181232%_
                                 (cons _%hd181230%_ _%r181233%_)))
                              (_%E181249181312%_))
                          (_%E181249181312%_)))))
                (_%E181249181312%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E181249181312%_))
                                          (_%E181249181312%_))))
                                  (_%E181249181312%_))))
                           (_%E181235181388%_
                            (lambda ()
                              (if (gx#stx-pair? _%e181234181272%_)
                                  (let ((_%e181237181348%_
                                         (gx#syntax-e _%e181234181272%_)))
                                    (let ((_%hd181238181351%_
                                           (##car _%e181237181348%_))
                                          (_%tl181239181353%_
                                           (##cdr _%e181237181348%_)))
                                      (if (and (gx#identifier?
                                                _%hd181238181351%_)
                                               (gx#core-identifier=?
                                                _%hd181238181351%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl181239181353%_)
                                              (let ((_%e181240181356%_
                                                     (gx#syntax-e
                                                      _%tl181239181353%_)))
                                                (let ((_%hd181241181359%_
                                                       (##car _%e181240181356%_))
                                                      (_%tl181242181361%_
                                                       (##cdr _%e181240181356%_)))
                                                  (if (gx#stx-pair?
                                                       _%hd181241181359%_)
                                                      (let ((_%e181246181364%_
                                                             (gx#syntax-e
                                                              _%hd181241181359%_)))
                                                        (let ((_%hd181247181367%_
                                                               (##car _%e181246181364%_))
                                                              (_%tl181248181369%_
                                                               (##cdr _%e181246181364%_)))
                                                          (let ((_%id181372%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd181247181367%_))
                    (if (gx#stx-null? _%tl181248181369%_)
                        (if (gx#stx-pair? _%tl181242181361%_)
                            (let ((_%e181243181374%_
                                   (gx#syntax-e _%tl181242181361%_)))
                              (let ((_%hd181244181377%_
                                     (##car _%e181243181374%_))
                                    (_%tl181245181379%_
                                     (##cdr _%e181243181374%_)))
                                (let* ((_%expr181382%_ _%hd181244181377%_)
                                       (_%props181384%_ _%tl181245181379%_))
                                  (if (gx#identifier? _%id181372%_)
                                      (let ((_%bind181386%_
                                             (gx#core-bind-runtime!__0
                                              _%id181372%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind181386%_
                                         _%props181384%_)
                                        (_%K181231%_
                                         _%rest181232%_
                                         (cons _%hd181230%_ _%r181233%_)))
                                      (_%E181236181344%_)))))
                            (_%E181236181344%_))
                        (_%E181236181344%_)))))
              (_%E181236181344%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E181236181344%_))
                                          (_%E181236181344%_))))
                                  (_%E181236181344%_)))))
                      (_%E181235181388%_))))
                 (_%wrap-internal181072%_
                  (lambda (_%rbody181074%_)
                    (let _%lp181076%_ ((_%rest181078%_ _%rbody181074%_)
                                       (_%decls181079%_ '())
                                       (_%bind181080%_ '())
                                       (_%body181081%_ '()))
                      (let* ((_%e181082181089%_ _%rest181078%_)
                             (_%E181084181138%_
                              (lambda ()
                                (let* ((_%body181133%_
                                        (let* ((_%body181092181102%_
                                                _%body181081%_)
                                               (_%else181095181110%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body181081%_)
                                                   (gx#stx-source
                                                    _%stx181066%_)))))
                                          (let ((_%K181100181130%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx181066%_)))
                                                (_%K181097181116%_
                                                 (lambda (_%expr181114%_)
                                                   _%expr181114%_)))
                                            (let ((_%try-match181094181126%_
                                                   (lambda ()
                                                     (if (pair? _%body181092181102%_)
                                                         (let ((_%tl181099181121%_
                                                                (##cdr _%body181092181102%_))
                                                               (_%hd181098181119%_
                                                                (##car _%body181092181102%_)))
                                                           (if (null? _%tl181099181121%_)
                                                               (let ((_%expr181124%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd181098181119%_))
                         (_%K181097181116%_ _%expr181124%_))
                       (_%else181095181110%_)))
                 (_%else181095181110%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%body181092181102%_)
                                                  (_%K181100181130%_)
                                                  (_%try-match181094181126%_))))))
                                       (_%body181135%_
                                        (if (null? _%bind181080%_)
                                            _%body181133%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind181080%_
                                                         (cons _%body181133%_
                                                               '())))
                                             (gx#stx-source _%stx181066%_)))))
                                  (if (null? _%decls181079%_)
                                      _%body181135%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls181079%_
                                                   (cons _%body181135%_ '())))
                                       (gx#stx-source _%stx181066%_))))))
                             (_%E181083181226%_
                              (lambda ()
                                (if (gx#stx-pair? _%e181082181089%_)
                                    (let ((_%e181085181142%_
                                           (gx#syntax-e _%e181082181089%_)))
                                      (let ((_%hd181086181145%_
                                             (##car _%e181085181142%_))
                                            (_%tl181087181147%_
                                             (##cdr _%e181085181142%_)))
                                        (let* ((_%hd181150%_
                                                _%hd181086181145%_)
                                               (_%rest181152%_
                                                _%tl181087181147%_)
                                               (_%e181153181170%_ _%hd181150%_)
                                               (_%E181165181174%_
                                                (lambda ()
                                                  (if (null? _%bind181080%_)
                                                      (_%lp181076%_
                                                       _%rest181152%_
                                                       _%decls181079%_
                                                       _%bind181080%_
                                                       (cons _%hd181150%_
                                                             _%body181081%_))
                                                      (_%lp181076%_
                                                       _%rest181152%_
                                                       _%decls181079%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd181150%_ '()))
                     _%bind181080%_)
               _%body181081%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E181155181188%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e181153181170%_)
                                                      (let ((_%e181166181178%_
                                                             (gx#syntax-e
                                                              _%e181153181170%_)))
                                                        (let ((_%hd181167181181%_
                                                               (##car _%e181166181178%_))
                                                              (_%tl181168181183%_
                                                               (##cdr _%e181166181178%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd181167181181%_)
                           (gx#core-identifier=?
                            _%hd181167181181%_
                            '%#declare))
                      (let ((_%xdecls181186%_ _%tl181168181183%_))
                        (_%lp181076%_
                         _%rest181152%_
                         (gx#stx-foldr cons _%decls181079%_ _%xdecls181186%_)
                         _%bind181080%_
                         _%body181081%_))
                      (_%E181165181174%_))))
              (_%E181165181174%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E181154181222%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e181153181170%_)
                                                      (let ((_%e181156181192%_
                                                             (gx#syntax-e
                                                              _%e181153181170%_)))
                                                        (let ((_%hd181157181195%_
                                                               (##car _%e181156181192%_))
                                                              (_%tl181158181197%_
                                                               (##cdr _%e181156181192%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd181157181195%_)
                           (gx#core-identifier=?
                            _%hd181157181195%_
                            '%#define-values))
                      (if (gx#stx-pair? _%tl181158181197%_)
                          (let ((_%e181159181200%_
                                 (gx#syntax-e _%tl181158181197%_)))
                            (let ((_%hd181160181203%_
                                   (##car _%e181159181200%_))
                                  (_%tl181161181205%_
                                   (##cdr _%e181159181200%_)))
                              (let ((_%hd-bind181208%_ _%hd181160181203%_))
                                (if (gx#stx-pair? _%tl181161181205%_)
                                    (let ((_%e181162181210%_
                                           (gx#syntax-e _%tl181161181205%_)))
                                      (let ((_%hd181163181213%_
                                             (##car _%e181162181210%_))
                                            (_%tl181164181215%_
                                             (##cdr _%e181162181210%_)))
                                        (let* ((_%expr181218%_
                                                _%hd181163181213%_)
                                               (_%ignore-props181220%_
                                                _%tl181164181215%_))
                                          (_%lp181076%_
                                           _%rest181152%_
                                           _%decls181079%_
                                           (cons (cons (gx#core-quote-bind-values
                                                        _%hd-bind181208%_)
                                                       (cons (gx#core-expand-expression
                                                              _%expr181218%_)
                                                             '()))
                                                 _%bind181080%_)
                                           _%body181081%_))))
                                    (_%E181155181188%_)))))
                          (_%E181155181188%_))
                      (_%E181155181188%_))))
              (_%E181155181188%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%E181154181222%_))))
                                    (_%E181084181138%_)))))
                        (_%E181083181226%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body181067%_)
            (gx#stx-source _%stx181066%_))
           _%expand-special181069%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx181004%_)
        (let* ((_%e181005181012%_ _%stx181004%_)
               (_%E181007181016%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181005181012%_)))
               (_%E181006181062%_
                (lambda ()
                  (if (gx#stx-pair? _%e181005181012%_)
                      (let ((_%e181008181020%_
                             (gx#syntax-e _%e181005181012%_)))
                        (let ((_%hd181009181023%_ (##car _%e181008181020%_))
                              (_%tl181010181025%_ (##cdr _%e181008181020%_)))
                          (let ((_%body181028%_ _%tl181010181025%_))
                            (if (gx#stx-list? _%body181028%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl181030%_)
                                     (let* ((_%e181031181038%_ _%decl181030%_)
                                            (_%E181033181042%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e181031181038%_)))
                                            (_%E181032181058%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e181031181038%_)
                                                   (let ((_%e181034181046%_
                                                          (gx#syntax-e
                                                           _%e181031181038%_)))
                                                     (let ((_%hd181035181049%_
                                                            (##car _%e181034181046%_))
                                                           (_%tl181036181051%_
                                                            (##cdr _%e181034181046%_)))
                                                       (let* ((_%head181054%_
                                                               _%hd181035181049%_)
                                                              (_%args181056%_
                                                               _%tl181036181051%_))
                                                         (if (gx#stx-list?
                                                              _%args181056%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl181030%_)
                                                             (_%E181033181042%_)))))
                                                   (_%E181033181042%_)))))
                                       (_%E181032181058%_)))
                                   _%body181028%_))
                                 (gx#stx-source _%stx181004%_))
                                (_%E181007181016%_)))))
                      (_%E181007181016%_)))))
          (_%E181006181062%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx180908%_)
        (let* ((_%e180909180916%_ _%stx180908%_)
               (_%E180911180920%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180909180916%_)))
               (_%E180910181000%_
                (lambda ()
                  (if (gx#stx-pair? _%e180909180916%_)
                      (let ((_%e180912180924%_
                             (gx#syntax-e _%e180909180916%_)))
                        (let ((_%hd180913180927%_ (##car _%e180912180924%_))
                              (_%tl180914180929%_ (##cdr _%e180912180924%_)))
                          (let ((_%body180932%_ _%tl180914180929%_))
                            (let _%lp180934%_ ((_%rest180936%_ _%body180932%_)
                                               (_%r180937%_ '()))
                              (let* ((_%e180938180952%_ _%rest180936%_)
                                     (_%E180950180956%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx180908%_)))
                                     (_%E180940180960%_
                                      (lambda ()
                                        (if (gx#stx-null? _%e180938180952%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r180937%_))
                                             (gx#stx-source _%stx180908%_))
                                            (_%E180950180956%_))))
                                     (_%E180939180996%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e180938180952%_)
                                            (let ((_%e180941180964%_
                                                   (gx#syntax-e
                                                    _%e180938180952%_)))
                                              (let ((_%hd180942180967%_
                                                     (##car _%e180941180964%_))
                                                    (_%tl180943180969%_
                                                     (##cdr _%e180941180964%_)))
                                                (if (gx#stx-pair?
                                                     _%hd180942180967%_)
                                                    (let ((_%e180944180972%_
                                                           (gx#syntax-e
                                                            _%hd180942180967%_)))
                                                      (let ((_%hd180945180975%_
                                                             (##car _%e180944180972%_))
                                                            (_%tl180946180977%_
                                                             (##cdr _%e180944180972%_)))
                                                        (let ((_%id180980%_
                                                               _%hd180945180975%_))
                                                          (if (gx#stx-pair?
                                                               _%tl180946180977%_)
                                                              (let ((_%e180947180982%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl180946180977%_)))
                        (let ((_%hd180948180985%_ (##car _%e180947180982%_))
                              (_%tl180949180987%_ (##cdr _%e180947180982%_)))
                          (let ((_%eid180990%_ _%hd180948180985%_))
                            (if (gx#stx-null? _%tl180949180987%_)
                                (let ((_%rest180992%_ _%tl180943180969%_))
                                  (if (and (gx#identifier? _%id180980%_)
                                           (gx#identifier? _%eid180990%_))
                                      (let ((_%eid180994%_
                                             (gx#stx-e _%eid180990%_)))
                                        (gx#core-bind-extern!__0
                                         _%id180980%_
                                         _%eid180994%_)
                                        (_%lp180934%_
                                         _%rest180992%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id180980%_)
                                                     (cons _%eid180994%_ '()))
                                               _%r180937%_)))
                                      (_%E180940180960%_)))
                                (_%E180940180960%_)))))
                      (_%E180940180960%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E180940180960%_))))
                                            (_%E180940180960%_)))))
                                (_%E180939180996%_))))))
                      (_%E180911180920%_)))))
          (_%E180910181000%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx180797%_)
        (let* ((_%e180798180824%_ _%stx180797%_)
               (_%E180813180828%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180798180824%_)))
               (_%E180800180860%_
                (lambda ()
                  (if (gx#stx-pair? _%e180798180824%_)
                      (let ((_%e180814180832%_
                             (gx#syntax-e _%e180798180824%_)))
                        (let ((_%hd180815180835%_ (##car _%e180814180832%_))
                              (_%tl180816180837%_ (##cdr _%e180814180832%_)))
                          (if (gx#stx-pair? _%tl180816180837%_)
                              (let ((_%e180817180840%_
                                     (gx#syntax-e _%tl180816180837%_)))
                                (let ((_%hd180818180843%_
                                       (##car _%e180817180840%_))
                                      (_%tl180819180845%_
                                       (##cdr _%e180817180840%_)))
                                  (let ((_%hd180848%_ _%hd180818180843%_))
                                    (if (gx#stx-pair? _%tl180819180845%_)
                                        (let ((_%e180820180850%_
                                               (gx#syntax-e
                                                _%tl180819180845%_)))
                                          (let ((_%hd180821180853%_
                                                 (##car _%e180820180850%_))
                                                (_%tl180822180855%_
                                                 (##cdr _%e180820180850%_)))
                                            (let ((_%expr180858%_
                                                   _%hd180821180853%_))
                                              (if (gx#stx-null?
                                                   _%tl180822180855%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd180848%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd180848%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd180848%_)
                             (cons (gx#core-expand-expression _%expr180858%_)
                                   '())))
                 (gx#stx-source _%stx180797%_)))
              (_%E180813180828%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E180813180828%_)))))
                                        (_%E180813180828%_)))))
                              (_%E180813180828%_))))
                      (_%E180813180828%_))))
               (_%E180799180904%_
                (lambda ()
                  (if (gx#stx-pair? _%e180798180824%_)
                      (let ((_%e180801180864%_
                             (gx#syntax-e _%e180798180824%_)))
                        (let ((_%hd180802180867%_ (##car _%e180801180864%_))
                              (_%tl180803180869%_ (##cdr _%e180801180864%_)))
                          (if (gx#stx-pair? _%tl180803180869%_)
                              (let ((_%e180804180872%_
                                     (gx#syntax-e _%tl180803180869%_)))
                                (let ((_%hd180805180875%_
                                       (##car _%e180804180872%_))
                                      (_%tl180806180877%_
                                       (##cdr _%e180804180872%_)))
                                  (if (gx#stx-pair? _%hd180805180875%_)
                                      (let ((_%e180810180880%_
                                             (gx#syntax-e _%hd180805180875%_)))
                                        (let ((_%hd180811180883%_
                                               (##car _%e180810180880%_))
                                              (_%tl180812180885%_
                                               (##cdr _%e180810180880%_)))
                                          (let ((_%id180888%_
                                                 _%hd180811180883%_))
                                            (if (gx#stx-null?
                                                 _%tl180812180885%_)
                                                (if (gx#stx-pair?
                                                     _%tl180806180877%_)
                                                    (let ((_%e180807180890%_
                                                           (gx#syntax-e
                                                            _%tl180806180877%_)))
                                                      (let ((_%hd180808180893%_
                                                             (##car _%e180807180890%_))
                                                            (_%tl180809180895%_
                                                             (##cdr _%e180807180890%_)))
                                                        (let* ((_%expr180898%_
                                                                _%hd180808180893%_)
                                                               (_%props180900%_
                                                                _%tl180809180895%_))
                                                          (if (gx#identifier?
                                                               _%id180888%_)
                                                              (let ((_%bind180902%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#core-bind-runtime!__0 _%id180888%_)))
                        (gx#core-bind-runtime-properties!
                         _%bind180902%_
                         _%props180900%_)
                        (gx#core-quote-syntax__1
                         (cons (gx#core-quote-syntax__0 '%#define-values)
                               (cons (gx#core-quote-bind-values
                                      (cons _%id180888%_ '()))
                                     (cons (gx#core-expand-expression
                                            _%expr180898%_)
                                           '())))
                         (gx#stx-source _%stx180797%_)))
                      (_%E180800180860%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E180800180860%_))
                                                (_%E180800180860%_)))))
                                      (_%E180800180860%_))))
                              (_%E180800180860%_))))
                      (_%E180800180860%_)))))
          (_%E180799180904%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx180736%_)
        (let* ((_%e180737180750%_ _%stx180736%_)
               (_%E180739180754%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180737180750%_)))
               (_%E180738180793%_
                (lambda ()
                  (if (gx#stx-pair? _%e180737180750%_)
                      (let ((_%e180740180758%_
                             (gx#syntax-e _%e180737180750%_)))
                        (let ((_%hd180741180761%_ (##car _%e180740180758%_))
                              (_%tl180742180763%_ (##cdr _%e180740180758%_)))
                          (if (gx#stx-pair? _%tl180742180763%_)
                              (let ((_%e180743180766%_
                                     (gx#syntax-e _%tl180742180763%_)))
                                (let ((_%hd180744180769%_
                                       (##car _%e180743180766%_))
                                      (_%tl180745180771%_
                                       (##cdr _%e180743180766%_)))
                                  (let ((_%id180774%_ _%hd180744180769%_))
                                    (if (gx#stx-pair? _%tl180745180771%_)
                                        (let ((_%e180746180776%_
                                               (gx#syntax-e
                                                _%tl180745180771%_)))
                                          (let ((_%hd180747180779%_
                                                 (##car _%e180746180776%_))
                                                (_%tl180748180781%_
                                                 (##cdr _%e180746180776%_)))
                                            (let* ((_%binding-id180784%_
                                                    _%hd180747180779%_)
                                                   (_%props180786%_
                                                    _%tl180748180781%_))
                                              (if (and (gx#identifier?
                                                        _%id180774%_)
                                                       (gx#identifier?
                                                        _%binding-id180784%_)
                                                       (gx#stx-list?
                                                        _%props180786%_))
                                                  (let* ((_%eid180788%_
                                                          (gx#stx-e
                                                           _%binding-id180784%_))
                                                         (_%bind180790%_
                                                          (gx#core-bind-runtime-reference!__0
                                                           _%id180774%_
                                                           _%eid180788%_)))
                                                    (gx#core-bind-runtime-properties!
                                                     _%bind180790%_
                                                     _%props180786%_)
                                                    (gx#core-quote-syntax__0
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#define-runtime)
                                                           (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id180774%_)
                         (cons _%eid180788%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E180739180754%_)))))
                                        (_%E180739180754%_)))))
                              (_%E180739180754%_))))
                      (_%E180739180754%_)))))
          (_%E180738180793%_))))
    (define gx#core-bind-runtime-properties!
      (lambda (_%bind180671%_ _%props180672%_)
        (letrec ((_%eval-prop180674%_
                  (lambda (_%prop180734%_)
                    (gx#eval-expression+1 _%prop180734%_))))
          (let _%loop180676%_ ((_%rest180678%_ _%props180672%_)
                               (_%props180679%_ '()))
            (let* ((_%e180680180691%_ _%rest180678%_)
                   (_%E180689180695%_
                    (lambda ()
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e180680180691%_)))
                   (_%E180682180699%_
                    (lambda ()
                      (if (gx#stx-null? _%e180680180691%_)
                          (if (null? _%props180679%_)
                              '#!void
                              (##structure-set!
                               _%bind180671%_
                               (reverse! _%props180679%_)
                               '4
                               gx#binding::t
                               '#f))
                          (_%E180689180695%_))))
                   (_%E180681180730%_
                    (lambda ()
                      (if (gx#stx-pair? _%e180680180691%_)
                          (let ((_%e180683180703%_
                                 (gx#syntax-e _%e180680180691%_)))
                            (let ((_%hd180684180706%_
                                   (##car _%e180683180703%_))
                                  (_%tl180685180708%_
                                   (##cdr _%e180683180703%_)))
                              (let ((_%key180711%_ _%hd180684180706%_))
                                (if (gx#stx-pair? _%tl180685180708%_)
                                    (let ((_%e180686180713%_
                                           (gx#syntax-e _%tl180685180708%_)))
                                      (let ((_%hd180687180716%_
                                             (##car _%e180686180713%_))
                                            (_%tl180688180718%_
                                             (##cdr _%e180686180713%_)))
                                        (let* ((_%prop180721%_
                                                _%hd180687180716%_)
                                               (_%rest180723%_
                                                _%tl180688180718%_))
                                          (if (gx#stx-keyword? _%key180711%_)
                                              (let* ((_%key180725%_
                                                      (gx#stx-e _%key180711%_))
                                                     (_%$e180727%_
                                                      _%key180725%_))
                                                (if (eq? 'macro: _%$e180727%_)
                                                    (begin
                                                      (##structure-set!
                                                       _%bind180671%_
                                                       (if (gx#identifier?
                                                            _%prop180721%_)
                                                           (gx#core-quote-syntax__0
                                                            _%prop180721%_)
                                                           (gx#eval-expression+1
                                                            _%prop180721%_))
                                                       '6
                                                       gx#runtime-binding::t
                                                       '#f)
                                                      (_%loop180676%_
                                                       _%rest180723%_
                                                       _%props180679%_))
                                                    (if (eq? 'type:
                                                             _%$e180727%_)
                                                        (begin
                                                          (##structure-set!
                                                           _%bind180671%_
                                                           (gx#eval-expression+1
                                                            _%prop180721%_)
                                                           '5
                                                           gx#runtime-binding::t
                                                           '#f)
                                                          (_%loop180676%_
                                                           _%rest180723%_
                                                           _%props180679%_))
                                                        (_%loop180676%_
                                                         _%rest180723%_
                                                         (cons (gx#eval-expression+1
                                                                _%prop180721%_)
                                                               (cons _%key180725%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%props180679%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E180682180699%_)))))
                                    (_%E180682180699%_)))))
                          (_%E180682180699%_)))))
              (_%E180681180730%_))))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx180614%_)
        (let* ((_%e180615180628%_ _%stx180614%_)
               (_%E180617180632%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180615180628%_)))
               (_%E180616180667%_
                (lambda ()
                  (if (gx#stx-pair? _%e180615180628%_)
                      (let ((_%e180618180636%_
                             (gx#syntax-e _%e180615180628%_)))
                        (let ((_%hd180619180639%_ (##car _%e180618180636%_))
                              (_%tl180620180641%_ (##cdr _%e180618180636%_)))
                          (if (gx#stx-pair? _%tl180620180641%_)
                              (let ((_%e180621180644%_
                                     (gx#syntax-e _%tl180620180641%_)))
                                (let ((_%hd180622180647%_
                                       (##car _%e180621180644%_))
                                      (_%tl180623180649%_
                                       (##cdr _%e180621180644%_)))
                                  (let ((_%id180652%_ _%hd180622180647%_))
                                    (if (gx#stx-pair? _%tl180623180649%_)
                                        (let ((_%e180624180654%_
                                               (gx#syntax-e
                                                _%tl180623180649%_)))
                                          (let ((_%hd180625180657%_
                                                 (##car _%e180624180654%_))
                                                (_%tl180626180659%_
                                                 (##cdr _%e180624180654%_)))
                                            (let ((_%expr180662%_
                                                   _%hd180625180657%_))
                                              (if (gx#stx-null?
                                                   _%tl180626180659%_)
                                                  (if (gx#identifier?
                                                       _%id180652%_)
                                                      (let ((_g181828_
                                                             (gx#core-expand-expression+1
                                                              _%expr180662%_)))
                                                        (begin
                                                          (let ((_g181829_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g181828_)
                             (##values-length _g181828_)
                             1)))
                    (if (not (##fx= _g181829_ 2))
                        (error "Context expects 2 values" _g181829_)))
                  (let ((_%e-stx180664%_ (##values-ref _g181828_ 0))
                        (_%e180665%_ (##values-ref _g181828_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id180652%_ _%e180665%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id180652%_)
                                   (cons _%e-stx180664%_ '())))
                       (gx#stx-source _%stx180614%_))))))
              (_%E180617180632%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E180617180632%_)))))
                                        (_%E180617180632%_)))))
                              (_%E180617180632%_))))
                      (_%E180617180632%_)))))
          (_%E180616180667%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx180558%_)
        (let* ((_%e180559180572%_ _%stx180558%_)
               (_%E180561180576%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180559180572%_)))
               (_%E180560180610%_
                (lambda ()
                  (if (gx#stx-pair? _%e180559180572%_)
                      (let ((_%e180562180580%_
                             (gx#syntax-e _%e180559180572%_)))
                        (let ((_%hd180563180583%_ (##car _%e180562180580%_))
                              (_%tl180564180585%_ (##cdr _%e180562180580%_)))
                          (if (gx#stx-pair? _%tl180564180585%_)
                              (let ((_%e180565180588%_
                                     (gx#syntax-e _%tl180564180585%_)))
                                (let ((_%hd180566180591%_
                                       (##car _%e180565180588%_))
                                      (_%tl180567180593%_
                                       (##cdr _%e180565180588%_)))
                                  (let ((_%id180596%_ _%hd180566180591%_))
                                    (if (gx#stx-pair? _%tl180567180593%_)
                                        (let ((_%e180568180598%_
                                               (gx#syntax-e
                                                _%tl180567180593%_)))
                                          (let ((_%hd180569180601%_
                                                 (##car _%e180568180598%_))
                                                (_%tl180570180603%_
                                                 (##cdr _%e180568180598%_)))
                                            (let ((_%alias-id180606%_
                                                   _%hd180569180601%_))
                                              (if (gx#stx-null?
                                                   _%tl180570180603%_)
                                                  (if (and (gx#identifier?
                                                            _%id180596%_)
                                                           (gx#identifier?
                                                            _%alias-id180606%_))
                                                      (let ((_%alias-id180608%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id180606%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id180596%_
                                                         _%alias-id180608%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id180596%_)
                             (cons _%alias-id180608%_ '())))))
              (_%E180561180576%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E180561180576%_)))))
                                        (_%E180561180576%_)))))
                              (_%E180561180576%_))))
                      (_%E180561180576%_)))))
          (_%E180560180610%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx180501%_ _%wrap?180502%_)
        (let* ((_%e180503180513%_ _%stx180501%_)
               (_%E180505180517%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180503180513%_)))
               (_%E180504180544%_
                (lambda ()
                  (if (gx#stx-pair? _%e180503180513%_)
                      (let ((_%e180506180521%_
                             (gx#syntax-e _%e180503180513%_)))
                        (let ((_%hd180507180524%_ (##car _%e180506180521%_))
                              (_%tl180508180526%_ (##cdr _%e180506180521%_)))
                          (if (gx#stx-pair? _%tl180508180526%_)
                              (let ((_%e180509180529%_
                                     (gx#syntax-e _%tl180508180526%_)))
                                (let ((_%hd180510180532%_
                                       (##car _%e180509180529%_))
                                      (_%tl180511180534%_
                                       (##cdr _%e180509180529%_)))
                                  (let* ((_%hd180537%_ _%hd180510180532%_)
                                         (_%body180539%_ _%tl180511180534%_))
                                    (if (gx#core-bind-values? _%hd180537%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd180537%_)
                                           (let ((_%body180542%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd180537%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx180501%_
                                                               _%body180539%_)
                                                              '()))))
                                             (if _%wrap?180502%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body180542%_)
                                                  (gx#stx-source
                                                   _%stx180501%_))
                                                 _%body180542%_)))
                                         gx#current-expander-context
                                         (let ((__obj181811
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj181811)
                                           __obj181811))
                                        (_%E180505180517%_)))))
                              (_%E180505180517%_))))
                      (_%E180505180517%_)))))
          (_%E180504180544%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx180551%_)
        (let ((_%wrap?180553%_ '#t))
          (gx#core-expand-lambda%__% _%stx180551%_ _%wrap?180553%_))))
    (define gx#core-expand-lambda%
      (lambda _g181830_
        (let ((_g181831_ (##length _g181830_)))
          (cond ((##fx= _g181831_ 1)
                 (apply gx#core-expand-lambda%__0 _g181830_))
                ((##fx= _g181831_ 2)
                 (apply gx#core-expand-lambda%__% _g181830_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g181830_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx180465%_)
        (let* ((_%e180466180473%_ _%stx180465%_)
               (_%E180468180477%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180466180473%_)))
               (_%E180467180496%_
                (lambda ()
                  (if (gx#stx-pair? _%e180466180473%_)
                      (let ((_%e180469180481%_
                             (gx#syntax-e _%e180466180473%_)))
                        (let ((_%hd180470180484%_ (##car _%e180469180481%_))
                              (_%tl180471180486%_ (##cdr _%e180469180481%_)))
                          (let ((_%clauses180489%_ _%tl180471180486%_))
                            (if (gx#stx-list? _%clauses180489%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause180491%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause180491%_)
                                       (let ((_%$e180493%_
                                              (gx#stx-source
                                               _%clause180491%_)))
                                         (if _%$e180493%_
                                             _%$e180493%_
                                             (gx#stx-source _%stx180465%_))))
                                      '#f))
                                   _%clauses180489%_))
                                 (gx#stx-source _%stx180465%_))
                                (_%E180468180477%_)))))
                      (_%E180468180477%_)))))
          (_%E180467180496%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx180419%_)
        (let* ((_%e180420180430%_ _%stx180419%_)
               (_%E180422180434%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180420180430%_)))
               (_%E180421180461%_
                (lambda ()
                  (if (gx#stx-pair? _%e180420180430%_)
                      (let ((_%e180423180438%_
                             (gx#syntax-e _%e180420180430%_)))
                        (let ((_%hd180424180441%_ (##car _%e180423180438%_))
                              (_%tl180425180443%_ (##cdr _%e180423180438%_)))
                          (if (gx#stx-pair? _%tl180425180443%_)
                              (let ((_%e180426180446%_
                                     (gx#syntax-e _%tl180425180443%_)))
                                (let ((_%hd180427180449%_
                                       (##car _%e180426180446%_))
                                      (_%tl180428180451%_
                                       (##cdr _%e180426180446%_)))
                                  (let* ((_%hd180454%_ _%hd180427180449%_)
                                         (_%body180456%_ _%tl180428180451%_))
                                    (if (gx#core-expand-let-bind? _%hd180454%_)
                                        (let ((_%expressions180458%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd180454%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd180454%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd180454%_
                                                           _%expressions180458%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx180419%_
                         _%body180456%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx180419%_)))
                                           gx#current-expander-context
                                           (let ((__obj181812
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj181812)
                                             __obj181812)))
                                        (_%E180422180434%_)))))
                              (_%E180422180434%_))))
                      (_%E180422180434%_)))))
          (_%E180421180461%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx180364%_ _%form180365%_)
        (let* ((_%e180366180376%_ _%stx180364%_)
               (_%E180368180380%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180366180376%_)))
               (_%E180367180405%_
                (lambda ()
                  (if (gx#stx-pair? _%e180366180376%_)
                      (let ((_%e180369180384%_
                             (gx#syntax-e _%e180366180376%_)))
                        (let ((_%hd180370180387%_ (##car _%e180369180384%_))
                              (_%tl180371180389%_ (##cdr _%e180369180384%_)))
                          (if (gx#stx-pair? _%tl180371180389%_)
                              (let ((_%e180372180392%_
                                     (gx#syntax-e _%tl180371180389%_)))
                                (let ((_%hd180373180395%_
                                       (##car _%e180372180392%_))
                                      (_%tl180374180397%_
                                       (##cdr _%e180372180392%_)))
                                  (let* ((_%hd180400%_ _%hd180373180395%_)
                                         (_%body180402%_ _%tl180374180397%_))
                                    (if (gx#core-expand-let-bind? _%hd180400%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd180400%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form180365%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd180400%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd180400%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx180364%_
                                                               _%body180402%_)
                                                              '())))
                                            (gx#stx-source _%stx180364%_)))
                                         gx#current-expander-context
                                         (let ((__obj181813
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj181813)
                                           __obj181813))
                                        (_%E180368180380%_)))))
                              (_%E180368180380%_))))
                      (_%E180368180380%_)))))
          (_%E180367180405%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx180412%_)
        (let ((_%form180414%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx180412%_ _%form180414%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g181832_
        (let ((_g181833_ (##length _g181832_)))
          (cond ((##fx= _g181833_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g181832_))
                ((##fx= _g181833_ 2)
                 (apply gx#core-expand-letrec-values%__% _g181832_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g181832_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx180361%_)
        (gx#core-expand-letrec-values%__% _%stx180361%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx180318%_)
        (if (gx#stx-list? _%stx180318%_)
            (gx#stx-andmap
             (lambda (_%bind180320%_)
               (let* ((_%e180321180331%_ _%bind180320%_)
                      (_%E180323180335%_ (lambda () '#f))
                      (_%E180322180357%_
                       (lambda ()
                         (if (gx#stx-pair? _%e180321180331%_)
                             (let ((_%e180324180339%_
                                    (gx#syntax-e _%e180321180331%_)))
                               (let ((_%hd180325180342%_
                                      (##car _%e180324180339%_))
                                     (_%tl180326180344%_
                                      (##cdr _%e180324180339%_)))
                                 (let ((_%hd180347%_ _%hd180325180342%_))
                                   (if (gx#stx-pair? _%tl180326180344%_)
                                       (let ((_%e180327180349%_
                                              (gx#syntax-e
                                               _%tl180326180344%_)))
                                         (let ((_%hd180328180352%_
                                                (##car _%e180327180349%_))
                                               (_%tl180329180354%_
                                                (##cdr _%e180327180349%_)))
                                           (if (gx#stx-null?
                                                _%tl180329180354%_)
                                               (gx#core-bind-values?
                                                _%hd180347%_)
                                               (_%E180323180335%_))))
                                       (_%E180323180335%_)))))
                             (_%E180323180335%_)))))
                 (_%E180322180357%_)))
             _%stx180318%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind180277%_)
        (let* ((_%e180278180288%_ _%bind180277%_)
               (_%E180280180292%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180278180288%_)))
               (_%E180279180314%_
                (lambda ()
                  (if (gx#stx-pair? _%e180278180288%_)
                      (let ((_%e180281180296%_
                             (gx#syntax-e _%e180278180288%_)))
                        (let ((_%hd180282180299%_ (##car _%e180281180296%_))
                              (_%tl180283180301%_ (##cdr _%e180281180296%_)))
                          (if (gx#stx-pair? _%tl180283180301%_)
                              (let ((_%e180284180304%_
                                     (gx#syntax-e _%tl180283180301%_)))
                                (let ((_%hd180285180307%_
                                       (##car _%e180284180304%_))
                                      (_%tl180286180309%_
                                       (##cdr _%e180284180304%_)))
                                  (let ((_%expr180312%_ _%hd180285180307%_))
                                    (if (gx#stx-null? _%tl180286180309%_)
                                        (gx#core-expand-expression
                                         _%expr180312%_)
                                        (_%E180280180292%_)))))
                              (_%E180280180292%_))))
                      (_%E180280180292%_)))))
          (_%E180279180314%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind180236%_)
        (let* ((_%e180237180247%_ _%bind180236%_)
               (_%E180239180251%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180237180247%_)))
               (_%E180238180273%_
                (lambda ()
                  (if (gx#stx-pair? _%e180237180247%_)
                      (let ((_%e180240180255%_
                             (gx#syntax-e _%e180237180247%_)))
                        (let ((_%hd180241180258%_ (##car _%e180240180255%_))
                              (_%tl180242180260%_ (##cdr _%e180240180255%_)))
                          (let ((_%hd180263%_ _%hd180241180258%_))
                            (if (gx#stx-pair? _%tl180242180260%_)
                                (let ((_%e180243180265%_
                                       (gx#syntax-e _%tl180242180260%_)))
                                  (let ((_%hd180244180268%_
                                         (##car _%e180243180265%_))
                                        (_%tl180245180270%_
                                         (##cdr _%e180243180265%_)))
                                    (if (gx#stx-null? _%tl180245180270%_)
                                        (gx#core-bind-values!__0 _%hd180263%_)
                                        (_%E180239180251%_))))
                                (_%E180239180251%_)))))
                      (_%E180239180251%_)))))
          (_%E180238180273%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind180194%_ _%expr180195%_)
        (let* ((_%e180196180206%_ _%bind180194%_)
               (_%E180198180210%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180196180206%_)))
               (_%E180197180232%_
                (lambda ()
                  (if (gx#stx-pair? _%e180196180206%_)
                      (let ((_%e180199180214%_
                             (gx#syntax-e _%e180196180206%_)))
                        (let ((_%hd180200180217%_ (##car _%e180199180214%_))
                              (_%tl180201180219%_ (##cdr _%e180199180214%_)))
                          (let ((_%hd180222%_ _%hd180200180217%_))
                            (if (gx#stx-pair? _%tl180201180219%_)
                                (let ((_%e180202180224%_
                                       (gx#syntax-e _%tl180201180219%_)))
                                  (let ((_%hd180203180227%_
                                         (##car _%e180202180224%_))
                                        (_%tl180204180229%_
                                         (##cdr _%e180202180224%_)))
                                    (if (gx#stx-null? _%tl180204180229%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd180222%_)
                                              (cons _%expr180195%_ '()))
                                        (_%E180198180210%_))))
                                (_%E180198180210%_)))))
                      (_%E180198180210%_)))))
          (_%E180197180232%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx180148%_)
        (let* ((_%e180149180159%_ _%stx180148%_)
               (_%E180151180163%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180149180159%_)))
               (_%E180150180190%_
                (lambda ()
                  (if (gx#stx-pair? _%e180149180159%_)
                      (let ((_%e180152180167%_
                             (gx#syntax-e _%e180149180159%_)))
                        (let ((_%hd180153180170%_ (##car _%e180152180167%_))
                              (_%tl180154180172%_ (##cdr _%e180152180167%_)))
                          (if (gx#stx-pair? _%tl180154180172%_)
                              (let ((_%e180155180175%_
                                     (gx#syntax-e _%tl180154180172%_)))
                                (let ((_%hd180156180178%_
                                       (##car _%e180155180175%_))
                                      (_%tl180157180180%_
                                       (##cdr _%e180155180175%_)))
                                  (let* ((_%hd180183%_ _%hd180156180178%_)
                                         (_%body180185%_ _%tl180157180180%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd180183%_)
                                        (let ((_%expanders180187%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd180183%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd180183%_
                                              _%expanders180187%_)
                                             (gx#core-expand-local-block
                                              _%stx180148%_
                                              _%body180185%_))
                                           gx#current-expander-context
                                           (let ((__obj181814
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj181814)
                                             __obj181814)))
                                        (_%E180151180163%_)))))
                              (_%E180151180163%_))))
                      (_%E180151180163%_)))))
          (_%E180150180190%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx180097%_)
        (let* ((_%e180098180108%_ _%stx180097%_)
               (_%E180100180112%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180098180108%_)))
               (_%E180099180144%_
                (lambda ()
                  (if (gx#stx-pair? _%e180098180108%_)
                      (let ((_%e180101180116%_
                             (gx#syntax-e _%e180098180108%_)))
                        (let ((_%hd180102180119%_ (##car _%e180101180116%_))
                              (_%tl180103180121%_ (##cdr _%e180101180116%_)))
                          (if (gx#stx-pair? _%tl180103180121%_)
                              (let ((_%e180104180124%_
                                     (gx#syntax-e _%tl180103180121%_)))
                                (let ((_%hd180105180127%_
                                       (##car _%e180104180124%_))
                                      (_%tl180106180129%_
                                       (##cdr _%e180104180124%_)))
                                  (let* ((_%hd180132%_ _%hd180105180127%_)
                                         (_%body180134%_ _%tl180106180129%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd180132%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd180132%_
                                            (make-list
                                             (gx#stx-length _%hd180132%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g180136180139%_
                                                     _%g180137180141%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g180136180139%_
                                               _%g180137180141%_
                                               '#t))
                                            _%hd180132%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd180132%_))
                                           (gx#core-expand-local-block
                                            _%stx180097%_
                                            _%body180134%_))
                                         gx#current-expander-context
                                         (let ((__obj181815
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj181815)
                                           __obj181815))
                                        (_%E180100180112%_)))))
                              (_%E180100180112%_))))
                      (_%E180100180112%_)))))
          (_%E180099180144%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx180054%_)
        (if (gx#stx-list? _%stx180054%_)
            (gx#stx-andmap
             (lambda (_%bind180056%_)
               (let* ((_%e180057180067%_ _%bind180056%_)
                      (_%E180059180071%_ (lambda () '#f))
                      (_%E180058180093%_
                       (lambda ()
                         (if (gx#stx-pair? _%e180057180067%_)
                             (let ((_%e180060180075%_
                                    (gx#syntax-e _%e180057180067%_)))
                               (let ((_%hd180061180078%_
                                      (##car _%e180060180075%_))
                                     (_%tl180062180080%_
                                      (##cdr _%e180060180075%_)))
                                 (let ((_%hd180083%_ _%hd180061180078%_))
                                   (if (gx#stx-pair? _%tl180062180080%_)
                                       (let ((_%e180063180085%_
                                              (gx#syntax-e
                                               _%tl180062180080%_)))
                                         (let ((_%hd180064180088%_
                                                (##car _%e180063180085%_))
                                               (_%tl180065180090%_
                                                (##cdr _%e180063180085%_)))
                                           (if (gx#stx-null?
                                                _%tl180065180090%_)
                                               (gx#identifier? _%hd180083%_)
                                               (_%E180059180071%_))))
                                       (_%E180059180071%_)))))
                             (_%E180059180071%_)))))
                 (_%E180058180093%_)))
             _%stx180054%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind180010%_)
        (let* ((_%e180011180021%_ _%bind180010%_)
               (_%E180013180025%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180011180021%_)))
               (_%E180012180050%_
                (lambda ()
                  (if (gx#stx-pair? _%e180011180021%_)
                      (let ((_%e180014180029%_
                             (gx#syntax-e _%e180011180021%_)))
                        (let ((_%hd180015180032%_ (##car _%e180014180029%_))
                              (_%tl180016180034%_ (##cdr _%e180014180029%_)))
                          (if (gx#stx-pair? _%tl180016180034%_)
                              (let ((_%e180017180037%_
                                     (gx#syntax-e _%tl180016180034%_)))
                                (let ((_%hd180018180040%_
                                       (##car _%e180017180037%_))
                                      (_%tl180019180042%_
                                       (##cdr _%e180017180037%_)))
                                  (let ((_%expr180045%_ _%hd180018180040%_))
                                    (if (gx#stx-null? _%tl180019180042%_)
                                        (let ((_g181834_
                                               (gx#core-expand-expression+1
                                                _%expr180045%_)))
                                          (begin
                                            (let ((_g181835_
                                                   (if (##values? _g181834_)
                                                       (##values-length
                                                        _g181834_)
                                                       1)))
                                              (if (not (##fx= _g181835_ 2))
                                                  (error "Context expects 2 values"
                                                         _g181835_)))
                                            (let ((_%_180047%_
                                                   (##values-ref _g181834_ 0))
                                                  (_%e180048%_
                                                   (##values-ref _g181834_ 1)))
                                              _%e180048%_)))
                                        (_%E180013180025%_)))))
                              (_%E180013180025%_))))
                      (_%E180013180025%_)))))
          (_%E180012180050%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind179955%_ _%e179956%_ _%rebind?179957%_)
        (let* ((_%e179958179968%_ _%bind179955%_)
               (_%E179960179972%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e179958179968%_)))
               (_%E179959179994%_
                (lambda ()
                  (if (gx#stx-pair? _%e179958179968%_)
                      (let ((_%e179961179976%_
                             (gx#syntax-e _%e179958179968%_)))
                        (let ((_%hd179962179979%_ (##car _%e179961179976%_))
                              (_%tl179963179981%_ (##cdr _%e179961179976%_)))
                          (let ((_%id179984%_ _%hd179962179979%_))
                            (if (gx#stx-pair? _%tl179963179981%_)
                                (let ((_%e179964179986%_
                                       (gx#syntax-e _%tl179963179981%_)))
                                  (let ((_%hd179965179989%_
                                         (##car _%e179964179986%_))
                                        (_%tl179966179991%_
                                         (##cdr _%e179964179986%_)))
                                    (if (gx#stx-null? _%tl179966179991%_)
                                        (gx#core-bind-syntax!__1
                                         _%id179984%_
                                         _%e179956%_
                                         _%rebind?179957%_)
                                        (_%E179960179972%_))))
                                (_%E179960179972%_)))))
                      (_%E179960179972%_)))))
          (_%E179959179994%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind180001%_ _%e180002%_)
        (let ((_%rebind?180004%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind180001%_
           _%e180002%_
           _%rebind?180004%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g181836_
        (let ((_g181837_ (##length _g181836_)))
          (cond ((##fx= _g181837_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g181836_))
                ((##fx= _g181837_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g181836_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g181836_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx179913%_)
        (let* ((_%e179914179924%_ _%stx179913%_)
               (_%E179916179928%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e179914179924%_)))
               (_%E179915179950%_
                (lambda ()
                  (if (gx#stx-pair? _%e179914179924%_)
                      (let ((_%e179917179932%_
                             (gx#syntax-e _%e179914179924%_)))
                        (let ((_%hd179918179935%_ (##car _%e179917179932%_))
                              (_%tl179919179937%_ (##cdr _%e179917179932%_)))
                          (if (gx#stx-pair? _%tl179919179937%_)
                              (let ((_%e179920179940%_
                                     (gx#syntax-e _%tl179919179937%_)))
                                (let ((_%hd179921179943%_
                                       (##car _%e179920179940%_))
                                      (_%tl179922179945%_
                                       (##cdr _%e179920179940%_)))
                                  (let ((_%expr179948%_ _%hd179921179943%_))
                                    (if (gx#stx-null? _%tl179922179945%_)
                                        (gx#core-expand-expression
                                         _%expr179948%_)
                                        (_%E179916179928%_)))))
                              (_%E179916179928%_))))
                      (_%E179916179928%_)))))
          (_%E179915179950%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx179872%_)
        (let* ((_%e179873179883%_ _%stx179872%_)
               (_%E179875179887%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e179873179883%_)))
               (_%E179874179909%_
                (lambda ()
                  (if (gx#stx-pair? _%e179873179883%_)
                      (let ((_%e179876179891%_
                             (gx#syntax-e _%e179873179883%_)))
                        (let ((_%hd179877179894%_ (##car _%e179876179891%_))
                              (_%tl179878179896%_ (##cdr _%e179876179891%_)))
                          (if (gx#stx-pair? _%tl179878179896%_)
                              (let ((_%e179879179899%_
                                     (gx#syntax-e _%tl179878179896%_)))
                                (let ((_%hd179880179902%_
                                       (##car _%e179879179899%_))
                                      (_%tl179881179904%_
                                       (##cdr _%e179879179899%_)))
                                  (let ((_%e179907%_ _%hd179880179902%_))
                                    (if (gx#stx-null? _%tl179881179904%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e179907%_)
                                                     '()))
                                         (gx#stx-source _%stx179872%_))
                                        (_%E179875179887%_)))))
                              (_%E179875179887%_))))
                      (_%E179875179887%_)))))
          (_%E179874179909%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx179831%_)
        (let* ((_%e179832179842%_ _%stx179831%_)
               (_%E179834179846%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e179832179842%_)))
               (_%E179833179868%_
                (lambda ()
                  (if (gx#stx-pair? _%e179832179842%_)
                      (let ((_%e179835179850%_
                             (gx#syntax-e _%e179832179842%_)))
                        (let ((_%hd179836179853%_ (##car _%e179835179850%_))
                              (_%tl179837179855%_ (##cdr _%e179835179850%_)))
                          (if (gx#stx-pair? _%tl179837179855%_)
                              (let ((_%e179838179858%_
                                     (gx#syntax-e _%tl179837179855%_)))
                                (let ((_%hd179839179861%_
                                       (##car _%e179838179858%_))
                                      (_%tl179840179863%_
                                       (##cdr _%e179838179858%_)))
                                  (let ((_%e179866%_ _%hd179839179861%_))
                                    (if (gx#stx-null? _%tl179840179863%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e179866%_)
                                                     '()))
                                         (gx#stx-source _%stx179831%_))
                                        (_%E179834179846%_)))))
                              (_%E179834179846%_))))
                      (_%E179834179846%_)))))
          (_%E179833179868%_))))
    (define gx#core-expand-call%
      (lambda (_%stx179725%_)
        (letrec ((_%expand-runtime-call179727%_
                  (lambda (_%rator-expr179828%_ _%args179829%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons*
                      '%#call
                      _%rator-expr179828%_
                      (gx#stx-map1 gx#core-expand-expression _%args179829%_))
                     (gx#stx-source _%stx179725%_)))))
          (let* ((_%e179728179738%_ _%stx179725%_)
                 (_%E179730179742%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e179728179738%_)))
                 (_%E179729179824%_
                  (lambda ()
                    (if (gx#stx-pair? _%e179728179738%_)
                        (let ((_%e179731179746%_
                               (gx#syntax-e _%e179728179738%_)))
                          (let ((_%hd179732179749%_ (##car _%e179731179746%_))
                                (_%tl179733179751%_ (##cdr _%e179731179746%_)))
                            (if (gx#stx-pair? _%tl179733179751%_)
                                (let ((_%e179734179754%_
                                       (gx#syntax-e _%tl179733179751%_)))
                                  (let ((_%hd179735179757%_
                                         (##car _%e179734179754%_))
                                        (_%tl179736179759%_
                                         (##cdr _%e179734179754%_)))
                                    (let* ((_%rator179762%_ _%hd179735179757%_)
                                           (_%args179764%_ _%tl179736179759%_))
                                      (if (gx#stx-list? _%args179764%_)
                                          (let* ((_%rator-expr179766%_
                                                  (gx#core-expand-expression
                                                   _%rator179762%_))
                                                 (_%e179767179777%_
                                                  _%rator-expr179766%_)
                                                 (_%E179769179781%_
                                                  (lambda ()
                                                    (_%expand-runtime-call179727%_
                                                     _%rator-expr179766%_
                                                     _%args179764%_)))
                                                 (_%E179768179820%_
                                                  (lambda ()
                                                    (if (gx#stx-pair?
                                                         _%e179767179777%_)
                                                        (let ((_%e179770179785%_
                                                               (gx#syntax-e
                                                                _%e179767179777%_)))
                                                          (let ((_%hd179771179788%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e179770179785%_))
                        (_%tl179772179790%_ (##cdr _%e179770179785%_)))
                    (if (and (gx#identifier? _%hd179771179788%_)
                             (gx#core-identifier=? _%hd179771179788%_ '%#ref))
                        (if (gx#stx-pair? _%tl179772179790%_)
                            (let ((_%e179773179793%_
                                   (gx#syntax-e _%tl179772179790%_)))
                              (let ((_%hd179774179796%_
                                     (##car _%e179773179793%_))
                                    (_%tl179775179798%_
                                     (##cdr _%e179773179793%_)))
                                (let ((_%id179801%_ _%hd179774179796%_))
                                  (if (gx#stx-null? _%tl179775179798%_)
                                      (let ((_%$e179803%_
                                             (gx#resolve-identifier__0
                                              _%id179801%_)))
                                        (if _%$e179803%_
                                            ((lambda (_%bind179806%_)
                                               (let _%again179808%_ ((_%bind179810%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%bind179806%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%$e179812%_
                                                        (if (##structure-instance-of?
                                                             _%bind179810%_
                                                             'gx#runtime-binding::t)
                                                            (##unchecked-structure-ref
                                                             _%bind179810%_
                                                             '6
                                                             '#f
                                                             '#f)
                                                            '#f)))
                                                   (if _%$e179812%_
                                                       ((lambda (_%macro179815%_)
                                                          (gx#core-expand-expression
                                                           (gx#stx-wrap-source
                                                            (cons _%macro179815%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%args179764%_)
                    (gx#stx-source _%stx179725%_))))
                _%$e179812%_)
               (if (##structure-direct-instance-of?
                    _%bind179810%_
                    'gx#import-binding::t)
                   (_%again179808%_
                    (##unchecked-structure-ref _%bind179810%_ '5 '#f '#f))
                   (_%expand-runtime-call179727%_
                    _%rator-expr179766%_
                    _%args179764%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%$e179803%_)
                                            (_%expand-runtime-call179727%_
                                             _%rator-expr179766%_
                                             _%args179764%_)))
                                      (_%E179769179781%_)))))
                            (_%E179769179781%_))
                        (_%E179769179781%_))))
                (_%E179769179781%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E179768179820%_))
                                          (_%E179730179742%_)))))
                                (_%E179730179742%_))))
                        (_%E179730179742%_)))))
            (_%E179729179824%_)))))
    (define gx#core-expand-if%
      (lambda (_%stx179658%_)
        (let* ((_%e179659179675%_ _%stx179658%_)
               (_%E179661179679%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e179659179675%_)))
               (_%E179660179721%_
                (lambda ()
                  (if (gx#stx-pair? _%e179659179675%_)
                      (let ((_%e179662179683%_
                             (gx#syntax-e _%e179659179675%_)))
                        (let ((_%hd179663179686%_ (##car _%e179662179683%_))
                              (_%tl179664179688%_ (##cdr _%e179662179683%_)))
                          (if (gx#stx-pair? _%tl179664179688%_)
                              (let ((_%e179665179691%_
                                     (gx#syntax-e _%tl179664179688%_)))
                                (let ((_%hd179666179694%_
                                       (##car _%e179665179691%_))
                                      (_%tl179667179696%_
                                       (##cdr _%e179665179691%_)))
                                  (let ((_%test179699%_ _%hd179666179694%_))
                                    (if (gx#stx-pair? _%tl179667179696%_)
                                        (let ((_%e179668179701%_
                                               (gx#syntax-e
                                                _%tl179667179696%_)))
                                          (let ((_%hd179669179704%_
                                                 (##car _%e179668179701%_))
                                                (_%tl179670179706%_
                                                 (##cdr _%e179668179701%_)))
                                            (let ((_%K179709%_
                                                   _%hd179669179704%_))
                                              (if (gx#stx-pair?
                                                   _%tl179670179706%_)
                                                  (let ((_%e179671179711%_
                                                         (gx#syntax-e
                                                          _%tl179670179706%_)))
                                                    (let ((_%hd179672179714%_
                                                           (##car _%e179671179711%_))
                                                          (_%tl179673179716%_
                                                           (##cdr _%e179671179711%_)))
                                                      (let ((_%E179719%_
                                                             _%hd179672179714%_))
                                                        (if (gx#stx-null?
                                                             _%tl179673179716%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test179699%_)
                                 (cons (gx#core-expand-expression _%K179709%_)
                                       (cons (gx#core-expand-expression
                                              _%E179719%_)
                                             '()))))
                     (gx#stx-source _%stx179658%_))
                    (_%E179661179679%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E179661179679%_)))))
                                        (_%E179661179679%_)))))
                              (_%E179661179679%_))))
                      (_%E179661179679%_)))))
          (_%E179660179721%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx179617%_)
        (let* ((_%e179618179628%_ _%stx179617%_)
               (_%E179620179632%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e179618179628%_)))
               (_%E179619179654%_
                (lambda ()
                  (if (gx#stx-pair? _%e179618179628%_)
                      (let ((_%e179621179636%_
                             (gx#syntax-e _%e179618179628%_)))
                        (let ((_%hd179622179639%_ (##car _%e179621179636%_))
                              (_%tl179623179641%_ (##cdr _%e179621179636%_)))
                          (if (gx#stx-pair? _%tl179623179641%_)
                              (let ((_%e179624179644%_
                                     (gx#syntax-e _%tl179623179641%_)))
                                (let ((_%hd179625179647%_
                                       (##car _%e179624179644%_))
                                      (_%tl179626179649%_
                                       (##cdr _%e179624179644%_)))
                                  (let ((_%id179652%_ _%hd179625179647%_))
                                    (if (gx#stx-null? _%tl179626179649%_)
                                        (if (gx#identifier? _%id179652%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id179652%_
                                                          _%stx179617%_)
                                                         '()))
                                             (gx#stx-source _%stx179617%_))
                                            (_%E179620179632%_))
                                        (_%E179620179632%_)))))
                              (_%E179620179632%_))))
                      (_%E179620179632%_)))))
          (_%E179619179654%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx179563%_)
        (let* ((_%e179564179577%_ _%stx179563%_)
               (_%E179566179581%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e179564179577%_)))
               (_%E179565179613%_
                (lambda ()
                  (if (gx#stx-pair? _%e179564179577%_)
                      (let ((_%e179567179585%_
                             (gx#syntax-e _%e179564179577%_)))
                        (let ((_%hd179568179588%_ (##car _%e179567179585%_))
                              (_%tl179569179590%_ (##cdr _%e179567179585%_)))
                          (if (gx#stx-pair? _%tl179569179590%_)
                              (let ((_%e179570179593%_
                                     (gx#syntax-e _%tl179569179590%_)))
                                (let ((_%hd179571179596%_
                                       (##car _%e179570179593%_))
                                      (_%tl179572179598%_
                                       (##cdr _%e179570179593%_)))
                                  (let ((_%id179601%_ _%hd179571179596%_))
                                    (if (gx#stx-pair? _%tl179572179598%_)
                                        (let ((_%e179573179603%_
                                               (gx#syntax-e
                                                _%tl179572179598%_)))
                                          (let ((_%hd179574179606%_
                                                 (##car _%e179573179603%_))
                                                (_%tl179575179608%_
                                                 (##cdr _%e179573179603%_)))
                                            (let ((_%expr179611%_
                                                   _%hd179574179606%_))
                                              (if (gx#stx-null?
                                                   _%tl179575179608%_)
                                                  (if (gx#identifier?
                                                       _%id179601%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id179601%_
                            _%stx179563%_)
                           (cons (gx#core-expand-expression _%expr179611%_)
                                 '())))
               (gx#stx-source _%stx179563%_))
              (_%E179566179581%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E179566179581%_)))))
                                        (_%E179566179581%_)))))
                              (_%E179566179581%_))))
                      (_%E179566179581%_)))))
          (_%E179565179613%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx179408%_)
        (letrec ((_%generate179410%_
                  (lambda (_%body179440%_)
                    (let _%lp179442%_ ((_%rest179444%_ _%body179440%_)
                                       (_%ns179445%_
                                        (gx#core-context-namespace__0))
                                       (_%r179446%_ '()))
                      (let* ((_%e179447179462%_ _%rest179444%_)
                             (_%E179460179466%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e179447179462%_)))
                             (_%E179456179470%_
                              (lambda ()
                                (if (gx#stx-null? _%e179447179462%_)
                                    (reverse _%r179446%_)
                                    (_%E179460179466%_))))
                             (_%E179449179527%_
                              (lambda ()
                                (if (gx#stx-pair? _%e179447179462%_)
                                    (let ((_%e179457179474%_
                                           (gx#syntax-e _%e179447179462%_)))
                                      (let ((_%hd179458179477%_
                                             (##car _%e179457179474%_))
                                            (_%tl179459179479%_
                                             (##cdr _%e179457179474%_)))
                                        (let* ((_%hd179482%_
                                                _%hd179458179477%_)
                                               (_%rest179484%_
                                                _%tl179459179479%_))
                                          (if (gx#identifier? _%hd179482%_)
                                              (_%lp179442%_
                                               _%rest179484%_
                                               _%ns179445%_
                                               (cons (cons _%hd179482%_
                                                           (cons (if _%ns179445%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd179482%_
                              _%ns179445%_
                              '"#"
                              _%hd179482%_)
                             _%hd179482%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r179446%_))
                                              (let* ((_%e179485179495%_
                                                      _%hd179482%_)
                                                     (_%E179487179499%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%e179485179495%_)))
                                                     (_%E179486179523%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e179485179495%_)
                                                            (let ((_%e179488179503%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e179485179495%_)))
                      (let ((_%hd179489179506%_ (##car _%e179488179503%_))
                            (_%tl179490179508%_ (##cdr _%e179488179503%_)))
                        (let ((_%id179511%_ _%hd179489179506%_))
                          (if (gx#stx-pair? _%tl179490179508%_)
                              (let ((_%e179491179513%_
                                     (gx#syntax-e _%tl179490179508%_)))
                                (let ((_%hd179492179516%_
                                       (##car _%e179491179513%_))
                                      (_%tl179493179518%_
                                       (##cdr _%e179491179513%_)))
                                  (let ((_%eid179521%_ _%hd179492179516%_))
                                    (if (gx#stx-null? _%tl179493179518%_)
                                        (if (and (gx#identifier? _%id179511%_)
                                                 (gx#identifier?
                                                  _%eid179521%_))
                                            (_%lp179442%_
                                             _%rest179484%_
                                             _%ns179445%_
                                             (cons (cons _%id179511%_
                                                         (cons _%eid179521%_
                                                               '()))
                                                   _%r179446%_))
                                            (_%E179487179499%_))
                                        (_%E179487179499%_)))))
                              (_%E179487179499%_)))))
                    (_%E179487179499%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E179486179523%_))))))
                                    (_%E179456179470%_))))
                             (_%E179448179559%_
                              (lambda ()
                                (if (gx#stx-pair? _%e179447179462%_)
                                    (let ((_%e179450179531%_
                                           (gx#syntax-e _%e179447179462%_)))
                                      (let ((_%hd179451179534%_
                                             (##car _%e179450179531%_))
                                            (_%tl179452179536%_
                                             (##cdr _%e179450179531%_)))
                                        (if (eq? (gx#stx-e _%hd179451179534%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl179452179536%_)
                                                (let ((_%e179453179539%_
                                                       (gx#syntax-e
                                                        _%tl179452179536%_)))
                                                  (let ((_%hd179454179542%_
                                                         (##car _%e179453179539%_))
                                                        (_%tl179455179544%_
                                                         (##cdr _%e179453179539%_)))
                                                    (let* ((_%ns179547%_
                                                            _%hd179454179542%_)
                                                           (_%rest179549%_
                                                            _%tl179455179544%_)
                                                           (_%ns179557%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns179547%_)
                        (symbol->string (gx#stx-e _%ns179547%_))
                        (if (or (gx#stx-string? _%ns179547%_)
                                (gx#stx-false? _%ns179547%_))
                            (gx#stx-e _%ns179547%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx179408%_
                             _%ns179547%_)))))
              (_%lp179442%_ _%rest179549%_ _%ns179557%_ _%r179446%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E179449179527%_))
                                            (_%E179449179527%_))))
                                    (_%E179449179527%_)))))
                        (_%E179448179559%_))))))
          (let* ((_%e179411179418%_ _%stx179408%_)
                 (_%E179413179422%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e179411179418%_)))
                 (_%E179412179436%_
                  (lambda ()
                    (if (gx#stx-pair? _%e179411179418%_)
                        (let ((_%e179414179426%_
                               (gx#syntax-e _%e179411179418%_)))
                          (let ((_%hd179415179429%_ (##car _%e179414179426%_))
                                (_%tl179416179431%_ (##cdr _%e179414179426%_)))
                            (let ((_%body179434%_ _%tl179416179431%_))
                              (if (gx#stx-list? _%body179434%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate179410%_ _%body179434%_))
                                  (_%E179413179422%_)))))
                        (_%E179413179422%_)))))
            (_%E179412179436%_)))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx179365%_)
        (let* ((_%e179366179376%_ _%stx179365%_)
               (_%E179368179380%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e179366179376%_)))
               (_%E179367179404%_
                (lambda ()
                  (if (gx#stx-pair? _%e179366179376%_)
                      (let ((_%e179369179384%_
                             (gx#syntax-e _%e179366179376%_)))
                        (let ((_%hd179370179387%_ (##car _%e179369179384%_))
                              (_%tl179371179389%_ (##cdr _%e179369179384%_)))
                          (if (gx#stx-pair? _%tl179371179389%_)
                              (let ((_%e179372179392%_
                                     (gx#syntax-e _%tl179371179389%_)))
                                (let ((_%hd179373179395%_
                                       (##car _%e179372179392%_))
                                      (_%tl179374179397%_
                                       (##cdr _%e179372179392%_)))
                                  (let* ((_%hd179400%_ _%hd179373179395%_)
                                         (_%body179402%_ _%tl179374179397%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd179400%_)
                                             (gx#stx-list? _%body179402%_)
                                             (not (gx#stx-null?
                                                   _%body179402%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd179400%_)
                                         _%body179402%_)
                                        (_%E179368179380%_)))))
                              (_%E179368179380%_))))
                      (_%E179368179380%_)))))
          (_%E179367179404%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx179301%_)
        (letrec ((_%generate179303%_
                  (lambda (_%clause179333%_)
                    (let* ((_%e179334179341%_ _%clause179333%_)
                           (_%E179336179345%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx179301%_
                               _%clause179333%_)))
                           (_%E179335179361%_
                            (lambda ()
                              (if (gx#stx-pair? _%e179334179341%_)
                                  (let ((_%e179337179349%_
                                         (gx#syntax-e _%e179334179341%_)))
                                    (let ((_%hd179338179352%_
                                           (##car _%e179337179349%_))
                                          (_%tl179339179354%_
                                           (##cdr _%e179337179349%_)))
                                      (let* ((_%hd179357%_ _%hd179338179352%_)
                                             (_%body179359%_
                                              _%tl179339179354%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd179357%_)
                                                 (gx#stx-list? _%body179359%_)
                                                 (not (gx#stx-null?
                                                       _%body179359%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd179357%_)
                                                   _%body179359%_)
                                             (gx#stx-source _%clause179333%_))
                                            (_%E179336179345%_)))))
                                  (_%E179336179345%_)))))
                      (_%E179335179361%_)))))
          (let* ((_%e179304179311%_ _%stx179301%_)
                 (_%E179306179315%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e179304179311%_)))
                 (_%E179305179329%_
                  (lambda ()
                    (if (gx#stx-pair? _%e179304179311%_)
                        (let ((_%e179307179319%_
                               (gx#syntax-e _%e179304179311%_)))
                          (let ((_%hd179308179322%_ (##car _%e179307179319%_))
                                (_%tl179309179324%_ (##cdr _%e179307179319%_)))
                            (let ((_%clauses179327%_ _%tl179309179324%_))
                              (if (gx#stx-list? _%clauses179327%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate179303%_
                                    _%clauses179327%_))
                                  (_%E179306179315%_)))))
                        (_%E179306179315%_)))))
            (_%E179305179329%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx179202%_ _%form179203%_)
        (letrec ((_%generate179205%_
                  (lambda (_%bind179248%_)
                    (let* ((_%e179249179259%_ _%bind179248%_)
                           (_%E179251179263%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx179202%_
                               _%bind179248%_)))
                           (_%E179250179287%_
                            (lambda ()
                              (if (gx#stx-pair? _%e179249179259%_)
                                  (let ((_%e179252179267%_
                                         (gx#syntax-e _%e179249179259%_)))
                                    (let ((_%hd179253179270%_
                                           (##car _%e179252179267%_))
                                          (_%tl179254179272%_
                                           (##cdr _%e179252179267%_)))
                                      (let ((_%ids179275%_ _%hd179253179270%_))
                                        (if (gx#stx-pair? _%tl179254179272%_)
                                            (let ((_%e179255179277%_
                                                   (gx#syntax-e
                                                    _%tl179254179272%_)))
                                              (let ((_%hd179256179280%_
                                                     (##car _%e179255179277%_))
                                                    (_%tl179257179282%_
                                                     (##cdr _%e179255179277%_)))
                                                (let ((_%expr179285%_
                                                       _%hd179256179280%_))
                                                  (if (gx#stx-null?
                                                       _%tl179257179282%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids179275%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids179275%_)
                        (cons _%expr179285%_ '()))
                  (_%E179251179263%_))
              (_%E179251179263%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E179251179263%_)))))
                                  (_%E179251179263%_)))))
                      (_%E179250179287%_)))))
          (let* ((_%e179206179216%_ _%stx179202%_)
                 (_%E179208179220%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e179206179216%_)))
                 (_%E179207179244%_
                  (lambda ()
                    (if (gx#stx-pair? _%e179206179216%_)
                        (let ((_%e179209179224%_
                               (gx#syntax-e _%e179206179216%_)))
                          (let ((_%hd179210179227%_ (##car _%e179209179224%_))
                                (_%tl179211179229%_ (##cdr _%e179209179224%_)))
                            (if (gx#stx-pair? _%tl179211179229%_)
                                (let ((_%e179212179232%_
                                       (gx#syntax-e _%tl179211179229%_)))
                                  (let ((_%hd179213179235%_
                                         (##car _%e179212179232%_))
                                        (_%tl179214179237%_
                                         (##cdr _%e179212179232%_)))
                                    (let* ((_%hd179240%_ _%hd179213179235%_)
                                           (_%body179242%_ _%tl179214179237%_))
                                      (if (and (gx#stx-list? _%hd179240%_)
                                               (gx#stx-list? _%body179242%_)
                                               (not (gx#stx-null?
                                                     _%body179242%_)))
                                          (gx#core-cons*
                                           _%form179203%_
                                           (gx#stx-map1
                                            _%generate179205%_
                                            _%hd179240%_)
                                           _%body179242%_)
                                          (_%E179208179220%_)))))
                                (_%E179208179220%_))))
                        (_%E179208179220%_)))))
            (_%E179207179244%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx179294%_)
        (let ((_%form179296%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx179294%_ _%form179296%_))))
    (define gx#macro-expand-let-values
      (lambda _g181838_
        (let ((_g181839_ (##length _g181838_)))
          (cond ((##fx= _g181839_ 1)
                 (apply gx#macro-expand-let-values__0 _g181838_))
                ((##fx= _g181839_ 2)
                 (apply gx#macro-expand-let-values__% _g181838_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g181838_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx179199%_)
        (gx#macro-expand-let-values__% _%stx179199%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx179197%_)
        (gx#macro-expand-let-values__% _%stx179197%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx179088%_)
        (let* ((_%e179089179115%_ _%stx179088%_)
               (_%E179101179119%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e179089179115%_)))
               (_%E179091179161%_
                (lambda ()
                  (if (gx#stx-pair? _%e179089179115%_)
                      (let ((_%e179102179123%_
                             (gx#syntax-e _%e179089179115%_)))
                        (let ((_%hd179103179126%_ (##car _%e179102179123%_))
                              (_%tl179104179128%_ (##cdr _%e179102179123%_)))
                          (if (gx#stx-pair? _%tl179104179128%_)
                              (let ((_%e179105179131%_
                                     (gx#syntax-e _%tl179104179128%_)))
                                (let ((_%hd179106179134%_
                                       (##car _%e179105179131%_))
                                      (_%tl179107179136%_
                                       (##cdr _%e179105179131%_)))
                                  (let ((_%test179139%_ _%hd179106179134%_))
                                    (if (gx#stx-pair? _%tl179107179136%_)
                                        (let ((_%e179108179141%_
                                               (gx#syntax-e
                                                _%tl179107179136%_)))
                                          (let ((_%hd179109179144%_
                                                 (##car _%e179108179141%_))
                                                (_%tl179110179146%_
                                                 (##cdr _%e179108179141%_)))
                                            (let ((_%K179149%_
                                                   _%hd179109179144%_))
                                              (if (gx#stx-pair?
                                                   _%tl179110179146%_)
                                                  (let ((_%e179111179151%_
                                                         (gx#syntax-e
                                                          _%tl179110179146%_)))
                                                    (let ((_%hd179112179154%_
                                                           (##car _%e179111179151%_))
                                                          (_%tl179113179156%_
                                                           (##cdr _%e179111179151%_)))
                                                      (let ((_%E179159%_
                                                             _%hd179112179154%_))
                                                        (if (gx#stx-null?
                                                             _%tl179113179156%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test179139%_
                                                             _%K179149%_
                                                             _%E179159%_)
                                                            (_%E179101179119%_)))))
                                                  (_%E179101179119%_)))))
                                        (_%E179101179119%_)))))
                              (_%E179101179119%_))))
                      (_%E179101179119%_))))
               (_%E179090179193%_
                (lambda ()
                  (if (gx#stx-pair? _%e179089179115%_)
                      (let ((_%e179092179165%_
                             (gx#syntax-e _%e179089179115%_)))
                        (let ((_%hd179093179168%_ (##car _%e179092179165%_))
                              (_%tl179094179170%_ (##cdr _%e179092179165%_)))
                          (if (gx#stx-pair? _%tl179094179170%_)
                              (let ((_%e179095179173%_
                                     (gx#syntax-e _%tl179094179170%_)))
                                (let ((_%hd179096179176%_
                                       (##car _%e179095179173%_))
                                      (_%tl179097179178%_
                                       (##cdr _%e179095179173%_)))
                                  (let ((_%test179181%_ _%hd179096179176%_))
                                    (if (gx#stx-pair? _%tl179097179178%_)
                                        (let ((_%e179098179183%_
                                               (gx#syntax-e
                                                _%tl179097179178%_)))
                                          (let ((_%hd179099179186%_
                                                 (##car _%e179098179183%_))
                                                (_%tl179100179188%_
                                                 (##cdr _%e179098179183%_)))
                                            (let ((_%K179191%_
                                                   _%hd179099179186%_))
                                              (if (gx#stx-null?
                                                   _%tl179100179188%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test179181%_
                                                   _%K179191%_
                                                   '#!void)
                                                  (_%E179091179161%_)))))
                                        (_%E179091179161%_)))))
                              (_%E179091179161%_))))
                      (_%E179091179161%_)))))
          (_%E179090179193%_))))
    (define gx#free-identifier=?
      (lambda (_%xid179073%_ _%yid179074%_)
        (let ((_%xe179076%_ (gx#resolve-identifier__0 _%xid179073%_))
              (_%ye179077%_ (gx#resolve-identifier__0 _%yid179074%_)))
          (if (and _%xe179076%_ _%ye179077%_)
              (let ((_%$e179080%_ (eq? _%xe179076%_ _%ye179077%_)))
                (if _%$e179080%_
                    _%$e179080%_
                    (if (##structure-instance-of? _%xe179076%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye179077%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe179076%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye179077%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe179076%_ _%ye179077%_)
                  '#f
                  (gx#stx-eq? _%xid179073%_ _%yid179074%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid179054%_ _%yid179055%_)
        (letrec ((_%context179057%_
                  (lambda (_%e179071%_)
                    (if (##structure-direct-instance-of?
                         _%e179071%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e179071%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks179058%_
                  (lambda (_%e179066%_)
                    (if (symbol? _%e179066%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e179066%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e179066%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e179066%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap179059%_
                  (lambda (_%e179064%_)
                    (if (symbol? _%e179064%_)
                        _%e179064%_
                        (gx#syntax-local-unwrap _%e179064%_)))))
          (let ((_%x179061%_ (_%unwrap179059%_ _%xid179054%_))
                (_%y179062%_ (_%unwrap179059%_ _%yid179055%_)))
            (if (gx#stx-eq? _%x179061%_ _%y179062%_)
                (if (eq? (_%context179057%_ _%x179061%_)
                         (_%context179057%_ _%y179062%_))
                    (equal? (_%marks179058%_ _%x179061%_)
                            (_%marks179058%_ _%y179062%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx179052%_)
        (if (gx#identifier? _%stx179052%_)
            (gx#core-identifier=? _%stx179052%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx179050%_)
        (if (gx#identifier? _%stx179050%_)
            (gx#core-identifier=? _%stx179050%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx178993%_ _%where178994%_)
        (let _%lp178996%_ ((_%rest178998%_ (gx#syntax->list _%stx178993%_)))
          (let* ((_%rest178999179007%_ _%rest178998%_)
                 (_%else179001179015%_ (lambda () '#t))
                 (_%K179003179028%_
                  (lambda (_%rest179018%_ _%hd179019%_)
                    (if (gx#identifier? _%hd179019%_)
                        (if (__find (lambda (_%g179021179023%_)
                                      (gx#bound-identifier=?
                                       _%g179021179023%_
                                       _%hd179019%_))
                                    _%rest179018%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where178994%_
                             _%hd179019%_)
                            (_%lp178996%_ _%rest179018%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where178994%_
                         _%hd179019%_)))))
            (if (pair? _%rest178999179007%_)
                (let ((_%hd179004179031%_ (##car _%rest178999179007%_))
                      (_%tl179005179033%_ (##cdr _%rest178999179007%_)))
                  (let* ((_%hd179036%_ _%hd179004179031%_)
                         (_%rest179038%_ _%tl179005179033%_))
                    (_%K179003179028%_ _%rest179038%_ _%hd179036%_)))
                (_%else179001179015%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx179043%_)
        (let ((_%where179045%_ _%stx179043%_))
          (gx#check-duplicate-identifiers__% _%stx179043%_ _%where179045%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g181840_
        (let ((_g181841_ (##length _g181840_)))
          (cond ((##fx= _g181841_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g181840_))
                ((##fx= _g181841_ 2)
                 (apply gx#check-duplicate-identifiers__% _g181840_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g181840_))))))
    (define gx#core-bind-values?
      (lambda (_%stx178985%_)
        (gx#stx-andmap
         (lambda (_%x178987%_)
           (let ((_%$e178989%_ (gx#identifier? _%x178987%_)))
             (if _%$e178989%_ _%$e178989%_ (gx#stx-false? _%x178987%_))))
         _%stx178985%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx178949%_ _%rebind?178950%_ _%phi178951%_ _%ctx178952%_)
        (gx#stx-for-each1
         (lambda (_%id178954%_)
           (if (gx#identifier? _%id178954%_)
               (gx#core-bind-runtime!__%
                _%id178954%_
                _%rebind?178950%_
                _%phi178951%_
                _%ctx178952%_)
               '#!void))
         _%stx178949%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx178959%_)
        (let* ((_%rebind?178961%_ '#f)
               (_%phi178963%_ (gx#current-expander-phi))
               (_%ctx178965%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx178959%_
           _%rebind?178961%_
           _%phi178963%_
           _%ctx178965%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx178967%_ _%rebind?178968%_)
        (let* ((_%phi178970%_ (gx#current-expander-phi))
               (_%ctx178972%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx178967%_
           _%rebind?178968%_
           _%phi178970%_
           _%ctx178972%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx178974%_ _%rebind?178975%_ _%phi178976%_)
        (let ((_%ctx178978%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx178974%_
           _%rebind?178975%_
           _%phi178976%_
           _%ctx178978%_))))
    (define gx#core-bind-values!
      (lambda _g181842_
        (let ((_g181843_ (##length _g181842_)))
          (cond ((##fx= _g181843_ 1) (apply gx#core-bind-values!__0 _g181842_))
                ((##fx= _g181843_ 2) (apply gx#core-bind-values!__1 _g181842_))
                ((##fx= _g181843_ 3) (apply gx#core-bind-values!__2 _g181842_))
                ((##fx= _g181843_ 4) (apply gx#core-bind-values!__% _g181842_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g181842_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx178944%_)
        (gx#stx-map1
         (lambda (_%x178946%_)
           (if (gx#identifier? _%x178946%_)
               (gx#core-quote-syntax__0 _%x178946%_)
               '#f))
         _%stx178944%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx178937%_)
        (if (gx#identifier? _%stx178937%_)
            (let* ((_%bind178939%_ (gx#resolve-identifier__0 _%stx178937%_))
                   (_%$e178941%_ (not _%bind178939%_)))
              (if _%$e178941%_
                  _%$e178941%_
                  (##structure-instance-of?
                   _%bind178939%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id178926%_ _%form178927%_)
        (let ((_%bind178929%_ (gx#resolve-identifier__0 _%id178926%_)))
          (if (##structure-instance-of? _%bind178929%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id178926%_)
              (if (not _%bind178929%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id178926%_)))
                      (gx#core-quote-syntax__0 _%id178926%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form178927%_
                       _%id178926%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form178927%_
                   _%id178926%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id178881%_ _%rebind?178882%_ _%phi178883%_ _%ctx178884%_)
        (let* ((_%key178886%_ (gx#core-identifier-key _%id178881%_))
               (_%eid178888%_
                (gx#make-binding-id__%
                 _%key178886%_
                 '#f
                 _%phi178883%_
                 _%ctx178884%_))
               (_%bind178894%_
                (if (##structure-instance-of?
                     _%ctx178884%_
                     'gx#module-context::t)
                    (let ((__obj181819
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
                       __obj181819
                       _%eid178888%_
                       _%key178886%_
                       _%phi178883%_
                       _%ctx178884%_)
                      __obj181819)
                    (if (##structure-instance-of?
                         _%ctx178884%_
                         'gx#top-context::t)
                        (let ((__obj181818
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj181818
                           _%eid178888%_
                           _%key178886%_
                           _%phi178883%_)
                          __obj181818)
                        (if (##structure-instance-of?
                             _%ctx178884%_
                             'gx#local-context::t)
                            (let ((__obj181817
                                   (##structure
                                    gx#local-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#local-binding:::init!
                               __obj181817
                               _%eid178888%_
                               _%key178886%_
                               _%phi178883%_)
                              __obj181817)
                            (let ((__obj181816
                                   (##structure
                                    gx#runtime-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#runtime-binding:::init!
                               __obj181816
                               _%eid178888%_
                               _%key178886%_
                               _%phi178883%_)
                              __obj181816))))))
          (gx#bind-identifier!__%
           _%id178881%_
           _%bind178894%_
           _%rebind?178882%_
           _%phi178883%_
           _%ctx178884%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id178900%_)
        (let* ((_%rebind?178902%_ '#f)
               (_%phi178904%_ (gx#current-expander-phi))
               (_%ctx178906%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id178900%_
           _%rebind?178902%_
           _%phi178904%_
           _%ctx178906%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id178908%_ _%rebind?178909%_)
        (let* ((_%phi178911%_ (gx#current-expander-phi))
               (_%ctx178913%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id178908%_
           _%rebind?178909%_
           _%phi178911%_
           _%ctx178913%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id178915%_ _%rebind?178916%_ _%phi178917%_)
        (let ((_%ctx178919%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id178915%_
           _%rebind?178916%_
           _%phi178917%_
           _%ctx178919%_))))
    (define gx#core-bind-runtime!
      (lambda _g181844_
        (let ((_g181845_ (##length _g181844_)))
          (cond ((##fx= _g181845_ 1)
                 (apply gx#core-bind-runtime!__0 _g181844_))
                ((##fx= _g181845_ 2)
                 (apply gx#core-bind-runtime!__1 _g181844_))
                ((##fx= _g181845_ 3)
                 (apply gx#core-bind-runtime!__2 _g181844_))
                ((##fx= _g181845_ 4)
                 (apply gx#core-bind-runtime!__% _g181844_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g181844_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id178833%_
               _%eid178834%_
               _%rebind?178835%_
               _%phi178836%_
               _%ctx178837%_)
        (let* ((_%key178839%_ (gx#core-identifier-key _%id178833%_))
               (_%bind178844%_
                (if (##structure-instance-of?
                     _%ctx178837%_
                     'gx#module-context::t)
                    (let ((__obj181822
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
                       __obj181822
                       _%eid178834%_
                       _%key178839%_
                       _%phi178836%_
                       _%ctx178837%_)
                      __obj181822)
                    (if (##structure-instance-of?
                         _%ctx178837%_
                         'gx#top-context::t)
                        (let ((__obj181821
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj181821
                           _%eid178834%_
                           _%key178839%_
                           _%phi178836%_)
                          __obj181821)
                        (let ((__obj181820
                               (##structure
                                gx#runtime-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#runtime-binding:::init!
                           __obj181820
                           _%eid178834%_
                           _%key178839%_
                           _%phi178836%_)
                          __obj181820)))))
          (gx#bind-identifier!__%
           _%id178833%_
           _%bind178844%_
           _%rebind?178835%_
           _%phi178836%_
           _%ctx178837%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id178850%_ _%eid178851%_)
        (let* ((_%rebind?178853%_ '#f)
               (_%phi178855%_ (gx#current-expander-phi))
               (_%ctx178857%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id178850%_
           _%eid178851%_
           _%rebind?178853%_
           _%phi178855%_
           _%ctx178857%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id178859%_ _%eid178860%_ _%rebind?178861%_)
        (let* ((_%phi178863%_ (gx#current-expander-phi))
               (_%ctx178865%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id178859%_
           _%eid178860%_
           _%rebind?178861%_
           _%phi178863%_
           _%ctx178865%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id178867%_ _%eid178868%_ _%rebind?178869%_ _%phi178870%_)
        (let ((_%ctx178872%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id178867%_
           _%eid178868%_
           _%rebind?178869%_
           _%phi178870%_
           _%ctx178872%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g181846_
        (let ((_g181847_ (##length _g181846_)))
          (cond ((##fx= _g181847_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g181846_))
                ((##fx= _g181847_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g181846_))
                ((##fx= _g181847_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g181846_))
                ((##fx= _g181847_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g181846_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g181846_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id178793%_
               _%eid178794%_
               _%rebind?178795%_
               _%phi178796%_
               _%ctx178797%_)
        (gx#bind-identifier!__%
         _%id178793%_
         (let ((__obj181823
                (##structure gx#extern-binding::t '#f '#f '#f '#f '#f '#f)))
           (gx#extern-binding:::init!
            __obj181823
            _%eid178794%_
            (gx#core-identifier-key _%id178793%_)
            _%phi178796%_)
           __obj181823)
         _%rebind?178795%_
         _%phi178796%_
         _%ctx178797%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id178802%_ _%eid178803%_)
        (let* ((_%rebind?178805%_ '#f)
               (_%phi178807%_ (gx#current-expander-phi))
               (_%ctx178809%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id178802%_
           _%eid178803%_
           _%rebind?178805%_
           _%phi178807%_
           _%ctx178809%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id178811%_ _%eid178812%_ _%rebind?178813%_)
        (let* ((_%phi178815%_ (gx#current-expander-phi))
               (_%ctx178817%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id178811%_
           _%eid178812%_
           _%rebind?178813%_
           _%phi178815%_
           _%ctx178817%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id178819%_ _%eid178820%_ _%rebind?178821%_ _%phi178822%_)
        (let ((_%ctx178824%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id178819%_
           _%eid178820%_
           _%rebind?178821%_
           _%phi178822%_
           _%ctx178824%_))))
    (define gx#core-bind-extern!
      (lambda _g181848_
        (let ((_g181849_ (##length _g181848_)))
          (cond ((##fx= _g181849_ 2) (apply gx#core-bind-extern!__0 _g181848_))
                ((##fx= _g181849_ 3) (apply gx#core-bind-extern!__1 _g181848_))
                ((##fx= _g181849_ 4) (apply gx#core-bind-extern!__2 _g181848_))
                ((##fx= _g181849_ 5) (apply gx#core-bind-extern!__% _g181848_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g181848_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id178747%_
               _%e178748%_
               _%rebind?178749%_
               _%phi178750%_
               _%ctx178751%_)
        (gx#bind-identifier!__%
         _%id178747%_
         (let ((_%key178756%_ (gx#core-identifier-key _%id178747%_))
               (_%e178757%_
                (if (or (##structure-instance-of? _%e178748%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e178748%_
                         'gx#expander-context::t))
                    _%e178748%_
                    (##structure
                     gx#user-expander::t
                     _%e178748%_
                     _%ctx178751%_
                     _%phi178750%_))))
           (let ((__obj181824
                  (##structure gx#syntax-binding::t '#f '#f '#f '#f '#f)))
             (gx#syntax-binding:::init!
              __obj181824
              (gx#make-binding-id__%
               _%key178756%_
               '#t
               _%phi178750%_
               _%ctx178751%_)
              _%key178756%_
              _%phi178750%_
              _%e178757%_)
             __obj181824))
         _%rebind?178749%_
         _%phi178750%_
         _%ctx178751%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id178762%_ _%e178763%_)
        (let* ((_%rebind?178765%_ '#f)
               (_%phi178767%_ (gx#current-expander-phi))
               (_%ctx178769%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id178762%_
           _%e178763%_
           _%rebind?178765%_
           _%phi178767%_
           _%ctx178769%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id178771%_ _%e178772%_ _%rebind?178773%_)
        (let* ((_%phi178775%_ (gx#current-expander-phi))
               (_%ctx178777%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id178771%_
           _%e178772%_
           _%rebind?178773%_
           _%phi178775%_
           _%ctx178777%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id178779%_ _%e178780%_ _%rebind?178781%_ _%phi178782%_)
        (let ((_%ctx178784%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id178779%_
           _%e178780%_
           _%rebind?178781%_
           _%phi178782%_
           _%ctx178784%_))))
    (define gx#core-bind-syntax!
      (lambda _g181850_
        (let ((_g181851_ (##length _g181850_)))
          (cond ((##fx= _g181851_ 2) (apply gx#core-bind-syntax!__0 _g181850_))
                ((##fx= _g181851_ 3) (apply gx#core-bind-syntax!__1 _g181850_))
                ((##fx= _g181851_ 4) (apply gx#core-bind-syntax!__2 _g181850_))
                ((##fx= _g181851_ 5) (apply gx#core-bind-syntax!__% _g181850_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g181850_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id178730%_ _%e178731%_ _%rebind?178732%_)
        (gx#core-bind-syntax!__%
         _%id178730%_
         _%e178731%_
         _%rebind?178732%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id178737%_ _%e178738%_)
        (let ((_%rebind?178740%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id178737%_
           _%e178738%_
           _%rebind?178740%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g181852_
        (let ((_g181853_ (##length _g181852_)))
          (cond ((##fx= _g181853_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g181852_))
                ((##fx= _g181853_ 3)
                 (apply gx#core-bind-root-syntax!__% _g181852_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g181852_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id178688%_
               _%alias-id178689%_
               _%rebind?178690%_
               _%phi178691%_
               _%ctx178692%_)
        (gx#bind-identifier!__%
         _%id178688%_
         (let* ((_%key178694%_ (gx#core-identifier-key _%id178688%_))
                (__obj181825
                 (##structure gx#alias-binding::t '#f '#f '#f '#f '#f)))
           (gx#alias-binding:::init!
            __obj181825
            (gx#make-binding-id__%
             _%key178694%_
             '#t
             _%phi178691%_
             _%ctx178692%_)
            _%key178694%_
            _%phi178691%_
            _%alias-id178689%_)
           __obj181825)
         _%rebind?178690%_
         _%phi178691%_
         _%ctx178692%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id178699%_ _%alias-id178700%_)
        (let* ((_%rebind?178702%_ '#f)
               (_%phi178704%_ (gx#current-expander-phi))
               (_%ctx178706%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id178699%_
           _%alias-id178700%_
           _%rebind?178702%_
           _%phi178704%_
           _%ctx178706%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id178708%_ _%alias-id178709%_ _%rebind?178710%_)
        (let* ((_%phi178712%_ (gx#current-expander-phi))
               (_%ctx178714%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id178708%_
           _%alias-id178709%_
           _%rebind?178710%_
           _%phi178712%_
           _%ctx178714%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id178716%_ _%alias-id178717%_ _%rebind?178718%_ _%phi178719%_)
        (let ((_%ctx178721%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id178716%_
           _%alias-id178717%_
           _%rebind?178718%_
           _%phi178719%_
           _%ctx178721%_))))
    (define gx#core-bind-alias!
      (lambda _g181854_
        (let ((_g181855_ (##length _g181854_)))
          (cond ((##fx= _g181855_ 2) (apply gx#core-bind-alias!__0 _g181854_))
                ((##fx= _g181855_ 3) (apply gx#core-bind-alias!__1 _g181854_))
                ((##fx= _g181855_ 4) (apply gx#core-bind-alias!__2 _g181854_))
                ((##fx= _g181855_ 5) (apply gx#core-bind-alias!__% _g181854_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g181854_))))))
    (define gx#make-binding-id__%
      (lambda (_%key178638%_ _%syntax?178639%_ _%phi178640%_ _%ctx178641%_)
        (if (uninterned-symbol? _%key178638%_)
            (##gensym 'L)
            (if (pair? _%key178638%_)
                (gensym (##car _%key178638%_))
                (if (##structure-instance-of? _%ctx178641%_ 'gx#top-context::t)
                    (let ((_%ns178646%_
                           (gx#core-context-namespace__% _%ctx178641%_)))
                      (if (and (fxzero? _%phi178640%_) (not _%syntax?178639%_))
                          (if _%ns178646%_
                              (make-symbol__1 _%ns178646%_ '"#" _%key178638%_)
                              _%key178638%_)
                          (if _%syntax?178639%_
                              (make-symbol__1
                               (let ((_%$e178650%_ _%ns178646%_))
                                 (if _%$e178650%_ _%$e178650%_ '""))
                               '"[:"
                               (number->string _%phi178640%_)
                               '":]#"
                               _%key178638%_)
                              (make-symbol__1
                               (let ((_%$e178654%_ _%ns178646%_))
                                 (if _%$e178654%_ _%$e178654%_ '""))
                               '"["
                               (number->string _%phi178640%_)
                               '"]#"
                               _%key178638%_))))
                    (gensym _%key178638%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key178661%_)
        (let* ((_%syntax?178663%_ '#f)
               (_%phi178665%_ (gx#current-expander-phi))
               (_%ctx178667%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key178661%_
           _%syntax?178663%_
           _%phi178665%_
           _%ctx178667%_))))
    (define gx#make-binding-id__1
      (lambda (_%key178669%_ _%syntax?178670%_)
        (let* ((_%phi178672%_ (gx#current-expander-phi))
               (_%ctx178674%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key178669%_
           _%syntax?178670%_
           _%phi178672%_
           _%ctx178674%_))))
    (define gx#make-binding-id__2
      (lambda (_%key178676%_ _%syntax?178677%_ _%phi178678%_)
        (let ((_%ctx178680%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key178676%_
           _%syntax?178677%_
           _%phi178678%_
           _%ctx178680%_))))
    (define gx#make-binding-id
      (lambda _g181856_
        (let ((_g181857_ (##length _g181856_)))
          (cond ((##fx= _g181857_ 1) (apply gx#make-binding-id__0 _g181856_))
                ((##fx= _g181857_ 2) (apply gx#make-binding-id__1 _g181856_))
                ((##fx= _g181857_ 3) (apply gx#make-binding-id__2 _g181856_))
                ((##fx= _g181857_ 4) (apply gx#make-binding-id__% _g181856_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g181856_))))))))
