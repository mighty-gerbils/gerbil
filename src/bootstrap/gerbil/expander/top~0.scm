(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1781119047)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx161528%_)
        (letrec ((_%expand-special161530%_
                  (lambda (_%hd161532%_ _%K161533%_ _%rest161534%_ _%r161535%_)
                    (_%K161533%_
                     _%rest161534%_
                     (cons (gx#core-expand-top _%hd161532%_) _%r161535%_)))))
          (gx#core-expand-block _%stx161528%_ _%expand-special161530%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx161182%_)
        (letrec ((_%expand-special161184%_
                  (lambda (_%hd161304%_ _%K161305%_ _%rest161306%_ _%r161307%_)
                    (let* ((_%K*161311%_
                            (lambda (_%e161309%_)
                              (_%K161305%_
                               _%rest161306%_
                               (cons _%e161309%_ _%r161307%_))))
                           (_%$%e161312161364%_ _%hd161304%_)
                           (_%$%E161350161368%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e161312161364%_)))
                           (_%$%E161346161410%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e161312161364%_)
                                  (let ((_%$%e161351161372%_
                                         (gx#syntax-e _%$%e161312161364%_)))
                                    (let ((_%$%hd161352161375%_
                                           (##car _%$%e161351161372%_))
                                          (_%$%tl161353161377%_
                                           (##cdr _%$%e161351161372%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd161352161375%_)
                                               (gx#core-identifier=?
                                                _%$%hd161352161375%_
                                                '%#bind-runtime-properties!))
                                          (if (gx#stx-pair?
                                               _%$%tl161353161377%_)
                                              (let ((_%$%e161354161380%_
                                                     (gx#syntax-e
                                                      _%$%tl161353161377%_)))
                                                (let ((_%$%hd161355161383%_
                                                       (##car _%$%e161354161380%_))
                                                      (_%$%tl161356161385%_
                                                       (##cdr _%$%e161354161380%_)))
                                                  (if (gx#stx-pair?
                                                       _%$%hd161355161383%_)
                                                      (let ((_%$%e161360161388%_
                                                             (gx#syntax-e
                                                              _%$%hd161355161383%_)))
                                                        (let ((_%$%hd161361161391%_
                                                               (##car _%$%e161360161388%_))
                                                              (_%$%tl161362161393%_
                                                               (##cdr _%$%e161360161388%_)))
                                                          (let ((_%id161396%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%hd161361161391%_))
                    (if (gx#stx-null? _%$%tl161362161393%_)
                        (if (gx#stx-pair? _%$%tl161356161385%_)
                            (let ((_%$%e161357161398%_
                                   (gx#syntax-e _%$%tl161356161385%_)))
                              (let ((_%$%hd161358161401%_
                                     (##car _%$%e161357161398%_))
                                    (_%$%tl161359161403%_
                                     (##cdr _%$%e161357161398%_)))
                                (let ((_%props161406%_ _%$%hd161358161401%_))
                                  (if (gx#stx-null? _%$%tl161359161403%_)
                                      (if '#t
                                          (let ((_%bind161408%_
                                                 (gx#resolve-identifier
                                                  _%id161396%_)))
                                            (gx#core-bind-runtime-properties!
                                             _%bind161408%_
                                             _%props161406%_)
                                            (_%K161305%_
                                             _%rest161306%_
                                             _%r161307%_))
                                          (_%$%E161350161368%_))
                                      (_%$%E161350161368%_)))))
                            (_%$%E161350161368%_))
                        (_%$%E161350161368%_)))))
              (_%$%E161350161368%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E161350161368%_))
                                          (_%$%E161350161368%_))))
                                  (_%$%E161350161368%_))))
                           (_%$%E161342161422%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e161312161364%_)
                                  (let ((_%$%e161347161414%_
                                         (gx#syntax-e _%$%e161312161364%_)))
                                    (let ((_%$%hd161348161417%_
                                           (##car _%$%e161347161414%_))
                                          (_%$%tl161349161419%_
                                           (##cdr _%$%e161347161414%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd161348161417%_)
                                               (gx#core-identifier=?
                                                _%$%hd161348161417%_
                                                '%#define-runtime))
                                          (if '#t
                                              (_%K*161311%_
                                               (gx#core-expand-define-runtime%
                                                _%hd161304%_))
                                              (_%$%E161346161410%_))
                                          (_%$%E161346161410%_))))
                                  (_%$%E161346161410%_))))
                           (_%$%E161338161434%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e161312161364%_)
                                  (let ((_%$%e161343161426%_
                                         (gx#syntax-e _%$%e161312161364%_)))
                                    (let ((_%$%hd161344161429%_
                                           (##car _%$%e161343161426%_))
                                          (_%$%tl161345161431%_
                                           (##cdr _%$%e161343161426%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd161344161429%_)
                                               (gx#core-identifier=?
                                                _%$%hd161344161429%_
                                                '%#define-alias))
                                          (if '#t
                                              (_%K*161311%_
                                               (gx#core-expand-define-alias%
                                                _%hd161304%_))
                                              (_%$%E161342161422%_))
                                          (_%$%E161342161422%_))))
                                  (_%$%E161342161422%_))))
                           (_%$%E161328161446%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e161312161364%_)
                                  (let ((_%$%e161339161438%_
                                         (gx#syntax-e _%$%e161312161364%_)))
                                    (let ((_%$%hd161340161441%_
                                           (##car _%$%e161339161438%_))
                                          (_%$%tl161341161443%_
                                           (##cdr _%$%e161339161438%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd161340161441%_)
                                               (gx#core-identifier=?
                                                _%$%hd161340161441%_
                                                '%#define-syntax))
                                          (if '#t
                                              (_%K*161311%_
                                               (gx#core-expand-define-syntax%
                                                _%hd161304%_))
                                              (_%$%E161338161434%_))
                                          (_%$%E161338161434%_))))
                                  (_%$%E161338161434%_))))
                           (_%$%E161318161478%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e161312161364%_)
                                  (let ((_%$%e161329161450%_
                                         (gx#syntax-e _%$%e161312161364%_)))
                                    (let ((_%$%hd161330161453%_
                                           (##car _%$%e161329161450%_))
                                          (_%$%tl161331161455%_
                                           (##cdr _%$%e161329161450%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd161330161453%_)
                                               (gx#core-identifier=?
                                                _%$%hd161330161453%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl161331161455%_)
                                              (let ((_%$%e161332161458%_
                                                     (gx#syntax-e
                                                      _%$%tl161331161455%_)))
                                                (let ((_%$%hd161333161461%_
                                                       (##car _%$%e161332161458%_))
                                                      (_%$%tl161334161463%_
                                                       (##cdr _%$%e161332161458%_)))
                                                  (let ((_%hd-bind161466%_
                                                         _%$%hd161333161461%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl161334161463%_)
                                                        (let ((_%$%e161335161468%_
                                                               (gx#syntax-e
                                                                _%$%tl161334161463%_)))
                                                          (let ((_%$%hd161336161471%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e161335161468%_))
                        (_%$%tl161337161473%_ (##cdr _%$%e161335161468%_)))
                    (let ((_%expr161476%_ _%$%hd161336161471%_))
                      (if (gx#stx-null? _%$%tl161337161473%_)
                          (if (gx#core-bind-values? _%hd-bind161466%_)
                              (begin
                                (gx#core-bind-values! _%hd-bind161466%_)
                                (_%K*161311%_ _%hd161304%_))
                              (_%$%E161328161446%_))
                          (_%$%E161328161446%_)))))
                (_%$%E161328161446%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E161328161446%_))
                                          (_%$%E161328161446%_))))
                                  (_%$%E161328161446%_))))
                           (_%$%E161314161512%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e161312161364%_)
                                  (let ((_%$%e161319161482%_
                                         (gx#syntax-e _%$%e161312161364%_)))
                                    (let ((_%$%hd161320161485%_
                                           (##car _%$%e161319161482%_))
                                          (_%$%tl161321161487%_
                                           (##cdr _%$%e161319161482%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd161320161485%_)
                                               (gx#core-identifier=?
                                                _%$%hd161320161485%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl161321161487%_)
                                              (let ((_%$%e161322161490%_
                                                     (gx#syntax-e
                                                      _%$%tl161321161487%_)))
                                                (let ((_%$%hd161323161493%_
                                                       (##car _%$%e161322161490%_))
                                                      (_%$%tl161324161495%_
                                                       (##cdr _%$%e161322161490%_)))
                                                  (let ((_%hd-bind161498%_
                                                         _%$%hd161323161493%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl161324161495%_)
                                                        (let ((_%$%e161325161500%_
                                                               (gx#syntax-e
                                                                _%$%tl161324161495%_)))
                                                          (let ((_%$%hd161326161503%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e161325161500%_))
                        (_%$%tl161327161505%_ (##cdr _%$%e161325161500%_)))
                    (let* ((_%expr161508%_ _%$%hd161326161503%_)
                           (_%props161510%_ _%$%tl161327161505%_))
                      (if (and (gx#core-bind-values? _%hd-bind161498%_)
                               (gx#stx-list? _%props161510%_)
                               (not (gx#stx-null? _%props161510%_)))
                          (begin
                            (gx#core-bind-values! _%hd-bind161498%_)
                            (_%K161305%_
                             (cons (gx#core-cons
                                    '%#bind-runtime-properties!
                                    (cons _%hd-bind161498%_
                                          (cons _%props161510%_ '())))
                                   _%rest161306%_)
                             (cons (gx#core-cons
                                    '%#define-values
                                    (cons _%hd-bind161498%_
                                          (cons _%expr161508%_ '())))
                                   _%r161307%_)))
                          (_%$%E161318161478%_)))))
                (_%$%E161318161478%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E161318161478%_))
                                          (_%$%E161318161478%_))))
                                  (_%$%E161318161478%_))))
                           (_%$%E161313161524%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e161312161364%_)
                                  (let ((_%$%e161315161516%_
                                         (gx#syntax-e _%$%e161312161364%_)))
                                    (let ((_%$%hd161316161519%_
                                           (##car _%$%e161315161516%_))
                                          (_%$%tl161317161521%_
                                           (##cdr _%$%e161315161516%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd161316161519%_)
                                               (gx#core-identifier=?
                                                _%$%hd161316161519%_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_%K*161311%_
                                               (gx#core-expand-begin-syntax%
                                                _%hd161304%_))
                                              (_%$%E161314161512%_))
                                          (_%$%E161314161512%_))))
                                  (_%$%E161314161512%_)))))
                      (_%$%E161313161524%_))))
                 (_%eval-body161185%_
                  (lambda (_%rbody161193%_)
                    (let _%lp161195%_ ((_%rest161197%_ _%rbody161193%_)
                                       (_%body161198%_ '())
                                       (_%ebody161199%_ '()))
                      (let* ((_%$%rest161200161208%_ _%rest161197%_)
                             (_%$%E161203161212%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%$%rest161200161208%_
                                       '([hd . rest])
                                       'else)
                                (void)))
                             (_%$%else161202161216%_
                              (lambda ()
                                (values _%body161198%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody161199%_)
                                          (gx#stx-source _%stx161182%_))))))
                             (_%$%K161204161292%_
                              (lambda (_%rest161219%_ _%hd161220%_)
                                (let* ((_%$%e161221161238%_ _%hd161220%_)
                                       (_%$%E161233161242%_
                                        (lambda ()
                                          (_%lp161195%_
                                           _%rest161219%_
                                           (cons _%hd161220%_ _%body161198%_)
                                           (cons _%hd161220%_
                                                 _%ebody161199%_))))
                                       (_%$%E161223161254%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e161221161238%_)
                                              (let ((_%$%e161234161246%_
                                                     (gx#syntax-e
                                                      _%$%e161221161238%_)))
                                                (let ((_%$%hd161235161249%_
                                                       (##car _%$%e161234161246%_))
                                                      (_%$%tl161236161251%_
                                                       (##cdr _%$%e161234161246%_)))
                                                  (if (and (gx#identifier?
                                                            _%$%hd161235161249%_)
                                                           (gx#core-identifier=?
                                                            _%$%hd161235161249%_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_%lp161195%_
                                                           _%rest161219%_
                                                           (cons _%hd161220%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%body161198%_)
                   _%ebody161199%_)
                  (_%$%E161233161242%_))
              (_%$%E161233161242%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E161233161242%_))))
                                       (_%$%E161222161288%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e161221161238%_)
                                              (let ((_%$%e161224161258%_
                                                     (gx#syntax-e
                                                      _%$%e161221161238%_)))
                                                (let ((_%$%hd161225161261%_
                                                       (##car _%$%e161224161258%_))
                                                      (_%$%tl161226161263%_
                                                       (##cdr _%$%e161224161258%_)))
                                                  (if (and (gx#identifier?
                                                            _%$%hd161225161261%_)
                                                           (gx#core-identifier=?
                                                            _%$%hd161225161261%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%$%tl161226161263%_)
                                                          (let ((_%$%e161227161266%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl161226161263%_)))
                    (let ((_%$%hd161228161269%_ (##car _%$%e161227161266%_))
                          (_%$%tl161229161271%_ (##cdr _%$%e161227161266%_)))
                      (let ((_%hd-bind161274%_ _%$%hd161228161269%_))
                        (if (gx#stx-pair? _%$%tl161229161271%_)
                            (let ((_%$%e161230161276%_
                                   (gx#syntax-e _%$%tl161229161271%_)))
                              (let ((_%$%hd161231161279%_
                                     (##car _%$%e161230161276%_))
                                    (_%$%tl161232161281%_
                                     (##cdr _%$%e161230161276%_)))
                                (let ((_%expr161284%_ _%$%hd161231161279%_))
                                  (if (gx#stx-null? _%$%tl161232161281%_)
                                      (if '#t
                                          (let ((_%ehd161286%_
                                                 (gx#core-quote-syntax
                                                  (cons (gx#core-quote-syntax
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _%hd-bind161274%_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr161284%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source
                                                   _%hd161220%_))))
                                            (_%lp161195%_
                                             _%rest161219%_
                                             (cons _%ehd161286%_
                                                   _%body161198%_)
                                             (cons _%ehd161286%_
                                                   _%ebody161199%_)))
                                          (_%$%E161223161254%_))
                                      (_%$%E161223161254%_)))))
                            (_%$%E161223161254%_)))))
                  (_%$%E161223161254%_))
              (_%$%E161223161254%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E161223161254%_)))))
                                  (_%$%E161222161288%_)))))
                        (if (pair? _%$%rest161200161208%_)
                            (let ((_%$%hd161205161295%_
                                   (##car _%$%rest161200161208%_))
                                  (_%$%tl161206161297%_
                                   (##cdr _%$%rest161200161208%_)))
                              (let* ((_%hd161300%_ _%$%hd161205161295%_)
                                     (_%rest161302%_ _%$%tl161206161297%_))
                                (_%$%K161204161292%_
                                 _%rest161302%_
                                 _%hd161300%_)))
                            (_%$%else161202161216%_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_%rbody161188%_
                     (gx#core-expand-block
                      _%stx161182%_
                      _%expand-special161184%_
                      '#f))
                    (_g161536_ (_%eval-body161185%_ _%rbody161188%_)))
               (begin
                 (let ((_g161537_
                        (if (##values? _g161536_)
                            (##values-length _g161536_)
                            1)))
                   (if (not (##fx= _g161537_ 2))
                       (error "Context expects 2 values" _g161537_)))
                 (let ((_%expanded-body161190%_ (##values-ref _g161536_ 0))
                       (_%value161191%_ (##values-ref _g161536_ 1)))
                   (gx#core-quote-syntax
                    (if (gx#module-context? (gx#current-expander-context))
                        (gx#core-cons '%#begin-syntax _%expanded-body161190%_)
                        (cons (gx#core-quote-syntax '%#quote)
                              (cons _%value161191%_ '())))
                    (gx#stx-source _%stx161182%_))))))
           gx#current-expander-phi
           (fx1+ (gx#current-expander-phi))))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx161152%_)
        (let* ((_%$%e161153161160%_ _%stx161152%_)
               (_%$%E161155161164%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e161153161160%_)))
               (_%$%E161154161178%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e161153161160%_)
                      (let ((_%$%e161156161168%_
                             (gx#syntax-e _%$%e161153161160%_)))
                        (let ((_%$%hd161157161171%_
                               (##car _%$%e161156161168%_))
                              (_%$%tl161158161173%_
                               (##cdr _%$%e161156161168%_)))
                          (let ((_%body161176%_ _%$%tl161158161173%_))
                            (if (gx#stx-list? _%body161176%_)
                                (gx#core-quote-syntax
                                 (gx#core-cons '%#begin-foreign _%body161176%_)
                                 (gx#stx-source _%stx161152%_))
                                (_%$%E161155161164%_)))))
                      (_%$%E161155161164%_)))))
          (_%$%E161154161178%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx161150%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx161150%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx161096%_)
        (let* ((_%$%e161097161110%_ _%stx161096%_)
               (_%$%E161099161114%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e161097161110%_)))
               (_%$%E161098161146%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e161097161110%_)
                      (let ((_%$%e161100161118%_
                             (gx#syntax-e _%$%e161097161110%_)))
                        (let ((_%$%hd161101161121%_
                               (##car _%$%e161100161118%_))
                              (_%$%tl161102161123%_
                               (##cdr _%$%e161100161118%_)))
                          (if (gx#stx-pair? _%$%tl161102161123%_)
                              (let ((_%$%e161103161126%_
                                     (gx#syntax-e _%$%tl161102161123%_)))
                                (let ((_%$%hd161104161129%_
                                       (##car _%$%e161103161126%_))
                                      (_%$%tl161105161131%_
                                       (##cdr _%$%e161103161126%_)))
                                  (let ((_%ann161134%_ _%$%hd161104161129%_))
                                    (if (gx#stx-pair? _%$%tl161105161131%_)
                                        (let ((_%$%e161106161136%_
                                               (gx#syntax-e
                                                _%$%tl161105161131%_)))
                                          (let ((_%$%hd161107161139%_
                                                 (##car _%$%e161106161136%_))
                                                (_%$%tl161108161141%_
                                                 (##cdr _%$%e161106161136%_)))
                                            (let ((_%expr161144%_
                                                   _%$%hd161107161139%_))
                                              (if (gx#stx-null?
                                                   _%$%tl161108161141%_)
                                                  (if '#t
                                                      (gx#core-quote-syntax
                                                       (cons (gx#core-quote-syntax
                                                              '%#begin-annotation)
                                                             (cons _%ann161134%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _%expr161144%_)
                                 '())))
               (gx#stx-source _%stx161096%_))
              (_%$%E161099161114%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E161099161114%_)))))
                                        (_%$%E161099161114%_)))))
                              (_%$%E161099161114%_))))
                      (_%$%E161099161114%_)))))
          (_%$%E161098161146%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx160721%_ _%body160722%_)
        (letrec ((_%expand-special160724%_
                  (lambda (_%hd161091%_ _%K161092%_ _%rest161093%_ _%r161094%_)
                    (_%K161092%_
                     '()
                     (cons (_%expand-internal160725%_
                            _%hd161091%_
                            _%rest161093%_)
                           _%r161094%_))))
                 (_%expand-internal160725%_
                  (lambda (_%hd161087%_ _%rest161088%_)
                    (call-with-parameters
                     (lambda ()
                       (_%wrap-internal160727%_
                        (gx#core-expand-block
                         (gx#stx-wrap-source
                          (cons* '%#begin _%hd161087%_ _%rest161088%_)
                          (gx#stx-source _%stx160721%_))
                         _%expand-internal-special160726%_
                         '#f)))
                     gx#current-expander-context
                     (gx#make-local-context))))
                 (_%expand-internal-special160726%_
                  (lambda (_%hd160883%_ _%K160884%_ _%rest160885%_ _%r160886%_)
                    (let* ((_%$%e160887160935%_ _%hd160883%_)
                           (_%$%E160930160939%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e160887160935%_)))
                           (_%$%E160917160951%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e160887160935%_)
                                  (let ((_%$%e160931160943%_
                                         (gx#syntax-e _%$%e160887160935%_)))
                                    (let ((_%$%hd160932160946%_
                                           (##car _%$%e160931160943%_))
                                          (_%$%tl160933160948%_
                                           (##cdr _%$%e160931160943%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd160932160946%_)
                                               (gx#core-identifier=?
                                                _%$%hd160932160946%_
                                                '%#declare))
                                          (if '#t
                                              (_%K160884%_
                                               _%rest160885%_
                                               (cons (gx#core-expand-declare%
                                                      _%hd160883%_)
                                                     _%r160886%_))
                                              (_%$%E160930160939%_))
                                          (_%$%E160930160939%_))))
                                  (_%$%E160930160939%_))))
                           (_%$%E160913160993%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e160887160935%_)
                                  (let ((_%$%e160918160955%_
                                         (gx#syntax-e _%$%e160887160935%_)))
                                    (let ((_%$%hd160919160958%_
                                           (##car _%$%e160918160955%_))
                                          (_%$%tl160920160960%_
                                           (##cdr _%$%e160918160955%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd160919160958%_)
                                               (gx#core-identifier=?
                                                _%$%hd160919160958%_
                                                '%#bind-runtime-properties!))
                                          (if (gx#stx-pair?
                                               _%$%tl160920160960%_)
                                              (let ((_%$%e160921160963%_
                                                     (gx#syntax-e
                                                      _%$%tl160920160960%_)))
                                                (let ((_%$%hd160922160966%_
                                                       (##car _%$%e160921160963%_))
                                                      (_%$%tl160923160968%_
                                                       (##cdr _%$%e160921160963%_)))
                                                  (if (gx#stx-pair?
                                                       _%$%hd160922160966%_)
                                                      (let ((_%$%e160927160971%_
                                                             (gx#syntax-e
                                                              _%$%hd160922160966%_)))
                                                        (let ((_%$%hd160928160974%_
                                                               (##car _%$%e160927160971%_))
                                                              (_%$%tl160929160976%_
                                                               (##cdr _%$%e160927160971%_)))
                                                          (let ((_%id160979%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%hd160928160974%_))
                    (if (gx#stx-null? _%$%tl160929160976%_)
                        (if (gx#stx-pair? _%$%tl160923160968%_)
                            (let ((_%$%e160924160981%_
                                   (gx#syntax-e _%$%tl160923160968%_)))
                              (let ((_%$%hd160925160984%_
                                     (##car _%$%e160924160981%_))
                                    (_%$%tl160926160986%_
                                     (##cdr _%$%e160924160981%_)))
                                (let ((_%props160989%_ _%$%hd160925160984%_))
                                  (if (gx#stx-null? _%$%tl160926160986%_)
                                      (if '#t
                                          (let ((_%bind160991%_
                                                 (gx#resolve-identifier
                                                  _%id160979%_)))
                                            (gx#core-bind-runtime-properties!
                                             _%bind160991%_
                                             _%props160989%_)
                                            (_%K160884%_
                                             _%rest160885%_
                                             _%r160886%_))
                                          (_%$%E160917160951%_))
                                      (_%$%E160917160951%_)))))
                            (_%$%E160917160951%_))
                        (_%$%E160917160951%_)))))
              (_%$%E160917160951%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E160917160951%_))
                                          (_%$%E160917160951%_))))
                                  (_%$%E160917160951%_))))
                           (_%$%E160909161005%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e160887160935%_)
                                  (let ((_%$%e160914160997%_
                                         (gx#syntax-e _%$%e160887160935%_)))
                                    (let ((_%$%hd160915161000%_
                                           (##car _%$%e160914160997%_))
                                          (_%$%tl160916161002%_
                                           (##cdr _%$%e160914160997%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd160915161000%_)
                                               (gx#core-identifier=?
                                                _%$%hd160915161000%_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _%hd160883%_)
                                                (_%K160884%_
                                                 _%rest160885%_
                                                 _%r160886%_))
                                              (_%$%E160913160993%_))
                                          (_%$%E160913160993%_))))
                                  (_%$%E160913160993%_))))
                           (_%$%E160899161017%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e160887160935%_)
                                  (let ((_%$%e160910161009%_
                                         (gx#syntax-e _%$%e160887160935%_)))
                                    (let ((_%$%hd160911161012%_
                                           (##car _%$%e160910161009%_))
                                          (_%$%tl160912161014%_
                                           (##cdr _%$%e160910161009%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd160911161012%_)
                                               (gx#core-identifier=?
                                                _%$%hd160911161012%_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _%hd160883%_)
                                                (_%K160884%_
                                                 _%rest160885%_
                                                 _%r160886%_))
                                              (_%$%E160909161005%_))
                                          (_%$%E160909161005%_))))
                                  (_%$%E160909161005%_))))
                           (_%$%E160889161049%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e160887160935%_)
                                  (let ((_%$%e160900161021%_
                                         (gx#syntax-e _%$%e160887160935%_)))
                                    (let ((_%$%hd160901161024%_
                                           (##car _%$%e160900161021%_))
                                          (_%$%tl160902161026%_
                                           (##cdr _%$%e160900161021%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd160901161024%_)
                                               (gx#core-identifier=?
                                                _%$%hd160901161024%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl160902161026%_)
                                              (let ((_%$%e160903161029%_
                                                     (gx#syntax-e
                                                      _%$%tl160902161026%_)))
                                                (let ((_%$%hd160904161032%_
                                                       (##car _%$%e160903161029%_))
                                                      (_%$%tl160905161034%_
                                                       (##cdr _%$%e160903161029%_)))
                                                  (let ((_%hd-bind161037%_
                                                         _%$%hd160904161032%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl160905161034%_)
                                                        (let ((_%$%e160906161039%_
                                                               (gx#syntax-e
                                                                _%$%tl160905161034%_)))
                                                          (let ((_%$%hd160907161042%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e160906161039%_))
                        (_%$%tl160908161044%_ (##cdr _%$%e160906161039%_)))
                    (let ((_%expr161047%_ _%$%hd160907161042%_))
                      (if (gx#stx-null? _%$%tl160908161044%_)
                          (if (gx#core-bind-values? _%hd-bind161037%_)
                              (begin
                                (gx#core-bind-values! _%hd-bind161037%_)
                                (_%K160884%_
                                 _%rest160885%_
                                 (cons _%hd160883%_ _%r160886%_)))
                              (_%$%E160899161017%_))
                          (_%$%E160899161017%_)))))
                (_%$%E160899161017%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E160899161017%_))
                                          (_%$%E160899161017%_))))
                                  (_%$%E160899161017%_))))
                           (_%$%E160888161083%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e160887160935%_)
                                  (let ((_%$%e160890161053%_
                                         (gx#syntax-e _%$%e160887160935%_)))
                                    (let ((_%$%hd160891161056%_
                                           (##car _%$%e160890161053%_))
                                          (_%$%tl160892161058%_
                                           (##cdr _%$%e160890161053%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd160891161056%_)
                                               (gx#core-identifier=?
                                                _%$%hd160891161056%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl160892161058%_)
                                              (let ((_%$%e160893161061%_
                                                     (gx#syntax-e
                                                      _%$%tl160892161058%_)))
                                                (let ((_%$%hd160894161064%_
                                                       (##car _%$%e160893161061%_))
                                                      (_%$%tl160895161066%_
                                                       (##cdr _%$%e160893161061%_)))
                                                  (let ((_%hd-bind161069%_
                                                         _%$%hd160894161064%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl160895161066%_)
                                                        (let ((_%$%e160896161071%_
                                                               (gx#syntax-e
                                                                _%$%tl160895161066%_)))
                                                          (let ((_%$%hd160897161074%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e160896161071%_))
                        (_%$%tl160898161076%_ (##cdr _%$%e160896161071%_)))
                    (let* ((_%expr161079%_ _%$%hd160897161074%_)
                           (_%props161081%_ _%$%tl160898161076%_))
                      (if (and (gx#core-bind-values? _%hd-bind161069%_)
                               (gx#stx-list? _%props161081%_)
                               (not (gx#stx-null? _%props161081%_)))
                          (begin
                            (gx#core-bind-values! _%hd-bind161069%_)
                            (_%K160884%_
                             (cons (gx#core-cons
                                    '%#bind-runtime-properties!
                                    (cons _%hd-bind161069%_
                                          (cons _%props161081%_ '())))
                                   _%rest160885%_)
                             (cons (gx#core-cons
                                    '%#define-values
                                    (cons _%hd-bind161069%_
                                          (cons _%expr161079%_ '())))
                                   _%r160886%_)))
                          (_%$%E160889161049%_)))))
                (_%$%E160889161049%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E160889161049%_))
                                          (_%$%E160889161049%_))))
                                  (_%$%E160889161049%_)))))
                      (_%$%E160888161083%_))))
                 (_%wrap-internal160727%_
                  (lambda (_%rbody160729%_)
                    (let _%lp160731%_ ((_%rest160733%_ _%rbody160729%_)
                                       (_%decls160734%_ '())
                                       (_%bind160735%_ '())
                                       (_%body160736%_ '()))
                      (let* ((_%$%e160737160744%_ _%rest160733%_)
                             (_%$%E160739160793%_
                              (lambda ()
                                (let* ((_%body160788%_
                                        (let* ((_%$%body160747160757%_
                                                _%body160736%_)
                                               (_%$%E160751160761%_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _%$%body160747160757%_
                                                         '([])
                                                         '([expr])
                                                         'else)
                                                  (void)))
                                               (_%$%else160750160765%_
                                                (lambda ()
                                                  (gx#core-quote-syntax
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body160736%_)
                                                   (gx#stx-source
                                                    _%stx160721%_))))
                                               (_%$%try-match160749160781%_
                                                (lambda ()
                                                  (let ((_%$%K160752160771%_
                                                         (lambda (_%expr160769%_)
                                                           _%expr160769%_)))
                                                    (if (pair? _%$%body160747160757%_)
                                                        (let ((_%$%hd160753160774%_
                                                               (##car _%$%body160747160757%_))
                                                              (_%$%tl160754160776%_
                                                               (##cdr _%$%body160747160757%_)))
                                                          (let ((_%expr160779%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%hd160753160774%_))
                    (if (null? _%$%tl160754160776%_)
                        (_%$%K160752160771%_ _%expr160779%_)
                        (_%$%else160750160765%_))))
                (_%$%else160750160765%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%K160755160785%_
                                                (lambda ()
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; empty body"
                                                   _%stx160721%_))))
                                          (if (null? _%$%body160747160757%_)
                                              (_%$%K160755160785%_)
                                              (_%$%try-match160749160781%_))))
                                       (_%body160790%_
                                        (if (null? _%bind160735%_)
                                            _%body160788%_
                                            (gx#core-quote-syntax
                                             (cons (gx#core-quote-syntax
                                                    '%#letrec*-values)
                                                   (cons _%bind160735%_
                                                         (cons _%body160788%_
                                                               '())))
                                             (gx#stx-source _%stx160721%_)))))
                                  (if (null? _%decls160734%_)
                                      _%body160790%_
                                      (gx#core-quote-syntax
                                       (cons (gx#core-quote-syntax
                                              '%#begin-annotation)
                                             (cons _%decls160734%_
                                                   (cons _%body160790%_ '())))
                                       (gx#stx-source _%stx160721%_))))))
                             (_%$%E160738160879%_
                              (lambda ()
                                (if (gx#stx-pair? _%$%e160737160744%_)
                                    (let ((_%$%e160740160797%_
                                           (gx#syntax-e _%$%e160737160744%_)))
                                      (let ((_%$%hd160741160800%_
                                             (##car _%$%e160740160797%_))
                                            (_%$%tl160742160802%_
                                             (##cdr _%$%e160740160797%_)))
                                        (let* ((_%hd160805%_
                                                _%$%hd160741160800%_)
                                               (_%rest160807%_
                                                _%$%tl160742160802%_))
                                          (if '#t
                                              (let* ((_%$%e160808160825%_
                                                      _%hd160805%_)
                                                     (_%$%E160820160829%_
                                                      (lambda ()
                                                        (if (null? _%bind160735%_)
                                                            (_%lp160731%_
                                                             _%rest160807%_
                                                             _%decls160734%_
                                                             _%bind160735%_
                                                             (cons _%hd160805%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body160736%_))
                    (_%lp160731%_
                     _%rest160807%_
                     _%decls160734%_
                     (cons (cons '#f (cons _%hd160805%_ '())) _%bind160735%_)
                     _%body160736%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%E160810160843%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%$%e160808160825%_)
                                                            (let ((_%$%e160821160833%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%e160808160825%_)))
                      (let ((_%$%hd160822160836%_ (##car _%$%e160821160833%_))
                            (_%$%tl160823160838%_ (##cdr _%$%e160821160833%_)))
                        (if (and (gx#identifier? _%$%hd160822160836%_)
                                 (gx#core-identifier=?
                                  _%$%hd160822160836%_
                                  '%#declare))
                            (let ((_%xdecls160841%_ _%$%tl160823160838%_))
                              (if '#t
                                  (_%lp160731%_
                                   _%rest160807%_
                                   (gx#stx-foldr
                                    cons
                                    _%decls160734%_
                                    _%xdecls160841%_)
                                   _%bind160735%_
                                   _%body160736%_)
                                  (_%$%E160820160829%_)))
                            (_%$%E160820160829%_))))
                    (_%$%E160820160829%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%E160809160875%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%$%e160808160825%_)
                                                            (let ((_%$%e160811160847%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%e160808160825%_)))
                      (let ((_%$%hd160812160850%_ (##car _%$%e160811160847%_))
                            (_%$%tl160813160852%_ (##cdr _%$%e160811160847%_)))
                        (if (and (gx#identifier? _%$%hd160812160850%_)
                                 (gx#core-identifier=?
                                  _%$%hd160812160850%_
                                  '%#define-values))
                            (if (gx#stx-pair? _%$%tl160813160852%_)
                                (let ((_%$%e160814160855%_
                                       (gx#syntax-e _%$%tl160813160852%_)))
                                  (let ((_%$%hd160815160858%_
                                         (##car _%$%e160814160855%_))
                                        (_%$%tl160816160860%_
                                         (##cdr _%$%e160814160855%_)))
                                    (let ((_%hd-bind160863%_
                                           _%$%hd160815160858%_))
                                      (if (gx#stx-pair? _%$%tl160816160860%_)
                                          (let ((_%$%e160817160865%_
                                                 (gx#syntax-e
                                                  _%$%tl160816160860%_)))
                                            (let ((_%$%hd160818160868%_
                                                   (##car _%$%e160817160865%_))
                                                  (_%$%tl160819160870%_
                                                   (##cdr _%$%e160817160865%_)))
                                              (let ((_%expr160873%_
                                                     _%$%hd160818160868%_))
                                                (if (gx#stx-null?
                                                     _%$%tl160819160870%_)
                                                    (if '#t
                                                        (_%lp160731%_
                                                         _%rest160807%_
                                                         _%decls160734%_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd-bind160863%_)
                             (cons (gx#core-expand-expression _%expr160873%_)
                                   '()))
                       _%bind160735%_)
                 _%body160736%_)
                (_%$%E160810160843%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E160810160843%_)))))
                                          (_%$%E160810160843%_)))))
                                (_%$%E160810160843%_))
                            (_%$%E160810160843%_))))
                    (_%$%E160810160843%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%E160809160875%_))
                                              (_%$%E160739160793%_)))))
                                    (_%$%E160739160793%_)))))
                        (_%$%E160738160879%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body160722%_)
            (gx#stx-source _%stx160721%_))
           _%expand-special160724%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx160659%_)
        (let* ((_%$%e160660160667%_ _%stx160659%_)
               (_%$%E160662160671%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e160660160667%_)))
               (_%$%E160661160717%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e160660160667%_)
                      (let ((_%$%e160663160675%_
                             (gx#syntax-e _%$%e160660160667%_)))
                        (let ((_%$%hd160664160678%_
                               (##car _%$%e160663160675%_))
                              (_%$%tl160665160680%_
                               (##cdr _%$%e160663160675%_)))
                          (let ((_%body160683%_ _%$%tl160665160680%_))
                            (if (gx#stx-list? _%body160683%_)
                                (gx#core-quote-syntax
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map
                                   (lambda (_%decl160685%_)
                                     (let* ((_%$%e160686160693%_
                                             _%decl160685%_)
                                            (_%$%E160688160697%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%$%e160686160693%_)))
                                            (_%$%E160687160713%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%$%e160686160693%_)
                                                   (let ((_%$%e160689160701%_
                                                          (gx#syntax-e
                                                           _%$%e160686160693%_)))
                                                     (let ((_%$%hd160690160704%_
                                                            (##car _%$%e160689160701%_))
                                                           (_%$%tl160691160706%_
                                                            (##cdr _%$%e160689160701%_)))
                                                       (let* ((_%head160709%_
                                                               _%$%hd160690160704%_)
                                                              (_%args160711%_
                                                               _%$%tl160691160706%_))
                                                         (if (gx#stx-list?
                                                              _%args160711%_)
                                                             (gx#stx-map
                                                              gx#core-quote-syntax
                                                              _%decl160685%_)
                                                             (_%$%E160688160697%_)))))
                                                   (_%$%E160688160697%_)))))
                                       (_%$%E160687160713%_)))
                                   _%body160683%_))
                                 (gx#stx-source _%stx160659%_))
                                (_%$%E160662160671%_)))))
                      (_%$%E160662160671%_)))))
          (_%$%E160661160717%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx160563%_)
        (let* ((_%$%e160564160571%_ _%stx160563%_)
               (_%$%E160566160575%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e160564160571%_)))
               (_%$%E160565160655%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e160564160571%_)
                      (let ((_%$%e160567160579%_
                             (gx#syntax-e _%$%e160564160571%_)))
                        (let ((_%$%hd160568160582%_
                               (##car _%$%e160567160579%_))
                              (_%$%tl160569160584%_
                               (##cdr _%$%e160567160579%_)))
                          (let ((_%body160587%_ _%$%tl160569160584%_))
                            (if '#t
                                (let _%lp160589%_ ((_%rest160591%_
                                                    _%body160587%_)
                                                   (_%r160592%_ '()))
                                  (let* ((_%$%e160593160607%_ _%rest160591%_)
                                         (_%$%E160605160611%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _%stx160563%_)))
                                         (_%$%E160595160615%_
                                          (lambda ()
                                            (if (gx#stx-null?
                                                 _%$%e160593160607%_)
                                                (if '#t
                                                    (gx#core-quote-syntax
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _%r160592%_))
                                                     (gx#stx-source
                                                      _%stx160563%_))
                                                    (_%$%E160605160611%_))
                                                (_%$%E160605160611%_))))
                                         (_%$%E160594160651%_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 _%$%e160593160607%_)
                                                (let ((_%$%e160596160619%_
                                                       (gx#syntax-e
                                                        _%$%e160593160607%_)))
                                                  (let ((_%$%hd160597160622%_
                                                         (##car _%$%e160596160619%_))
                                                        (_%$%tl160598160624%_
                                                         (##cdr _%$%e160596160619%_)))
                                                    (if (gx#stx-pair?
                                                         _%$%hd160597160622%_)
                                                        (let ((_%$%e160599160627%_
                                                               (gx#syntax-e
                                                                _%$%hd160597160622%_)))
                                                          (let ((_%$%hd160600160630%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e160599160627%_))
                        (_%$%tl160601160632%_ (##cdr _%$%e160599160627%_)))
                    (let ((_%id160635%_ _%$%hd160600160630%_))
                      (if (gx#stx-pair? _%$%tl160601160632%_)
                          (let ((_%$%e160602160637%_
                                 (gx#syntax-e _%$%tl160601160632%_)))
                            (let ((_%$%hd160603160640%_
                                   (##car _%$%e160602160637%_))
                                  (_%$%tl160604160642%_
                                   (##cdr _%$%e160602160637%_)))
                              (let ((_%eid160645%_ _%$%hd160603160640%_))
                                (if (gx#stx-null? _%$%tl160604160642%_)
                                    (let ((_%rest160647%_
                                           _%$%tl160598160624%_))
                                      (if (and (gx#identifier? _%id160635%_)
                                               (gx#identifier? _%eid160645%_))
                                          (let ((_%eid160649%_
                                                 (gx#stx-e _%eid160645%_)))
                                            (gx#core-bind-extern!
                                             _%id160635%_
                                             _%eid160649%_)
                                            (_%lp160589%_
                                             _%rest160647%_
                                             (cons (cons (gx#core-quote-syntax
                                                          _%id160635%_)
                                                         (cons _%eid160649%_
                                                               '()))
                                                   _%r160592%_)))
                                          (_%$%E160595160615%_)))
                                    (_%$%E160595160615%_)))))
                          (_%$%E160595160615%_)))))
                (_%$%E160595160615%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%E160595160615%_)))))
                                    (_%$%E160594160651%_)))
                                (_%$%E160566160575%_)))))
                      (_%$%E160566160575%_)))))
          (_%$%E160565160655%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx160465%_)
        (let* ((_%$%e160466160489%_ _%stx160465%_)
               (_%$%E160478160493%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e160466160489%_)))
               (_%$%E160468160525%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e160466160489%_)
                      (let ((_%$%e160479160497%_
                             (gx#syntax-e _%$%e160466160489%_)))
                        (let ((_%$%hd160480160500%_
                               (##car _%$%e160479160497%_))
                              (_%$%tl160481160502%_
                               (##cdr _%$%e160479160497%_)))
                          (if (gx#stx-pair? _%$%tl160481160502%_)
                              (let ((_%$%e160482160505%_
                                     (gx#syntax-e _%$%tl160481160502%_)))
                                (let ((_%$%hd160483160508%_
                                       (##car _%$%e160482160505%_))
                                      (_%$%tl160484160510%_
                                       (##cdr _%$%e160482160505%_)))
                                  (let ((_%hd160513%_ _%$%hd160483160508%_))
                                    (if (gx#stx-pair? _%$%tl160484160510%_)
                                        (let ((_%$%e160485160515%_
                                               (gx#syntax-e
                                                _%$%tl160484160510%_)))
                                          (let ((_%$%hd160486160518%_
                                                 (##car _%$%e160485160515%_))
                                                (_%$%tl160487160520%_
                                                 (##cdr _%$%e160485160515%_)))
                                            (let ((_%expr160523%_
                                                   _%$%hd160486160518%_))
                                              (if (gx#stx-null?
                                                   _%$%tl160487160520%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd160513%_)
                                                      (begin
                                                        (gx#core-bind-values!
                                                         _%hd160513%_)
                                                        (gx#core-quote-syntax
                                                         (cons (gx#core-quote-syntax
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd160513%_)
                             (cons (gx#core-expand-expression _%expr160523%_)
                                   '())))
                 (gx#stx-source _%stx160465%_)))
              (_%$%E160478160493%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E160478160493%_)))))
                                        (_%$%E160478160493%_)))))
                              (_%$%E160478160493%_))))
                      (_%$%E160478160493%_))))
               (_%$%E160467160559%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e160466160489%_)
                      (let ((_%$%e160469160529%_
                             (gx#syntax-e _%$%e160466160489%_)))
                        (let ((_%$%hd160470160532%_
                               (##car _%$%e160469160529%_))
                              (_%$%tl160471160534%_
                               (##cdr _%$%e160469160529%_)))
                          (if (gx#stx-pair? _%$%tl160471160534%_)
                              (let ((_%$%e160472160537%_
                                     (gx#syntax-e _%$%tl160471160534%_)))
                                (let ((_%$%hd160473160540%_
                                       (##car _%$%e160472160537%_))
                                      (_%$%tl160474160542%_
                                       (##cdr _%$%e160472160537%_)))
                                  (let ((_%hd160545%_ _%$%hd160473160540%_))
                                    (if (gx#stx-pair? _%$%tl160474160542%_)
                                        (let ((_%$%e160475160547%_
                                               (gx#syntax-e
                                                _%$%tl160474160542%_)))
                                          (let ((_%$%hd160476160550%_
                                                 (##car _%$%e160475160547%_))
                                                (_%$%tl160477160552%_
                                                 (##cdr _%$%e160475160547%_)))
                                            (let* ((_%expr160555%_
                                                    _%$%hd160476160550%_)
                                                   (_%props160557%_
                                                    _%$%tl160477160552%_))
                                              (if (and (gx#stx-list?
                                                        _%props160557%_)
                                                       (not (gx#stx-null?
                                                             _%props160557%_)))
                                                  (gx#core-cons
                                                   '%#begin
                                                   (cons (gx#core-cons
                                                          '%#define-values
                                                          (cons _%hd160545%_
                                                                (cons _%expr160555%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
                 (cons (gx#core-cons
                        '%#bind-runtime-properties!
                        (cons _%hd160545%_ (cons _%props160557%_ '())))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E160468160525%_)))))
                                        (_%$%E160468160525%_)))))
                              (_%$%E160468160525%_))))
                      (_%$%E160468160525%_)))))
          (_%$%E160467160559%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx160404%_)
        (let* ((_%$%e160405160418%_ _%stx160404%_)
               (_%$%E160407160422%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e160405160418%_)))
               (_%$%E160406160461%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e160405160418%_)
                      (let ((_%$%e160408160426%_
                             (gx#syntax-e _%$%e160405160418%_)))
                        (let ((_%$%hd160409160429%_
                               (##car _%$%e160408160426%_))
                              (_%$%tl160410160431%_
                               (##cdr _%$%e160408160426%_)))
                          (if (gx#stx-pair? _%$%tl160410160431%_)
                              (let ((_%$%e160411160434%_
                                     (gx#syntax-e _%$%tl160410160431%_)))
                                (let ((_%$%hd160412160437%_
                                       (##car _%$%e160411160434%_))
                                      (_%$%tl160413160439%_
                                       (##cdr _%$%e160411160434%_)))
                                  (let ((_%id160442%_ _%$%hd160412160437%_))
                                    (if (gx#stx-pair? _%$%tl160413160439%_)
                                        (let ((_%$%e160414160444%_
                                               (gx#syntax-e
                                                _%$%tl160413160439%_)))
                                          (let ((_%$%hd160415160447%_
                                                 (##car _%$%e160414160444%_))
                                                (_%$%tl160416160449%_
                                                 (##cdr _%$%e160414160444%_)))
                                            (let* ((_%binding-id160452%_
                                                    _%$%hd160415160447%_)
                                                   (_%props160454%_
                                                    _%$%tl160416160449%_))
                                              (if (and (gx#identifier?
                                                        _%id160442%_)
                                                       (gx#identifier?
                                                        _%binding-id160452%_)
                                                       (gx#stx-list?
                                                        _%props160454%_))
                                                  (let* ((_%eid160456%_
                                                          (gx#stx-e
                                                           _%binding-id160452%_))
                                                         (_%bind160458%_
                                                          (gx#core-bind-runtime-reference!
                                                           _%id160442%_
                                                           _%eid160456%_)))
                                                    (gx#core-bind-runtime-properties!
                                                     _%bind160458%_
                                                     _%props160454%_)
                                                    (gx#core-quote-syntax
                                                     (cons (gx#core-quote-syntax
                                                            '%#define-runtime)
                                                           (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id160442%_)
                         (cons _%eid160456%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E160407160422%_)))))
                                        (_%$%E160407160422%_)))))
                              (_%$%E160407160422%_))))
                      (_%$%E160407160422%_)))))
          (_%$%E160406160461%_))))
    (define gx#core-expand-bind-runtime-properties%
      (lambda (_%stx160337%_)
        (let* ((_%$%e160338160354%_ _%stx160337%_)
               (_%$%E160340160358%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e160338160354%_)))
               (_%$%E160339160400%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e160338160354%_)
                      (let ((_%$%e160341160362%_
                             (gx#syntax-e _%$%e160338160354%_)))
                        (let ((_%$%hd160342160365%_
                               (##car _%$%e160341160362%_))
                              (_%$%tl160343160367%_
                               (##cdr _%$%e160341160362%_)))
                          (if (gx#stx-pair? _%$%tl160343160367%_)
                              (let ((_%$%e160344160370%_
                                     (gx#syntax-e _%$%tl160343160367%_)))
                                (let ((_%$%hd160345160373%_
                                       (##car _%$%e160344160370%_))
                                      (_%$%tl160346160375%_
                                       (##cdr _%$%e160344160370%_)))
                                  (if (gx#stx-pair? _%$%hd160345160373%_)
                                      (let ((_%$%e160350160378%_
                                             (gx#syntax-e
                                              _%$%hd160345160373%_)))
                                        (let ((_%$%hd160351160381%_
                                               (##car _%$%e160350160378%_))
                                              (_%$%tl160352160383%_
                                               (##cdr _%$%e160350160378%_)))
                                          (let ((_%id160386%_
                                                 _%$%hd160351160381%_))
                                            (if (gx#stx-null?
                                                 _%$%tl160352160383%_)
                                                (if (gx#stx-pair?
                                                     _%$%tl160346160375%_)
                                                    (let ((_%$%e160347160388%_
                                                           (gx#syntax-e
                                                            _%$%tl160346160375%_)))
                                                      (let ((_%$%hd160348160391%_
                                                             (##car _%$%e160347160388%_))
                                                            (_%$%tl160349160393%_
                                                             (##cdr _%$%e160347160388%_)))
                                                        (let ((_%props160396%_
                                                               _%$%hd160348160391%_))
                                                          (if (gx#stx-null?
                                                               _%$%tl160349160393%_)
                                                              (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%id160386%_)
                               (gx#stx-list? _%props160396%_))
                          (let ((_%bind160398%_
                                 (gx#resolve-identifier _%id160386%_)))
                            (if (gx#runtime-binding? _%bind160398%_)
                                '#!void
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; expected runtime binding"
                                 _%stx160337%_
                                 _%id160386%_
                                 _%bind160398%_))
                            (gx#core-bind-runtime-properties!
                             _%bind160398%_
                             _%props160396%_)
                            (gx#core-cons '%#begin '()))
                          (_%$%E160340160358%_))
                      (_%$%E160340160358%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E160340160358%_))
                                                (_%$%E160340160358%_)))))
                                      (_%$%E160340160358%_))))
                              (_%$%E160340160358%_))))
                      (_%$%E160340160358%_)))))
          (_%$%E160339160400%_))))
    (define gx#core-bind-runtime-properties!
      (lambda (_%bind160272%_ _%props160273%_)
        (letrec ((_%eval-prop160275%_
                  (lambda (_%prop160335%_)
                    (gx#eval-expression+1 _%prop160335%_))))
          (let _%loop160277%_ ((_%rest160279%_ _%props160273%_)
                               (_%props160280%_ '()))
            (let* ((_%$%e160281160292%_ _%rest160279%_)
                   (_%$%E160290160296%_
                    (lambda ()
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%$%e160281160292%_)))
                   (_%$%E160283160300%_
                    (lambda ()
                      (if (gx#stx-null? _%$%e160281160292%_)
                          (if '#t
                              (if (null? _%props160280%_)
                                  '#!void
                                  (gx#binding-properties-set!
                                   _%bind160272%_
                                   (reverse! _%props160280%_)))
                              (_%$%E160290160296%_))
                          (_%$%E160290160296%_))))
                   (_%$%E160282160331%_
                    (lambda ()
                      (if (gx#stx-pair? _%$%e160281160292%_)
                          (let ((_%$%e160284160304%_
                                 (gx#syntax-e _%$%e160281160292%_)))
                            (let ((_%$%hd160285160307%_
                                   (##car _%$%e160284160304%_))
                                  (_%$%tl160286160309%_
                                   (##cdr _%$%e160284160304%_)))
                              (let ((_%key160312%_ _%$%hd160285160307%_))
                                (if (gx#stx-pair? _%$%tl160286160309%_)
                                    (let ((_%$%e160287160314%_
                                           (gx#syntax-e _%$%tl160286160309%_)))
                                      (let ((_%$%hd160288160317%_
                                             (##car _%$%e160287160314%_))
                                            (_%$%tl160289160319%_
                                             (##cdr _%$%e160287160314%_)))
                                        (let* ((_%prop160322%_
                                                _%$%hd160288160317%_)
                                               (_%rest160324%_
                                                _%$%tl160289160319%_))
                                          (if (gx#stx-keyword? _%key160312%_)
                                              (let* ((_%key160326%_
                                                      (gx#stx-e _%key160312%_))
                                                     (_%$e160328%_
                                                      _%key160326%_))
                                                (if (eq? 'macro: _%$e160328%_)
                                                    (begin
                                                      (gx#runtime-binding-macro-set!
                                                       _%bind160272%_
                                                       (if (gx#identifier?
                                                            _%prop160322%_)
                                                           (gx#core-quote-syntax
                                                            _%prop160322%_)
                                                           (_%eval-prop160275%_
                                                            _%prop160322%_)))
                                                      (_%loop160277%_
                                                       _%rest160324%_
                                                       _%props160280%_))
                                                    (if (eq? 'type:
                                                             _%$e160328%_)
                                                        (begin
                                                          (gx#runtime-binding-type-set!
                                                           _%bind160272%_
                                                           (_%eval-prop160275%_
                                                            _%prop160322%_))
                                                          (_%loop160277%_
                                                           _%rest160324%_
                                                           _%props160280%_))
                                                        (_%loop160277%_
                                                         _%rest160324%_
                                                         (cons* (_%eval-prop160275%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%prop160322%_)
                        _%key160326%_
                        _%props160280%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E160283160300%_)))))
                                    (_%$%E160283160300%_)))))
                          (_%$%E160283160300%_)))))
              (_%$%E160282160331%_))))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx160215%_)
        (let* ((_%$%e160216160229%_ _%stx160215%_)
               (_%$%E160218160233%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e160216160229%_)))
               (_%$%E160217160268%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e160216160229%_)
                      (let ((_%$%e160219160237%_
                             (gx#syntax-e _%$%e160216160229%_)))
                        (let ((_%$%hd160220160240%_
                               (##car _%$%e160219160237%_))
                              (_%$%tl160221160242%_
                               (##cdr _%$%e160219160237%_)))
                          (if (gx#stx-pair? _%$%tl160221160242%_)
                              (let ((_%$%e160222160245%_
                                     (gx#syntax-e _%$%tl160221160242%_)))
                                (let ((_%$%hd160223160248%_
                                       (##car _%$%e160222160245%_))
                                      (_%$%tl160224160250%_
                                       (##cdr _%$%e160222160245%_)))
                                  (let ((_%id160253%_ _%$%hd160223160248%_))
                                    (if (gx#stx-pair? _%$%tl160224160250%_)
                                        (let ((_%$%e160225160255%_
                                               (gx#syntax-e
                                                _%$%tl160224160250%_)))
                                          (let ((_%$%hd160226160258%_
                                                 (##car _%$%e160225160255%_))
                                                (_%$%tl160227160260%_
                                                 (##cdr _%$%e160225160255%_)))
                                            (let ((_%expr160263%_
                                                   _%$%hd160226160258%_))
                                              (if (gx#stx-null?
                                                   _%$%tl160227160260%_)
                                                  (if (gx#identifier?
                                                       _%id160253%_)
                                                      (let ((_g161538_
                                                             (gx#core-expand-expression+1
                                                              _%expr160263%_)))
                                                        (begin
                                                          (let ((_g161539_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g161538_)
                             (##values-length _g161538_)
                             1)))
                    (if (not (##fx= _g161539_ 2))
                        (error "Context expects 2 values" _g161539_)))
                  (let ((_%e-stx160265%_ (##values-ref _g161538_ 0))
                        (_%e160266%_ (##values-ref _g161538_ 1)))
                    (begin
                      (gx#core-bind-syntax! _%id160253%_ _%e160266%_)
                      (gx#core-quote-syntax
                       (cons (gx#core-quote-syntax '%#define-syntax)
                             (cons (gx#core-quote-syntax _%id160253%_)
                                   (cons _%e-stx160265%_ '())))
                       (gx#stx-source _%stx160215%_))))))
              (_%$%E160218160233%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E160218160233%_)))))
                                        (_%$%E160218160233%_)))))
                              (_%$%E160218160233%_))))
                      (_%$%E160218160233%_)))))
          (_%$%E160217160268%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx160159%_)
        (let* ((_%$%e160160160173%_ _%stx160159%_)
               (_%$%E160162160177%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e160160160173%_)))
               (_%$%E160161160211%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e160160160173%_)
                      (let ((_%$%e160163160181%_
                             (gx#syntax-e _%$%e160160160173%_)))
                        (let ((_%$%hd160164160184%_
                               (##car _%$%e160163160181%_))
                              (_%$%tl160165160186%_
                               (##cdr _%$%e160163160181%_)))
                          (if (gx#stx-pair? _%$%tl160165160186%_)
                              (let ((_%$%e160166160189%_
                                     (gx#syntax-e _%$%tl160165160186%_)))
                                (let ((_%$%hd160167160192%_
                                       (##car _%$%e160166160189%_))
                                      (_%$%tl160168160194%_
                                       (##cdr _%$%e160166160189%_)))
                                  (let ((_%id160197%_ _%$%hd160167160192%_))
                                    (if (gx#stx-pair? _%$%tl160168160194%_)
                                        (let ((_%$%e160169160199%_
                                               (gx#syntax-e
                                                _%$%tl160168160194%_)))
                                          (let ((_%$%hd160170160202%_
                                                 (##car _%$%e160169160199%_))
                                                (_%$%tl160171160204%_
                                                 (##cdr _%$%e160169160199%_)))
                                            (let ((_%alias-id160207%_
                                                   _%$%hd160170160202%_))
                                              (if (gx#stx-null?
                                                   _%$%tl160171160204%_)
                                                  (if (and (gx#identifier?
                                                            _%id160197%_)
                                                           (gx#identifier?
                                                            _%alias-id160207%_))
                                                      (let ((_%alias-id160209%_
                                                             (gx#core-quote-syntax
                                                              _%alias-id160207%_)))
                                                        (gx#core-bind-alias!
                                                         _%id160197%_
                                                         _%alias-id160209%_)
                                                        (gx#core-quote-syntax
                                                         (cons (gx#core-quote-syntax
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id160197%_)
                             (cons _%alias-id160209%_ '())))))
              (_%$%E160162160177%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E160162160177%_)))))
                                        (_%$%E160162160177%_)))))
                              (_%$%E160162160177%_))))
                      (_%$%E160162160177%_)))))
          (_%$%E160161160211%_))))
    (define gx#core-expand-lambda%
      (let ((_%$%opt-lambda160100160149%_
             (lambda (_%stx160102%_ _%wrap?160103%_)
               (let* ((_%$%e160104160114%_ _%stx160102%_)
                      (_%$%E160106160118%_
                       (lambda ()
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid syntax-case clause"
                          _%$%e160104160114%_)))
                      (_%$%E160105160145%_
                       (lambda ()
                         (if (gx#stx-pair? _%$%e160104160114%_)
                             (let ((_%$%e160107160122%_
                                    (gx#syntax-e _%$%e160104160114%_)))
                               (let ((_%$%hd160108160125%_
                                      (##car _%$%e160107160122%_))
                                     (_%$%tl160109160127%_
                                      (##cdr _%$%e160107160122%_)))
                                 (if (gx#stx-pair? _%$%tl160109160127%_)
                                     (let ((_%$%e160110160130%_
                                            (gx#syntax-e
                                             _%$%tl160109160127%_)))
                                       (let ((_%$%hd160111160133%_
                                              (##car _%$%e160110160130%_))
                                             (_%$%tl160112160135%_
                                              (##cdr _%$%e160110160130%_)))
                                         (let* ((_%hd160138%_
                                                 _%$%hd160111160133%_)
                                                (_%body160140%_
                                                 _%$%tl160112160135%_))
                                           (if (gx#core-bind-values?
                                                _%hd160138%_)
                                               (call-with-parameters
                                                (lambda ()
                                                  (gx#core-bind-values!
                                                   _%hd160138%_)
                                                  (let ((_%body160143%_
                                                         (cons (gx#core-quote-bind-values
                                                                _%hd160138%_)
                                                               (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%stx160102%_
                              _%body160140%_)
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if _%wrap?160103%_
                                                        (gx#core-quote-syntax
                                                         (gx#core-cons
                                                          '%#lambda
                                                          _%body160143%_)
                                                         (gx#stx-source
                                                          _%stx160102%_))
                                                        _%body160143%_)))
                                                gx#current-expander-context
                                                (gx#make-local-context))
                                               (_%$%E160106160118%_)))))
                                     (_%$%E160106160118%_))))
                             (_%$%E160106160118%_)))))
                 (_%$%E160105160145%_)))))
        (lambda _g161540_
          (let ((_g161541_ (##length _g161540_)))
            (cond ((##fx= _g161541_ 1)
                   (apply (lambda (_%stx160152%_)
                            (let ((_%wrap?160154%_ '#t))
                              (_%$%opt-lambda160100160149%_
                               _%stx160152%_
                               _%wrap?160154%_)))
                          _g161540_))
                  ((##fx= _g161541_ 2)
                   (apply _%$%opt-lambda160100160149%_ _g161540_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-lambda%
                    _g161540_)))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx160066%_)
        (let* ((_%$%e160067160074%_ _%stx160066%_)
               (_%$%E160069160078%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e160067160074%_)))
               (_%$%E160068160097%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e160067160074%_)
                      (let ((_%$%e160070160082%_
                             (gx#syntax-e _%$%e160067160074%_)))
                        (let ((_%$%hd160071160085%_
                               (##car _%$%e160070160082%_))
                              (_%$%tl160072160087%_
                               (##cdr _%$%e160070160082%_)))
                          (let ((_%clauses160090%_ _%$%tl160072160087%_))
                            (if (gx#stx-list? _%clauses160090%_)
                                (gx#core-quote-syntax
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map
                                   (lambda (_%clause160092%_)
                                     (gx#core-expand-lambda%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause160092%_)
                                       (let ((_%$e160094%_
                                              (gx#stx-source
                                               _%clause160092%_)))
                                         (if _%$e160094%_
                                             _%$e160094%_
                                             (gx#stx-source _%stx160066%_))))
                                      '#f))
                                   _%clauses160090%_))
                                 (gx#stx-source _%stx160066%_))
                                (_%$%E160069160078%_)))))
                      (_%$%E160069160078%_)))))
          (_%$%E160068160097%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx160020%_)
        (let* ((_%$%e160021160031%_ _%stx160020%_)
               (_%$%E160023160035%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e160021160031%_)))
               (_%$%E160022160062%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e160021160031%_)
                      (let ((_%$%e160024160039%_
                             (gx#syntax-e _%$%e160021160031%_)))
                        (let ((_%$%hd160025160042%_
                               (##car _%$%e160024160039%_))
                              (_%$%tl160026160044%_
                               (##cdr _%$%e160024160039%_)))
                          (if (gx#stx-pair? _%$%tl160026160044%_)
                              (let ((_%$%e160027160047%_
                                     (gx#syntax-e _%$%tl160026160044%_)))
                                (let ((_%$%hd160028160050%_
                                       (##car _%$%e160027160047%_))
                                      (_%$%tl160029160052%_
                                       (##cdr _%$%e160027160047%_)))
                                  (let* ((_%hd160055%_ _%$%hd160028160050%_)
                                         (_%body160057%_ _%$%tl160029160052%_))
                                    (if (gx#core-expand-let-bind? _%hd160055%_)
                                        (let ((_%expressions160059%_
                                               (gx#stx-map
                                                gx#core-expand-let-bind-expression
                                                _%hd160055%_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each
                                              gx#core-expand-let-bind-values!
                                              _%hd160055%_)
                                             (gx#core-quote-syntax
                                              (cons (gx#core-quote-syntax
                                                     '%#let-values)
                                                    (cons (gx#stx-map
                                                           gx#core-expand-let-bind-quote
                                                           _%hd160055%_
                                                           _%expressions160059%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx160020%_
                         _%body160057%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx160020%_)))
                                           gx#current-expander-context
                                           (gx#make-local-context)))
                                        (_%$%E160023160035%_)))))
                              (_%$%E160023160035%_))))
                      (_%$%E160023160035%_)))))
          (_%$%E160022160062%_))))
    (define gx#core-expand-letrec-values%
      (let ((_%$%opt-lambda159963160010%_
             (lambda (_%stx159965%_ _%form159966%_)
               (let* ((_%$%e159967159977%_ _%stx159965%_)
                      (_%$%E159969159981%_
                       (lambda ()
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid syntax-case clause"
                          _%$%e159967159977%_)))
                      (_%$%E159968160006%_
                       (lambda ()
                         (if (gx#stx-pair? _%$%e159967159977%_)
                             (let ((_%$%e159970159985%_
                                    (gx#syntax-e _%$%e159967159977%_)))
                               (let ((_%$%hd159971159988%_
                                      (##car _%$%e159970159985%_))
                                     (_%$%tl159972159990%_
                                      (##cdr _%$%e159970159985%_)))
                                 (if (gx#stx-pair? _%$%tl159972159990%_)
                                     (let ((_%$%e159973159993%_
                                            (gx#syntax-e
                                             _%$%tl159972159990%_)))
                                       (let ((_%$%hd159974159996%_
                                              (##car _%$%e159973159993%_))
                                             (_%$%tl159975159998%_
                                              (##cdr _%$%e159973159993%_)))
                                         (let* ((_%hd160001%_
                                                 _%$%hd159974159996%_)
                                                (_%body160003%_
                                                 _%$%tl159975159998%_))
                                           (if (gx#core-expand-let-bind?
                                                _%hd160001%_)
                                               (call-with-parameters
                                                (lambda ()
                                                  (gx#stx-for-each
                                                   gx#core-expand-let-bind-values!
                                                   _%hd160001%_)
                                                  (gx#core-quote-syntax
                                                   (cons (gx#core-quote-syntax
                                                          _%form159966%_)
                                                         (cons (gx#stx-map
                                                                gx#core-expand-let-bind-quote
                                                                _%hd160001%_
                                                                (gx#stx-map
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#core-expand-let-bind-expression
                         _%hd160001%_))
                       (cons (gx#core-expand-local-block
                              _%stx159965%_
                              _%body160003%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx159965%_)))
                                                gx#current-expander-context
                                                (gx#make-local-context))
                                               (_%$%E159969159981%_)))))
                                     (_%$%E159969159981%_))))
                             (_%$%E159969159981%_)))))
                 (_%$%E159968160006%_)))))
        (lambda _g161542_
          (let ((_g161543_ (##length _g161542_)))
            (cond ((##fx= _g161543_ 1)
                   (apply (lambda (_%stx160013%_)
                            (let ((_%form160015%_ '%#letrec-values))
                              (_%$%opt-lambda159963160010%_
                               _%stx160013%_
                               _%form160015%_)))
                          _g161542_))
                  ((##fx= _g161543_ 2)
                   (apply _%$%opt-lambda159963160010%_ _g161542_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-letrec-values%
                    _g161542_)))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx159962%_)
        (gx#core-expand-letrec-values% _%stx159962%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx159919%_)
        (if (gx#stx-list? _%stx159919%_)
            (gx#stx-andmap
             (lambda (_%bind159921%_)
               (let* ((_%$%e159922159932%_ _%bind159921%_)
                      (_%$%E159924159936%_ (lambda () '#f))
                      (_%$%E159923159958%_
                       (lambda ()
                         (if (gx#stx-pair? _%$%e159922159932%_)
                             (let ((_%$%e159925159940%_
                                    (gx#syntax-e _%$%e159922159932%_)))
                               (let ((_%$%hd159926159943%_
                                      (##car _%$%e159925159940%_))
                                     (_%$%tl159927159945%_
                                      (##cdr _%$%e159925159940%_)))
                                 (let ((_%hd159948%_ _%$%hd159926159943%_))
                                   (if (gx#stx-pair? _%$%tl159927159945%_)
                                       (let ((_%$%e159928159950%_
                                              (gx#syntax-e
                                               _%$%tl159927159945%_)))
                                         (let ((_%$%hd159929159953%_
                                                (##car _%$%e159928159950%_))
                                               (_%$%tl159930159955%_
                                                (##cdr _%$%e159928159950%_)))
                                           (if (gx#stx-null?
                                                _%$%tl159930159955%_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _%hd159948%_)
                                                   (_%$%E159924159936%_))
                                               (_%$%E159924159936%_))))
                                       (_%$%E159924159936%_)))))
                             (_%$%E159924159936%_)))))
                 (_%$%E159923159958%_)))
             _%stx159919%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind159878%_)
        (let* ((_%$%e159879159889%_ _%bind159878%_)
               (_%$%E159881159893%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e159879159889%_)))
               (_%$%E159880159915%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e159879159889%_)
                      (let ((_%$%e159882159897%_
                             (gx#syntax-e _%$%e159879159889%_)))
                        (let ((_%$%hd159883159900%_
                               (##car _%$%e159882159897%_))
                              (_%$%tl159884159902%_
                               (##cdr _%$%e159882159897%_)))
                          (if (gx#stx-pair? _%$%tl159884159902%_)
                              (let ((_%$%e159885159905%_
                                     (gx#syntax-e _%$%tl159884159902%_)))
                                (let ((_%$%hd159886159908%_
                                       (##car _%$%e159885159905%_))
                                      (_%$%tl159887159910%_
                                       (##cdr _%$%e159885159905%_)))
                                  (let ((_%expr159913%_ _%$%hd159886159908%_))
                                    (if (gx#stx-null? _%$%tl159887159910%_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _%expr159913%_)
                                            (_%$%E159881159893%_))
                                        (_%$%E159881159893%_)))))
                              (_%$%E159881159893%_))))
                      (_%$%E159881159893%_)))))
          (_%$%E159880159915%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind159837%_)
        (let* ((_%$%e159838159848%_ _%bind159837%_)
               (_%$%E159840159852%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e159838159848%_)))
               (_%$%E159839159874%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e159838159848%_)
                      (let ((_%$%e159841159856%_
                             (gx#syntax-e _%$%e159838159848%_)))
                        (let ((_%$%hd159842159859%_
                               (##car _%$%e159841159856%_))
                              (_%$%tl159843159861%_
                               (##cdr _%$%e159841159856%_)))
                          (let ((_%hd159864%_ _%$%hd159842159859%_))
                            (if (gx#stx-pair? _%$%tl159843159861%_)
                                (let ((_%$%e159844159866%_
                                       (gx#syntax-e _%$%tl159843159861%_)))
                                  (let ((_%$%hd159845159869%_
                                         (##car _%$%e159844159866%_))
                                        (_%$%tl159846159871%_
                                         (##cdr _%$%e159844159866%_)))
                                    (if (gx#stx-null? _%$%tl159846159871%_)
                                        (if '#t
                                            (gx#core-bind-values! _%hd159864%_)
                                            (_%$%E159840159852%_))
                                        (_%$%E159840159852%_))))
                                (_%$%E159840159852%_)))))
                      (_%$%E159840159852%_)))))
          (_%$%E159839159874%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind159795%_ _%expr159796%_)
        (let* ((_%$%e159797159807%_ _%bind159795%_)
               (_%$%E159799159811%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e159797159807%_)))
               (_%$%E159798159833%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e159797159807%_)
                      (let ((_%$%e159800159815%_
                             (gx#syntax-e _%$%e159797159807%_)))
                        (let ((_%$%hd159801159818%_
                               (##car _%$%e159800159815%_))
                              (_%$%tl159802159820%_
                               (##cdr _%$%e159800159815%_)))
                          (let ((_%hd159823%_ _%$%hd159801159818%_))
                            (if (gx#stx-pair? _%$%tl159802159820%_)
                                (let ((_%$%e159803159825%_
                                       (gx#syntax-e _%$%tl159802159820%_)))
                                  (let ((_%$%hd159804159828%_
                                         (##car _%$%e159803159825%_))
                                        (_%$%tl159805159830%_
                                         (##cdr _%$%e159803159825%_)))
                                    (if (gx#stx-null? _%$%tl159805159830%_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _%hd159823%_)
                                                  (cons _%expr159796%_ '()))
                                            (_%$%E159799159811%_))
                                        (_%$%E159799159811%_))))
                                (_%$%E159799159811%_)))))
                      (_%$%E159799159811%_)))))
          (_%$%E159798159833%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx159749%_)
        (let* ((_%$%e159750159760%_ _%stx159749%_)
               (_%$%E159752159764%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e159750159760%_)))
               (_%$%E159751159791%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e159750159760%_)
                      (let ((_%$%e159753159768%_
                             (gx#syntax-e _%$%e159750159760%_)))
                        (let ((_%$%hd159754159771%_
                               (##car _%$%e159753159768%_))
                              (_%$%tl159755159773%_
                               (##cdr _%$%e159753159768%_)))
                          (if (gx#stx-pair? _%$%tl159755159773%_)
                              (let ((_%$%e159756159776%_
                                     (gx#syntax-e _%$%tl159755159773%_)))
                                (let ((_%$%hd159757159779%_
                                       (##car _%$%e159756159776%_))
                                      (_%$%tl159758159781%_
                                       (##cdr _%$%e159756159776%_)))
                                  (let* ((_%hd159784%_ _%$%hd159757159779%_)
                                         (_%body159786%_ _%$%tl159758159781%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd159784%_)
                                        (let ((_%expanders159788%_
                                               (gx#stx-map
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd159784%_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each
                                              gx#core-expand-let-bind-syntax!
                                              _%hd159784%_
                                              _%expanders159788%_)
                                             (gx#core-expand-local-block
                                              _%stx159749%_
                                              _%body159786%_))
                                           gx#current-expander-context
                                           (gx#make-local-context)))
                                        (_%$%E159752159764%_)))))
                              (_%$%E159752159764%_))))
                      (_%$%E159752159764%_)))))
          (_%$%E159751159791%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx159698%_)
        (let* ((_%$%e159699159709%_ _%stx159698%_)
               (_%$%E159701159713%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e159699159709%_)))
               (_%$%E159700159745%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e159699159709%_)
                      (let ((_%$%e159702159717%_
                             (gx#syntax-e _%$%e159699159709%_)))
                        (let ((_%$%hd159703159720%_
                               (##car _%$%e159702159717%_))
                              (_%$%tl159704159722%_
                               (##cdr _%$%e159702159717%_)))
                          (if (gx#stx-pair? _%$%tl159704159722%_)
                              (let ((_%$%e159705159725%_
                                     (gx#syntax-e _%$%tl159704159722%_)))
                                (let ((_%$%hd159706159728%_
                                       (##car _%$%e159705159725%_))
                                      (_%$%tl159707159730%_
                                       (##cdr _%$%e159705159725%_)))
                                  (let* ((_%hd159733%_ _%$%hd159706159728%_)
                                         (_%body159735%_ _%$%tl159707159730%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd159733%_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each
                                            gx#core-expand-let-bind-syntax!
                                            _%hd159733%_
                                            (make-list
                                             (gx#stx-length _%hd159733%_)
                                             '#!void))
                                           (gx#stx-for-each
                                            (lambda (_%$%g159737159740%_
                                                     _%$%g159738159742%_)
                                              (gx#core-expand-let-bind-syntax!
                                               _%$%g159737159740%_
                                               _%$%g159738159742%_
                                               '#t))
                                            _%hd159733%_
                                            (gx#stx-map
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd159733%_))
                                           (gx#core-expand-local-block
                                            _%stx159698%_
                                            _%body159735%_))
                                         gx#current-expander-context
                                         (gx#make-local-context))
                                        (_%$%E159701159713%_)))))
                              (_%$%E159701159713%_))))
                      (_%$%E159701159713%_)))))
          (_%$%E159700159745%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx159655%_)
        (if (gx#stx-list? _%stx159655%_)
            (gx#stx-andmap
             (lambda (_%bind159657%_)
               (let* ((_%$%e159658159668%_ _%bind159657%_)
                      (_%$%E159660159672%_ (lambda () '#f))
                      (_%$%E159659159694%_
                       (lambda ()
                         (if (gx#stx-pair? _%$%e159658159668%_)
                             (let ((_%$%e159661159676%_
                                    (gx#syntax-e _%$%e159658159668%_)))
                               (let ((_%$%hd159662159679%_
                                      (##car _%$%e159661159676%_))
                                     (_%$%tl159663159681%_
                                      (##cdr _%$%e159661159676%_)))
                                 (let ((_%hd159684%_ _%$%hd159662159679%_))
                                   (if (gx#stx-pair? _%$%tl159663159681%_)
                                       (let ((_%$%e159664159686%_
                                              (gx#syntax-e
                                               _%$%tl159663159681%_)))
                                         (let ((_%$%hd159665159689%_
                                                (##car _%$%e159664159686%_))
                                               (_%$%tl159666159691%_
                                                (##cdr _%$%e159664159686%_)))
                                           (if (gx#stx-null?
                                                _%$%tl159666159691%_)
                                               (if '#t
                                                   (gx#identifier?
                                                    _%hd159684%_)
                                                   (_%$%E159660159672%_))
                                               (_%$%E159660159672%_))))
                                       (_%$%E159660159672%_)))))
                             (_%$%E159660159672%_)))))
                 (_%$%E159659159694%_)))
             _%stx159655%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind159611%_)
        (let* ((_%$%e159612159622%_ _%bind159611%_)
               (_%$%E159614159626%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e159612159622%_)))
               (_%$%E159613159651%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e159612159622%_)
                      (let ((_%$%e159615159630%_
                             (gx#syntax-e _%$%e159612159622%_)))
                        (let ((_%$%hd159616159633%_
                               (##car _%$%e159615159630%_))
                              (_%$%tl159617159635%_
                               (##cdr _%$%e159615159630%_)))
                          (if (gx#stx-pair? _%$%tl159617159635%_)
                              (let ((_%$%e159618159638%_
                                     (gx#syntax-e _%$%tl159617159635%_)))
                                (let ((_%$%hd159619159641%_
                                       (##car _%$%e159618159638%_))
                                      (_%$%tl159620159643%_
                                       (##cdr _%$%e159618159638%_)))
                                  (let ((_%expr159646%_ _%$%hd159619159641%_))
                                    (if (gx#stx-null? _%$%tl159620159643%_)
                                        (if '#t
                                            (let ((_g161544_
                                                   (gx#core-expand-expression+1
                                                    _%expr159646%_)))
                                              (begin
                                                (let ((_g161545_
                                                       (if (##values?
                                                            _g161544_)
                                                           (##values-length
                                                            _g161544_)
                                                           1)))
                                                  (if (not (##fx= _g161545_ 2))
                                                      (error "Context expects 2 values"
                                                             _g161545_)))
                                                (let ((_%_159648%_
                                                       (##values-ref
                                                        _g161544_
                                                        0))
                                                      (_%e159649%_
                                                       (##values-ref
                                                        _g161544_
                                                        1)))
                                                  _%e159649%_)))
                                            (_%$%E159614159626%_))
                                        (_%$%E159614159626%_)))))
                              (_%$%E159614159626%_))))
                      (_%$%E159614159626%_)))))
          (_%$%E159613159651%_))))
    (define gx#core-expand-let-bind-syntax!
      (let ((_%$%opt-lambda159554159599%_
             (lambda (_%bind159556%_ _%e159557%_ _%rebind?159558%_)
               (let* ((_%$%e159559159569%_ _%bind159556%_)
                      (_%$%E159561159573%_
                       (lambda ()
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid syntax-case clause"
                          _%$%e159559159569%_)))
                      (_%$%E159560159595%_
                       (lambda ()
                         (if (gx#stx-pair? _%$%e159559159569%_)
                             (let ((_%$%e159562159577%_
                                    (gx#syntax-e _%$%e159559159569%_)))
                               (let ((_%$%hd159563159580%_
                                      (##car _%$%e159562159577%_))
                                     (_%$%tl159564159582%_
                                      (##cdr _%$%e159562159577%_)))
                                 (let ((_%id159585%_ _%$%hd159563159580%_))
                                   (if (gx#stx-pair? _%$%tl159564159582%_)
                                       (let ((_%$%e159565159587%_
                                              (gx#syntax-e
                                               _%$%tl159564159582%_)))
                                         (let ((_%$%hd159566159590%_
                                                (##car _%$%e159565159587%_))
                                               (_%$%tl159567159592%_
                                                (##cdr _%$%e159565159587%_)))
                                           (if (gx#stx-null?
                                                _%$%tl159567159592%_)
                                               (if '#t
                                                   (gx#core-bind-syntax!
                                                    _%id159585%_
                                                    _%e159557%_
                                                    _%rebind?159558%_)
                                                   (_%$%E159561159573%_))
                                               (_%$%E159561159573%_))))
                                       (_%$%E159561159573%_)))))
                             (_%$%E159561159573%_)))))
                 (_%$%E159560159595%_)))))
        (lambda _g161546_
          (let ((_g161547_ (##length _g161546_)))
            (cond ((##fx= _g161547_ 2)
                   (apply (lambda (_%bind159602%_ _%e159603%_)
                            (let ((_%rebind?159605%_ '#f))
                              (_%$%opt-lambda159554159599%_
                               _%bind159602%_
                               _%e159603%_
                               _%rebind?159605%_)))
                          _g161546_))
                  ((##fx= _g161547_ 3)
                   (apply _%$%opt-lambda159554159599%_ _g161546_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-let-bind-syntax!
                    _g161546_)))))))
    (define gx#core-expand-expression%
      (lambda (_%stx159514%_)
        (let* ((_%$%e159515159525%_ _%stx159514%_)
               (_%$%E159517159529%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e159515159525%_)))
               (_%$%E159516159551%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e159515159525%_)
                      (let ((_%$%e159518159533%_
                             (gx#syntax-e _%$%e159515159525%_)))
                        (let ((_%$%hd159519159536%_
                               (##car _%$%e159518159533%_))
                              (_%$%tl159520159538%_
                               (##cdr _%$%e159518159533%_)))
                          (if (gx#stx-pair? _%$%tl159520159538%_)
                              (let ((_%$%e159521159541%_
                                     (gx#syntax-e _%$%tl159520159538%_)))
                                (let ((_%$%hd159522159544%_
                                       (##car _%$%e159521159541%_))
                                      (_%$%tl159523159546%_
                                       (##cdr _%$%e159521159541%_)))
                                  (let ((_%expr159549%_ _%$%hd159522159544%_))
                                    (if (gx#stx-null? _%$%tl159523159546%_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _%expr159549%_)
                                            (_%$%E159517159529%_))
                                        (_%$%E159517159529%_)))))
                              (_%$%E159517159529%_))))
                      (_%$%E159517159529%_)))))
          (_%$%E159516159551%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx159473%_)
        (let* ((_%$%e159474159484%_ _%stx159473%_)
               (_%$%E159476159488%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e159474159484%_)))
               (_%$%E159475159510%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e159474159484%_)
                      (let ((_%$%e159477159492%_
                             (gx#syntax-e _%$%e159474159484%_)))
                        (let ((_%$%hd159478159495%_
                               (##car _%$%e159477159492%_))
                              (_%$%tl159479159497%_
                               (##cdr _%$%e159477159492%_)))
                          (if (gx#stx-pair? _%$%tl159479159497%_)
                              (let ((_%$%e159480159500%_
                                     (gx#syntax-e _%$%tl159479159497%_)))
                                (let ((_%$%hd159481159503%_
                                       (##car _%$%e159480159500%_))
                                      (_%$%tl159482159505%_
                                       (##cdr _%$%e159480159500%_)))
                                  (let ((_%e159508%_ _%$%hd159481159503%_))
                                    (if (gx#stx-null? _%$%tl159482159505%_)
                                        (if '#t
                                            (gx#core-quote-syntax
                                             (cons (gx#core-quote-syntax
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _%e159508%_)
                                                         '()))
                                             (gx#stx-source _%stx159473%_))
                                            (_%$%E159476159488%_))
                                        (_%$%E159476159488%_)))))
                              (_%$%E159476159488%_))))
                      (_%$%E159476159488%_)))))
          (_%$%E159475159510%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx159432%_)
        (let* ((_%$%e159433159443%_ _%stx159432%_)
               (_%$%E159435159447%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e159433159443%_)))
               (_%$%E159434159469%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e159433159443%_)
                      (let ((_%$%e159436159451%_
                             (gx#syntax-e _%$%e159433159443%_)))
                        (let ((_%$%hd159437159454%_
                               (##car _%$%e159436159451%_))
                              (_%$%tl159438159456%_
                               (##cdr _%$%e159436159451%_)))
                          (if (gx#stx-pair? _%$%tl159438159456%_)
                              (let ((_%$%e159439159459%_
                                     (gx#syntax-e _%$%tl159438159456%_)))
                                (let ((_%$%hd159440159462%_
                                       (##car _%$%e159439159459%_))
                                      (_%$%tl159441159464%_
                                       (##cdr _%$%e159439159459%_)))
                                  (let ((_%e159467%_ _%$%hd159440159462%_))
                                    (if (gx#stx-null? _%$%tl159441159464%_)
                                        (if '#t
                                            (gx#core-quote-syntax
                                             (cons (gx#core-quote-syntax
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax
                                                          _%e159467%_)
                                                         '()))
                                             (gx#stx-source _%stx159432%_))
                                            (_%$%E159435159447%_))
                                        (_%$%E159435159447%_)))))
                              (_%$%E159435159447%_))))
                      (_%$%E159435159447%_)))))
          (_%$%E159434159469%_))))
    (define gx#core-expand-call%
      (lambda (_%stx159326%_)
        (letrec ((_%expand-runtime-call159328%_
                  (lambda (_%rator-expr159429%_ _%args159430%_)
                    (gx#core-quote-syntax
                     (gx#core-cons*
                      '%#call
                      _%rator-expr159429%_
                      (gx#stx-map gx#core-expand-expression _%args159430%_))
                     (gx#stx-source _%stx159326%_)))))
          (let* ((_%$%e159329159339%_ _%stx159326%_)
                 (_%$%E159331159343%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e159329159339%_)))
                 (_%$%E159330159425%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e159329159339%_)
                        (let ((_%$%e159332159347%_
                               (gx#syntax-e _%$%e159329159339%_)))
                          (let ((_%$%hd159333159350%_
                                 (##car _%$%e159332159347%_))
                                (_%$%tl159334159352%_
                                 (##cdr _%$%e159332159347%_)))
                            (if (gx#stx-pair? _%$%tl159334159352%_)
                                (let ((_%$%e159335159355%_
                                       (gx#syntax-e _%$%tl159334159352%_)))
                                  (let ((_%$%hd159336159358%_
                                         (##car _%$%e159335159355%_))
                                        (_%$%tl159337159360%_
                                         (##cdr _%$%e159335159355%_)))
                                    (let* ((_%rator159363%_
                                            _%$%hd159336159358%_)
                                           (_%args159365%_
                                            _%$%tl159337159360%_))
                                      (if (gx#stx-list? _%args159365%_)
                                          (let* ((_%rator-expr159367%_
                                                  (gx#core-expand-expression
                                                   _%rator159363%_))
                                                 (_%$%e159368159378%_
                                                  _%rator-expr159367%_)
                                                 (_%$%E159370159382%_
                                                  (lambda ()
                                                    (_%expand-runtime-call159328%_
                                                     _%rator-expr159367%_
                                                     _%args159365%_)))
                                                 (_%$%E159369159421%_
                                                  (lambda ()
                                                    (if (gx#stx-pair?
                                                         _%$%e159368159378%_)
                                                        (let ((_%$%e159371159386%_
                                                               (gx#syntax-e
                                                                _%$%e159368159378%_)))
                                                          (let ((_%$%hd159372159389%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e159371159386%_))
                        (_%$%tl159373159391%_ (##cdr _%$%e159371159386%_)))
                    (if (and (gx#identifier? _%$%hd159372159389%_)
                             (gx#core-identifier=?
                              _%$%hd159372159389%_
                              '%#ref))
                        (if (gx#stx-pair? _%$%tl159373159391%_)
                            (let ((_%$%e159374159394%_
                                   (gx#syntax-e _%$%tl159373159391%_)))
                              (let ((_%$%hd159375159397%_
                                     (##car _%$%e159374159394%_))
                                    (_%$%tl159376159399%_
                                     (##cdr _%$%e159374159394%_)))
                                (let ((_%id159402%_ _%$%hd159375159397%_))
                                  (if (gx#stx-null? _%$%tl159376159399%_)
                                      (if '#t
                                          (let ((_%$e159404%_
                                                 (gx#resolve-identifier
                                                  _%id159402%_)))
                                            (if _%$e159404%_
                                                ((lambda (_%bind159407%_)
                                                   (let _%again159409%_ ((_%bind159411%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%bind159407%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%$e159413%_
                                                            (if (gx#runtime-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind159411%_)
                        (gx#runtime-binding-macro _%bind159411%_)
                        '#f)))
               (if _%$e159413%_
                   ((lambda (_%macro159416%_)
                      (gx#core-expand-expression
                       (gx#stx-wrap-source
                        (cons _%macro159416%_ _%args159365%_)
                        (gx#stx-source _%stx159326%_))))
                    _%$e159413%_)
                   (if (gx#import-binding? _%bind159411%_)
                       (_%again159409%_ (gx#import-binding-e _%bind159411%_))
                       (_%expand-runtime-call159328%_
                        _%rator-expr159367%_
                        _%args159365%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%$e159404%_)
                                                (_%expand-runtime-call159328%_
                                                 _%rator-expr159367%_
                                                 _%args159365%_)))
                                          (_%$%E159370159382%_))
                                      (_%$%E159370159382%_)))))
                            (_%$%E159370159382%_))
                        (_%$%E159370159382%_))))
                (_%$%E159370159382%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%E159369159421%_))
                                          (_%$%E159331159343%_)))))
                                (_%$%E159331159343%_))))
                        (_%$%E159331159343%_)))))
            (_%$%E159330159425%_)))))
    (define gx#core-expand-if%
      (lambda (_%stx159259%_)
        (let* ((_%$%e159260159276%_ _%stx159259%_)
               (_%$%E159262159280%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e159260159276%_)))
               (_%$%E159261159322%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e159260159276%_)
                      (let ((_%$%e159263159284%_
                             (gx#syntax-e _%$%e159260159276%_)))
                        (let ((_%$%hd159264159287%_
                               (##car _%$%e159263159284%_))
                              (_%$%tl159265159289%_
                               (##cdr _%$%e159263159284%_)))
                          (if (gx#stx-pair? _%$%tl159265159289%_)
                              (let ((_%$%e159266159292%_
                                     (gx#syntax-e _%$%tl159265159289%_)))
                                (let ((_%$%hd159267159295%_
                                       (##car _%$%e159266159292%_))
                                      (_%$%tl159268159297%_
                                       (##cdr _%$%e159266159292%_)))
                                  (let ((_%test159300%_ _%$%hd159267159295%_))
                                    (if (gx#stx-pair? _%$%tl159268159297%_)
                                        (let ((_%$%e159269159302%_
                                               (gx#syntax-e
                                                _%$%tl159268159297%_)))
                                          (let ((_%$%hd159270159305%_
                                                 (##car _%$%e159269159302%_))
                                                (_%$%tl159271159307%_
                                                 (##cdr _%$%e159269159302%_)))
                                            (let ((_%K159310%_
                                                   _%$%hd159270159305%_))
                                              (if (gx#stx-pair?
                                                   _%$%tl159271159307%_)
                                                  (let ((_%$%e159272159312%_
                                                         (gx#syntax-e
                                                          _%$%tl159271159307%_)))
                                                    (let ((_%$%hd159273159315%_
                                                           (##car _%$%e159272159312%_))
                                                          (_%$%tl159274159317%_
                                                           (##cdr _%$%e159272159312%_)))
                                                      (let ((_%E159320%_
                                                             _%$%hd159273159315%_))
                                                        (if (gx#stx-null?
                                                             _%$%tl159274159317%_)
                                                            (if '#t
                                                                (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax '%#if)
                               (cons (gx#core-expand-expression _%test159300%_)
                                     (cons (gx#core-expand-expression
                                            _%K159310%_)
                                           (cons (gx#core-expand-expression
                                                  _%E159320%_)
                                                 '()))))
                         (gx#stx-source _%stx159259%_))
                        (_%$%E159262159280%_))
                    (_%$%E159262159280%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E159262159280%_)))))
                                        (_%$%E159262159280%_)))))
                              (_%$%E159262159280%_))))
                      (_%$%E159262159280%_)))))
          (_%$%E159261159322%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx159218%_)
        (let* ((_%$%e159219159229%_ _%stx159218%_)
               (_%$%E159221159233%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e159219159229%_)))
               (_%$%E159220159255%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e159219159229%_)
                      (let ((_%$%e159222159237%_
                             (gx#syntax-e _%$%e159219159229%_)))
                        (let ((_%$%hd159223159240%_
                               (##car _%$%e159222159237%_))
                              (_%$%tl159224159242%_
                               (##cdr _%$%e159222159237%_)))
                          (if (gx#stx-pair? _%$%tl159224159242%_)
                              (let ((_%$%e159225159245%_
                                     (gx#syntax-e _%$%tl159224159242%_)))
                                (let ((_%$%hd159226159248%_
                                       (##car _%$%e159225159245%_))
                                      (_%$%tl159227159250%_
                                       (##cdr _%$%e159225159245%_)))
                                  (let ((_%id159253%_ _%$%hd159226159248%_))
                                    (if (gx#stx-null? _%$%tl159227159250%_)
                                        (if (gx#identifier? _%id159253%_)
                                            (gx#core-quote-syntax
                                             (cons (gx#core-quote-syntax
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id159253%_
                                                          _%stx159218%_)
                                                         '()))
                                             (gx#stx-source _%stx159218%_))
                                            (_%$%E159221159233%_))
                                        (_%$%E159221159233%_)))))
                              (_%$%E159221159233%_))))
                      (_%$%E159221159233%_)))))
          (_%$%E159220159255%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx159164%_)
        (let* ((_%$%e159165159178%_ _%stx159164%_)
               (_%$%E159167159182%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e159165159178%_)))
               (_%$%E159166159214%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e159165159178%_)
                      (let ((_%$%e159168159186%_
                             (gx#syntax-e _%$%e159165159178%_)))
                        (let ((_%$%hd159169159189%_
                               (##car _%$%e159168159186%_))
                              (_%$%tl159170159191%_
                               (##cdr _%$%e159168159186%_)))
                          (if (gx#stx-pair? _%$%tl159170159191%_)
                              (let ((_%$%e159171159194%_
                                     (gx#syntax-e _%$%tl159170159191%_)))
                                (let ((_%$%hd159172159197%_
                                       (##car _%$%e159171159194%_))
                                      (_%$%tl159173159199%_
                                       (##cdr _%$%e159171159194%_)))
                                  (let ((_%id159202%_ _%$%hd159172159197%_))
                                    (if (gx#stx-pair? _%$%tl159173159199%_)
                                        (let ((_%$%e159174159204%_
                                               (gx#syntax-e
                                                _%$%tl159173159199%_)))
                                          (let ((_%$%hd159175159207%_
                                                 (##car _%$%e159174159204%_))
                                                (_%$%tl159176159209%_
                                                 (##cdr _%$%e159174159204%_)))
                                            (let ((_%expr159212%_
                                                   _%$%hd159175159207%_))
                                              (if (gx#stx-null?
                                                   _%$%tl159176159209%_)
                                                  (if (gx#identifier?
                                                       _%id159202%_)
                                                      (gx#core-quote-syntax
                                                       (cons (gx#core-quote-syntax
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id159202%_
                            _%stx159164%_)
                           (cons (gx#core-expand-expression _%expr159212%_)
                                 '())))
               (gx#stx-source _%stx159164%_))
              (_%$%E159167159182%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E159167159182%_)))))
                                        (_%$%E159167159182%_)))))
                              (_%$%E159167159182%_))))
                      (_%$%E159167159182%_)))))
          (_%$%E159166159214%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx159009%_)
        (letrec ((_%generate159011%_
                  (lambda (_%body159041%_)
                    (let _%lp159043%_ ((_%rest159045%_ _%body159041%_)
                                       (_%ns159046%_
                                        (gx#core-context-namespace))
                                       (_%r159047%_ '()))
                      (let* ((_%$%e159048159063%_ _%rest159045%_)
                             (_%$%E159061159067%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%$%e159048159063%_)))
                             (_%$%E159057159071%_
                              (lambda ()
                                (if (gx#stx-null? _%$%e159048159063%_)
                                    (if '#t
                                        (reverse _%r159047%_)
                                        (_%$%E159061159067%_))
                                    (_%$%E159061159067%_))))
                             (_%$%E159050159128%_
                              (lambda ()
                                (if (gx#stx-pair? _%$%e159048159063%_)
                                    (let ((_%$%e159058159075%_
                                           (gx#syntax-e _%$%e159048159063%_)))
                                      (let ((_%$%hd159059159078%_
                                             (##car _%$%e159058159075%_))
                                            (_%$%tl159060159080%_
                                             (##cdr _%$%e159058159075%_)))
                                        (let* ((_%hd159083%_
                                                _%$%hd159059159078%_)
                                               (_%rest159085%_
                                                _%$%tl159060159080%_))
                                          (if '#t
                                              (if (gx#identifier? _%hd159083%_)
                                                  (_%lp159043%_
                                                   _%rest159085%_
                                                   _%ns159046%_
                                                   (cons (cons _%hd159083%_
                                                               (cons (if _%ns159046%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _%hd159083%_
                                  _%ns159046%_
                                  '"#"
                                  _%hd159083%_)
                                 _%hd159083%_)
                             '()))
                 _%r159047%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%$%e159086159096%_
                                                          _%hd159083%_)
                                                         (_%$%E159088159100%_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%$%e159086159096%_)))
                                                         (_%$%E159087159124%_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%e159086159096%_)
                        (let ((_%$%e159089159104%_
                               (gx#syntax-e _%$%e159086159096%_)))
                          (let ((_%$%hd159090159107%_
                                 (##car _%$%e159089159104%_))
                                (_%$%tl159091159109%_
                                 (##cdr _%$%e159089159104%_)))
                            (let ((_%id159112%_ _%$%hd159090159107%_))
                              (if (gx#stx-pair? _%$%tl159091159109%_)
                                  (let ((_%$%e159092159114%_
                                         (gx#syntax-e _%$%tl159091159109%_)))
                                    (let ((_%$%hd159093159117%_
                                           (##car _%$%e159092159114%_))
                                          (_%$%tl159094159119%_
                                           (##cdr _%$%e159092159114%_)))
                                      (let ((_%eid159122%_
                                             _%$%hd159093159117%_))
                                        (if (gx#stx-null? _%$%tl159094159119%_)
                                            (if (and (gx#identifier?
                                                      _%id159112%_)
                                                     (gx#identifier?
                                                      _%eid159122%_))
                                                (_%lp159043%_
                                                 _%rest159085%_
                                                 _%ns159046%_
                                                 (cons (cons _%id159112%_
                                                             (cons _%eid159122%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%r159047%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%E159088159100%_))
                                            (_%$%E159088159100%_)))))
                                  (_%$%E159088159100%_)))))
                        (_%$%E159088159100%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E159087159124%_)))
                                              (_%$%E159057159071%_)))))
                                    (_%$%E159057159071%_))))
                             (_%$%E159049159160%_
                              (lambda ()
                                (if (gx#stx-pair? _%$%e159048159063%_)
                                    (let ((_%$%e159051159132%_
                                           (gx#syntax-e _%$%e159048159063%_)))
                                      (let ((_%$%hd159052159135%_
                                             (##car _%$%e159051159132%_))
                                            (_%$%tl159053159137%_
                                             (##cdr _%$%e159051159132%_)))
                                        (if (eq? (gx#stx-e
                                                  _%$%hd159052159135%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%$%tl159053159137%_)
                                                (let ((_%$%e159054159140%_
                                                       (gx#syntax-e
                                                        _%$%tl159053159137%_)))
                                                  (let ((_%$%hd159055159143%_
                                                         (##car _%$%e159054159140%_))
                                                        (_%$%tl159056159145%_
                                                         (##cdr _%$%e159054159140%_)))
                                                    (let* ((_%ns159148%_
                                                            _%$%hd159055159143%_)
                                                           (_%rest159150%_
                                                            _%$%tl159056159145%_))
                                                      (if '#t
                                                          (let ((_%ns159158%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _%ns159148%_)
                             (symbol->string (gx#stx-e _%ns159148%_))
                             (if (or (gx#stx-string? _%ns159148%_)
                                     (gx#stx-false? _%ns159148%_))
                                 (gx#stx-e _%ns159148%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _%stx159009%_
                                  _%ns159148%_)))))
                    (_%lp159043%_ _%rest159150%_ _%ns159158%_ _%r159047%_))
                  (_%$%E159050159128%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%E159050159128%_))
                                            (_%$%E159050159128%_))))
                                    (_%$%E159050159128%_)))))
                        (_%$%E159049159160%_))))))
          (let* ((_%$%e159012159019%_ _%stx159009%_)
                 (_%$%E159014159023%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e159012159019%_)))
                 (_%$%E159013159037%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e159012159019%_)
                        (let ((_%$%e159015159027%_
                               (gx#syntax-e _%$%e159012159019%_)))
                          (let ((_%$%hd159016159030%_
                                 (##car _%$%e159015159027%_))
                                (_%$%tl159017159032%_
                                 (##cdr _%$%e159015159027%_)))
                            (let ((_%body159035%_ _%$%tl159017159032%_))
                              (if (gx#stx-list? _%body159035%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate159011%_ _%body159035%_))
                                  (_%$%E159014159023%_)))))
                        (_%$%E159014159023%_)))))
            (_%$%E159013159037%_)))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx158966%_)
        (let* ((_%$%e158967158977%_ _%stx158966%_)
               (_%$%E158969158981%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e158967158977%_)))
               (_%$%E158968159005%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e158967158977%_)
                      (let ((_%$%e158970158985%_
                             (gx#syntax-e _%$%e158967158977%_)))
                        (let ((_%$%hd158971158988%_
                               (##car _%$%e158970158985%_))
                              (_%$%tl158972158990%_
                               (##cdr _%$%e158970158985%_)))
                          (if (gx#stx-pair? _%$%tl158972158990%_)
                              (let ((_%$%e158973158993%_
                                     (gx#syntax-e _%$%tl158972158990%_)))
                                (let ((_%$%hd158974158996%_
                                       (##car _%$%e158973158993%_))
                                      (_%$%tl158975158998%_
                                       (##cdr _%$%e158973158993%_)))
                                  (let* ((_%hd159001%_ _%$%hd158974158996%_)
                                         (_%body159003%_ _%$%tl158975158998%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd159001%_)
                                             (gx#stx-list? _%body159003%_)
                                             (not (gx#stx-null?
                                                   _%body159003%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map identity _%hd159001%_)
                                         _%body159003%_)
                                        (_%$%E158969158981%_)))))
                              (_%$%E158969158981%_))))
                      (_%$%E158969158981%_)))))
          (_%$%E158968159005%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx158902%_)
        (letrec ((_%generate158904%_
                  (lambda (_%clause158934%_)
                    (let* ((_%$%e158935158942%_ _%clause158934%_)
                           (_%$%E158937158946%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx158902%_
                               _%clause158934%_)))
                           (_%$%E158936158962%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e158935158942%_)
                                  (let ((_%$%e158938158950%_
                                         (gx#syntax-e _%$%e158935158942%_)))
                                    (let ((_%$%hd158939158953%_
                                           (##car _%$%e158938158950%_))
                                          (_%$%tl158940158955%_
                                           (##cdr _%$%e158938158950%_)))
                                      (let* ((_%hd158958%_
                                              _%$%hd158939158953%_)
                                             (_%body158960%_
                                              _%$%tl158940158955%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd158958%_)
                                                 (gx#stx-list? _%body158960%_)
                                                 (not (gx#stx-null?
                                                       _%body158960%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map
                                                    identity
                                                    _%hd158958%_)
                                                   _%body158960%_)
                                             (gx#stx-source _%clause158934%_))
                                            (_%$%E158937158946%_)))))
                                  (_%$%E158937158946%_)))))
                      (_%$%E158936158962%_)))))
          (let* ((_%$%e158905158912%_ _%stx158902%_)
                 (_%$%E158907158916%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e158905158912%_)))
                 (_%$%E158906158930%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e158905158912%_)
                        (let ((_%$%e158908158920%_
                               (gx#syntax-e _%$%e158905158912%_)))
                          (let ((_%$%hd158909158923%_
                                 (##car _%$%e158908158920%_))
                                (_%$%tl158910158925%_
                                 (##cdr _%$%e158908158920%_)))
                            (let ((_%clauses158928%_ _%$%tl158910158925%_))
                              (if (gx#stx-list? _%clauses158928%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map
                                    _%generate158904%_
                                    _%clauses158928%_))
                                  (_%$%E158907158916%_)))))
                        (_%$%E158907158916%_)))))
            (_%$%E158906158930%_)))))
    (define gx#macro-expand-let-values
      (let ((_%$%opt-lambda158801158892%_
             (lambda (_%stx158803%_ _%form158804%_)
               (letrec ((_%generate158806%_
                         (lambda (_%bind158849%_)
                           (let* ((_%$%e158850158860%_ _%bind158849%_)
                                  (_%$%E158852158864%_
                                   (lambda ()
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; malformed binding"
                                      _%stx158803%_
                                      _%bind158849%_)))
                                  (_%$%E158851158888%_
                                   (lambda ()
                                     (if (gx#stx-pair? _%$%e158850158860%_)
                                         (let ((_%$%e158853158868%_
                                                (gx#syntax-e
                                                 _%$%e158850158860%_)))
                                           (let ((_%$%hd158854158871%_
                                                  (##car _%$%e158853158868%_))
                                                 (_%$%tl158855158873%_
                                                  (##cdr _%$%e158853158868%_)))
                                             (let ((_%ids158876%_
                                                    _%$%hd158854158871%_))
                                               (if (gx#stx-pair?
                                                    _%$%tl158855158873%_)
                                                   (let ((_%$%e158856158878%_
                                                          (gx#syntax-e
                                                           _%$%tl158855158873%_)))
                                                     (let ((_%$%hd158857158881%_
                                                            (##car _%$%e158856158878%_))
                                                           (_%$%tl158858158883%_
                                                            (##cdr _%$%e158856158878%_)))
                                                       (let ((_%expr158886%_
                                                              _%$%hd158857158881%_))
                                                         (if (gx#stx-null?
                                                              _%$%tl158858158883%_)
                                                             (if (gx#stx-andmap
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          gx#identifier?
                          _%ids158876%_)
                         (cons (gx#stx-map identity _%ids158876%_)
                               (cons _%expr158886%_ '()))
                         (_%$%E158852158864%_))
                     (_%$%E158852158864%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%E158852158864%_)))))
                                         (_%$%E158852158864%_)))))
                             (_%$%E158851158888%_)))))
                 (let* ((_%$%e158807158817%_ _%stx158803%_)
                        (_%$%E158809158821%_
                         (lambda ()
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case clause"
                            _%$%e158807158817%_)))
                        (_%$%E158808158845%_
                         (lambda ()
                           (if (gx#stx-pair? _%$%e158807158817%_)
                               (let ((_%$%e158810158825%_
                                      (gx#syntax-e _%$%e158807158817%_)))
                                 (let ((_%$%hd158811158828%_
                                        (##car _%$%e158810158825%_))
                                       (_%$%tl158812158830%_
                                        (##cdr _%$%e158810158825%_)))
                                   (if (gx#stx-pair? _%$%tl158812158830%_)
                                       (let ((_%$%e158813158833%_
                                              (gx#syntax-e
                                               _%$%tl158812158830%_)))
                                         (let ((_%$%hd158814158836%_
                                                (##car _%$%e158813158833%_))
                                               (_%$%tl158815158838%_
                                                (##cdr _%$%e158813158833%_)))
                                           (let* ((_%hd158841%_
                                                   _%$%hd158814158836%_)
                                                  (_%body158843%_
                                                   _%$%tl158815158838%_))
                                             (if (and (gx#stx-list?
                                                       _%hd158841%_)
                                                      (gx#stx-list?
                                                       _%body158843%_)
                                                      (not (gx#stx-null?
                                                            _%body158843%_)))
                                                 (gx#core-cons*
                                                  _%form158804%_
                                                  (gx#stx-map
                                                   _%generate158806%_
                                                   _%hd158841%_)
                                                  _%body158843%_)
                                                 (_%$%E158809158821%_)))))
                                       (_%$%E158809158821%_))))
                               (_%$%E158809158821%_)))))
                   (_%$%E158808158845%_))))))
        (lambda _g161548_
          (let ((_g161549_ (##length _g161548_)))
            (cond ((##fx= _g161549_ 1)
                   (apply (lambda (_%stx158895%_)
                            (let ((_%form158897%_ '%#let-values))
                              (_%$%opt-lambda158801158892%_
                               _%stx158895%_
                               _%form158897%_)))
                          _g161548_))
                  ((##fx= _g161549_ 2)
                   (apply _%$%opt-lambda158801158892%_ _g161548_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#macro-expand-let-values
                    _g161548_)))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx158800%_)
        (gx#macro-expand-let-values _%stx158800%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx158798%_)
        (gx#macro-expand-let-values _%stx158798%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx158689%_)
        (let* ((_%$%e158690158716%_ _%stx158689%_)
               (_%$%E158702158720%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e158690158716%_)))
               (_%$%E158692158762%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e158690158716%_)
                      (let ((_%$%e158703158724%_
                             (gx#syntax-e _%$%e158690158716%_)))
                        (let ((_%$%hd158704158727%_
                               (##car _%$%e158703158724%_))
                              (_%$%tl158705158729%_
                               (##cdr _%$%e158703158724%_)))
                          (if (gx#stx-pair? _%$%tl158705158729%_)
                              (let ((_%$%e158706158732%_
                                     (gx#syntax-e _%$%tl158705158729%_)))
                                (let ((_%$%hd158707158735%_
                                       (##car _%$%e158706158732%_))
                                      (_%$%tl158708158737%_
                                       (##cdr _%$%e158706158732%_)))
                                  (let ((_%test158740%_ _%$%hd158707158735%_))
                                    (if (gx#stx-pair? _%$%tl158708158737%_)
                                        (let ((_%$%e158709158742%_
                                               (gx#syntax-e
                                                _%$%tl158708158737%_)))
                                          (let ((_%$%hd158710158745%_
                                                 (##car _%$%e158709158742%_))
                                                (_%$%tl158711158747%_
                                                 (##cdr _%$%e158709158742%_)))
                                            (let ((_%K158750%_
                                                   _%$%hd158710158745%_))
                                              (if (gx#stx-pair?
                                                   _%$%tl158711158747%_)
                                                  (let ((_%$%e158712158752%_
                                                         (gx#syntax-e
                                                          _%$%tl158711158747%_)))
                                                    (let ((_%$%hd158713158755%_
                                                           (##car _%$%e158712158752%_))
                                                          (_%$%tl158714158757%_
                                                           (##cdr _%$%e158712158752%_)))
                                                      (let ((_%E158760%_
                                                             _%$%hd158713158755%_))
                                                        (if (gx#stx-null?
                                                             _%$%tl158714158757%_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _%test158740%_
                         _%K158750%_
                         _%E158760%_)
                        (_%$%E158702158720%_))
                    (_%$%E158702158720%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E158702158720%_)))))
                                        (_%$%E158702158720%_)))))
                              (_%$%E158702158720%_))))
                      (_%$%E158702158720%_))))
               (_%$%E158691158794%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e158690158716%_)
                      (let ((_%$%e158693158766%_
                             (gx#syntax-e _%$%e158690158716%_)))
                        (let ((_%$%hd158694158769%_
                               (##car _%$%e158693158766%_))
                              (_%$%tl158695158771%_
                               (##cdr _%$%e158693158766%_)))
                          (if (gx#stx-pair? _%$%tl158695158771%_)
                              (let ((_%$%e158696158774%_
                                     (gx#syntax-e _%$%tl158695158771%_)))
                                (let ((_%$%hd158697158777%_
                                       (##car _%$%e158696158774%_))
                                      (_%$%tl158698158779%_
                                       (##cdr _%$%e158696158774%_)))
                                  (let ((_%test158782%_ _%$%hd158697158777%_))
                                    (if (gx#stx-pair? _%$%tl158698158779%_)
                                        (let ((_%$%e158699158784%_
                                               (gx#syntax-e
                                                _%$%tl158698158779%_)))
                                          (let ((_%$%hd158700158787%_
                                                 (##car _%$%e158699158784%_))
                                                (_%$%tl158701158789%_
                                                 (##cdr _%$%e158699158784%_)))
                                            (let ((_%K158792%_
                                                   _%$%hd158700158787%_))
                                              (if (gx#stx-null?
                                                   _%$%tl158701158789%_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _%test158782%_
                                                       _%K158792%_
                                                       '#!void)
                                                      (_%$%E158692158762%_))
                                                  (_%$%E158692158762%_)))))
                                        (_%$%E158692158762%_)))))
                              (_%$%E158692158762%_))))
                      (_%$%E158692158762%_)))))
          (_%$%E158691158794%_))))
    (define gx#free-identifier=?
      (lambda (_%xid158674%_ _%yid158675%_)
        (let ((_%xe158677%_ (gx#resolve-identifier _%xid158674%_))
              (_%ye158678%_ (gx#resolve-identifier _%yid158675%_)))
          (if (and _%xe158677%_ _%ye158678%_)
              (let ((_%$e158681%_ (eq? _%xe158677%_ _%ye158678%_)))
                (if _%$e158681%_
                    _%$e158681%_
                    (if (gx#binding? _%xe158677%_)
                        (if (gx#binding? _%ye158678%_)
                            (eq? (gx#&binding-id _%xe158677%_)
                                 (gx#&binding-id _%ye158678%_))
                            '#f)
                        '#f)))
              (if (or _%xe158677%_ _%ye158678%_)
                  '#f
                  (gx#stx-eq? _%xid158674%_ _%yid158675%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid158655%_ _%yid158656%_)
        (letrec ((_%context158658%_
                  (lambda (_%e158672%_)
                    (if (gx#syntax-quote? _%e158672%_)
                        (gx#&syntax-quote-context _%e158672%_)
                        (gx#current-expander-context))))
                 (_%marks158659%_
                  (lambda (_%e158667%_)
                    (if (symbol? _%e158667%_)
                        '()
                        (if (gx#identifier-wrap? _%e158667%_)
                            (gx#&identifier-wrap-marks _%e158667%_)
                            (gx#&syntax-quote-marks _%e158667%_)))))
                 (_%unwrap158660%_
                  (lambda (_%e158665%_)
                    (if (symbol? _%e158665%_)
                        _%e158665%_
                        (gx#syntax-local-unwrap _%e158665%_)))))
          (let ((_%x158662%_ (_%unwrap158660%_ _%xid158655%_))
                (_%y158663%_ (_%unwrap158660%_ _%yid158656%_)))
            (if (gx#stx-eq? _%x158662%_ _%y158663%_)
                (if (eq? (_%context158658%_ _%x158662%_)
                         (_%context158658%_ _%y158663%_))
                    (equal? (_%marks158659%_ _%x158662%_)
                            (_%marks158659%_ _%y158663%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx158653%_)
        (if (gx#identifier? _%stx158653%_)
            (gx#core-identifier=? _%stx158653%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx158651%_)
        (if (gx#identifier? _%stx158651%_)
            (gx#core-identifier=? _%stx158651%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers
      (let ((_%$%opt-lambda158592158641%_
             (lambda (_%stx158594%_ _%where158595%_)
               (let _%lp158597%_ ((_%rest158599%_
                                   (gx#syntax->list _%stx158594%_)))
                 (let* ((_%$%rest158600158608%_ _%rest158599%_)
                        (_%$%E158603158612%_
                         (lambda ()
                           (error '"No clause matching"
                                  _%$%rest158600158608%_
                                  '([hd . rest])
                                  'else)
                           (void)))
                        (_%$%else158602158616%_ (lambda () '#t))
                        (_%$%K158604158629%_
                         (lambda (_%rest158619%_ _%hd158620%_)
                           (if (not (gx#identifier? _%hd158620%_))
                               (gx#raise-syntax-error
                                '#f
                                '"Bad identifier"
                                _%where158595%_
                                _%hd158620%_)
                               (if (find (lambda (_%$%g158622158624%_)
                                           (gx#bound-identifier=?
                                            _%$%g158622158624%_
                                            _%hd158620%_))
                                         _%rest158619%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Duplicate identifier"
                                    _%where158595%_
                                    _%hd158620%_)
                                   (_%lp158597%_ _%rest158619%_))))))
                   (if (pair? _%$%rest158600158608%_)
                       (let ((_%$%hd158605158632%_
                              (##car _%$%rest158600158608%_))
                             (_%$%tl158606158634%_
                              (##cdr _%$%rest158600158608%_)))
                         (let* ((_%hd158637%_ _%$%hd158605158632%_)
                                (_%rest158639%_ _%$%tl158606158634%_))
                           (_%$%K158604158629%_ _%rest158639%_ _%hd158637%_)))
                       (_%$%else158602158616%_)))))))
        (lambda _g161550_
          (let ((_g161551_ (##length _g161550_)))
            (cond ((##fx= _g161551_ 1)
                   (apply (lambda (_%stx158644%_)
                            (let ((_%where158646%_ _%stx158644%_))
                              (_%$%opt-lambda158592158641%_
                               _%stx158644%_
                               _%where158646%_)))
                          _g161550_))
                  ((##fx= _g161551_ 2)
                   (apply _%$%opt-lambda158592158641%_ _g161550_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#check-duplicate-identifiers
                    _g161550_)))))))
    (define gx#core-bind-values?
      (lambda (_%stx158586%_)
        (gx#stx-andmap
         (lambda (_%x158588%_)
           (let ((_%$e158590%_ (gx#identifier? _%x158588%_)))
             (if _%$e158590%_ _%$e158590%_ (gx#stx-false? _%x158588%_))))
         _%stx158586%_)))
    (define gx#core-bind-values!
      (let ((_%$%opt-lambda158548158557%_
             (lambda (_%stx158550%_
                      _%rebind?158551%_
                      _%phi158552%_
                      _%ctx158553%_)
               (gx#stx-for-each
                (lambda (_%id158555%_)
                  (if (gx#identifier? _%id158555%_)
                      (gx#core-bind-runtime!
                       _%id158555%_
                       _%rebind?158551%_
                       _%phi158552%_
                       _%ctx158553%_)
                      '#!void))
                _%stx158550%_))))
        (lambda _g161552_
          (let ((_g161553_ (##length _g161552_)))
            (cond ((##fx= _g161553_ 1)
                   (apply (lambda (_%stx158560%_)
                            (let* ((_%rebind?158562%_ '#f)
                                   (_%phi158564%_ (gx#current-expander-phi))
                                   (_%ctx158566%_
                                    (gx#current-expander-context)))
                              (_%$%opt-lambda158548158557%_
                               _%stx158560%_
                               _%rebind?158562%_
                               _%phi158564%_
                               _%ctx158566%_)))
                          _g161552_))
                  ((##fx= _g161553_ 2)
                   (apply (lambda (_%stx158568%_ _%rebind?158569%_)
                            (let* ((_%phi158571%_ (gx#current-expander-phi))
                                   (_%ctx158573%_
                                    (gx#current-expander-context)))
                              (_%$%opt-lambda158548158557%_
                               _%stx158568%_
                               _%rebind?158569%_
                               _%phi158571%_
                               _%ctx158573%_)))
                          _g161552_))
                  ((##fx= _g161553_ 3)
                   (apply (lambda (_%stx158575%_
                                   _%rebind?158576%_
                                   _%phi158577%_)
                            (let ((_%ctx158579%_
                                   (gx#current-expander-context)))
                              (_%$%opt-lambda158548158557%_
                               _%stx158575%_
                               _%rebind?158576%_
                               _%phi158577%_
                               _%ctx158579%_)))
                          _g161552_))
                  ((##fx= _g161553_ 4)
                   (apply _%$%opt-lambda158548158557%_ _g161552_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-values!
                    _g161552_)))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx158545%_)
        (gx#stx-map
         (lambda (_%x158547%_)
           (if (gx#identifier? _%x158547%_)
               (gx#core-quote-syntax _%x158547%_)
               '#f))
         _%stx158545%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx158538%_)
        (if (gx#identifier? _%stx158538%_)
            (let* ((_%bind158540%_ (gx#resolve-identifier _%stx158538%_))
                   (_%$e158542%_ (not _%bind158540%_)))
              (if _%$e158542%_
                  _%$e158542%_
                  (gx#runtime-binding? _%bind158540%_)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id158527%_ _%form158528%_)
        (let ((_%bind158530%_ (gx#resolve-identifier _%id158527%_)))
          (if (gx#runtime-binding? _%bind158530%_)
              (gx#core-quote-syntax _%id158527%_)
              (if (not _%bind158530%_)
                  (if (or (gx#core-context-rebind? (gx#core-context-top))
                          (gx#core-extern-symbol? (gx#stx-e _%id158527%_)))
                      (gx#core-quote-syntax _%id158527%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form158528%_
                       _%id158527%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form158528%_
                   _%id158527%_))))))
    (define gx#core-bind-runtime!
      (let ((_%$%opt-lambda158480158498%_
             (lambda (_%id158482%_
                      _%rebind?158483%_
                      _%phi158484%_
                      _%ctx158485%_)
               (let* ((_%key158487%_ (gx#core-identifier-key _%id158482%_))
                      (_%eid158489%_
                       (gx#make-binding-id
                        _%key158487%_
                        '#f
                        _%phi158484%_
                        _%ctx158485%_))
                      (_%bind158495%_
                       (if (gx#module-context? _%ctx158485%_)
                           (gx#make-module-binding
                            _%eid158489%_
                            _%key158487%_
                            _%phi158484%_
                            _%ctx158485%_)
                           (if (gx#top-context? _%ctx158485%_)
                               (gx#make-top-binding
                                _%eid158489%_
                                _%key158487%_
                                _%phi158484%_)
                               (if (gx#local-context? _%ctx158485%_)
                                   (gx#make-local-binding
                                    _%eid158489%_
                                    _%key158487%_
                                    _%phi158484%_)
                                   (gx#make-runtime-binding
                                    _%eid158489%_
                                    _%key158487%_
                                    _%phi158484%_))))))
                 (gx#bind-identifier!
                  _%id158482%_
                  _%bind158495%_
                  _%rebind?158483%_
                  _%phi158484%_
                  _%ctx158485%_)))))
        (lambda _g161554_
          (let ((_g161555_ (##length _g161554_)))
            (cond ((##fx= _g161555_ 1)
                   (apply (lambda (_%id158501%_)
                            (let* ((_%rebind?158503%_ '#f)
                                   (_%phi158505%_ (gx#current-expander-phi))
                                   (_%ctx158507%_
                                    (gx#current-expander-context)))
                              (_%$%opt-lambda158480158498%_
                               _%id158501%_
                               _%rebind?158503%_
                               _%phi158505%_
                               _%ctx158507%_)))
                          _g161554_))
                  ((##fx= _g161555_ 2)
                   (apply (lambda (_%id158509%_ _%rebind?158510%_)
                            (let* ((_%phi158512%_ (gx#current-expander-phi))
                                   (_%ctx158514%_
                                    (gx#current-expander-context)))
                              (_%$%opt-lambda158480158498%_
                               _%id158509%_
                               _%rebind?158510%_
                               _%phi158512%_
                               _%ctx158514%_)))
                          _g161554_))
                  ((##fx= _g161555_ 3)
                   (apply (lambda (_%id158516%_
                                   _%rebind?158517%_
                                   _%phi158518%_)
                            (let ((_%ctx158520%_
                                   (gx#current-expander-context)))
                              (_%$%opt-lambda158480158498%_
                               _%id158516%_
                               _%rebind?158517%_
                               _%phi158518%_
                               _%ctx158520%_)))
                          _g161554_))
                  ((##fx= _g161555_ 4)
                   (apply _%$%opt-lambda158480158498%_ _g161554_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-runtime!
                    _g161554_)))))))
    (define gx#core-bind-runtime-reference!
      (let ((_%$%opt-lambda158432158448%_
             (lambda (_%id158434%_
                      _%eid158435%_
                      _%rebind?158436%_
                      _%phi158437%_
                      _%ctx158438%_)
               (let* ((_%key158440%_ (gx#core-identifier-key _%id158434%_))
                      (_%bind158445%_
                       (if (gx#module-context? _%ctx158438%_)
                           (gx#make-module-binding
                            _%eid158435%_
                            _%key158440%_
                            _%phi158437%_
                            _%ctx158438%_)
                           (if (gx#top-context? _%ctx158438%_)
                               (gx#make-top-binding
                                _%eid158435%_
                                _%key158440%_
                                _%phi158437%_)
                               (gx#make-runtime-binding
                                _%eid158435%_
                                _%key158440%_
                                _%phi158437%_)))))
                 (gx#bind-identifier!
                  _%id158434%_
                  _%bind158445%_
                  _%rebind?158436%_
                  _%phi158437%_
                  _%ctx158438%_)))))
        (lambda _g161556_
          (let ((_g161557_ (##length _g161556_)))
            (cond ((##fx= _g161557_ 2)
                   (apply (lambda (_%id158451%_ _%eid158452%_)
                            (let* ((_%rebind?158454%_ '#f)
                                   (_%phi158456%_ (gx#current-expander-phi))
                                   (_%ctx158458%_
                                    (gx#current-expander-context)))
                              (_%$%opt-lambda158432158448%_
                               _%id158451%_
                               _%eid158452%_
                               _%rebind?158454%_
                               _%phi158456%_
                               _%ctx158458%_)))
                          _g161556_))
                  ((##fx= _g161557_ 3)
                   (apply (lambda (_%id158460%_
                                   _%eid158461%_
                                   _%rebind?158462%_)
                            (let* ((_%phi158464%_ (gx#current-expander-phi))
                                   (_%ctx158466%_
                                    (gx#current-expander-context)))
                              (_%$%opt-lambda158432158448%_
                               _%id158460%_
                               _%eid158461%_
                               _%rebind?158462%_
                               _%phi158464%_
                               _%ctx158466%_)))
                          _g161556_))
                  ((##fx= _g161557_ 4)
                   (apply (lambda (_%id158468%_
                                   _%eid158469%_
                                   _%rebind?158470%_
                                   _%phi158471%_)
                            (let ((_%ctx158473%_
                                   (gx#current-expander-context)))
                              (_%$%opt-lambda158432158448%_
                               _%id158468%_
                               _%eid158469%_
                               _%rebind?158470%_
                               _%phi158471%_
                               _%ctx158473%_)))
                          _g161556_))
                  ((##fx= _g161557_ 5)
                   (apply _%$%opt-lambda158432158448%_ _g161556_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-runtime-reference!
                    _g161556_)))))))
    (define gx#core-bind-extern!
      (let ((_%$%opt-lambda158392158400%_
             (lambda (_%id158394%_
                      _%eid158395%_
                      _%rebind?158396%_
                      _%phi158397%_
                      _%ctx158398%_)
               (gx#bind-identifier!
                _%id158394%_
                (gx#make-extern-binding
                 _%eid158395%_
                 (gx#core-identifier-key _%id158394%_)
                 _%phi158397%_)
                _%rebind?158396%_
                _%phi158397%_
                _%ctx158398%_))))
        (lambda _g161558_
          (let ((_g161559_ (##length _g161558_)))
            (cond ((##fx= _g161559_ 2)
                   (apply (lambda (_%id158403%_ _%eid158404%_)
                            (let* ((_%rebind?158406%_ '#f)
                                   (_%phi158408%_ (gx#current-expander-phi))
                                   (_%ctx158410%_
                                    (gx#current-expander-context)))
                              (_%$%opt-lambda158392158400%_
                               _%id158403%_
                               _%eid158404%_
                               _%rebind?158406%_
                               _%phi158408%_
                               _%ctx158410%_)))
                          _g161558_))
                  ((##fx= _g161559_ 3)
                   (apply (lambda (_%id158412%_
                                   _%eid158413%_
                                   _%rebind?158414%_)
                            (let* ((_%phi158416%_ (gx#current-expander-phi))
                                   (_%ctx158418%_
                                    (gx#current-expander-context)))
                              (_%$%opt-lambda158392158400%_
                               _%id158412%_
                               _%eid158413%_
                               _%rebind?158414%_
                               _%phi158416%_
                               _%ctx158418%_)))
                          _g161558_))
                  ((##fx= _g161559_ 4)
                   (apply (lambda (_%id158420%_
                                   _%eid158421%_
                                   _%rebind?158422%_
                                   _%phi158423%_)
                            (let ((_%ctx158425%_
                                   (gx#current-expander-context)))
                              (_%$%opt-lambda158392158400%_
                               _%id158420%_
                               _%eid158421%_
                               _%rebind?158422%_
                               _%phi158423%_
                               _%ctx158425%_)))
                          _g161558_))
                  ((##fx= _g161559_ 5)
                   (apply _%$%opt-lambda158392158400%_ _g161558_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-extern!
                    _g161558_)))))))
    (define gx#core-bind-syntax!
      (let ((_%$%opt-lambda158346158360%_
             (lambda (_%id158348%_
                      _%e158349%_
                      _%rebind?158350%_
                      _%phi158351%_
                      _%ctx158352%_)
               (gx#bind-identifier!
                _%id158348%_
                (let ((_%key158357%_ (gx#core-identifier-key _%id158348%_))
                      (_%e158358%_
                       (if (or (gx#expander? _%e158349%_)
                               (gx#expander-context? _%e158349%_))
                           _%e158349%_
                           (gx#make-user-expander
                            _%e158349%_
                            _%ctx158352%_
                            _%phi158351%_))))
                  (gx#make-syntax-binding
                   (gx#make-binding-id
                    _%key158357%_
                    '#t
                    _%phi158351%_
                    _%ctx158352%_)
                   _%key158357%_
                   _%phi158351%_
                   _%e158358%_))
                _%rebind?158350%_
                _%phi158351%_
                _%ctx158352%_))))
        (lambda _g161560_
          (let ((_g161561_ (##length _g161560_)))
            (cond ((##fx= _g161561_ 2)
                   (apply (lambda (_%id158363%_ _%e158364%_)
                            (let* ((_%rebind?158366%_ '#f)
                                   (_%phi158368%_ (gx#current-expander-phi))
                                   (_%ctx158370%_
                                    (gx#current-expander-context)))
                              (_%$%opt-lambda158346158360%_
                               _%id158363%_
                               _%e158364%_
                               _%rebind?158366%_
                               _%phi158368%_
                               _%ctx158370%_)))
                          _g161560_))
                  ((##fx= _g161561_ 3)
                   (apply (lambda (_%id158372%_ _%e158373%_ _%rebind?158374%_)
                            (let* ((_%phi158376%_ (gx#current-expander-phi))
                                   (_%ctx158378%_
                                    (gx#current-expander-context)))
                              (_%$%opt-lambda158346158360%_
                               _%id158372%_
                               _%e158373%_
                               _%rebind?158374%_
                               _%phi158376%_
                               _%ctx158378%_)))
                          _g161560_))
                  ((##fx= _g161561_ 4)
                   (apply (lambda (_%id158380%_
                                   _%e158381%_
                                   _%rebind?158382%_
                                   _%phi158383%_)
                            (let ((_%ctx158385%_
                                   (gx#current-expander-context)))
                              (_%$%opt-lambda158346158360%_
                               _%id158380%_
                               _%e158381%_
                               _%rebind?158382%_
                               _%phi158383%_
                               _%ctx158385%_)))
                          _g161560_))
                  ((##fx= _g161561_ 5)
                   (apply _%$%opt-lambda158346158360%_ _g161560_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-syntax!
                    _g161560_)))))))
    (define gx#core-bind-root-syntax!
      (let ((_%$%opt-lambda158329158335%_
             (lambda (_%id158331%_ _%e158332%_ _%rebind?158333%_)
               (gx#core-bind-syntax!
                _%id158331%_
                _%e158332%_
                _%rebind?158333%_
                '0
                (gx#core-context-root)))))
        (lambda _g161562_
          (let ((_g161563_ (##length _g161562_)))
            (cond ((##fx= _g161563_ 2)
                   (apply (lambda (_%id158338%_ _%e158339%_)
                            (let ((_%rebind?158341%_ '#f))
                              (_%$%opt-lambda158329158335%_
                               _%id158338%_
                               _%e158339%_
                               _%rebind?158341%_)))
                          _g161562_))
                  ((##fx= _g161563_ 3)
                   (apply _%$%opt-lambda158329158335%_ _g161562_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-root-syntax!
                    _g161562_)))))))
    (define gx#core-bind-alias!
      (let ((_%$%opt-lambda158287158297%_
             (lambda (_%id158289%_
                      _%alias-id158290%_
                      _%rebind?158291%_
                      _%phi158292%_
                      _%ctx158293%_)
               (gx#bind-identifier!
                _%id158289%_
                (let ((_%key158295%_ (gx#core-identifier-key _%id158289%_)))
                  (gx#make-alias-binding
                   (gx#make-binding-id
                    _%key158295%_
                    '#t
                    _%phi158292%_
                    _%ctx158293%_)
                   _%key158295%_
                   _%phi158292%_
                   _%alias-id158290%_))
                _%rebind?158291%_
                _%phi158292%_
                _%ctx158293%_))))
        (lambda _g161564_
          (let ((_g161565_ (##length _g161564_)))
            (cond ((##fx= _g161565_ 2)
                   (apply (lambda (_%id158300%_ _%alias-id158301%_)
                            (let* ((_%rebind?158303%_ '#f)
                                   (_%phi158305%_ (gx#current-expander-phi))
                                   (_%ctx158307%_
                                    (gx#current-expander-context)))
                              (_%$%opt-lambda158287158297%_
                               _%id158300%_
                               _%alias-id158301%_
                               _%rebind?158303%_
                               _%phi158305%_
                               _%ctx158307%_)))
                          _g161564_))
                  ((##fx= _g161565_ 3)
                   (apply (lambda (_%id158309%_
                                   _%alias-id158310%_
                                   _%rebind?158311%_)
                            (let* ((_%phi158313%_ (gx#current-expander-phi))
                                   (_%ctx158315%_
                                    (gx#current-expander-context)))
                              (_%$%opt-lambda158287158297%_
                               _%id158309%_
                               _%alias-id158310%_
                               _%rebind?158311%_
                               _%phi158313%_
                               _%ctx158315%_)))
                          _g161564_))
                  ((##fx= _g161565_ 4)
                   (apply (lambda (_%id158317%_
                                   _%alias-id158318%_
                                   _%rebind?158319%_
                                   _%phi158320%_)
                            (let ((_%ctx158322%_
                                   (gx#current-expander-context)))
                              (_%$%opt-lambda158287158297%_
                               _%id158317%_
                               _%alias-id158318%_
                               _%rebind?158319%_
                               _%phi158320%_
                               _%ctx158322%_)))
                          _g161564_))
                  ((##fx= _g161565_ 5)
                   (apply _%$%opt-lambda158287158297%_ _g161564_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-alias!
                    _g161564_)))))))
    (define gx#make-binding-id
      (let ((_%$%opt-lambda158237158259%_
             (lambda (_%key158239%_
                      _%syntax?158240%_
                      _%phi158241%_
                      _%ctx158242%_)
               (if (uninterned-symbol? _%key158239%_)
                   (gensym 'L)
                   (if (pair? _%key158239%_)
                       (gensym (car _%key158239%_))
                       (if (gx#top-context? _%ctx158242%_)
                           (let ((_%ns158247%_
                                  (gx#core-context-namespace _%ctx158242%_)))
                             (if (and (fxzero? _%phi158241%_)
                                      (not _%syntax?158240%_))
                                 (if _%ns158247%_
                                     (make-symbol
                                      _%ns158247%_
                                      '"#"
                                      _%key158239%_)
                                     _%key158239%_)
                                 (if _%syntax?158240%_
                                     (make-symbol
                                      (let ((_%$e158251%_ _%ns158247%_))
                                        (if _%$e158251%_ _%$e158251%_ '""))
                                      '"[:"
                                      (number->string _%phi158241%_)
                                      '":]#"
                                      _%key158239%_)
                                     (make-symbol
                                      (let ((_%$e158255%_ _%ns158247%_))
                                        (if _%$e158255%_ _%$e158255%_ '""))
                                      '"["
                                      (number->string _%phi158241%_)
                                      '"]#"
                                      _%key158239%_))))
                           (gensym _%key158239%_)))))))
        (lambda _g161566_
          (let ((_g161567_ (##length _g161566_)))
            (cond ((##fx= _g161567_ 1)
                   (apply (lambda (_%key158262%_)
                            (let* ((_%syntax?158264%_ '#f)
                                   (_%phi158266%_ (gx#current-expander-phi))
                                   (_%ctx158268%_
                                    (gx#current-expander-context)))
                              (_%$%opt-lambda158237158259%_
                               _%key158262%_
                               _%syntax?158264%_
                               _%phi158266%_
                               _%ctx158268%_)))
                          _g161566_))
                  ((##fx= _g161567_ 2)
                   (apply (lambda (_%key158270%_ _%syntax?158271%_)
                            (let* ((_%phi158273%_ (gx#current-expander-phi))
                                   (_%ctx158275%_
                                    (gx#current-expander-context)))
                              (_%$%opt-lambda158237158259%_
                               _%key158270%_
                               _%syntax?158271%_
                               _%phi158273%_
                               _%ctx158275%_)))
                          _g161566_))
                  ((##fx= _g161567_ 3)
                   (apply (lambda (_%key158277%_
                                   _%syntax?158278%_
                                   _%phi158279%_)
                            (let ((_%ctx158281%_
                                   (gx#current-expander-context)))
                              (_%$%opt-lambda158237158259%_
                               _%key158277%_
                               _%syntax?158278%_
                               _%phi158279%_
                               _%ctx158281%_)))
                          _g161566_))
                  ((##fx= _g161567_ 4)
                   (apply _%$%opt-lambda158237158259%_ _g161566_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#make-binding-id
                    _g161566_)))))))))
