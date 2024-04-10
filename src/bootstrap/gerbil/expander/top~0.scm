(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1712784665)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx122610%_)
        (letrec ((_%expand-special122612%_
                  (lambda (_%hd122614%_ _%K122615%_ _%rest122616%_ _%r122617%_)
                    (_%K122615%_
                     _%rest122616%_
                     (cons (gx#core-expand-top _%hd122614%_) _%r122617%_)))))
          (gx#core-expand-block__0 _%stx122610%_ _%expand-special122612%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx122363%_)
        (letrec ((_%expand-special122365%_
                  (lambda (_%hd122485%_ _%K122486%_ _%rest122487%_ _%r122488%_)
                    (let* ((_%K122492%_
                            (lambda (_%e122490%_)
                              (_%K122486%_
                               _%rest122487%_
                               (cons _%e122490%_ _%r122488%_))))
                           (_%e122493122522%_ _%hd122485%_)
                           (_%E122517122526%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e122493122522%_)))
                           (_%E122513122538%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122493122522%_)
                                  (let ((_%e122518122530%_
                                         (gx#syntax-e _%e122493122522%_)))
                                    (let ((_%hd122519122533%_
                                           (##car _%e122518122530%_))
                                          (_%tl122520122535%_
                                           (##cdr _%e122518122530%_)))
                                      (if (and (gx#identifier?
                                                _%hd122519122533%_)
                                               (gx#core-identifier=?
                                                _%hd122519122533%_
                                                '%#define-runtime))
                                          (if '#t
                                              (_%K122492%_
                                               (gx#core-expand-define-runtime%
                                                _%hd122485%_))
                                              (_%E122517122526%_))
                                          (_%E122517122526%_))))
                                  (_%E122517122526%_))))
                           (_%E122509122550%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122493122522%_)
                                  (let ((_%e122514122542%_
                                         (gx#syntax-e _%e122493122522%_)))
                                    (let ((_%hd122515122545%_
                                           (##car _%e122514122542%_))
                                          (_%tl122516122547%_
                                           (##cdr _%e122514122542%_)))
                                      (if (and (gx#identifier?
                                                _%hd122515122545%_)
                                               (gx#core-identifier=?
                                                _%hd122515122545%_
                                                '%#define-alias))
                                          (if '#t
                                              (_%K122492%_
                                               (gx#core-expand-define-alias%
                                                _%hd122485%_))
                                              (_%E122513122538%_))
                                          (_%E122513122538%_))))
                                  (_%E122513122538%_))))
                           (_%E122499122562%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122493122522%_)
                                  (let ((_%e122510122554%_
                                         (gx#syntax-e _%e122493122522%_)))
                                    (let ((_%hd122511122557%_
                                           (##car _%e122510122554%_))
                                          (_%tl122512122559%_
                                           (##cdr _%e122510122554%_)))
                                      (if (and (gx#identifier?
                                                _%hd122511122557%_)
                                               (gx#core-identifier=?
                                                _%hd122511122557%_
                                                '%#define-syntax))
                                          (if '#t
                                              (_%K122492%_
                                               (gx#core-expand-define-syntax%
                                                _%hd122485%_))
                                              (_%E122509122550%_))
                                          (_%E122509122550%_))))
                                  (_%E122509122550%_))))
                           (_%E122495122594%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122493122522%_)
                                  (let ((_%e122500122566%_
                                         (gx#syntax-e _%e122493122522%_)))
                                    (let ((_%hd122501122569%_
                                           (##car _%e122500122566%_))
                                          (_%tl122502122571%_
                                           (##cdr _%e122500122566%_)))
                                      (if (and (gx#identifier?
                                                _%hd122501122569%_)
                                               (gx#core-identifier=?
                                                _%hd122501122569%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl122502122571%_)
                                              (let ((_%e122503122574%_
                                                     (gx#syntax-e
                                                      _%tl122502122571%_)))
                                                (let ((_%hd122504122577%_
                                                       (##car _%e122503122574%_))
                                                      (_%tl122505122579%_
                                                       (##cdr _%e122503122574%_)))
                                                  (let ((_%hd-bind122582%_
                                                         _%hd122504122577%_))
                                                    (if (gx#stx-pair?
                                                         _%tl122505122579%_)
                                                        (let ((_%e122506122584%_
                                                               (gx#syntax-e
                                                                _%tl122505122579%_)))
                                                          (let ((_%hd122507122587%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e122506122584%_))
                        (_%tl122508122589%_ (##cdr _%e122506122584%_)))
                    (let ((_%expr122592%_ _%hd122507122587%_))
                      (if (gx#stx-null? _%tl122508122589%_)
                          (if (gx#core-bind-values? _%hd-bind122582%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind122582%_)
                                (_%K122492%_ _%hd122485%_))
                              (_%E122499122562%_))
                          (_%E122499122562%_)))))
                (_%E122499122562%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E122499122562%_))
                                          (_%E122499122562%_))))
                                  (_%E122499122562%_))))
                           (_%E122494122606%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122493122522%_)
                                  (let ((_%e122496122598%_
                                         (gx#syntax-e _%e122493122522%_)))
                                    (let ((_%hd122497122601%_
                                           (##car _%e122496122598%_))
                                          (_%tl122498122603%_
                                           (##cdr _%e122496122598%_)))
                                      (if (and (gx#identifier?
                                                _%hd122497122601%_)
                                               (gx#core-identifier=?
                                                _%hd122497122601%_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_%K122492%_
                                               (gx#core-expand-begin-syntax%
                                                _%hd122485%_))
                                              (_%E122495122594%_))
                                          (_%E122495122594%_))))
                                  (_%E122495122594%_)))))
                      (_%E122494122606%_))))
                 (_%eval-body122366%_
                  (lambda (_%rbody122374%_)
                    (let _%lp122376%_ ((_%rest122378%_ _%rbody122374%_)
                                       (_%body122379%_ '())
                                       (_%ebody122380%_ '()))
                      (let* ((_%rest122381122389%_ _%rest122378%_)
                             (_%else122383122397%_
                              (lambda ()
                                (values _%body122379%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody122380%_)
                                          (gx#stx-source _%stx122363%_))))))
                             (_%K122385122473%_
                              (lambda (_%rest122400%_ _%hd122401%_)
                                (let* ((_%e122402122419%_ _%hd122401%_)
                                       (_%E122414122423%_
                                        (lambda ()
                                          (_%lp122376%_
                                           _%rest122400%_
                                           (cons _%hd122401%_ _%body122379%_)
                                           (cons _%hd122401%_
                                                 _%ebody122380%_))))
                                       (_%E122404122435%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e122402122419%_)
                                              (let ((_%e122415122427%_
                                                     (gx#syntax-e
                                                      _%e122402122419%_)))
                                                (let ((_%hd122416122430%_
                                                       (##car _%e122415122427%_))
                                                      (_%tl122417122432%_
                                                       (##cdr _%e122415122427%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd122416122430%_)
                                                           (gx#core-identifier=?
                                                            _%hd122416122430%_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_%lp122376%_
                                                           _%rest122400%_
                                                           (cons _%hd122401%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%body122379%_)
                   _%ebody122380%_)
                  (_%E122414122423%_))
              (_%E122414122423%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E122414122423%_))))
                                       (_%E122403122469%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e122402122419%_)
                                              (let ((_%e122405122439%_
                                                     (gx#syntax-e
                                                      _%e122402122419%_)))
                                                (let ((_%hd122406122442%_
                                                       (##car _%e122405122439%_))
                                                      (_%tl122407122444%_
                                                       (##cdr _%e122405122439%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd122406122442%_)
                                                           (gx#core-identifier=?
                                                            _%hd122406122442%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl122407122444%_)
                                                          (let ((_%e122408122447%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl122407122444%_)))
                    (let ((_%hd122409122450%_ (##car _%e122408122447%_))
                          (_%tl122410122452%_ (##cdr _%e122408122447%_)))
                      (let ((_%hd-bind122455%_ _%hd122409122450%_))
                        (if (gx#stx-pair? _%tl122410122452%_)
                            (let ((_%e122411122457%_
                                   (gx#syntax-e _%tl122410122452%_)))
                              (let ((_%hd122412122460%_
                                     (##car _%e122411122457%_))
                                    (_%tl122413122462%_
                                     (##cdr _%e122411122457%_)))
                                (let ((_%expr122465%_ _%hd122412122460%_))
                                  (if (gx#stx-null? _%tl122413122462%_)
                                      (if '#t
                                          (let ((_%ehd122467%_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _%hd-bind122455%_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr122465%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source
                                                   _%hd122401%_))))
                                            (_%lp122376%_
                                             _%rest122400%_
                                             (cons _%ehd122467%_
                                                   _%body122379%_)
                                             (cons _%ehd122467%_
                                                   _%ebody122380%_)))
                                          (_%E122404122435%_))
                                      (_%E122404122435%_)))))
                            (_%E122404122435%_)))))
                  (_%E122404122435%_))
              (_%E122404122435%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E122404122435%_)))))
                                  (_%E122403122469%_)))))
                        (if (##pair? _%rest122381122389%_)
                            (let ((_%hd122386122476%_
                                   (##car _%rest122381122389%_))
                                  (_%tl122387122478%_
                                   (##cdr _%rest122381122389%_)))
                              (let* ((_%hd122481%_ _%hd122386122476%_)
                                     (_%rest122483%_ _%tl122387122478%_))
                                (_%K122385122473%_
                                 _%rest122483%_
                                 _%hd122481%_)))
                            (_%else122383122397%_)))))))
          (__call-with-parameters
           (lambda ()
             (let* ((_%rbody122369%_
                     (gx#core-expand-block__1
                      _%stx122363%_
                      _%expand-special122365%_
                      '#f))
                    (_g122633_ (_%eval-body122366%_ _%rbody122369%_)))
               (begin
                 (let ((_g122634_
                        (if (##values? _g122633_)
                            (##vector-length _g122633_)
                            1)))
                   (if (not (##fx= _g122634_ 2))
                       (error "Context expects 2 values" _g122634_)))
                 (let ((_%expanded-body122371%_ (##vector-ref _g122633_ 0))
                       (_%value122372%_ (##vector-ref _g122633_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body122371%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value122372%_ '())))
                    (gx#stx-source _%stx122363%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx122333%_)
        (let* ((_%e122334122341%_ _%stx122333%_)
               (_%E122336122345%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122334122341%_)))
               (_%E122335122359%_
                (lambda ()
                  (if (gx#stx-pair? _%e122334122341%_)
                      (let ((_%e122337122349%_
                             (gx#syntax-e _%e122334122341%_)))
                        (let ((_%hd122338122352%_ (##car _%e122337122349%_))
                              (_%tl122339122354%_ (##cdr _%e122337122349%_)))
                          (let ((_%body122357%_ _%tl122339122354%_))
                            (if (gx#stx-list? _%body122357%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body122357%_)
                                 (gx#stx-source _%stx122333%_))
                                (_%E122336122345%_)))))
                      (_%E122336122345%_)))))
          (_%E122335122359%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx122331%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx122331%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx122277%_)
        (let* ((_%e122278122291%_ _%stx122277%_)
               (_%E122280122295%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122278122291%_)))
               (_%E122279122327%_
                (lambda ()
                  (if (gx#stx-pair? _%e122278122291%_)
                      (let ((_%e122281122299%_
                             (gx#syntax-e _%e122278122291%_)))
                        (let ((_%hd122282122302%_ (##car _%e122281122299%_))
                              (_%tl122283122304%_ (##cdr _%e122281122299%_)))
                          (if (gx#stx-pair? _%tl122283122304%_)
                              (let ((_%e122284122307%_
                                     (gx#syntax-e _%tl122283122304%_)))
                                (let ((_%hd122285122310%_
                                       (##car _%e122284122307%_))
                                      (_%tl122286122312%_
                                       (##cdr _%e122284122307%_)))
                                  (let ((_%ann122315%_ _%hd122285122310%_))
                                    (if (gx#stx-pair? _%tl122286122312%_)
                                        (let ((_%e122287122317%_
                                               (gx#syntax-e
                                                _%tl122286122312%_)))
                                          (let ((_%hd122288122320%_
                                                 (##car _%e122287122317%_))
                                                (_%tl122289122322%_
                                                 (##cdr _%e122287122317%_)))
                                            (let ((_%expr122325%_
                                                   _%hd122288122320%_))
                                              (if (gx#stx-null?
                                                   _%tl122289122322%_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _%ann122315%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _%expr122325%_)
                                 '())))
               (gx#stx-source _%stx122277%_))
              (_%E122280122295%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E122280122295%_)))))
                                        (_%E122280122295%_)))))
                              (_%E122280122295%_))))
                      (_%E122280122295%_)))))
          (_%E122279122327%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx122001%_ _%body122002%_)
        (letrec ((_%expand-special122004%_
                  (lambda (_%hd122272%_ _%K122273%_ _%rest122274%_ _%r122275%_)
                    (_%K122273%_
                     '()
                     (cons (_%expand-internal122005%_
                            _%hd122272%_
                            _%rest122274%_)
                           _%r122275%_))))
                 (_%expand-internal122005%_
                  (lambda (_%hd122268%_ _%rest122269%_)
                    (__call-with-parameters
                     (lambda ()
                       (_%wrap-internal122007%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd122268%_ _%rest122269%_))
                          (gx#stx-source _%stx122001%_))
                         _%expand-internal-special122006%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj122627
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj122627)
                       __obj122627))))
                 (_%expand-internal-special122006%_
                  (lambda (_%hd122163%_ _%K122164%_ _%rest122165%_ _%r122166%_)
                    (let* ((_%e122167122192%_ _%hd122163%_)
                           (_%E122187122196%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e122167122192%_)))
                           (_%E122183122208%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122167122192%_)
                                  (let ((_%e122188122200%_
                                         (gx#syntax-e _%e122167122192%_)))
                                    (let ((_%hd122189122203%_
                                           (##car _%e122188122200%_))
                                          (_%tl122190122205%_
                                           (##cdr _%e122188122200%_)))
                                      (if (and (gx#identifier?
                                                _%hd122189122203%_)
                                               (gx#core-identifier=?
                                                _%hd122189122203%_
                                                '%#declare))
                                          (if '#t
                                              (_%K122164%_
                                               _%rest122165%_
                                               (cons (gx#core-expand-declare%
                                                      _%hd122163%_)
                                                     _%r122166%_))
                                              (_%E122187122196%_))
                                          (_%E122187122196%_))))
                                  (_%E122187122196%_))))
                           (_%E122179122220%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122167122192%_)
                                  (let ((_%e122184122212%_
                                         (gx#syntax-e _%e122167122192%_)))
                                    (let ((_%hd122185122215%_
                                           (##car _%e122184122212%_))
                                          (_%tl122186122217%_
                                           (##cdr _%e122184122212%_)))
                                      (if (and (gx#identifier?
                                                _%hd122185122215%_)
                                               (gx#core-identifier=?
                                                _%hd122185122215%_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _%hd122163%_)
                                                (_%K122164%_
                                                 _%rest122165%_
                                                 _%r122166%_))
                                              (_%E122183122208%_))
                                          (_%E122183122208%_))))
                                  (_%E122183122208%_))))
                           (_%E122169122232%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122167122192%_)
                                  (let ((_%e122180122224%_
                                         (gx#syntax-e _%e122167122192%_)))
                                    (let ((_%hd122181122227%_
                                           (##car _%e122180122224%_))
                                          (_%tl122182122229%_
                                           (##cdr _%e122180122224%_)))
                                      (if (and (gx#identifier?
                                                _%hd122181122227%_)
                                               (gx#core-identifier=?
                                                _%hd122181122227%_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _%hd122163%_)
                                                (_%K122164%_
                                                 _%rest122165%_
                                                 _%r122166%_))
                                              (_%E122179122220%_))
                                          (_%E122179122220%_))))
                                  (_%E122179122220%_))))
                           (_%E122168122264%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122167122192%_)
                                  (let ((_%e122170122236%_
                                         (gx#syntax-e _%e122167122192%_)))
                                    (let ((_%hd122171122239%_
                                           (##car _%e122170122236%_))
                                          (_%tl122172122241%_
                                           (##cdr _%e122170122236%_)))
                                      (if (and (gx#identifier?
                                                _%hd122171122239%_)
                                               (gx#core-identifier=?
                                                _%hd122171122239%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl122172122241%_)
                                              (let ((_%e122173122244%_
                                                     (gx#syntax-e
                                                      _%tl122172122241%_)))
                                                (let ((_%hd122174122247%_
                                                       (##car _%e122173122244%_))
                                                      (_%tl122175122249%_
                                                       (##cdr _%e122173122244%_)))
                                                  (let ((_%hd-bind122252%_
                                                         _%hd122174122247%_))
                                                    (if (gx#stx-pair?
                                                         _%tl122175122249%_)
                                                        (let ((_%e122176122254%_
                                                               (gx#syntax-e
                                                                _%tl122175122249%_)))
                                                          (let ((_%hd122177122257%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e122176122254%_))
                        (_%tl122178122259%_ (##cdr _%e122176122254%_)))
                    (let ((_%expr122262%_ _%hd122177122257%_))
                      (if (gx#stx-null? _%tl122178122259%_)
                          (if (gx#core-bind-values? _%hd-bind122252%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind122252%_)
                                (_%K122164%_
                                 _%rest122165%_
                                 (cons _%hd122163%_ _%r122166%_)))
                              (_%E122169122232%_))
                          (_%E122169122232%_)))))
                (_%E122169122232%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E122169122232%_))
                                          (_%E122169122232%_))))
                                  (_%E122169122232%_)))))
                      (_%E122168122264%_))))
                 (_%wrap-internal122007%_
                  (lambda (_%rbody122009%_)
                    (let _%lp122011%_ ((_%rest122013%_ _%rbody122009%_)
                                       (_%decls122014%_ '())
                                       (_%bind122015%_ '())
                                       (_%body122016%_ '()))
                      (let* ((_%e122017122024%_ _%rest122013%_)
                             (_%E122019122073%_
                              (lambda ()
                                (let* ((_%body122068%_
                                        (let* ((_%body122027122037%_
                                                _%body122016%_)
                                               (_%else122030122045%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body122016%_)
                                                   (gx#stx-source
                                                    _%stx122001%_)))))
                                          (let ((_%K122035122065%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx122001%_)))
                                                (_%K122032122051%_
                                                 (lambda (_%expr122049%_)
                                                   _%expr122049%_)))
                                            (let ((_%try-match122029122061%_
                                                   (lambda ()
                                                     (if (##pair? _%body122027122037%_)
                                                         (let ((_%tl122034122056%_
                                                                (##cdr _%body122027122037%_))
                                                               (_%hd122033122054%_
                                                                (##car _%body122027122037%_)))
                                                           (if (##null? _%tl122034122056%_)
                                                               (let ((_%expr122059%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd122033122054%_))
                         (_%K122032122051%_ _%expr122059%_))
                       (_%else122030122045%_)))
                 (_%else122030122045%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _%body122027122037%_)
                                                  (_%K122035122065%_)
                                                  (_%try-match122029122061%_))))))
                                       (_%body122070%_
                                        (if (null? _%bind122015%_)
                                            _%body122068%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind122015%_
                                                         (cons _%body122068%_
                                                               '())))
                                             (gx#stx-source _%stx122001%_)))))
                                  (if (null? _%decls122014%_)
                                      _%body122070%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls122014%_
                                                   (cons _%body122070%_ '())))
                                       (gx#stx-source _%stx122001%_))))))
                             (_%E122018122159%_
                              (lambda ()
                                (if (gx#stx-pair? _%e122017122024%_)
                                    (let ((_%e122020122077%_
                                           (gx#syntax-e _%e122017122024%_)))
                                      (let ((_%hd122021122080%_
                                             (##car _%e122020122077%_))
                                            (_%tl122022122082%_
                                             (##cdr _%e122020122077%_)))
                                        (let* ((_%hd122085%_
                                                _%hd122021122080%_)
                                               (_%rest122087%_
                                                _%tl122022122082%_))
                                          (if '#t
                                              (let* ((_%e122088122105%_
                                                      _%hd122085%_)
                                                     (_%E122100122109%_
                                                      (lambda ()
                                                        (if (null? _%bind122015%_)
                                                            (_%lp122011%_
                                                             _%rest122087%_
                                                             _%decls122014%_
                                                             _%bind122015%_
                                                             (cons _%hd122085%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body122016%_))
                    (_%lp122011%_
                     _%rest122087%_
                     _%decls122014%_
                     (cons (cons '#f (cons _%hd122085%_ '())) _%bind122015%_)
                     _%body122016%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E122090122123%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e122088122105%_)
                                                            (let ((_%e122101122113%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e122088122105%_)))
                      (let ((_%hd122102122116%_ (##car _%e122101122113%_))
                            (_%tl122103122118%_ (##cdr _%e122101122113%_)))
                        (if (and (gx#identifier? _%hd122102122116%_)
                                 (gx#core-identifier=?
                                  _%hd122102122116%_
                                  '%#declare))
                            (let ((_%xdecls122121%_ _%tl122103122118%_))
                              (if '#t
                                  (_%lp122011%_
                                   _%rest122087%_
                                   (gx#stx-foldr
                                    cons
                                    _%decls122014%_
                                    _%xdecls122121%_)
                                   _%bind122015%_
                                   _%body122016%_)
                                  (_%E122100122109%_)))
                            (_%E122100122109%_))))
                    (_%E122100122109%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E122089122155%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e122088122105%_)
                                                            (let ((_%e122091122127%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e122088122105%_)))
                      (let ((_%hd122092122130%_ (##car _%e122091122127%_))
                            (_%tl122093122132%_ (##cdr _%e122091122127%_)))
                        (if (and (gx#identifier? _%hd122092122130%_)
                                 (gx#core-identifier=?
                                  _%hd122092122130%_
                                  '%#define-values))
                            (if (gx#stx-pair? _%tl122093122132%_)
                                (let ((_%e122094122135%_
                                       (gx#syntax-e _%tl122093122132%_)))
                                  (let ((_%hd122095122138%_
                                         (##car _%e122094122135%_))
                                        (_%tl122096122140%_
                                         (##cdr _%e122094122135%_)))
                                    (let ((_%hd-bind122143%_
                                           _%hd122095122138%_))
                                      (if (gx#stx-pair? _%tl122096122140%_)
                                          (let ((_%e122097122145%_
                                                 (gx#syntax-e
                                                  _%tl122096122140%_)))
                                            (let ((_%hd122098122148%_
                                                   (##car _%e122097122145%_))
                                                  (_%tl122099122150%_
                                                   (##cdr _%e122097122145%_)))
                                              (let ((_%expr122153%_
                                                     _%hd122098122148%_))
                                                (if (gx#stx-null?
                                                     _%tl122099122150%_)
                                                    (if '#t
                                                        (_%lp122011%_
                                                         _%rest122087%_
                                                         _%decls122014%_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd-bind122143%_)
                             (cons (gx#core-expand-expression _%expr122153%_)
                                   '()))
                       _%bind122015%_)
                 _%body122016%_)
                (_%E122090122123%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E122090122123%_)))))
                                          (_%E122090122123%_)))))
                                (_%E122090122123%_))
                            (_%E122090122123%_))))
                    (_%E122090122123%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E122089122155%_))
                                              (_%E122019122073%_)))))
                                    (_%E122019122073%_)))))
                        (_%E122018122159%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body122002%_)
            (gx#stx-source _%stx122001%_))
           _%expand-special122004%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx121939%_)
        (let* ((_%e121940121947%_ _%stx121939%_)
               (_%E121942121951%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121940121947%_)))
               (_%E121941121997%_
                (lambda ()
                  (if (gx#stx-pair? _%e121940121947%_)
                      (let ((_%e121943121955%_
                             (gx#syntax-e _%e121940121947%_)))
                        (let ((_%hd121944121958%_ (##car _%e121943121955%_))
                              (_%tl121945121960%_ (##cdr _%e121943121955%_)))
                          (let ((_%body121963%_ _%tl121945121960%_))
                            (if (gx#stx-list? _%body121963%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl121965%_)
                                     (let* ((_%e121966121973%_ _%decl121965%_)
                                            (_%E121968121977%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e121966121973%_)))
                                            (_%E121967121993%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e121966121973%_)
                                                   (let ((_%e121969121981%_
                                                          (gx#syntax-e
                                                           _%e121966121973%_)))
                                                     (let ((_%hd121970121984%_
                                                            (##car _%e121969121981%_))
                                                           (_%tl121971121986%_
                                                            (##cdr _%e121969121981%_)))
                                                       (let* ((_%head121989%_
                                                               _%hd121970121984%_)
                                                              (_%args121991%_
                                                               _%tl121971121986%_))
                                                         (if (gx#stx-list?
                                                              _%args121991%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl121965%_)
                                                             (_%E121968121977%_)))))
                                                   (_%E121968121977%_)))))
                                       (_%E121967121993%_)))
                                   _%body121963%_))
                                 (gx#stx-source _%stx121939%_))
                                (_%E121942121951%_)))))
                      (_%E121942121951%_)))))
          (_%E121941121997%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx121843%_)
        (let* ((_%e121844121851%_ _%stx121843%_)
               (_%E121846121855%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121844121851%_)))
               (_%E121845121935%_
                (lambda ()
                  (if (gx#stx-pair? _%e121844121851%_)
                      (let ((_%e121847121859%_
                             (gx#syntax-e _%e121844121851%_)))
                        (let ((_%hd121848121862%_ (##car _%e121847121859%_))
                              (_%tl121849121864%_ (##cdr _%e121847121859%_)))
                          (let ((_%body121867%_ _%tl121849121864%_))
                            (if '#t
                                (let _%lp121869%_ ((_%rest121871%_
                                                    _%body121867%_)
                                                   (_%r121872%_ '()))
                                  (let* ((_%e121873121887%_ _%rest121871%_)
                                         (_%E121885121891%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _%stx121843%_)))
                                         (_%E121875121895%_
                                          (lambda ()
                                            (if (gx#stx-null?
                                                 _%e121873121887%_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _%r121872%_))
                                                     (gx#stx-source
                                                      _%stx121843%_))
                                                    (_%E121885121891%_))
                                                (_%E121885121891%_))))
                                         (_%E121874121931%_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 _%e121873121887%_)
                                                (let ((_%e121876121899%_
                                                       (gx#syntax-e
                                                        _%e121873121887%_)))
                                                  (let ((_%hd121877121902%_
                                                         (##car _%e121876121899%_))
                                                        (_%tl121878121904%_
                                                         (##cdr _%e121876121899%_)))
                                                    (if (gx#stx-pair?
                                                         _%hd121877121902%_)
                                                        (let ((_%e121879121907%_
                                                               (gx#syntax-e
                                                                _%hd121877121902%_)))
                                                          (let ((_%hd121880121910%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e121879121907%_))
                        (_%tl121881121912%_ (##cdr _%e121879121907%_)))
                    (let ((_%id121915%_ _%hd121880121910%_))
                      (if (gx#stx-pair? _%tl121881121912%_)
                          (let ((_%e121882121917%_
                                 (gx#syntax-e _%tl121881121912%_)))
                            (let ((_%hd121883121920%_
                                   (##car _%e121882121917%_))
                                  (_%tl121884121922%_
                                   (##cdr _%e121882121917%_)))
                              (let ((_%eid121925%_ _%hd121883121920%_))
                                (if (gx#stx-null? _%tl121884121922%_)
                                    (let ((_%rest121927%_ _%tl121878121904%_))
                                      (if (and (gx#identifier? _%id121915%_)
                                               (gx#identifier? _%eid121925%_))
                                          (let ((_%eid121929%_
                                                 (gx#stx-e _%eid121925%_)))
                                            (gx#core-bind-extern!__0
                                             _%id121915%_
                                             _%eid121929%_)
                                            (_%lp121869%_
                                             _%rest121927%_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _%id121915%_)
                                                         (cons _%eid121929%_
                                                               '()))
                                                   _%r121872%_)))
                                          (_%E121875121895%_)))
                                    (_%E121875121895%_)))))
                          (_%E121875121895%_)))))
                (_%E121875121895%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E121875121895%_)))))
                                    (_%E121874121931%_)))
                                (_%E121846121855%_)))))
                      (_%E121846121855%_)))))
          (_%E121845121935%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx121789%_)
        (let* ((_%e121790121803%_ _%stx121789%_)
               (_%E121792121807%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121790121803%_)))
               (_%E121791121839%_
                (lambda ()
                  (if (gx#stx-pair? _%e121790121803%_)
                      (let ((_%e121793121811%_
                             (gx#syntax-e _%e121790121803%_)))
                        (let ((_%hd121794121814%_ (##car _%e121793121811%_))
                              (_%tl121795121816%_ (##cdr _%e121793121811%_)))
                          (if (gx#stx-pair? _%tl121795121816%_)
                              (let ((_%e121796121819%_
                                     (gx#syntax-e _%tl121795121816%_)))
                                (let ((_%hd121797121822%_
                                       (##car _%e121796121819%_))
                                      (_%tl121798121824%_
                                       (##cdr _%e121796121819%_)))
                                  (let ((_%hd121827%_ _%hd121797121822%_))
                                    (if (gx#stx-pair? _%tl121798121824%_)
                                        (let ((_%e121799121829%_
                                               (gx#syntax-e
                                                _%tl121798121824%_)))
                                          (let ((_%hd121800121832%_
                                                 (##car _%e121799121829%_))
                                                (_%tl121801121834%_
                                                 (##cdr _%e121799121829%_)))
                                            (let ((_%expr121837%_
                                                   _%hd121800121832%_))
                                              (if (gx#stx-null?
                                                   _%tl121801121834%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd121827%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd121827%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd121827%_)
                             (cons (gx#core-expand-expression _%expr121837%_)
                                   '())))
                 (gx#stx-source _%stx121789%_)))
              (_%E121792121807%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121792121807%_)))))
                                        (_%E121792121807%_)))))
                              (_%E121792121807%_))))
                      (_%E121792121807%_)))))
          (_%E121791121839%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx121733%_)
        (let* ((_%e121734121747%_ _%stx121733%_)
               (_%E121736121751%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121734121747%_)))
               (_%E121735121785%_
                (lambda ()
                  (if (gx#stx-pair? _%e121734121747%_)
                      (let ((_%e121737121755%_
                             (gx#syntax-e _%e121734121747%_)))
                        (let ((_%hd121738121758%_ (##car _%e121737121755%_))
                              (_%tl121739121760%_ (##cdr _%e121737121755%_)))
                          (if (gx#stx-pair? _%tl121739121760%_)
                              (let ((_%e121740121763%_
                                     (gx#syntax-e _%tl121739121760%_)))
                                (let ((_%hd121741121766%_
                                       (##car _%e121740121763%_))
                                      (_%tl121742121768%_
                                       (##cdr _%e121740121763%_)))
                                  (let ((_%id121771%_ _%hd121741121766%_))
                                    (if (gx#stx-pair? _%tl121742121768%_)
                                        (let ((_%e121743121773%_
                                               (gx#syntax-e
                                                _%tl121742121768%_)))
                                          (let ((_%hd121744121776%_
                                                 (##car _%e121743121773%_))
                                                (_%tl121745121778%_
                                                 (##cdr _%e121743121773%_)))
                                            (let ((_%binding-id121781%_
                                                   _%hd121744121776%_))
                                              (if (gx#stx-null?
                                                   _%tl121745121778%_)
                                                  (if (and (gx#identifier?
                                                            _%id121771%_)
                                                           (gx#identifier?
                                                            _%binding-id121781%_))
                                                      (let ((_%eid121783%_
                                                             (gx#stx-e
                                                              _%binding-id121781%_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _%id121771%_
                                                         _%eid121783%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id121771%_)
                             (cons _%eid121783%_ '())))))
              (_%E121736121751%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121736121751%_)))))
                                        (_%E121736121751%_)))))
                              (_%E121736121751%_))))
                      (_%E121736121751%_)))))
          (_%E121735121785%_))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx121676%_)
        (let* ((_%e121677121690%_ _%stx121676%_)
               (_%E121679121694%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121677121690%_)))
               (_%E121678121729%_
                (lambda ()
                  (if (gx#stx-pair? _%e121677121690%_)
                      (let ((_%e121680121698%_
                             (gx#syntax-e _%e121677121690%_)))
                        (let ((_%hd121681121701%_ (##car _%e121680121698%_))
                              (_%tl121682121703%_ (##cdr _%e121680121698%_)))
                          (if (gx#stx-pair? _%tl121682121703%_)
                              (let ((_%e121683121706%_
                                     (gx#syntax-e _%tl121682121703%_)))
                                (let ((_%hd121684121709%_
                                       (##car _%e121683121706%_))
                                      (_%tl121685121711%_
                                       (##cdr _%e121683121706%_)))
                                  (let ((_%id121714%_ _%hd121684121709%_))
                                    (if (gx#stx-pair? _%tl121685121711%_)
                                        (let ((_%e121686121716%_
                                               (gx#syntax-e
                                                _%tl121685121711%_)))
                                          (let ((_%hd121687121719%_
                                                 (##car _%e121686121716%_))
                                                (_%tl121688121721%_
                                                 (##cdr _%e121686121716%_)))
                                            (let ((_%expr121724%_
                                                   _%hd121687121719%_))
                                              (if (gx#stx-null?
                                                   _%tl121688121721%_)
                                                  (if (gx#identifier?
                                                       _%id121714%_)
                                                      (let ((_g122635_
                                                             (gx#core-expand-expression+1
                                                              _%expr121724%_)))
                                                        (begin
                                                          (let ((_g122636_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g122635_)
                             (##vector-length _g122635_)
                             1)))
                    (if (not (##fx= _g122636_ 2))
                        (error "Context expects 2 values" _g122636_)))
                  (let ((_%e-stx121726%_ (##vector-ref _g122635_ 0))
                        (_%e121727%_ (##vector-ref _g122635_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id121714%_ _%e121727%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id121714%_)
                                   (cons _%e-stx121726%_ '())))
                       (gx#stx-source _%stx121676%_))))))
              (_%E121679121694%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121679121694%_)))))
                                        (_%E121679121694%_)))))
                              (_%E121679121694%_))))
                      (_%E121679121694%_)))))
          (_%E121678121729%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx121620%_)
        (let* ((_%e121621121634%_ _%stx121620%_)
               (_%E121623121638%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121621121634%_)))
               (_%E121622121672%_
                (lambda ()
                  (if (gx#stx-pair? _%e121621121634%_)
                      (let ((_%e121624121642%_
                             (gx#syntax-e _%e121621121634%_)))
                        (let ((_%hd121625121645%_ (##car _%e121624121642%_))
                              (_%tl121626121647%_ (##cdr _%e121624121642%_)))
                          (if (gx#stx-pair? _%tl121626121647%_)
                              (let ((_%e121627121650%_
                                     (gx#syntax-e _%tl121626121647%_)))
                                (let ((_%hd121628121653%_
                                       (##car _%e121627121650%_))
                                      (_%tl121629121655%_
                                       (##cdr _%e121627121650%_)))
                                  (let ((_%id121658%_ _%hd121628121653%_))
                                    (if (gx#stx-pair? _%tl121629121655%_)
                                        (let ((_%e121630121660%_
                                               (gx#syntax-e
                                                _%tl121629121655%_)))
                                          (let ((_%hd121631121663%_
                                                 (##car _%e121630121660%_))
                                                (_%tl121632121665%_
                                                 (##cdr _%e121630121660%_)))
                                            (let ((_%alias-id121668%_
                                                   _%hd121631121663%_))
                                              (if (gx#stx-null?
                                                   _%tl121632121665%_)
                                                  (if (and (gx#identifier?
                                                            _%id121658%_)
                                                           (gx#identifier?
                                                            _%alias-id121668%_))
                                                      (let ((_%alias-id121670%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id121668%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id121658%_
                                                         _%alias-id121670%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id121658%_)
                             (cons _%alias-id121670%_ '())))))
              (_%E121623121638%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121623121638%_)))))
                                        (_%E121623121638%_)))))
                              (_%E121623121638%_))))
                      (_%E121623121638%_)))))
          (_%E121622121672%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx121563%_ _%wrap?121564%_)
        (let* ((_%e121565121575%_ _%stx121563%_)
               (_%E121567121579%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121565121575%_)))
               (_%E121566121606%_
                (lambda ()
                  (if (gx#stx-pair? _%e121565121575%_)
                      (let ((_%e121568121583%_
                             (gx#syntax-e _%e121565121575%_)))
                        (let ((_%hd121569121586%_ (##car _%e121568121583%_))
                              (_%tl121570121588%_ (##cdr _%e121568121583%_)))
                          (if (gx#stx-pair? _%tl121570121588%_)
                              (let ((_%e121571121591%_
                                     (gx#syntax-e _%tl121570121588%_)))
                                (let ((_%hd121572121594%_
                                       (##car _%e121571121591%_))
                                      (_%tl121573121596%_
                                       (##cdr _%e121571121591%_)))
                                  (let* ((_%hd121599%_ _%hd121572121594%_)
                                         (_%body121601%_ _%tl121573121596%_))
                                    (if (gx#core-bind-values? _%hd121599%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd121599%_)
                                           (let ((_%body121604%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd121599%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx121563%_
                                                               _%body121601%_)
                                                              '()))))
                                             (if _%wrap?121564%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body121604%_)
                                                  (gx#stx-source
                                                   _%stx121563%_))
                                                 _%body121604%_)))
                                         gx#current-expander-context
                                         (let ((__obj122628
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj122628)
                                           __obj122628))
                                        (_%E121567121579%_)))))
                              (_%E121567121579%_))))
                      (_%E121567121579%_)))))
          (_%E121566121606%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx121613%_)
        (let ((_%wrap?121615%_ '#t))
          (gx#core-expand-lambda%__% _%stx121613%_ _%wrap?121615%_))))
    (define gx#core-expand-lambda%
      (lambda _g122638_
        (let ((_g122637_ (##length _g122638_)))
          (cond ((##fx= _g122637_ 1)
                 (apply gx#core-expand-lambda%__0 _g122638_))
                ((##fx= _g122637_ 2)
                 (apply gx#core-expand-lambda%__% _g122638_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g122638_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx121527%_)
        (let* ((_%e121528121535%_ _%stx121527%_)
               (_%E121530121539%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121528121535%_)))
               (_%E121529121558%_
                (lambda ()
                  (if (gx#stx-pair? _%e121528121535%_)
                      (let ((_%e121531121543%_
                             (gx#syntax-e _%e121528121535%_)))
                        (let ((_%hd121532121546%_ (##car _%e121531121543%_))
                              (_%tl121533121548%_ (##cdr _%e121531121543%_)))
                          (let ((_%clauses121551%_ _%tl121533121548%_))
                            (if (gx#stx-list? _%clauses121551%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause121553%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause121553%_)
                                       (let ((_%$e121555%_
                                              (gx#stx-source
                                               _%clause121553%_)))
                                         (if _%$e121555%_
                                             _%$e121555%_
                                             (gx#stx-source _%stx121527%_))))
                                      '#f))
                                   _%clauses121551%_))
                                 (gx#stx-source _%stx121527%_))
                                (_%E121530121539%_)))))
                      (_%E121530121539%_)))))
          (_%E121529121558%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx121481%_)
        (let* ((_%e121482121492%_ _%stx121481%_)
               (_%E121484121496%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121482121492%_)))
               (_%E121483121523%_
                (lambda ()
                  (if (gx#stx-pair? _%e121482121492%_)
                      (let ((_%e121485121500%_
                             (gx#syntax-e _%e121482121492%_)))
                        (let ((_%hd121486121503%_ (##car _%e121485121500%_))
                              (_%tl121487121505%_ (##cdr _%e121485121500%_)))
                          (if (gx#stx-pair? _%tl121487121505%_)
                              (let ((_%e121488121508%_
                                     (gx#syntax-e _%tl121487121505%_)))
                                (let ((_%hd121489121511%_
                                       (##car _%e121488121508%_))
                                      (_%tl121490121513%_
                                       (##cdr _%e121488121508%_)))
                                  (let* ((_%hd121516%_ _%hd121489121511%_)
                                         (_%body121518%_ _%tl121490121513%_))
                                    (if (gx#core-expand-let-bind? _%hd121516%_)
                                        (let ((_%expressions121520%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd121516%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd121516%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd121516%_
                                                           _%expressions121520%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx121481%_
                         _%body121518%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx121481%_)))
                                           gx#current-expander-context
                                           (let ((__obj122629
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj122629)
                                             __obj122629)))
                                        (_%E121484121496%_)))))
                              (_%E121484121496%_))))
                      (_%E121484121496%_)))))
          (_%E121483121523%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx121426%_ _%form121427%_)
        (let* ((_%e121428121438%_ _%stx121426%_)
               (_%E121430121442%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121428121438%_)))
               (_%E121429121467%_
                (lambda ()
                  (if (gx#stx-pair? _%e121428121438%_)
                      (let ((_%e121431121446%_
                             (gx#syntax-e _%e121428121438%_)))
                        (let ((_%hd121432121449%_ (##car _%e121431121446%_))
                              (_%tl121433121451%_ (##cdr _%e121431121446%_)))
                          (if (gx#stx-pair? _%tl121433121451%_)
                              (let ((_%e121434121454%_
                                     (gx#syntax-e _%tl121433121451%_)))
                                (let ((_%hd121435121457%_
                                       (##car _%e121434121454%_))
                                      (_%tl121436121459%_
                                       (##cdr _%e121434121454%_)))
                                  (let* ((_%hd121462%_ _%hd121435121457%_)
                                         (_%body121464%_ _%tl121436121459%_))
                                    (if (gx#core-expand-let-bind? _%hd121462%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd121462%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form121427%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd121462%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd121462%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx121426%_
                                                               _%body121464%_)
                                                              '())))
                                            (gx#stx-source _%stx121426%_)))
                                         gx#current-expander-context
                                         (let ((__obj122630
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj122630)
                                           __obj122630))
                                        (_%E121430121442%_)))))
                              (_%E121430121442%_))))
                      (_%E121430121442%_)))))
          (_%E121429121467%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx121474%_)
        (let ((_%form121476%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx121474%_ _%form121476%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g122640_
        (let ((_g122639_ (##length _g122640_)))
          (cond ((##fx= _g122639_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g122640_))
                ((##fx= _g122639_ 2)
                 (apply gx#core-expand-letrec-values%__% _g122640_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g122640_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx121423%_)
        (gx#core-expand-letrec-values%__% _%stx121423%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx121380%_)
        (if (gx#stx-list? _%stx121380%_)
            (gx#stx-andmap
             (lambda (_%bind121382%_)
               (let* ((_%e121383121393%_ _%bind121382%_)
                      (_%E121385121397%_ (lambda () '#f))
                      (_%E121384121419%_
                       (lambda ()
                         (if (gx#stx-pair? _%e121383121393%_)
                             (let ((_%e121386121401%_
                                    (gx#syntax-e _%e121383121393%_)))
                               (let ((_%hd121387121404%_
                                      (##car _%e121386121401%_))
                                     (_%tl121388121406%_
                                      (##cdr _%e121386121401%_)))
                                 (let ((_%hd121409%_ _%hd121387121404%_))
                                   (if (gx#stx-pair? _%tl121388121406%_)
                                       (let ((_%e121389121411%_
                                              (gx#syntax-e
                                               _%tl121388121406%_)))
                                         (let ((_%hd121390121414%_
                                                (##car _%e121389121411%_))
                                               (_%tl121391121416%_
                                                (##cdr _%e121389121411%_)))
                                           (if (gx#stx-null?
                                                _%tl121391121416%_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _%hd121409%_)
                                                   (_%E121385121397%_))
                                               (_%E121385121397%_))))
                                       (_%E121385121397%_)))))
                             (_%E121385121397%_)))))
                 (_%E121384121419%_)))
             _%stx121380%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind121339%_)
        (let* ((_%e121340121350%_ _%bind121339%_)
               (_%E121342121354%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121340121350%_)))
               (_%E121341121376%_
                (lambda ()
                  (if (gx#stx-pair? _%e121340121350%_)
                      (let ((_%e121343121358%_
                             (gx#syntax-e _%e121340121350%_)))
                        (let ((_%hd121344121361%_ (##car _%e121343121358%_))
                              (_%tl121345121363%_ (##cdr _%e121343121358%_)))
                          (if (gx#stx-pair? _%tl121345121363%_)
                              (let ((_%e121346121366%_
                                     (gx#syntax-e _%tl121345121363%_)))
                                (let ((_%hd121347121369%_
                                       (##car _%e121346121366%_))
                                      (_%tl121348121371%_
                                       (##cdr _%e121346121366%_)))
                                  (let ((_%expr121374%_ _%hd121347121369%_))
                                    (if (gx#stx-null? _%tl121348121371%_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _%expr121374%_)
                                            (_%E121342121354%_))
                                        (_%E121342121354%_)))))
                              (_%E121342121354%_))))
                      (_%E121342121354%_)))))
          (_%E121341121376%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind121298%_)
        (let* ((_%e121299121309%_ _%bind121298%_)
               (_%E121301121313%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121299121309%_)))
               (_%E121300121335%_
                (lambda ()
                  (if (gx#stx-pair? _%e121299121309%_)
                      (let ((_%e121302121317%_
                             (gx#syntax-e _%e121299121309%_)))
                        (let ((_%hd121303121320%_ (##car _%e121302121317%_))
                              (_%tl121304121322%_ (##cdr _%e121302121317%_)))
                          (let ((_%hd121325%_ _%hd121303121320%_))
                            (if (gx#stx-pair? _%tl121304121322%_)
                                (let ((_%e121305121327%_
                                       (gx#syntax-e _%tl121304121322%_)))
                                  (let ((_%hd121306121330%_
                                         (##car _%e121305121327%_))
                                        (_%tl121307121332%_
                                         (##cdr _%e121305121327%_)))
                                    (if (gx#stx-null? _%tl121307121332%_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _%hd121325%_)
                                            (_%E121301121313%_))
                                        (_%E121301121313%_))))
                                (_%E121301121313%_)))))
                      (_%E121301121313%_)))))
          (_%E121300121335%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind121256%_ _%expr121257%_)
        (let* ((_%e121258121268%_ _%bind121256%_)
               (_%E121260121272%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121258121268%_)))
               (_%E121259121294%_
                (lambda ()
                  (if (gx#stx-pair? _%e121258121268%_)
                      (let ((_%e121261121276%_
                             (gx#syntax-e _%e121258121268%_)))
                        (let ((_%hd121262121279%_ (##car _%e121261121276%_))
                              (_%tl121263121281%_ (##cdr _%e121261121276%_)))
                          (let ((_%hd121284%_ _%hd121262121279%_))
                            (if (gx#stx-pair? _%tl121263121281%_)
                                (let ((_%e121264121286%_
                                       (gx#syntax-e _%tl121263121281%_)))
                                  (let ((_%hd121265121289%_
                                         (##car _%e121264121286%_))
                                        (_%tl121266121291%_
                                         (##cdr _%e121264121286%_)))
                                    (if (gx#stx-null? _%tl121266121291%_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _%hd121284%_)
                                                  (cons _%expr121257%_ '()))
                                            (_%E121260121272%_))
                                        (_%E121260121272%_))))
                                (_%E121260121272%_)))))
                      (_%E121260121272%_)))))
          (_%E121259121294%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx121210%_)
        (let* ((_%e121211121221%_ _%stx121210%_)
               (_%E121213121225%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121211121221%_)))
               (_%E121212121252%_
                (lambda ()
                  (if (gx#stx-pair? _%e121211121221%_)
                      (let ((_%e121214121229%_
                             (gx#syntax-e _%e121211121221%_)))
                        (let ((_%hd121215121232%_ (##car _%e121214121229%_))
                              (_%tl121216121234%_ (##cdr _%e121214121229%_)))
                          (if (gx#stx-pair? _%tl121216121234%_)
                              (let ((_%e121217121237%_
                                     (gx#syntax-e _%tl121216121234%_)))
                                (let ((_%hd121218121240%_
                                       (##car _%e121217121237%_))
                                      (_%tl121219121242%_
                                       (##cdr _%e121217121237%_)))
                                  (let* ((_%hd121245%_ _%hd121218121240%_)
                                         (_%body121247%_ _%tl121219121242%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd121245%_)
                                        (let ((_%expanders121249%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd121245%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd121245%_
                                              _%expanders121249%_)
                                             (gx#core-expand-local-block
                                              _%stx121210%_
                                              _%body121247%_))
                                           gx#current-expander-context
                                           (let ((__obj122631
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj122631)
                                             __obj122631)))
                                        (_%E121213121225%_)))))
                              (_%E121213121225%_))))
                      (_%E121213121225%_)))))
          (_%E121212121252%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx121159%_)
        (let* ((_%e121160121170%_ _%stx121159%_)
               (_%E121162121174%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121160121170%_)))
               (_%E121161121206%_
                (lambda ()
                  (if (gx#stx-pair? _%e121160121170%_)
                      (let ((_%e121163121178%_
                             (gx#syntax-e _%e121160121170%_)))
                        (let ((_%hd121164121181%_ (##car _%e121163121178%_))
                              (_%tl121165121183%_ (##cdr _%e121163121178%_)))
                          (if (gx#stx-pair? _%tl121165121183%_)
                              (let ((_%e121166121186%_
                                     (gx#syntax-e _%tl121165121183%_)))
                                (let ((_%hd121167121189%_
                                       (##car _%e121166121186%_))
                                      (_%tl121168121191%_
                                       (##cdr _%e121166121186%_)))
                                  (let* ((_%hd121194%_ _%hd121167121189%_)
                                         (_%body121196%_ _%tl121168121191%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd121194%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd121194%_
                                            (make-list
                                             (gx#stx-length _%hd121194%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g121198121201%_
                                                     _%g121199121203%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g121198121201%_
                                               _%g121199121203%_
                                               '#t))
                                            _%hd121194%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd121194%_))
                                           (gx#core-expand-local-block
                                            _%stx121159%_
                                            _%body121196%_))
                                         gx#current-expander-context
                                         (let ((__obj122632
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj122632)
                                           __obj122632))
                                        (_%E121162121174%_)))))
                              (_%E121162121174%_))))
                      (_%E121162121174%_)))))
          (_%E121161121206%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx121116%_)
        (if (gx#stx-list? _%stx121116%_)
            (gx#stx-andmap
             (lambda (_%bind121118%_)
               (let* ((_%e121119121129%_ _%bind121118%_)
                      (_%E121121121133%_ (lambda () '#f))
                      (_%E121120121155%_
                       (lambda ()
                         (if (gx#stx-pair? _%e121119121129%_)
                             (let ((_%e121122121137%_
                                    (gx#syntax-e _%e121119121129%_)))
                               (let ((_%hd121123121140%_
                                      (##car _%e121122121137%_))
                                     (_%tl121124121142%_
                                      (##cdr _%e121122121137%_)))
                                 (let ((_%hd121145%_ _%hd121123121140%_))
                                   (if (gx#stx-pair? _%tl121124121142%_)
                                       (let ((_%e121125121147%_
                                              (gx#syntax-e
                                               _%tl121124121142%_)))
                                         (let ((_%hd121126121150%_
                                                (##car _%e121125121147%_))
                                               (_%tl121127121152%_
                                                (##cdr _%e121125121147%_)))
                                           (if (gx#stx-null?
                                                _%tl121127121152%_)
                                               (if '#t
                                                   (gx#identifier?
                                                    _%hd121145%_)
                                                   (_%E121121121133%_))
                                               (_%E121121121133%_))))
                                       (_%E121121121133%_)))))
                             (_%E121121121133%_)))))
                 (_%E121120121155%_)))
             _%stx121116%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind121072%_)
        (let* ((_%e121073121083%_ _%bind121072%_)
               (_%E121075121087%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121073121083%_)))
               (_%E121074121112%_
                (lambda ()
                  (if (gx#stx-pair? _%e121073121083%_)
                      (let ((_%e121076121091%_
                             (gx#syntax-e _%e121073121083%_)))
                        (let ((_%hd121077121094%_ (##car _%e121076121091%_))
                              (_%tl121078121096%_ (##cdr _%e121076121091%_)))
                          (if (gx#stx-pair? _%tl121078121096%_)
                              (let ((_%e121079121099%_
                                     (gx#syntax-e _%tl121078121096%_)))
                                (let ((_%hd121080121102%_
                                       (##car _%e121079121099%_))
                                      (_%tl121081121104%_
                                       (##cdr _%e121079121099%_)))
                                  (let ((_%expr121107%_ _%hd121080121102%_))
                                    (if (gx#stx-null? _%tl121081121104%_)
                                        (if '#t
                                            (let ((_g122641_
                                                   (gx#core-expand-expression+1
                                                    _%expr121107%_)))
                                              (begin
                                                (let ((_g122642_
                                                       (if (##values?
                                                            _g122641_)
                                                           (##vector-length
                                                            _g122641_)
                                                           1)))
                                                  (if (not (##fx= _g122642_ 2))
                                                      (error "Context expects 2 values"
                                                             _g122642_)))
                                                (let ((_%_121109%_
                                                       (##vector-ref
                                                        _g122641_
                                                        0))
                                                      (_%e121110%_
                                                       (##vector-ref
                                                        _g122641_
                                                        1)))
                                                  _%e121110%_)))
                                            (_%E121075121087%_))
                                        (_%E121075121087%_)))))
                              (_%E121075121087%_))))
                      (_%E121075121087%_)))))
          (_%E121074121112%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind121017%_ _%e121018%_ _%rebind?121019%_)
        (let* ((_%e121020121030%_ _%bind121017%_)
               (_%E121022121034%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121020121030%_)))
               (_%E121021121056%_
                (lambda ()
                  (if (gx#stx-pair? _%e121020121030%_)
                      (let ((_%e121023121038%_
                             (gx#syntax-e _%e121020121030%_)))
                        (let ((_%hd121024121041%_ (##car _%e121023121038%_))
                              (_%tl121025121043%_ (##cdr _%e121023121038%_)))
                          (let ((_%id121046%_ _%hd121024121041%_))
                            (if (gx#stx-pair? _%tl121025121043%_)
                                (let ((_%e121026121048%_
                                       (gx#syntax-e _%tl121025121043%_)))
                                  (let ((_%hd121027121051%_
                                         (##car _%e121026121048%_))
                                        (_%tl121028121053%_
                                         (##cdr _%e121026121048%_)))
                                    (if (gx#stx-null? _%tl121028121053%_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _%id121046%_
                                             _%e121018%_
                                             _%rebind?121019%_)
                                            (_%E121022121034%_))
                                        (_%E121022121034%_))))
                                (_%E121022121034%_)))))
                      (_%E121022121034%_)))))
          (_%E121021121056%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind121063%_ _%e121064%_)
        (let ((_%rebind?121066%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind121063%_
           _%e121064%_
           _%rebind?121066%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g122644_
        (let ((_g122643_ (##length _g122644_)))
          (cond ((##fx= _g122643_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g122644_))
                ((##fx= _g122643_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g122644_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g122644_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx120975%_)
        (let* ((_%e120976120986%_ _%stx120975%_)
               (_%E120978120990%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120976120986%_)))
               (_%E120977121012%_
                (lambda ()
                  (if (gx#stx-pair? _%e120976120986%_)
                      (let ((_%e120979120994%_
                             (gx#syntax-e _%e120976120986%_)))
                        (let ((_%hd120980120997%_ (##car _%e120979120994%_))
                              (_%tl120981120999%_ (##cdr _%e120979120994%_)))
                          (if (gx#stx-pair? _%tl120981120999%_)
                              (let ((_%e120982121002%_
                                     (gx#syntax-e _%tl120981120999%_)))
                                (let ((_%hd120983121005%_
                                       (##car _%e120982121002%_))
                                      (_%tl120984121007%_
                                       (##cdr _%e120982121002%_)))
                                  (let ((_%expr121010%_ _%hd120983121005%_))
                                    (if (gx#stx-null? _%tl120984121007%_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _%expr121010%_)
                                            (_%E120978120990%_))
                                        (_%E120978120990%_)))))
                              (_%E120978120990%_))))
                      (_%E120978120990%_)))))
          (_%E120977121012%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx120934%_)
        (let* ((_%e120935120945%_ _%stx120934%_)
               (_%E120937120949%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120935120945%_)))
               (_%E120936120971%_
                (lambda ()
                  (if (gx#stx-pair? _%e120935120945%_)
                      (let ((_%e120938120953%_
                             (gx#syntax-e _%e120935120945%_)))
                        (let ((_%hd120939120956%_ (##car _%e120938120953%_))
                              (_%tl120940120958%_ (##cdr _%e120938120953%_)))
                          (if (gx#stx-pair? _%tl120940120958%_)
                              (let ((_%e120941120961%_
                                     (gx#syntax-e _%tl120940120958%_)))
                                (let ((_%hd120942120964%_
                                       (##car _%e120941120961%_))
                                      (_%tl120943120966%_
                                       (##cdr _%e120941120961%_)))
                                  (let ((_%e120969%_ _%hd120942120964%_))
                                    (if (gx#stx-null? _%tl120943120966%_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _%e120969%_)
                                                         '()))
                                             (gx#stx-source _%stx120934%_))
                                            (_%E120937120949%_))
                                        (_%E120937120949%_)))))
                              (_%E120937120949%_))))
                      (_%E120937120949%_)))))
          (_%E120936120971%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx120893%_)
        (let* ((_%e120894120904%_ _%stx120893%_)
               (_%E120896120908%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120894120904%_)))
               (_%E120895120930%_
                (lambda ()
                  (if (gx#stx-pair? _%e120894120904%_)
                      (let ((_%e120897120912%_
                             (gx#syntax-e _%e120894120904%_)))
                        (let ((_%hd120898120915%_ (##car _%e120897120912%_))
                              (_%tl120899120917%_ (##cdr _%e120897120912%_)))
                          (if (gx#stx-pair? _%tl120899120917%_)
                              (let ((_%e120900120920%_
                                     (gx#syntax-e _%tl120899120917%_)))
                                (let ((_%hd120901120923%_
                                       (##car _%e120900120920%_))
                                      (_%tl120902120925%_
                                       (##cdr _%e120900120920%_)))
                                  (let ((_%e120928%_ _%hd120901120923%_))
                                    (if (gx#stx-null? _%tl120902120925%_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _%e120928%_)
                                                         '()))
                                             (gx#stx-source _%stx120893%_))
                                            (_%E120896120908%_))
                                        (_%E120896120908%_)))))
                              (_%E120896120908%_))))
                      (_%E120896120908%_)))))
          (_%E120895120930%_))))
    (define gx#core-expand-call%
      (lambda (_%stx120850%_)
        (let* ((_%e120851120861%_ _%stx120850%_)
               (_%E120853120865%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120851120861%_)))
               (_%E120852120889%_
                (lambda ()
                  (if (gx#stx-pair? _%e120851120861%_)
                      (let ((_%e120854120869%_
                             (gx#syntax-e _%e120851120861%_)))
                        (let ((_%hd120855120872%_ (##car _%e120854120869%_))
                              (_%tl120856120874%_ (##cdr _%e120854120869%_)))
                          (if (gx#stx-pair? _%tl120856120874%_)
                              (let ((_%e120857120877%_
                                     (gx#syntax-e _%tl120856120874%_)))
                                (let ((_%hd120858120880%_
                                       (##car _%e120857120877%_))
                                      (_%tl120859120882%_
                                       (##cdr _%e120857120877%_)))
                                  (let* ((_%rator120885%_ _%hd120858120880%_)
                                         (_%args120887%_ _%tl120859120882%_))
                                    (if (gx#stx-list? _%args120887%_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _%rator120885%_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _%args120887%_))
                                         (gx#stx-source _%stx120850%_))
                                        (_%E120853120865%_)))))
                              (_%E120853120865%_))))
                      (_%E120853120865%_)))))
          (_%E120852120889%_))))
    (define gx#core-expand-if%
      (lambda (_%stx120783%_)
        (let* ((_%e120784120800%_ _%stx120783%_)
               (_%E120786120804%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120784120800%_)))
               (_%E120785120846%_
                (lambda ()
                  (if (gx#stx-pair? _%e120784120800%_)
                      (let ((_%e120787120808%_
                             (gx#syntax-e _%e120784120800%_)))
                        (let ((_%hd120788120811%_ (##car _%e120787120808%_))
                              (_%tl120789120813%_ (##cdr _%e120787120808%_)))
                          (if (gx#stx-pair? _%tl120789120813%_)
                              (let ((_%e120790120816%_
                                     (gx#syntax-e _%tl120789120813%_)))
                                (let ((_%hd120791120819%_
                                       (##car _%e120790120816%_))
                                      (_%tl120792120821%_
                                       (##cdr _%e120790120816%_)))
                                  (let ((_%test120824%_ _%hd120791120819%_))
                                    (if (gx#stx-pair? _%tl120792120821%_)
                                        (let ((_%e120793120826%_
                                               (gx#syntax-e
                                                _%tl120792120821%_)))
                                          (let ((_%hd120794120829%_
                                                 (##car _%e120793120826%_))
                                                (_%tl120795120831%_
                                                 (##cdr _%e120793120826%_)))
                                            (let ((_%K120834%_
                                                   _%hd120794120829%_))
                                              (if (gx#stx-pair?
                                                   _%tl120795120831%_)
                                                  (let ((_%e120796120836%_
                                                         (gx#syntax-e
                                                          _%tl120795120831%_)))
                                                    (let ((_%hd120797120839%_
                                                           (##car _%e120796120836%_))
                                                          (_%tl120798120841%_
                                                           (##cdr _%e120796120836%_)))
                                                      (let ((_%E120844%_
                                                             _%hd120797120839%_))
                                                        (if (gx#stx-null?
                                                             _%tl120798120841%_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _%test120824%_)
                                     (cons (gx#core-expand-expression
                                            _%K120834%_)
                                           (cons (gx#core-expand-expression
                                                  _%E120844%_)
                                                 '()))))
                         (gx#stx-source _%stx120783%_))
                        (_%E120786120804%_))
                    (_%E120786120804%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120786120804%_)))))
                                        (_%E120786120804%_)))))
                              (_%E120786120804%_))))
                      (_%E120786120804%_)))))
          (_%E120785120846%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx120742%_)
        (let* ((_%e120743120753%_ _%stx120742%_)
               (_%E120745120757%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120743120753%_)))
               (_%E120744120779%_
                (lambda ()
                  (if (gx#stx-pair? _%e120743120753%_)
                      (let ((_%e120746120761%_
                             (gx#syntax-e _%e120743120753%_)))
                        (let ((_%hd120747120764%_ (##car _%e120746120761%_))
                              (_%tl120748120766%_ (##cdr _%e120746120761%_)))
                          (if (gx#stx-pair? _%tl120748120766%_)
                              (let ((_%e120749120769%_
                                     (gx#syntax-e _%tl120748120766%_)))
                                (let ((_%hd120750120772%_
                                       (##car _%e120749120769%_))
                                      (_%tl120751120774%_
                                       (##cdr _%e120749120769%_)))
                                  (let ((_%id120777%_ _%hd120750120772%_))
                                    (if (gx#stx-null? _%tl120751120774%_)
                                        (if (gx#identifier? _%id120777%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id120777%_
                                                          _%stx120742%_)
                                                         '()))
                                             (gx#stx-source _%stx120742%_))
                                            (_%E120745120757%_))
                                        (_%E120745120757%_)))))
                              (_%E120745120757%_))))
                      (_%E120745120757%_)))))
          (_%E120744120779%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx120688%_)
        (let* ((_%e120689120702%_ _%stx120688%_)
               (_%E120691120706%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120689120702%_)))
               (_%E120690120738%_
                (lambda ()
                  (if (gx#stx-pair? _%e120689120702%_)
                      (let ((_%e120692120710%_
                             (gx#syntax-e _%e120689120702%_)))
                        (let ((_%hd120693120713%_ (##car _%e120692120710%_))
                              (_%tl120694120715%_ (##cdr _%e120692120710%_)))
                          (if (gx#stx-pair? _%tl120694120715%_)
                              (let ((_%e120695120718%_
                                     (gx#syntax-e _%tl120694120715%_)))
                                (let ((_%hd120696120721%_
                                       (##car _%e120695120718%_))
                                      (_%tl120697120723%_
                                       (##cdr _%e120695120718%_)))
                                  (let ((_%id120726%_ _%hd120696120721%_))
                                    (if (gx#stx-pair? _%tl120697120723%_)
                                        (let ((_%e120698120728%_
                                               (gx#syntax-e
                                                _%tl120697120723%_)))
                                          (let ((_%hd120699120731%_
                                                 (##car _%e120698120728%_))
                                                (_%tl120700120733%_
                                                 (##cdr _%e120698120728%_)))
                                            (let ((_%expr120736%_
                                                   _%hd120699120731%_))
                                              (if (gx#stx-null?
                                                   _%tl120700120733%_)
                                                  (if (gx#identifier?
                                                       _%id120726%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id120726%_
                            _%stx120688%_)
                           (cons (gx#core-expand-expression _%expr120736%_)
                                 '())))
               (gx#stx-source _%stx120688%_))
              (_%E120691120706%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120691120706%_)))))
                                        (_%E120691120706%_)))))
                              (_%E120691120706%_))))
                      (_%E120691120706%_)))))
          (_%E120690120738%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx120533%_)
        (letrec ((_%generate120535%_
                  (lambda (_%body120565%_)
                    (let _%lp120567%_ ((_%rest120569%_ _%body120565%_)
                                       (_%ns120570%_
                                        (gx#core-context-namespace__0))
                                       (_%r120571%_ '()))
                      (let* ((_%e120572120587%_ _%rest120569%_)
                             (_%E120585120591%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e120572120587%_)))
                             (_%E120581120595%_
                              (lambda ()
                                (if (gx#stx-null? _%e120572120587%_)
                                    (if '#t
                                        (reverse _%r120571%_)
                                        (_%E120585120591%_))
                                    (_%E120585120591%_))))
                             (_%E120574120652%_
                              (lambda ()
                                (if (gx#stx-pair? _%e120572120587%_)
                                    (let ((_%e120582120599%_
                                           (gx#syntax-e _%e120572120587%_)))
                                      (let ((_%hd120583120602%_
                                             (##car _%e120582120599%_))
                                            (_%tl120584120604%_
                                             (##cdr _%e120582120599%_)))
                                        (let* ((_%hd120607%_
                                                _%hd120583120602%_)
                                               (_%rest120609%_
                                                _%tl120584120604%_))
                                          (if '#t
                                              (if (gx#identifier? _%hd120607%_)
                                                  (_%lp120567%_
                                                   _%rest120609%_
                                                   _%ns120570%_
                                                   (cons (cons _%hd120607%_
                                                               (cons (if _%ns120570%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _%hd120607%_
                                  _%ns120570%_
                                  '"#"
                                  _%hd120607%_)
                                 _%hd120607%_)
                             '()))
                 _%r120571%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%e120610120620%_
                                                          _%hd120607%_)
                                                         (_%E120612120624%_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e120610120620%_)))
                                                         (_%E120611120648%_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%e120610120620%_)
                        (let ((_%e120613120628%_
                               (gx#syntax-e _%e120610120620%_)))
                          (let ((_%hd120614120631%_ (##car _%e120613120628%_))
                                (_%tl120615120633%_ (##cdr _%e120613120628%_)))
                            (let ((_%id120636%_ _%hd120614120631%_))
                              (if (gx#stx-pair? _%tl120615120633%_)
                                  (let ((_%e120616120638%_
                                         (gx#syntax-e _%tl120615120633%_)))
                                    (let ((_%hd120617120641%_
                                           (##car _%e120616120638%_))
                                          (_%tl120618120643%_
                                           (##cdr _%e120616120638%_)))
                                      (let ((_%eid120646%_ _%hd120617120641%_))
                                        (if (gx#stx-null? _%tl120618120643%_)
                                            (if (and (gx#identifier?
                                                      _%id120636%_)
                                                     (gx#identifier?
                                                      _%eid120646%_))
                                                (_%lp120567%_
                                                 _%rest120609%_
                                                 _%ns120570%_
                                                 (cons (cons _%id120636%_
                                                             (cons _%eid120646%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%r120571%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E120612120624%_))
                                            (_%E120612120624%_)))))
                                  (_%E120612120624%_)))))
                        (_%E120612120624%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E120611120648%_)))
                                              (_%E120581120595%_)))))
                                    (_%E120581120595%_))))
                             (_%E120573120684%_
                              (lambda ()
                                (if (gx#stx-pair? _%e120572120587%_)
                                    (let ((_%e120575120656%_
                                           (gx#syntax-e _%e120572120587%_)))
                                      (let ((_%hd120576120659%_
                                             (##car _%e120575120656%_))
                                            (_%tl120577120661%_
                                             (##cdr _%e120575120656%_)))
                                        (if (eq? (gx#stx-e _%hd120576120659%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl120577120661%_)
                                                (let ((_%e120578120664%_
                                                       (gx#syntax-e
                                                        _%tl120577120661%_)))
                                                  (let ((_%hd120579120667%_
                                                         (##car _%e120578120664%_))
                                                        (_%tl120580120669%_
                                                         (##cdr _%e120578120664%_)))
                                                    (let* ((_%ns120672%_
                                                            _%hd120579120667%_)
                                                           (_%rest120674%_
                                                            _%tl120580120669%_))
                                                      (if '#t
                                                          (let ((_%ns120682%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _%ns120672%_)
                             (symbol->string (gx#stx-e _%ns120672%_))
                             (if (or (gx#stx-string? _%ns120672%_)
                                     (gx#stx-false? _%ns120672%_))
                                 (gx#stx-e _%ns120672%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _%stx120533%_
                                  _%ns120672%_)))))
                    (_%lp120567%_ _%rest120674%_ _%ns120682%_ _%r120571%_))
                  (_%E120574120652%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E120574120652%_))
                                            (_%E120574120652%_))))
                                    (_%E120574120652%_)))))
                        (_%E120573120684%_))))))
          (let* ((_%e120536120543%_ _%stx120533%_)
                 (_%E120538120547%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e120536120543%_)))
                 (_%E120537120561%_
                  (lambda ()
                    (if (gx#stx-pair? _%e120536120543%_)
                        (let ((_%e120539120551%_
                               (gx#syntax-e _%e120536120543%_)))
                          (let ((_%hd120540120554%_ (##car _%e120539120551%_))
                                (_%tl120541120556%_ (##cdr _%e120539120551%_)))
                            (let ((_%body120559%_ _%tl120541120556%_))
                              (if (gx#stx-list? _%body120559%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate120535%_ _%body120559%_))
                                  (_%E120538120547%_)))))
                        (_%E120538120547%_)))))
            (_%E120537120561%_)))))
    (define gx#macro-expand-define-values
      (lambda (_%stx120479%_)
        (let* ((_%e120480120493%_ _%stx120479%_)
               (_%E120482120497%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120480120493%_)))
               (_%E120481120529%_
                (lambda ()
                  (if (gx#stx-pair? _%e120480120493%_)
                      (let ((_%e120483120501%_
                             (gx#syntax-e _%e120480120493%_)))
                        (let ((_%hd120484120504%_ (##car _%e120483120501%_))
                              (_%tl120485120506%_ (##cdr _%e120483120501%_)))
                          (if (gx#stx-pair? _%tl120485120506%_)
                              (let ((_%e120486120509%_
                                     (gx#syntax-e _%tl120485120506%_)))
                                (let ((_%hd120487120512%_
                                       (##car _%e120486120509%_))
                                      (_%tl120488120514%_
                                       (##cdr _%e120486120509%_)))
                                  (let ((_%hd120517%_ _%hd120487120512%_))
                                    (if (gx#stx-pair? _%tl120488120514%_)
                                        (let ((_%e120489120519%_
                                               (gx#syntax-e
                                                _%tl120488120514%_)))
                                          (let ((_%hd120490120522%_
                                                 (##car _%e120489120519%_))
                                                (_%tl120491120524%_
                                                 (##cdr _%e120489120519%_)))
                                            (let ((_%expr120527%_
                                                   _%hd120490120522%_))
                                              (if (gx#stx-null?
                                                   _%tl120491120524%_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _%hd120517%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           identity
                           _%hd120517%_)
                          (cons _%expr120527%_ '())))
              (_%E120482120497%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120482120497%_)))))
                                        (_%E120482120497%_)))))
                              (_%E120482120497%_))))
                      (_%E120482120497%_)))))
          (_%E120481120529%_))))
    (define gx#macro-expand-define-syntax
      (lambda (_%stx120425%_)
        (let* ((_%e120426120439%_ _%stx120425%_)
               (_%E120428120443%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120426120439%_)))
               (_%E120427120475%_
                (lambda ()
                  (if (gx#stx-pair? _%e120426120439%_)
                      (let ((_%e120429120447%_
                             (gx#syntax-e _%e120426120439%_)))
                        (let ((_%hd120430120450%_ (##car _%e120429120447%_))
                              (_%tl120431120452%_ (##cdr _%e120429120447%_)))
                          (if (gx#stx-pair? _%tl120431120452%_)
                              (let ((_%e120432120455%_
                                     (gx#syntax-e _%tl120431120452%_)))
                                (let ((_%hd120433120458%_
                                       (##car _%e120432120455%_))
                                      (_%tl120434120460%_
                                       (##cdr _%e120432120455%_)))
                                  (let ((_%hd120463%_ _%hd120433120458%_))
                                    (if (gx#stx-pair? _%tl120434120460%_)
                                        (let ((_%e120435120465%_
                                               (gx#syntax-e
                                                _%tl120434120460%_)))
                                          (let ((_%hd120436120468%_
                                                 (##car _%e120435120465%_))
                                                (_%tl120437120470%_
                                                 (##cdr _%e120435120465%_)))
                                            (let ((_%expr120473%_
                                                   _%hd120436120468%_))
                                              (if (gx#stx-null?
                                                   _%tl120437120470%_)
                                                  (if (gx#identifier?
                                                       _%hd120463%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _%hd120463%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr120473%_ '())))
              (_%E120428120443%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120428120443%_)))))
                                        (_%E120428120443%_)))))
                              (_%E120428120443%_))))
                      (_%E120428120443%_)))))
          (_%E120427120475%_))))
    (define gx#macro-expand-define-alias
      (lambda (_%stx120371%_)
        (let* ((_%e120372120385%_ _%stx120371%_)
               (_%E120374120389%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120372120385%_)))
               (_%E120373120421%_
                (lambda ()
                  (if (gx#stx-pair? _%e120372120385%_)
                      (let ((_%e120375120393%_
                             (gx#syntax-e _%e120372120385%_)))
                        (let ((_%hd120376120396%_ (##car _%e120375120393%_))
                              (_%tl120377120398%_ (##cdr _%e120375120393%_)))
                          (if (gx#stx-pair? _%tl120377120398%_)
                              (let ((_%e120378120401%_
                                     (gx#syntax-e _%tl120377120398%_)))
                                (let ((_%hd120379120404%_
                                       (##car _%e120378120401%_))
                                      (_%tl120380120406%_
                                       (##cdr _%e120378120401%_)))
                                  (let ((_%id120409%_ _%hd120379120404%_))
                                    (if (gx#stx-pair? _%tl120380120406%_)
                                        (let ((_%e120381120411%_
                                               (gx#syntax-e
                                                _%tl120380120406%_)))
                                          (let ((_%hd120382120414%_
                                                 (##car _%e120381120411%_))
                                                (_%tl120383120416%_
                                                 (##cdr _%e120381120411%_)))
                                            (let ((_%alias-id120419%_
                                                   _%hd120382120414%_))
                                              (if (gx#stx-null?
                                                   _%tl120383120416%_)
                                                  (if (and (gx#identifier?
                                                            _%id120409%_)
                                                           (gx#identifier?
                                                            _%alias-id120419%_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _%id120409%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%alias-id120419%_ '())))
              (_%E120374120389%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120374120389%_)))))
                                        (_%E120374120389%_)))))
                              (_%E120374120389%_))))
                      (_%E120374120389%_)))))
          (_%E120373120421%_))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx120328%_)
        (let* ((_%e120329120339%_ _%stx120328%_)
               (_%E120331120343%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120329120339%_)))
               (_%E120330120367%_
                (lambda ()
                  (if (gx#stx-pair? _%e120329120339%_)
                      (let ((_%e120332120347%_
                             (gx#syntax-e _%e120329120339%_)))
                        (let ((_%hd120333120350%_ (##car _%e120332120347%_))
                              (_%tl120334120352%_ (##cdr _%e120332120347%_)))
                          (if (gx#stx-pair? _%tl120334120352%_)
                              (let ((_%e120335120355%_
                                     (gx#syntax-e _%tl120334120352%_)))
                                (let ((_%hd120336120358%_
                                       (##car _%e120335120355%_))
                                      (_%tl120337120360%_
                                       (##cdr _%e120335120355%_)))
                                  (let* ((_%hd120363%_ _%hd120336120358%_)
                                         (_%body120365%_ _%tl120337120360%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd120363%_)
                                             (gx#stx-list? _%body120365%_)
                                             (not (gx#stx-null?
                                                   _%body120365%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd120363%_)
                                         _%body120365%_)
                                        (_%E120331120343%_)))))
                              (_%E120331120343%_))))
                      (_%E120331120343%_)))))
          (_%E120330120367%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx120264%_)
        (letrec ((_%generate120266%_
                  (lambda (_%clause120296%_)
                    (let* ((_%e120297120304%_ _%clause120296%_)
                           (_%E120299120308%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx120264%_
                               _%clause120296%_)))
                           (_%E120298120324%_
                            (lambda ()
                              (if (gx#stx-pair? _%e120297120304%_)
                                  (let ((_%e120300120312%_
                                         (gx#syntax-e _%e120297120304%_)))
                                    (let ((_%hd120301120315%_
                                           (##car _%e120300120312%_))
                                          (_%tl120302120317%_
                                           (##cdr _%e120300120312%_)))
                                      (let* ((_%hd120320%_ _%hd120301120315%_)
                                             (_%body120322%_
                                              _%tl120302120317%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd120320%_)
                                                 (gx#stx-list? _%body120322%_)
                                                 (not (gx#stx-null?
                                                       _%body120322%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd120320%_)
                                                   _%body120322%_)
                                             (gx#stx-source _%clause120296%_))
                                            (_%E120299120308%_)))))
                                  (_%E120299120308%_)))))
                      (_%E120298120324%_)))))
          (let* ((_%e120267120274%_ _%stx120264%_)
                 (_%E120269120278%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e120267120274%_)))
                 (_%E120268120292%_
                  (lambda ()
                    (if (gx#stx-pair? _%e120267120274%_)
                        (let ((_%e120270120282%_
                               (gx#syntax-e _%e120267120274%_)))
                          (let ((_%hd120271120285%_ (##car _%e120270120282%_))
                                (_%tl120272120287%_ (##cdr _%e120270120282%_)))
                            (let ((_%clauses120290%_ _%tl120272120287%_))
                              (if (gx#stx-list? _%clauses120290%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate120266%_
                                    _%clauses120290%_))
                                  (_%E120269120278%_)))))
                        (_%E120269120278%_)))))
            (_%E120268120292%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx120165%_ _%form120166%_)
        (letrec ((_%generate120168%_
                  (lambda (_%bind120211%_)
                    (let* ((_%e120212120222%_ _%bind120211%_)
                           (_%E120214120226%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx120165%_
                               _%bind120211%_)))
                           (_%E120213120250%_
                            (lambda ()
                              (if (gx#stx-pair? _%e120212120222%_)
                                  (let ((_%e120215120230%_
                                         (gx#syntax-e _%e120212120222%_)))
                                    (let ((_%hd120216120233%_
                                           (##car _%e120215120230%_))
                                          (_%tl120217120235%_
                                           (##cdr _%e120215120230%_)))
                                      (let ((_%ids120238%_ _%hd120216120233%_))
                                        (if (gx#stx-pair? _%tl120217120235%_)
                                            (let ((_%e120218120240%_
                                                   (gx#syntax-e
                                                    _%tl120217120235%_)))
                                              (let ((_%hd120219120243%_
                                                     (##car _%e120218120240%_))
                                                    (_%tl120220120245%_
                                                     (##cdr _%e120218120240%_)))
                                                (let ((_%expr120248%_
                                                       _%hd120219120243%_))
                                                  (if (gx#stx-null?
                                                       _%tl120220120245%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids120238%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids120238%_)
                        (cons _%expr120248%_ '()))
                  (_%E120214120226%_))
              (_%E120214120226%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E120214120226%_)))))
                                  (_%E120214120226%_)))))
                      (_%E120213120250%_)))))
          (let* ((_%e120169120179%_ _%stx120165%_)
                 (_%E120171120183%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e120169120179%_)))
                 (_%E120170120207%_
                  (lambda ()
                    (if (gx#stx-pair? _%e120169120179%_)
                        (let ((_%e120172120187%_
                               (gx#syntax-e _%e120169120179%_)))
                          (let ((_%hd120173120190%_ (##car _%e120172120187%_))
                                (_%tl120174120192%_ (##cdr _%e120172120187%_)))
                            (if (gx#stx-pair? _%tl120174120192%_)
                                (let ((_%e120175120195%_
                                       (gx#syntax-e _%tl120174120192%_)))
                                  (let ((_%hd120176120198%_
                                         (##car _%e120175120195%_))
                                        (_%tl120177120200%_
                                         (##cdr _%e120175120195%_)))
                                    (let* ((_%hd120203%_ _%hd120176120198%_)
                                           (_%body120205%_ _%tl120177120200%_))
                                      (if (and (gx#stx-list? _%hd120203%_)
                                               (gx#stx-list? _%body120205%_)
                                               (not (gx#stx-null?
                                                     _%body120205%_)))
                                          (gx#core-cons*
                                           _%form120166%_
                                           (gx#stx-map1
                                            _%generate120168%_
                                            _%hd120203%_)
                                           _%body120205%_)
                                          (_%E120171120183%_)))))
                                (_%E120171120183%_))))
                        (_%E120171120183%_)))))
            (_%E120170120207%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx120257%_)
        (let ((_%form120259%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx120257%_ _%form120259%_))))
    (define gx#macro-expand-let-values
      (lambda _g122646_
        (let ((_g122645_ (##length _g122646_)))
          (cond ((##fx= _g122645_ 1)
                 (apply gx#macro-expand-let-values__0 _g122646_))
                ((##fx= _g122645_ 2)
                 (apply gx#macro-expand-let-values__% _g122646_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g122646_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx120162%_)
        (gx#macro-expand-let-values__% _%stx120162%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx120160%_)
        (gx#macro-expand-let-values__% _%stx120160%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx120051%_)
        (let* ((_%e120052120078%_ _%stx120051%_)
               (_%E120064120082%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120052120078%_)))
               (_%E120054120124%_
                (lambda ()
                  (if (gx#stx-pair? _%e120052120078%_)
                      (let ((_%e120065120086%_
                             (gx#syntax-e _%e120052120078%_)))
                        (let ((_%hd120066120089%_ (##car _%e120065120086%_))
                              (_%tl120067120091%_ (##cdr _%e120065120086%_)))
                          (if (gx#stx-pair? _%tl120067120091%_)
                              (let ((_%e120068120094%_
                                     (gx#syntax-e _%tl120067120091%_)))
                                (let ((_%hd120069120097%_
                                       (##car _%e120068120094%_))
                                      (_%tl120070120099%_
                                       (##cdr _%e120068120094%_)))
                                  (let ((_%test120102%_ _%hd120069120097%_))
                                    (if (gx#stx-pair? _%tl120070120099%_)
                                        (let ((_%e120071120104%_
                                               (gx#syntax-e
                                                _%tl120070120099%_)))
                                          (let ((_%hd120072120107%_
                                                 (##car _%e120071120104%_))
                                                (_%tl120073120109%_
                                                 (##cdr _%e120071120104%_)))
                                            (let ((_%K120112%_
                                                   _%hd120072120107%_))
                                              (if (gx#stx-pair?
                                                   _%tl120073120109%_)
                                                  (let ((_%e120074120114%_
                                                         (gx#syntax-e
                                                          _%tl120073120109%_)))
                                                    (let ((_%hd120075120117%_
                                                           (##car _%e120074120114%_))
                                                          (_%tl120076120119%_
                                                           (##cdr _%e120074120114%_)))
                                                      (let ((_%E120122%_
                                                             _%hd120075120117%_))
                                                        (if (gx#stx-null?
                                                             _%tl120076120119%_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _%test120102%_
                         _%K120112%_
                         _%E120122%_)
                        (_%E120064120082%_))
                    (_%E120064120082%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120064120082%_)))))
                                        (_%E120064120082%_)))))
                              (_%E120064120082%_))))
                      (_%E120064120082%_))))
               (_%E120053120156%_
                (lambda ()
                  (if (gx#stx-pair? _%e120052120078%_)
                      (let ((_%e120055120128%_
                             (gx#syntax-e _%e120052120078%_)))
                        (let ((_%hd120056120131%_ (##car _%e120055120128%_))
                              (_%tl120057120133%_ (##cdr _%e120055120128%_)))
                          (if (gx#stx-pair? _%tl120057120133%_)
                              (let ((_%e120058120136%_
                                     (gx#syntax-e _%tl120057120133%_)))
                                (let ((_%hd120059120139%_
                                       (##car _%e120058120136%_))
                                      (_%tl120060120141%_
                                       (##cdr _%e120058120136%_)))
                                  (let ((_%test120144%_ _%hd120059120139%_))
                                    (if (gx#stx-pair? _%tl120060120141%_)
                                        (let ((_%e120061120146%_
                                               (gx#syntax-e
                                                _%tl120060120141%_)))
                                          (let ((_%hd120062120149%_
                                                 (##car _%e120061120146%_))
                                                (_%tl120063120151%_
                                                 (##cdr _%e120061120146%_)))
                                            (let ((_%K120154%_
                                                   _%hd120062120149%_))
                                              (if (gx#stx-null?
                                                   _%tl120063120151%_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _%test120144%_
                                                       _%K120154%_
                                                       '#!void)
                                                      (_%E120054120124%_))
                                                  (_%E120054120124%_)))))
                                        (_%E120054120124%_)))))
                              (_%E120054120124%_))))
                      (_%E120054120124%_)))))
          (_%E120053120156%_))))
    (define gx#free-identifier=?
      (lambda (_%xid120036%_ _%yid120037%_)
        (let ((_%xe120039%_ (gx#resolve-identifier__0 _%xid120036%_))
              (_%ye120040%_ (gx#resolve-identifier__0 _%yid120037%_)))
          (if (and _%xe120039%_ _%ye120040%_)
              (let ((_%$e120043%_ (eq? _%xe120039%_ _%ye120040%_)))
                (if _%$e120043%_
                    _%$e120043%_
                    (if (##structure-instance-of? _%xe120039%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye120040%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe120039%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye120040%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe120039%_ _%ye120040%_)
                  '#f
                  (gx#stx-eq? _%xid120036%_ _%yid120037%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid120017%_ _%yid120018%_)
        (letrec ((_%context120020%_
                  (lambda (_%e120034%_)
                    (if (##structure-direct-instance-of?
                         _%e120034%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e120034%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks120021%_
                  (lambda (_%e120029%_)
                    (if (symbol? _%e120029%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e120029%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e120029%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e120029%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap120022%_
                  (lambda (_%e120027%_)
                    (if (symbol? _%e120027%_)
                        _%e120027%_
                        (gx#syntax-local-unwrap _%e120027%_)))))
          (let ((_%x120024%_ (_%unwrap120022%_ _%xid120017%_))
                (_%y120025%_ (_%unwrap120022%_ _%yid120018%_)))
            (if (gx#stx-eq? _%x120024%_ _%y120025%_)
                (if (eq? (_%context120020%_ _%x120024%_)
                         (_%context120020%_ _%y120025%_))
                    (equal? (_%marks120021%_ _%x120024%_)
                            (_%marks120021%_ _%y120025%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx120015%_)
        (if (gx#identifier? _%stx120015%_)
            (gx#core-identifier=? _%stx120015%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx120013%_)
        (if (gx#identifier? _%stx120013%_)
            (gx#core-identifier=? _%stx120013%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx119956%_ _%where119957%_)
        (let _%lp119959%_ ((_%rest119961%_ (gx#syntax->list _%stx119956%_)))
          (let* ((_%rest119962119970%_ _%rest119961%_)
                 (_%else119964119978%_ (lambda () '#t))
                 (_%K119966119991%_
                  (lambda (_%rest119981%_ _%hd119982%_)
                    (if (not (gx#identifier? _%hd119982%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where119957%_
                         _%hd119982%_)
                        (if (__find (lambda (_%g119984119986%_)
                                      (gx#bound-identifier=?
                                       _%g119984119986%_
                                       _%hd119982%_))
                                    _%rest119981%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where119957%_
                             _%hd119982%_)
                            (_%lp119959%_ _%rest119981%_))))))
            (if (##pair? _%rest119962119970%_)
                (let ((_%hd119967119994%_ (##car _%rest119962119970%_))
                      (_%tl119968119996%_ (##cdr _%rest119962119970%_)))
                  (let* ((_%hd119999%_ _%hd119967119994%_)
                         (_%rest120001%_ _%tl119968119996%_))
                    (_%K119966119991%_ _%rest120001%_ _%hd119999%_)))
                (_%else119964119978%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx120006%_)
        (let ((_%where120008%_ _%stx120006%_))
          (gx#check-duplicate-identifiers__% _%stx120006%_ _%where120008%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g122648_
        (let ((_g122647_ (##length _g122648_)))
          (cond ((##fx= _g122647_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g122648_))
                ((##fx= _g122647_ 2)
                 (apply gx#check-duplicate-identifiers__% _g122648_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g122648_))))))
    (define gx#core-bind-values?
      (lambda (_%stx119948%_)
        (gx#stx-andmap
         (lambda (_%x119950%_)
           (let ((_%$e119952%_ (gx#identifier? _%x119950%_)))
             (if _%$e119952%_ _%$e119952%_ (gx#stx-false? _%x119950%_))))
         _%stx119948%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx119912%_ _%rebind?119913%_ _%phi119914%_ _%ctx119915%_)
        (gx#stx-for-each1
         (lambda (_%id119917%_)
           (if (gx#identifier? _%id119917%_)
               (gx#core-bind-runtime!__%
                _%id119917%_
                _%rebind?119913%_
                _%phi119914%_
                _%ctx119915%_)
               '#!void))
         _%stx119912%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx119922%_)
        (let* ((_%rebind?119924%_ '#f)
               (_%phi119926%_ (gx#current-expander-phi))
               (_%ctx119928%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx119922%_
           _%rebind?119924%_
           _%phi119926%_
           _%ctx119928%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx119930%_ _%rebind?119931%_)
        (let* ((_%phi119933%_ (gx#current-expander-phi))
               (_%ctx119935%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx119930%_
           _%rebind?119931%_
           _%phi119933%_
           _%ctx119935%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx119937%_ _%rebind?119938%_ _%phi119939%_)
        (let ((_%ctx119941%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx119937%_
           _%rebind?119938%_
           _%phi119939%_
           _%ctx119941%_))))
    (define gx#core-bind-values!
      (lambda _g122650_
        (let ((_g122649_ (##length _g122650_)))
          (cond ((##fx= _g122649_ 1) (apply gx#core-bind-values!__0 _g122650_))
                ((##fx= _g122649_ 2) (apply gx#core-bind-values!__1 _g122650_))
                ((##fx= _g122649_ 3) (apply gx#core-bind-values!__2 _g122650_))
                ((##fx= _g122649_ 4) (apply gx#core-bind-values!__% _g122650_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g122650_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx119907%_)
        (gx#stx-map1
         (lambda (_%x119909%_)
           (if (gx#identifier? _%x119909%_)
               (gx#core-quote-syntax__0 _%x119909%_)
               '#f))
         _%stx119907%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx119900%_)
        (if (gx#identifier? _%stx119900%_)
            (let* ((_%bind119902%_ (gx#resolve-identifier__0 _%stx119900%_))
                   (_%$e119904%_ (not _%bind119902%_)))
              (if _%$e119904%_
                  _%$e119904%_
                  (##structure-instance-of?
                   _%bind119902%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id119889%_ _%form119890%_)
        (let ((_%bind119892%_ (gx#resolve-identifier__0 _%id119889%_)))
          (if (##structure-instance-of? _%bind119892%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id119889%_)
              (if (not _%bind119892%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id119889%_)))
                      (gx#core-quote-syntax__0 _%id119889%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form119890%_
                       _%id119889%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form119890%_
                   _%id119889%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id119844%_ _%rebind?119845%_ _%phi119846%_ _%ctx119847%_)
        (let* ((_%key119849%_ (gx#core-identifier-key _%id119844%_))
               (_%eid119851%_
                (gx#make-binding-id__%
                 _%key119849%_
                 '#f
                 _%phi119846%_
                 _%ctx119847%_))
               (_%bind119857%_
                (if (##structure-instance-of?
                     _%ctx119847%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid119851%_
                     _%key119849%_
                     _%phi119846%_
                     _%ctx119847%_)
                    (if (##structure-instance-of?
                         _%ctx119847%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid119851%_
                         _%key119849%_
                         _%phi119846%_)
                        (if (##structure-instance-of?
                             _%ctx119847%_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _%eid119851%_
                             _%key119849%_
                             _%phi119846%_)
                            (##structure
                             gx#runtime-binding::t
                             _%eid119851%_
                             _%key119849%_
                             _%phi119846%_))))))
          (gx#bind-identifier!__%
           _%id119844%_
           _%bind119857%_
           _%rebind?119845%_
           _%phi119846%_
           _%ctx119847%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id119863%_)
        (let* ((_%rebind?119865%_ '#f)
               (_%phi119867%_ (gx#current-expander-phi))
               (_%ctx119869%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id119863%_
           _%rebind?119865%_
           _%phi119867%_
           _%ctx119869%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id119871%_ _%rebind?119872%_)
        (let* ((_%phi119874%_ (gx#current-expander-phi))
               (_%ctx119876%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id119871%_
           _%rebind?119872%_
           _%phi119874%_
           _%ctx119876%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id119878%_ _%rebind?119879%_ _%phi119880%_)
        (let ((_%ctx119882%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id119878%_
           _%rebind?119879%_
           _%phi119880%_
           _%ctx119882%_))))
    (define gx#core-bind-runtime!
      (lambda _g122652_
        (let ((_g122651_ (##length _g122652_)))
          (cond ((##fx= _g122651_ 1)
                 (apply gx#core-bind-runtime!__0 _g122652_))
                ((##fx= _g122651_ 2)
                 (apply gx#core-bind-runtime!__1 _g122652_))
                ((##fx= _g122651_ 3)
                 (apply gx#core-bind-runtime!__2 _g122652_))
                ((##fx= _g122651_ 4)
                 (apply gx#core-bind-runtime!__% _g122652_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g122652_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id119796%_
               _%eid119797%_
               _%rebind?119798%_
               _%phi119799%_
               _%ctx119800%_)
        (let* ((_%key119802%_ (gx#core-identifier-key _%id119796%_))
               (_%bind119807%_
                (if (##structure-instance-of?
                     _%ctx119800%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid119797%_
                     _%key119802%_
                     _%phi119799%_
                     _%ctx119800%_)
                    (if (##structure-instance-of?
                         _%ctx119800%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid119797%_
                         _%key119802%_
                         _%phi119799%_)
                        (##structure
                         gx#runtime-binding::t
                         _%eid119797%_
                         _%key119802%_
                         _%phi119799%_)))))
          (gx#bind-identifier!__%
           _%id119796%_
           _%bind119807%_
           _%rebind?119798%_
           _%phi119799%_
           _%ctx119800%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id119813%_ _%eid119814%_)
        (let* ((_%rebind?119816%_ '#f)
               (_%phi119818%_ (gx#current-expander-phi))
               (_%ctx119820%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id119813%_
           _%eid119814%_
           _%rebind?119816%_
           _%phi119818%_
           _%ctx119820%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id119822%_ _%eid119823%_ _%rebind?119824%_)
        (let* ((_%phi119826%_ (gx#current-expander-phi))
               (_%ctx119828%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id119822%_
           _%eid119823%_
           _%rebind?119824%_
           _%phi119826%_
           _%ctx119828%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id119830%_ _%eid119831%_ _%rebind?119832%_ _%phi119833%_)
        (let ((_%ctx119835%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id119830%_
           _%eid119831%_
           _%rebind?119832%_
           _%phi119833%_
           _%ctx119835%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g122654_
        (let ((_g122653_ (##length _g122654_)))
          (cond ((##fx= _g122653_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g122654_))
                ((##fx= _g122653_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g122654_))
                ((##fx= _g122653_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g122654_))
                ((##fx= _g122653_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g122654_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g122654_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id119756%_
               _%eid119757%_
               _%rebind?119758%_
               _%phi119759%_
               _%ctx119760%_)
        (gx#bind-identifier!__%
         _%id119756%_
         (##structure
          gx#extern-binding::t
          _%eid119757%_
          (gx#core-identifier-key _%id119756%_)
          _%phi119759%_)
         _%rebind?119758%_
         _%phi119759%_
         _%ctx119760%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id119765%_ _%eid119766%_)
        (let* ((_%rebind?119768%_ '#f)
               (_%phi119770%_ (gx#current-expander-phi))
               (_%ctx119772%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id119765%_
           _%eid119766%_
           _%rebind?119768%_
           _%phi119770%_
           _%ctx119772%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id119774%_ _%eid119775%_ _%rebind?119776%_)
        (let* ((_%phi119778%_ (gx#current-expander-phi))
               (_%ctx119780%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id119774%_
           _%eid119775%_
           _%rebind?119776%_
           _%phi119778%_
           _%ctx119780%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id119782%_ _%eid119783%_ _%rebind?119784%_ _%phi119785%_)
        (let ((_%ctx119787%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id119782%_
           _%eid119783%_
           _%rebind?119784%_
           _%phi119785%_
           _%ctx119787%_))))
    (define gx#core-bind-extern!
      (lambda _g122656_
        (let ((_g122655_ (##length _g122656_)))
          (cond ((##fx= _g122655_ 2) (apply gx#core-bind-extern!__0 _g122656_))
                ((##fx= _g122655_ 3) (apply gx#core-bind-extern!__1 _g122656_))
                ((##fx= _g122655_ 4) (apply gx#core-bind-extern!__2 _g122656_))
                ((##fx= _g122655_ 5) (apply gx#core-bind-extern!__% _g122656_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g122656_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id119710%_
               _%e119711%_
               _%rebind?119712%_
               _%phi119713%_
               _%ctx119714%_)
        (gx#bind-identifier!__%
         _%id119710%_
         (let ((_%key119719%_ (gx#core-identifier-key _%id119710%_))
               (_%e119720%_
                (if (or (##structure-instance-of? _%e119711%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e119711%_
                         'gx#expander-context::t))
                    _%e119711%_
                    (##structure
                     gx#user-expander::t
                     _%e119711%_
                     _%ctx119714%_
                     _%phi119713%_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__%
             _%key119719%_
             '#t
             _%phi119713%_
             _%ctx119714%_)
            _%key119719%_
            _%phi119713%_
            _%e119720%_))
         _%rebind?119712%_
         _%phi119713%_
         _%ctx119714%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id119725%_ _%e119726%_)
        (let* ((_%rebind?119728%_ '#f)
               (_%phi119730%_ (gx#current-expander-phi))
               (_%ctx119732%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id119725%_
           _%e119726%_
           _%rebind?119728%_
           _%phi119730%_
           _%ctx119732%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id119734%_ _%e119735%_ _%rebind?119736%_)
        (let* ((_%phi119738%_ (gx#current-expander-phi))
               (_%ctx119740%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id119734%_
           _%e119735%_
           _%rebind?119736%_
           _%phi119738%_
           _%ctx119740%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id119742%_ _%e119743%_ _%rebind?119744%_ _%phi119745%_)
        (let ((_%ctx119747%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id119742%_
           _%e119743%_
           _%rebind?119744%_
           _%phi119745%_
           _%ctx119747%_))))
    (define gx#core-bind-syntax!
      (lambda _g122658_
        (let ((_g122657_ (##length _g122658_)))
          (cond ((##fx= _g122657_ 2) (apply gx#core-bind-syntax!__0 _g122658_))
                ((##fx= _g122657_ 3) (apply gx#core-bind-syntax!__1 _g122658_))
                ((##fx= _g122657_ 4) (apply gx#core-bind-syntax!__2 _g122658_))
                ((##fx= _g122657_ 5) (apply gx#core-bind-syntax!__% _g122658_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g122658_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id119693%_ _%e119694%_ _%rebind?119695%_)
        (gx#core-bind-syntax!__%
         _%id119693%_
         _%e119694%_
         _%rebind?119695%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id119700%_ _%e119701%_)
        (let ((_%rebind?119703%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id119700%_
           _%e119701%_
           _%rebind?119703%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g122660_
        (let ((_g122659_ (##length _g122660_)))
          (cond ((##fx= _g122659_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g122660_))
                ((##fx= _g122659_ 3)
                 (apply gx#core-bind-root-syntax!__% _g122660_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g122660_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id119651%_
               _%alias-id119652%_
               _%rebind?119653%_
               _%phi119654%_
               _%ctx119655%_)
        (gx#bind-identifier!__%
         _%id119651%_
         (let ((_%key119657%_ (gx#core-identifier-key _%id119651%_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__%
             _%key119657%_
             '#t
             _%phi119654%_
             _%ctx119655%_)
            _%key119657%_
            _%phi119654%_
            _%alias-id119652%_))
         _%rebind?119653%_
         _%phi119654%_
         _%ctx119655%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id119662%_ _%alias-id119663%_)
        (let* ((_%rebind?119665%_ '#f)
               (_%phi119667%_ (gx#current-expander-phi))
               (_%ctx119669%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id119662%_
           _%alias-id119663%_
           _%rebind?119665%_
           _%phi119667%_
           _%ctx119669%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id119671%_ _%alias-id119672%_ _%rebind?119673%_)
        (let* ((_%phi119675%_ (gx#current-expander-phi))
               (_%ctx119677%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id119671%_
           _%alias-id119672%_
           _%rebind?119673%_
           _%phi119675%_
           _%ctx119677%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id119679%_ _%alias-id119680%_ _%rebind?119681%_ _%phi119682%_)
        (let ((_%ctx119684%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id119679%_
           _%alias-id119680%_
           _%rebind?119681%_
           _%phi119682%_
           _%ctx119684%_))))
    (define gx#core-bind-alias!
      (lambda _g122662_
        (let ((_g122661_ (##length _g122662_)))
          (cond ((##fx= _g122661_ 2) (apply gx#core-bind-alias!__0 _g122662_))
                ((##fx= _g122661_ 3) (apply gx#core-bind-alias!__1 _g122662_))
                ((##fx= _g122661_ 4) (apply gx#core-bind-alias!__2 _g122662_))
                ((##fx= _g122661_ 5) (apply gx#core-bind-alias!__% _g122662_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g122662_))))))
    (define gx#make-binding-id__%
      (lambda (_%key119601%_ _%syntax?119602%_ _%phi119603%_ _%ctx119604%_)
        (if (uninterned-symbol? _%key119601%_)
            (##gensym 'L)
            (if (pair? _%key119601%_)
                (gensym (car _%key119601%_))
                (if (##structure-instance-of? _%ctx119604%_ 'gx#top-context::t)
                    (let ((_%ns119609%_
                           (gx#core-context-namespace__% _%ctx119604%_)))
                      (if (and (fxzero? _%phi119603%_) (not _%syntax?119602%_))
                          (if _%ns119609%_
                              (make-symbol__1 _%ns119609%_ '"#" _%key119601%_)
                              _%key119601%_)
                          (if _%syntax?119602%_
                              (make-symbol__1
                               (let ((_%$e119613%_ _%ns119609%_))
                                 (if _%$e119613%_ _%$e119613%_ '""))
                               '"[:"
                               (number->string _%phi119603%_)
                               '":]#"
                               _%key119601%_)
                              (make-symbol__1
                               (let ((_%$e119617%_ _%ns119609%_))
                                 (if _%$e119617%_ _%$e119617%_ '""))
                               '"["
                               (number->string _%phi119603%_)
                               '"]#"
                               _%key119601%_))))
                    (gensym _%key119601%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key119624%_)
        (let* ((_%syntax?119626%_ '#f)
               (_%phi119628%_ (gx#current-expander-phi))
               (_%ctx119630%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key119624%_
           _%syntax?119626%_
           _%phi119628%_
           _%ctx119630%_))))
    (define gx#make-binding-id__1
      (lambda (_%key119632%_ _%syntax?119633%_)
        (let* ((_%phi119635%_ (gx#current-expander-phi))
               (_%ctx119637%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key119632%_
           _%syntax?119633%_
           _%phi119635%_
           _%ctx119637%_))))
    (define gx#make-binding-id__2
      (lambda (_%key119639%_ _%syntax?119640%_ _%phi119641%_)
        (let ((_%ctx119643%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key119639%_
           _%syntax?119640%_
           _%phi119641%_
           _%ctx119643%_))))
    (define gx#make-binding-id
      (lambda _g122664_
        (let ((_g122663_ (##length _g122664_)))
          (cond ((##fx= _g122663_ 1) (apply gx#make-binding-id__0 _g122664_))
                ((##fx= _g122663_ 2) (apply gx#make-binding-id__1 _g122664_))
                ((##fx= _g122663_ 3) (apply gx#make-binding-id__2 _g122664_))
                ((##fx= _g122663_ 4) (apply gx#make-binding-id__% _g122664_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g122664_))))))))
