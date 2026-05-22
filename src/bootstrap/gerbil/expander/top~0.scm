(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1779435581)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx183594%_)
        (letrec ((_%expand-special183596%_
                  (lambda (_%hd183598%_ _%K183599%_ _%rest183600%_ _%r183601%_)
                    (_%K183599%_
                     _%rest183600%_
                     (cons (gx#core-expand-top _%hd183598%_) _%r183601%_)))))
          (gx#core-expand-block__0 _%stx183594%_ _%expand-special183596%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx183288%_)
        (letrec ((_%expand-special183290%_
                  (lambda (_%hd183412%_ _%K183413%_ _%rest183414%_ _%r183415%_)
                    (let* ((_%K183419%_
                            (lambda (_%e183417%_)
                              (_%K183413%_
                               _%rest183414%_
                               (cons _%e183417%_ _%r183415%_))))
                           (_%e183420183462%_ _%hd183412%_)
                           (_%E183457183466%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e183420183462%_)))
                           (_%E183453183478%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183420183462%_)
                                  (let ((_%e183458183470%_
                                         (gx#syntax-e _%e183420183462%_)))
                                    (let ((_%hd183459183473%_
                                           (##car _%e183458183470%_))
                                          (_%tl183460183475%_
                                           (##cdr _%e183458183470%_)))
                                      (if (and (gx#identifier?
                                                _%hd183459183473%_)
                                               (gx#core-identifier=?
                                                _%hd183459183473%_
                                                '%#define-runtime))
                                          (_%K183419%_
                                           (gx#core-expand-define-runtime%
                                            _%hd183412%_))
                                          (_%E183457183466%_))))
                                  (_%E183457183466%_))))
                           (_%E183449183490%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183420183462%_)
                                  (let ((_%e183454183482%_
                                         (gx#syntax-e _%e183420183462%_)))
                                    (let ((_%hd183455183485%_
                                           (##car _%e183454183482%_))
                                          (_%tl183456183487%_
                                           (##cdr _%e183454183482%_)))
                                      (if (and (gx#identifier?
                                                _%hd183455183485%_)
                                               (gx#core-identifier=?
                                                _%hd183455183485%_
                                                '%#define-alias))
                                          (_%K183419%_
                                           (gx#core-expand-define-alias%
                                            _%hd183412%_))
                                          (_%E183453183478%_))))
                                  (_%E183453183478%_))))
                           (_%E183439183502%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183420183462%_)
                                  (let ((_%e183450183494%_
                                         (gx#syntax-e _%e183420183462%_)))
                                    (let ((_%hd183451183497%_
                                           (##car _%e183450183494%_))
                                          (_%tl183452183499%_
                                           (##cdr _%e183450183494%_)))
                                      (if (and (gx#identifier?
                                                _%hd183451183497%_)
                                               (gx#core-identifier=?
                                                _%hd183451183497%_
                                                '%#define-syntax))
                                          (_%K183419%_
                                           (gx#core-expand-define-syntax%
                                            _%hd183412%_))
                                          (_%E183449183490%_))))
                                  (_%E183449183490%_))))
                           (_%E183426183534%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183420183462%_)
                                  (let ((_%e183440183506%_
                                         (gx#syntax-e _%e183420183462%_)))
                                    (let ((_%hd183441183509%_
                                           (##car _%e183440183506%_))
                                          (_%tl183442183511%_
                                           (##cdr _%e183440183506%_)))
                                      (if (and (gx#identifier?
                                                _%hd183441183509%_)
                                               (gx#core-identifier=?
                                                _%hd183441183509%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl183442183511%_)
                                              (let ((_%e183443183514%_
                                                     (gx#syntax-e
                                                      _%tl183442183511%_)))
                                                (let ((_%hd183444183517%_
                                                       (##car _%e183443183514%_))
                                                      (_%tl183445183519%_
                                                       (##cdr _%e183443183514%_)))
                                                  (let ((_%hd-bind183522%_
                                                         _%hd183444183517%_))
                                                    (if (gx#stx-pair?
                                                         _%tl183445183519%_)
                                                        (let ((_%e183446183524%_
                                                               (gx#syntax-e
                                                                _%tl183445183519%_)))
                                                          (let ((_%hd183447183527%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e183446183524%_))
                        (_%tl183448183529%_ (##cdr _%e183446183524%_)))
                    (let ((_%expr183532%_ _%hd183447183527%_))
                      (if (gx#stx-null? _%tl183448183529%_)
                          (if (gx#core-bind-values? _%hd-bind183522%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind183522%_)
                                (_%K183419%_ _%hd183412%_))
                              (_%E183439183502%_))
                          (_%E183439183502%_)))))
                (_%E183439183502%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E183439183502%_))
                                          (_%E183439183502%_))))
                                  (_%E183439183502%_))))
                           (_%E183422183578%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183420183462%_)
                                  (let ((_%e183427183538%_
                                         (gx#syntax-e _%e183420183462%_)))
                                    (let ((_%hd183428183541%_
                                           (##car _%e183427183538%_))
                                          (_%tl183429183543%_
                                           (##cdr _%e183427183538%_)))
                                      (if (and (gx#identifier?
                                                _%hd183428183541%_)
                                               (gx#core-identifier=?
                                                _%hd183428183541%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl183429183543%_)
                                              (let ((_%e183430183546%_
                                                     (gx#syntax-e
                                                      _%tl183429183543%_)))
                                                (let ((_%hd183431183549%_
                                                       (##car _%e183430183546%_))
                                                      (_%tl183432183551%_
                                                       (##cdr _%e183430183546%_)))
                                                  (if (gx#stx-pair?
                                                       _%hd183431183549%_)
                                                      (let ((_%e183436183554%_
                                                             (gx#syntax-e
                                                              _%hd183431183549%_)))
                                                        (let ((_%hd183437183557%_
                                                               (##car _%e183436183554%_))
                                                              (_%tl183438183559%_
                                                               (##cdr _%e183436183554%_)))
                                                          (let ((_%id183562%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd183437183557%_))
                    (if (gx#stx-null? _%tl183438183559%_)
                        (if (gx#stx-pair? _%tl183432183551%_)
                            (let ((_%e183433183564%_
                                   (gx#syntax-e _%tl183432183551%_)))
                              (let ((_%hd183434183567%_
                                     (##car _%e183433183564%_))
                                    (_%tl183435183569%_
                                     (##cdr _%e183433183564%_)))
                                (let* ((_%expr183572%_ _%hd183434183567%_)
                                       (_%props183574%_ _%tl183435183569%_))
                                  (if (gx#identifier? _%id183562%_)
                                      (let ((_%bind183576%_
                                             (gx#core-bind-runtime!__0
                                              _%id183562%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind183576%_
                                         _%props183574%_)
                                        (_%K183419%_ _%hd183412%_))
                                      (_%E183426183534%_)))))
                            (_%E183426183534%_))
                        (_%E183426183534%_)))))
              (_%E183426183534%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E183426183534%_))
                                          (_%E183426183534%_))))
                                  (_%E183426183534%_))))
                           (_%E183421183590%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183420183462%_)
                                  (let ((_%e183423183582%_
                                         (gx#syntax-e _%e183420183462%_)))
                                    (let ((_%hd183424183585%_
                                           (##car _%e183423183582%_))
                                          (_%tl183425183587%_
                                           (##cdr _%e183423183582%_)))
                                      (if (and (gx#identifier?
                                                _%hd183424183585%_)
                                               (gx#core-identifier=?
                                                _%hd183424183585%_
                                                '%#begin-syntax))
                                          (_%K183419%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd183412%_))
                                          (_%E183422183578%_))))
                                  (_%E183422183578%_)))))
                      (_%E183421183590%_))))
                 (_%eval-body183291%_
                  (lambda (_%rbody183299%_)
                    (let _%lp183301%_ ((_%rest183303%_ _%rbody183299%_)
                                       (_%body183304%_ '())
                                       (_%ebody183305%_ '()))
                      (let* ((_%rest183306183314%_ _%rest183303%_)
                             (_%else183308183322%_
                              (lambda ()
                                (values _%body183304%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody183305%_)
                                          (gx#stx-source _%stx183288%_))))))
                             (_%K183310183400%_
                              (lambda (_%rest183325%_ _%hd183326%_)
                                (let* ((_%e183327183344%_ _%hd183326%_)
                                       (_%E183339183348%_
                                        (lambda ()
                                          (_%lp183301%_
                                           _%rest183325%_
                                           (cons _%hd183326%_ _%body183304%_)
                                           (cons _%hd183326%_
                                                 _%ebody183305%_))))
                                       (_%E183329183360%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e183327183344%_)
                                              (let ((_%e183340183352%_
                                                     (gx#syntax-e
                                                      _%e183327183344%_)))
                                                (let ((_%hd183341183355%_
                                                       (##car _%e183340183352%_))
                                                      (_%tl183342183357%_
                                                       (##cdr _%e183340183352%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd183341183355%_)
                                                           (gx#core-identifier=?
                                                            _%hd183341183355%_
                                                            '%#begin-syntax))
                                                      (_%lp183301%_
                                                       _%rest183325%_
                                                       (cons _%hd183326%_
                                                             _%body183304%_)
                                                       _%ebody183305%_)
                                                      (_%E183339183348%_))))
                                              (_%E183339183348%_))))
                                       (_%E183328183396%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e183327183344%_)
                                              (let ((_%e183330183364%_
                                                     (gx#syntax-e
                                                      _%e183327183344%_)))
                                                (let ((_%hd183331183367%_
                                                       (##car _%e183330183364%_))
                                                      (_%tl183332183369%_
                                                       (##cdr _%e183330183364%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd183331183367%_)
                                                           (gx#core-identifier=?
                                                            _%hd183331183367%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl183332183369%_)
                                                          (let ((_%e183333183372%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl183332183369%_)))
                    (let ((_%hd183334183375%_ (##car _%e183333183372%_))
                          (_%tl183335183377%_ (##cdr _%e183333183372%_)))
                      (let ((_%hd-bind183380%_ _%hd183334183375%_))
                        (if (gx#stx-pair? _%tl183335183377%_)
                            (let ((_%e183336183382%_
                                   (gx#syntax-e _%tl183335183377%_)))
                              (let ((_%hd183337183385%_
                                     (##car _%e183336183382%_))
                                    (_%tl183338183387%_
                                     (##cdr _%e183336183382%_)))
                                (let* ((_%expr183390%_ _%hd183337183385%_)
                                       (_%ignore-props183392%_
                                        _%tl183338183387%_)
                                       (_%ehd183394%_
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#define-values)
                                               (cons (gx#core-quote-bind-values
                                                      _%hd-bind183380%_)
                                                     (cons (gx#core-expand-expression
                                                            _%expr183390%_)
                                                           '())))
                                         (gx#stx-source _%hd183326%_))))
                                  (_%lp183301%_
                                   _%rest183325%_
                                   (cons _%ehd183394%_ _%body183304%_)
                                   (cons _%ehd183394%_ _%ebody183305%_)))))
                            (_%E183329183360%_)))))
                  (_%E183329183360%_))
              (_%E183329183360%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E183329183360%_)))))
                                  (_%E183328183396%_)))))
                        (if (pair? _%rest183306183314%_)
                            (let ((_%hd183311183403%_
                                   (##car _%rest183306183314%_))
                                  (_%tl183312183405%_
                                   (##cdr _%rest183306183314%_)))
                              (let* ((_%hd183408%_ _%hd183311183403%_)
                                     (_%rest183410%_ _%tl183312183405%_))
                                (_%K183310183400%_
                                 _%rest183410%_
                                 _%hd183408%_)))
                            (_%else183308183322%_)))))))
          (call-with-parameters__1
           (lambda ()
             (let* ((_%rbody183294%_
                     (gx#core-expand-block__1
                      _%stx183288%_
                      _%expand-special183290%_
                      '#f))
                    (_g183627_ (_%eval-body183291%_ _%rbody183294%_)))
               (begin
                 (let ((_g183628_
                        (if (##values? _g183627_)
                            (##values-length _g183627_)
                            1)))
                   (if (not (##fx= _g183628_ 2))
                       (error "Context expects 2 values" _g183628_)))
                 (let ((_%expanded-body183296%_ (##values-ref _g183627_ 0))
                       (_%value183297%_ (##values-ref _g183627_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body183296%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value183297%_ '())))
                    (gx#stx-source _%stx183288%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx183258%_)
        (let* ((_%e183259183266%_ _%stx183258%_)
               (_%E183261183270%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183259183266%_)))
               (_%E183260183284%_
                (lambda ()
                  (if (gx#stx-pair? _%e183259183266%_)
                      (let ((_%e183262183274%_
                             (gx#syntax-e _%e183259183266%_)))
                        (let ((_%hd183263183277%_ (##car _%e183262183274%_))
                              (_%tl183264183279%_ (##cdr _%e183262183274%_)))
                          (let ((_%body183282%_ _%tl183264183279%_))
                            (if (gx#stx-list? _%body183282%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body183282%_)
                                 (gx#stx-source _%stx183258%_))
                                (_%E183261183270%_)))))
                      (_%E183261183270%_)))))
          (_%E183260183284%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx183256%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx183256%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx183202%_)
        (let* ((_%e183203183216%_ _%stx183202%_)
               (_%E183205183220%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183203183216%_)))
               (_%E183204183252%_
                (lambda ()
                  (if (gx#stx-pair? _%e183203183216%_)
                      (let ((_%e183206183224%_
                             (gx#syntax-e _%e183203183216%_)))
                        (let ((_%hd183207183227%_ (##car _%e183206183224%_))
                              (_%tl183208183229%_ (##cdr _%e183206183224%_)))
                          (if (gx#stx-pair? _%tl183208183229%_)
                              (let ((_%e183209183232%_
                                     (gx#syntax-e _%tl183208183229%_)))
                                (let ((_%hd183210183235%_
                                       (##car _%e183209183232%_))
                                      (_%tl183211183237%_
                                       (##cdr _%e183209183232%_)))
                                  (let ((_%ann183240%_ _%hd183210183235%_))
                                    (if (gx#stx-pair? _%tl183211183237%_)
                                        (let ((_%e183212183242%_
                                               (gx#syntax-e
                                                _%tl183211183237%_)))
                                          (let ((_%hd183213183245%_
                                                 (##car _%e183212183242%_))
                                                (_%tl183214183247%_
                                                 (##cdr _%e183212183242%_)))
                                            (let ((_%expr183250%_
                                                   _%hd183213183245%_))
                                              (if (gx#stx-null?
                                                   _%tl183214183247%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann183240%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr183250%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx183202%_))
                                                  (_%E183205183220%_)))))
                                        (_%E183205183220%_)))))
                              (_%E183205183220%_))))
                      (_%E183205183220%_)))))
          (_%E183204183252%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx182867%_ _%body182868%_)
        (letrec ((_%expand-special182870%_
                  (lambda (_%hd183197%_ _%K183198%_ _%rest183199%_ _%r183200%_)
                    (_%K183198%_
                     '()
                     (cons (_%expand-internal182871%_
                            _%hd183197%_
                            _%rest183199%_)
                           _%r183200%_))))
                 (_%expand-internal182871%_
                  (lambda (_%hd183193%_ _%rest183194%_)
                    (call-with-parameters__1
                     (lambda ()
                       (_%wrap-internal182873%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd183193%_ _%rest183194%_))
                          (gx#stx-source _%stx182867%_))
                         _%expand-internal-special182872%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj183611
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj183611)
                       __obj183611))))
                 (_%expand-internal-special182872%_
                  (lambda (_%hd183031%_ _%K183032%_ _%rest183033%_ _%r183034%_)
                    (let* ((_%e183035183073%_ _%hd183031%_)
                           (_%E183068183077%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e183035183073%_)))
                           (_%E183064183089%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183035183073%_)
                                  (let ((_%e183069183081%_
                                         (gx#syntax-e _%e183035183073%_)))
                                    (let ((_%hd183070183084%_
                                           (##car _%e183069183081%_))
                                          (_%tl183071183086%_
                                           (##cdr _%e183069183081%_)))
                                      (if (and (gx#identifier?
                                                _%hd183070183084%_)
                                               (gx#core-identifier=?
                                                _%hd183070183084%_
                                                '%#declare))
                                          (_%K183032%_
                                           _%rest183033%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd183031%_)
                                                 _%r183034%_))
                                          (_%E183068183077%_))))
                                  (_%E183068183077%_))))
                           (_%E183060183101%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183035183073%_)
                                  (let ((_%e183065183093%_
                                         (gx#syntax-e _%e183035183073%_)))
                                    (let ((_%hd183066183096%_
                                           (##car _%e183065183093%_))
                                          (_%tl183067183098%_
                                           (##cdr _%e183065183093%_)))
                                      (if (and (gx#identifier?
                                                _%hd183066183096%_)
                                               (gx#core-identifier=?
                                                _%hd183066183096%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd183031%_)
                                            (_%K183032%_
                                             _%rest183033%_
                                             _%r183034%_))
                                          (_%E183064183089%_))))
                                  (_%E183064183089%_))))
                           (_%E183050183113%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183035183073%_)
                                  (let ((_%e183061183105%_
                                         (gx#syntax-e _%e183035183073%_)))
                                    (let ((_%hd183062183108%_
                                           (##car _%e183061183105%_))
                                          (_%tl183063183110%_
                                           (##cdr _%e183061183105%_)))
                                      (if (and (gx#identifier?
                                                _%hd183062183108%_)
                                               (gx#core-identifier=?
                                                _%hd183062183108%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd183031%_)
                                            (_%K183032%_
                                             _%rest183033%_
                                             _%r183034%_))
                                          (_%E183060183101%_))))
                                  (_%E183060183101%_))))
                           (_%E183037183145%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183035183073%_)
                                  (let ((_%e183051183117%_
                                         (gx#syntax-e _%e183035183073%_)))
                                    (let ((_%hd183052183120%_
                                           (##car _%e183051183117%_))
                                          (_%tl183053183122%_
                                           (##cdr _%e183051183117%_)))
                                      (if (and (gx#identifier?
                                                _%hd183052183120%_)
                                               (gx#core-identifier=?
                                                _%hd183052183120%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl183053183122%_)
                                              (let ((_%e183054183125%_
                                                     (gx#syntax-e
                                                      _%tl183053183122%_)))
                                                (let ((_%hd183055183128%_
                                                       (##car _%e183054183125%_))
                                                      (_%tl183056183130%_
                                                       (##cdr _%e183054183125%_)))
                                                  (let ((_%hd-bind183133%_
                                                         _%hd183055183128%_))
                                                    (if (gx#stx-pair?
                                                         _%tl183056183130%_)
                                                        (let ((_%e183057183135%_
                                                               (gx#syntax-e
                                                                _%tl183056183130%_)))
                                                          (let ((_%hd183058183138%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e183057183135%_))
                        (_%tl183059183140%_ (##cdr _%e183057183135%_)))
                    (let ((_%expr183143%_ _%hd183058183138%_))
                      (if (gx#stx-null? _%tl183059183140%_)
                          (if (gx#core-bind-values? _%hd-bind183133%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind183133%_)
                                (_%K183032%_
                                 _%rest183033%_
                                 (cons _%hd183031%_ _%r183034%_)))
                              (_%E183050183113%_))
                          (_%E183050183113%_)))))
                (_%E183050183113%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E183050183113%_))
                                          (_%E183050183113%_))))
                                  (_%E183050183113%_))))
                           (_%E183036183189%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183035183073%_)
                                  (let ((_%e183038183149%_
                                         (gx#syntax-e _%e183035183073%_)))
                                    (let ((_%hd183039183152%_
                                           (##car _%e183038183149%_))
                                          (_%tl183040183154%_
                                           (##cdr _%e183038183149%_)))
                                      (if (and (gx#identifier?
                                                _%hd183039183152%_)
                                               (gx#core-identifier=?
                                                _%hd183039183152%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl183040183154%_)
                                              (let ((_%e183041183157%_
                                                     (gx#syntax-e
                                                      _%tl183040183154%_)))
                                                (let ((_%hd183042183160%_
                                                       (##car _%e183041183157%_))
                                                      (_%tl183043183162%_
                                                       (##cdr _%e183041183157%_)))
                                                  (if (gx#stx-pair?
                                                       _%hd183042183160%_)
                                                      (let ((_%e183047183165%_
                                                             (gx#syntax-e
                                                              _%hd183042183160%_)))
                                                        (let ((_%hd183048183168%_
                                                               (##car _%e183047183165%_))
                                                              (_%tl183049183170%_
                                                               (##cdr _%e183047183165%_)))
                                                          (let ((_%id183173%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd183048183168%_))
                    (if (gx#stx-null? _%tl183049183170%_)
                        (if (gx#stx-pair? _%tl183043183162%_)
                            (let ((_%e183044183175%_
                                   (gx#syntax-e _%tl183043183162%_)))
                              (let ((_%hd183045183178%_
                                     (##car _%e183044183175%_))
                                    (_%tl183046183180%_
                                     (##cdr _%e183044183175%_)))
                                (let* ((_%expr183183%_ _%hd183045183178%_)
                                       (_%props183185%_ _%tl183046183180%_))
                                  (if (gx#identifier? _%id183173%_)
                                      (let ((_%bind183187%_
                                             (gx#core-bind-runtime!__0
                                              _%id183173%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind183187%_
                                         _%props183185%_)
                                        (_%K183032%_
                                         _%rest183033%_
                                         (cons _%hd183031%_ _%r183034%_)))
                                      (_%E183037183145%_)))))
                            (_%E183037183145%_))
                        (_%E183037183145%_)))))
              (_%E183037183145%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E183037183145%_))
                                          (_%E183037183145%_))))
                                  (_%E183037183145%_)))))
                      (_%E183036183189%_))))
                 (_%wrap-internal182873%_
                  (lambda (_%rbody182875%_)
                    (let _%lp182877%_ ((_%rest182879%_ _%rbody182875%_)
                                       (_%decls182880%_ '())
                                       (_%bind182881%_ '())
                                       (_%body182882%_ '()))
                      (let* ((_%e182883182890%_ _%rest182879%_)
                             (_%E182885182939%_
                              (lambda ()
                                (let* ((_%body182934%_
                                        (let* ((_%body182893182903%_
                                                _%body182882%_)
                                               (_%else182896182911%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body182882%_)
                                                   (gx#stx-source
                                                    _%stx182867%_)))))
                                          (let ((_%K182901182931%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx182867%_)))
                                                (_%K182898182917%_
                                                 (lambda (_%expr182915%_)
                                                   _%expr182915%_)))
                                            (let ((_%try-match182895182927%_
                                                   (lambda ()
                                                     (if (pair? _%body182893182903%_)
                                                         (let ((_%tl182900182922%_
                                                                (##cdr _%body182893182903%_))
                                                               (_%hd182899182920%_
                                                                (##car _%body182893182903%_)))
                                                           (if (null? _%tl182900182922%_)
                                                               (let ((_%expr182925%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd182899182920%_))
                         (_%K182898182917%_ _%expr182925%_))
                       (_%else182896182911%_)))
                 (_%else182896182911%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%body182893182903%_)
                                                  (_%K182901182931%_)
                                                  (_%try-match182895182927%_))))))
                                       (_%body182936%_
                                        (if (null? _%bind182881%_)
                                            _%body182934%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind182881%_
                                                         (cons _%body182934%_
                                                               '())))
                                             (gx#stx-source _%stx182867%_)))))
                                  (if (null? _%decls182880%_)
                                      _%body182936%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls182880%_
                                                   (cons _%body182936%_ '())))
                                       (gx#stx-source _%stx182867%_))))))
                             (_%E182884183027%_
                              (lambda ()
                                (if (gx#stx-pair? _%e182883182890%_)
                                    (let ((_%e182886182943%_
                                           (gx#syntax-e _%e182883182890%_)))
                                      (let ((_%hd182887182946%_
                                             (##car _%e182886182943%_))
                                            (_%tl182888182948%_
                                             (##cdr _%e182886182943%_)))
                                        (let* ((_%hd182951%_
                                                _%hd182887182946%_)
                                               (_%rest182953%_
                                                _%tl182888182948%_)
                                               (_%e182954182971%_ _%hd182951%_)
                                               (_%E182966182975%_
                                                (lambda ()
                                                  (if (null? _%bind182881%_)
                                                      (_%lp182877%_
                                                       _%rest182953%_
                                                       _%decls182880%_
                                                       _%bind182881%_
                                                       (cons _%hd182951%_
                                                             _%body182882%_))
                                                      (_%lp182877%_
                                                       _%rest182953%_
                                                       _%decls182880%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd182951%_ '()))
                     _%bind182881%_)
               _%body182882%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E182956182989%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e182954182971%_)
                                                      (let ((_%e182967182979%_
                                                             (gx#syntax-e
                                                              _%e182954182971%_)))
                                                        (let ((_%hd182968182982%_
                                                               (##car _%e182967182979%_))
                                                              (_%tl182969182984%_
                                                               (##cdr _%e182967182979%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd182968182982%_)
                           (gx#core-identifier=?
                            _%hd182968182982%_
                            '%#declare))
                      (let ((_%xdecls182987%_ _%tl182969182984%_))
                        (_%lp182877%_
                         _%rest182953%_
                         (gx#stx-foldr cons _%decls182880%_ _%xdecls182987%_)
                         _%bind182881%_
                         _%body182882%_))
                      (_%E182966182975%_))))
              (_%E182966182975%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E182955183023%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e182954182971%_)
                                                      (let ((_%e182957182993%_
                                                             (gx#syntax-e
                                                              _%e182954182971%_)))
                                                        (let ((_%hd182958182996%_
                                                               (##car _%e182957182993%_))
                                                              (_%tl182959182998%_
                                                               (##cdr _%e182957182993%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd182958182996%_)
                           (gx#core-identifier=?
                            _%hd182958182996%_
                            '%#define-values))
                      (if (gx#stx-pair? _%tl182959182998%_)
                          (let ((_%e182960183001%_
                                 (gx#syntax-e _%tl182959182998%_)))
                            (let ((_%hd182961183004%_
                                   (##car _%e182960183001%_))
                                  (_%tl182962183006%_
                                   (##cdr _%e182960183001%_)))
                              (let ((_%hd-bind183009%_ _%hd182961183004%_))
                                (if (gx#stx-pair? _%tl182962183006%_)
                                    (let ((_%e182963183011%_
                                           (gx#syntax-e _%tl182962183006%_)))
                                      (let ((_%hd182964183014%_
                                             (##car _%e182963183011%_))
                                            (_%tl182965183016%_
                                             (##cdr _%e182963183011%_)))
                                        (let* ((_%expr183019%_
                                                _%hd182964183014%_)
                                               (_%ignore-props183021%_
                                                _%tl182965183016%_))
                                          (_%lp182877%_
                                           _%rest182953%_
                                           _%decls182880%_
                                           (cons (cons (gx#core-quote-bind-values
                                                        _%hd-bind183009%_)
                                                       (cons (gx#core-expand-expression
                                                              _%expr183019%_)
                                                             '()))
                                                 _%bind182881%_)
                                           _%body182882%_))))
                                    (_%E182956182989%_)))))
                          (_%E182956182989%_))
                      (_%E182956182989%_))))
              (_%E182956182989%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%E182955183023%_))))
                                    (_%E182885182939%_)))))
                        (_%E182884183027%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body182868%_)
            (gx#stx-source _%stx182867%_))
           _%expand-special182870%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx182805%_)
        (let* ((_%e182806182813%_ _%stx182805%_)
               (_%E182808182817%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182806182813%_)))
               (_%E182807182863%_
                (lambda ()
                  (if (gx#stx-pair? _%e182806182813%_)
                      (let ((_%e182809182821%_
                             (gx#syntax-e _%e182806182813%_)))
                        (let ((_%hd182810182824%_ (##car _%e182809182821%_))
                              (_%tl182811182826%_ (##cdr _%e182809182821%_)))
                          (let ((_%body182829%_ _%tl182811182826%_))
                            (if (gx#stx-list? _%body182829%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl182831%_)
                                     (let* ((_%e182832182839%_ _%decl182831%_)
                                            (_%E182834182843%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e182832182839%_)))
                                            (_%E182833182859%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e182832182839%_)
                                                   (let ((_%e182835182847%_
                                                          (gx#syntax-e
                                                           _%e182832182839%_)))
                                                     (let ((_%hd182836182850%_
                                                            (##car _%e182835182847%_))
                                                           (_%tl182837182852%_
                                                            (##cdr _%e182835182847%_)))
                                                       (let* ((_%head182855%_
                                                               _%hd182836182850%_)
                                                              (_%args182857%_
                                                               _%tl182837182852%_))
                                                         (if (gx#stx-list?
                                                              _%args182857%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl182831%_)
                                                             (_%E182834182843%_)))))
                                                   (_%E182834182843%_)))))
                                       (_%E182833182859%_)))
                                   _%body182829%_))
                                 (gx#stx-source _%stx182805%_))
                                (_%E182808182817%_)))))
                      (_%E182808182817%_)))))
          (_%E182807182863%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx182709%_)
        (let* ((_%e182710182717%_ _%stx182709%_)
               (_%E182712182721%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182710182717%_)))
               (_%E182711182801%_
                (lambda ()
                  (if (gx#stx-pair? _%e182710182717%_)
                      (let ((_%e182713182725%_
                             (gx#syntax-e _%e182710182717%_)))
                        (let ((_%hd182714182728%_ (##car _%e182713182725%_))
                              (_%tl182715182730%_ (##cdr _%e182713182725%_)))
                          (let ((_%body182733%_ _%tl182715182730%_))
                            (let _%lp182735%_ ((_%rest182737%_ _%body182733%_)
                                               (_%r182738%_ '()))
                              (let* ((_%e182739182753%_ _%rest182737%_)
                                     (_%E182751182757%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx182709%_)))
                                     (_%E182741182761%_
                                      (lambda ()
                                        (if (gx#stx-null? _%e182739182753%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r182738%_))
                                             (gx#stx-source _%stx182709%_))
                                            (_%E182751182757%_))))
                                     (_%E182740182797%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e182739182753%_)
                                            (let ((_%e182742182765%_
                                                   (gx#syntax-e
                                                    _%e182739182753%_)))
                                              (let ((_%hd182743182768%_
                                                     (##car _%e182742182765%_))
                                                    (_%tl182744182770%_
                                                     (##cdr _%e182742182765%_)))
                                                (if (gx#stx-pair?
                                                     _%hd182743182768%_)
                                                    (let ((_%e182745182773%_
                                                           (gx#syntax-e
                                                            _%hd182743182768%_)))
                                                      (let ((_%hd182746182776%_
                                                             (##car _%e182745182773%_))
                                                            (_%tl182747182778%_
                                                             (##cdr _%e182745182773%_)))
                                                        (let ((_%id182781%_
                                                               _%hd182746182776%_))
                                                          (if (gx#stx-pair?
                                                               _%tl182747182778%_)
                                                              (let ((_%e182748182783%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl182747182778%_)))
                        (let ((_%hd182749182786%_ (##car _%e182748182783%_))
                              (_%tl182750182788%_ (##cdr _%e182748182783%_)))
                          (let ((_%eid182791%_ _%hd182749182786%_))
                            (if (gx#stx-null? _%tl182750182788%_)
                                (let ((_%rest182793%_ _%tl182744182770%_))
                                  (if (and (gx#identifier? _%id182781%_)
                                           (gx#identifier? _%eid182791%_))
                                      (let ((_%eid182795%_
                                             (gx#stx-e _%eid182791%_)))
                                        (gx#core-bind-extern!__0
                                         _%id182781%_
                                         _%eid182795%_)
                                        (_%lp182735%_
                                         _%rest182793%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id182781%_)
                                                     (cons _%eid182795%_ '()))
                                               _%r182738%_)))
                                      (_%E182741182761%_)))
                                (_%E182741182761%_)))))
                      (_%E182741182761%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E182741182761%_))))
                                            (_%E182741182761%_)))))
                                (_%E182740182797%_))))))
                      (_%E182712182721%_)))))
          (_%E182711182801%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx182598%_)
        (let* ((_%e182599182625%_ _%stx182598%_)
               (_%E182614182629%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182599182625%_)))
               (_%E182601182661%_
                (lambda ()
                  (if (gx#stx-pair? _%e182599182625%_)
                      (let ((_%e182615182633%_
                             (gx#syntax-e _%e182599182625%_)))
                        (let ((_%hd182616182636%_ (##car _%e182615182633%_))
                              (_%tl182617182638%_ (##cdr _%e182615182633%_)))
                          (if (gx#stx-pair? _%tl182617182638%_)
                              (let ((_%e182618182641%_
                                     (gx#syntax-e _%tl182617182638%_)))
                                (let ((_%hd182619182644%_
                                       (##car _%e182618182641%_))
                                      (_%tl182620182646%_
                                       (##cdr _%e182618182641%_)))
                                  (let ((_%hd182649%_ _%hd182619182644%_))
                                    (if (gx#stx-pair? _%tl182620182646%_)
                                        (let ((_%e182621182651%_
                                               (gx#syntax-e
                                                _%tl182620182646%_)))
                                          (let ((_%hd182622182654%_
                                                 (##car _%e182621182651%_))
                                                (_%tl182623182656%_
                                                 (##cdr _%e182621182651%_)))
                                            (let ((_%expr182659%_
                                                   _%hd182622182654%_))
                                              (if (gx#stx-null?
                                                   _%tl182623182656%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd182649%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd182649%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd182649%_)
                             (cons (gx#core-expand-expression _%expr182659%_)
                                   '())))
                 (gx#stx-source _%stx182598%_)))
              (_%E182614182629%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E182614182629%_)))))
                                        (_%E182614182629%_)))))
                              (_%E182614182629%_))))
                      (_%E182614182629%_))))
               (_%E182600182705%_
                (lambda ()
                  (if (gx#stx-pair? _%e182599182625%_)
                      (let ((_%e182602182665%_
                             (gx#syntax-e _%e182599182625%_)))
                        (let ((_%hd182603182668%_ (##car _%e182602182665%_))
                              (_%tl182604182670%_ (##cdr _%e182602182665%_)))
                          (if (gx#stx-pair? _%tl182604182670%_)
                              (let ((_%e182605182673%_
                                     (gx#syntax-e _%tl182604182670%_)))
                                (let ((_%hd182606182676%_
                                       (##car _%e182605182673%_))
                                      (_%tl182607182678%_
                                       (##cdr _%e182605182673%_)))
                                  (if (gx#stx-pair? _%hd182606182676%_)
                                      (let ((_%e182611182681%_
                                             (gx#syntax-e _%hd182606182676%_)))
                                        (let ((_%hd182612182684%_
                                               (##car _%e182611182681%_))
                                              (_%tl182613182686%_
                                               (##cdr _%e182611182681%_)))
                                          (let ((_%id182689%_
                                                 _%hd182612182684%_))
                                            (if (gx#stx-null?
                                                 _%tl182613182686%_)
                                                (if (gx#stx-pair?
                                                     _%tl182607182678%_)
                                                    (let ((_%e182608182691%_
                                                           (gx#syntax-e
                                                            _%tl182607182678%_)))
                                                      (let ((_%hd182609182694%_
                                                             (##car _%e182608182691%_))
                                                            (_%tl182610182696%_
                                                             (##cdr _%e182608182691%_)))
                                                        (let* ((_%expr182699%_
                                                                _%hd182609182694%_)
                                                               (_%props182701%_
                                                                _%tl182610182696%_))
                                                          (if (gx#identifier?
                                                               _%id182689%_)
                                                              (let ((_%bind182703%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#core-bind-runtime!__0 _%id182689%_)))
                        (gx#core-bind-runtime-properties!
                         _%bind182703%_
                         _%props182701%_)
                        (gx#core-quote-syntax__1
                         (cons (gx#core-quote-syntax__0 '%#define-values)
                               (cons (gx#core-quote-bind-values
                                      (cons _%id182689%_ '()))
                                     (cons (gx#core-expand-expression
                                            _%expr182699%_)
                                           '())))
                         (gx#stx-source _%stx182598%_)))
                      (_%E182601182661%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E182601182661%_))
                                                (_%E182601182661%_)))))
                                      (_%E182601182661%_))))
                              (_%E182601182661%_))))
                      (_%E182601182661%_)))))
          (_%E182600182705%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx182537%_)
        (let* ((_%e182538182551%_ _%stx182537%_)
               (_%E182540182555%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182538182551%_)))
               (_%E182539182594%_
                (lambda ()
                  (if (gx#stx-pair? _%e182538182551%_)
                      (let ((_%e182541182559%_
                             (gx#syntax-e _%e182538182551%_)))
                        (let ((_%hd182542182562%_ (##car _%e182541182559%_))
                              (_%tl182543182564%_ (##cdr _%e182541182559%_)))
                          (if (gx#stx-pair? _%tl182543182564%_)
                              (let ((_%e182544182567%_
                                     (gx#syntax-e _%tl182543182564%_)))
                                (let ((_%hd182545182570%_
                                       (##car _%e182544182567%_))
                                      (_%tl182546182572%_
                                       (##cdr _%e182544182567%_)))
                                  (let ((_%id182575%_ _%hd182545182570%_))
                                    (if (gx#stx-pair? _%tl182546182572%_)
                                        (let ((_%e182547182577%_
                                               (gx#syntax-e
                                                _%tl182546182572%_)))
                                          (let ((_%hd182548182580%_
                                                 (##car _%e182547182577%_))
                                                (_%tl182549182582%_
                                                 (##cdr _%e182547182577%_)))
                                            (let* ((_%binding-id182585%_
                                                    _%hd182548182580%_)
                                                   (_%props182587%_
                                                    _%tl182549182582%_))
                                              (if (and (gx#identifier?
                                                        _%id182575%_)
                                                       (gx#identifier?
                                                        _%binding-id182585%_)
                                                       (gx#stx-list?
                                                        _%props182587%_))
                                                  (let* ((_%eid182589%_
                                                          (gx#stx-e
                                                           _%binding-id182585%_))
                                                         (_%bind182591%_
                                                          (gx#core-bind-runtime-reference!__0
                                                           _%id182575%_
                                                           _%eid182589%_)))
                                                    (gx#core-bind-runtime-properties!
                                                     _%bind182591%_
                                                     _%props182587%_)
                                                    (gx#core-quote-syntax__0
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#define-runtime)
                                                           (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id182575%_)
                         (cons _%eid182589%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E182540182555%_)))))
                                        (_%E182540182555%_)))))
                              (_%E182540182555%_))))
                      (_%E182540182555%_)))))
          (_%E182539182594%_))))
    (define gx#core-bind-runtime-properties!
      (lambda (_%bind182472%_ _%props182473%_)
        (letrec ((_%eval-prop182475%_
                  (lambda (_%prop182535%_)
                    (gx#eval-expression+1 _%prop182535%_))))
          (let _%loop182477%_ ((_%rest182479%_ _%props182473%_)
                               (_%props182480%_ '()))
            (let* ((_%e182481182492%_ _%rest182479%_)
                   (_%E182490182496%_
                    (lambda ()
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e182481182492%_)))
                   (_%E182483182500%_
                    (lambda ()
                      (if (gx#stx-null? _%e182481182492%_)
                          (if (null? _%props182480%_)
                              '#!void
                              (##structure-set!
                               _%bind182472%_
                               (reverse! _%props182480%_)
                               '4
                               gx#binding::t
                               '#f))
                          (_%E182490182496%_))))
                   (_%E182482182531%_
                    (lambda ()
                      (if (gx#stx-pair? _%e182481182492%_)
                          (let ((_%e182484182504%_
                                 (gx#syntax-e _%e182481182492%_)))
                            (let ((_%hd182485182507%_
                                   (##car _%e182484182504%_))
                                  (_%tl182486182509%_
                                   (##cdr _%e182484182504%_)))
                              (let ((_%key182512%_ _%hd182485182507%_))
                                (if (gx#stx-pair? _%tl182486182509%_)
                                    (let ((_%e182487182514%_
                                           (gx#syntax-e _%tl182486182509%_)))
                                      (let ((_%hd182488182517%_
                                             (##car _%e182487182514%_))
                                            (_%tl182489182519%_
                                             (##cdr _%e182487182514%_)))
                                        (let* ((_%prop182522%_
                                                _%hd182488182517%_)
                                               (_%rest182524%_
                                                _%tl182489182519%_))
                                          (if (gx#stx-keyword? _%key182512%_)
                                              (let* ((_%key182526%_
                                                      (gx#stx-e _%key182512%_))
                                                     (_%$e182528%_
                                                      _%key182526%_))
                                                (if (eq? 'macro: _%$e182528%_)
                                                    (begin
                                                      (##structure-set!
                                                       _%bind182472%_
                                                       (if (gx#identifier?
                                                            _%prop182522%_)
                                                           (gx#core-quote-syntax__0
                                                            _%prop182522%_)
                                                           (gx#eval-expression+1
                                                            _%prop182522%_))
                                                       '6
                                                       gx#runtime-binding::t
                                                       '#f)
                                                      (_%loop182477%_
                                                       _%rest182524%_
                                                       _%props182480%_))
                                                    (if (eq? 'type:
                                                             _%$e182528%_)
                                                        (begin
                                                          (##structure-set!
                                                           _%bind182472%_
                                                           (gx#eval-expression+1
                                                            _%prop182522%_)
                                                           '5
                                                           gx#runtime-binding::t
                                                           '#f)
                                                          (_%loop182477%_
                                                           _%rest182524%_
                                                           _%props182480%_))
                                                        (_%loop182477%_
                                                         _%rest182524%_
                                                         (cons (gx#eval-expression+1
                                                                _%prop182522%_)
                                                               (cons _%key182526%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%props182480%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E182483182500%_)))))
                                    (_%E182483182500%_)))))
                          (_%E182483182500%_)))))
              (_%E182482182531%_))))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx182415%_)
        (let* ((_%e182416182429%_ _%stx182415%_)
               (_%E182418182433%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182416182429%_)))
               (_%E182417182468%_
                (lambda ()
                  (if (gx#stx-pair? _%e182416182429%_)
                      (let ((_%e182419182437%_
                             (gx#syntax-e _%e182416182429%_)))
                        (let ((_%hd182420182440%_ (##car _%e182419182437%_))
                              (_%tl182421182442%_ (##cdr _%e182419182437%_)))
                          (if (gx#stx-pair? _%tl182421182442%_)
                              (let ((_%e182422182445%_
                                     (gx#syntax-e _%tl182421182442%_)))
                                (let ((_%hd182423182448%_
                                       (##car _%e182422182445%_))
                                      (_%tl182424182450%_
                                       (##cdr _%e182422182445%_)))
                                  (let ((_%id182453%_ _%hd182423182448%_))
                                    (if (gx#stx-pair? _%tl182424182450%_)
                                        (let ((_%e182425182455%_
                                               (gx#syntax-e
                                                _%tl182424182450%_)))
                                          (let ((_%hd182426182458%_
                                                 (##car _%e182425182455%_))
                                                (_%tl182427182460%_
                                                 (##cdr _%e182425182455%_)))
                                            (let ((_%expr182463%_
                                                   _%hd182426182458%_))
                                              (if (gx#stx-null?
                                                   _%tl182427182460%_)
                                                  (if (gx#identifier?
                                                       _%id182453%_)
                                                      (let ((_g183629_
                                                             (gx#core-expand-expression+1
                                                              _%expr182463%_)))
                                                        (begin
                                                          (let ((_g183630_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g183629_)
                             (##values-length _g183629_)
                             1)))
                    (if (not (##fx= _g183630_ 2))
                        (error "Context expects 2 values" _g183630_)))
                  (let ((_%e-stx182465%_ (##values-ref _g183629_ 0))
                        (_%e182466%_ (##values-ref _g183629_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id182453%_ _%e182466%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id182453%_)
                                   (cons _%e-stx182465%_ '())))
                       (gx#stx-source _%stx182415%_))))))
              (_%E182418182433%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E182418182433%_)))))
                                        (_%E182418182433%_)))))
                              (_%E182418182433%_))))
                      (_%E182418182433%_)))))
          (_%E182417182468%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx182359%_)
        (let* ((_%e182360182373%_ _%stx182359%_)
               (_%E182362182377%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182360182373%_)))
               (_%E182361182411%_
                (lambda ()
                  (if (gx#stx-pair? _%e182360182373%_)
                      (let ((_%e182363182381%_
                             (gx#syntax-e _%e182360182373%_)))
                        (let ((_%hd182364182384%_ (##car _%e182363182381%_))
                              (_%tl182365182386%_ (##cdr _%e182363182381%_)))
                          (if (gx#stx-pair? _%tl182365182386%_)
                              (let ((_%e182366182389%_
                                     (gx#syntax-e _%tl182365182386%_)))
                                (let ((_%hd182367182392%_
                                       (##car _%e182366182389%_))
                                      (_%tl182368182394%_
                                       (##cdr _%e182366182389%_)))
                                  (let ((_%id182397%_ _%hd182367182392%_))
                                    (if (gx#stx-pair? _%tl182368182394%_)
                                        (let ((_%e182369182399%_
                                               (gx#syntax-e
                                                _%tl182368182394%_)))
                                          (let ((_%hd182370182402%_
                                                 (##car _%e182369182399%_))
                                                (_%tl182371182404%_
                                                 (##cdr _%e182369182399%_)))
                                            (let ((_%alias-id182407%_
                                                   _%hd182370182402%_))
                                              (if (gx#stx-null?
                                                   _%tl182371182404%_)
                                                  (if (and (gx#identifier?
                                                            _%id182397%_)
                                                           (gx#identifier?
                                                            _%alias-id182407%_))
                                                      (let ((_%alias-id182409%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id182407%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id182397%_
                                                         _%alias-id182409%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id182397%_)
                             (cons _%alias-id182409%_ '())))))
              (_%E182362182377%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E182362182377%_)))))
                                        (_%E182362182377%_)))))
                              (_%E182362182377%_))))
                      (_%E182362182377%_)))))
          (_%E182361182411%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx182302%_ _%wrap?182303%_)
        (let* ((_%e182304182314%_ _%stx182302%_)
               (_%E182306182318%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182304182314%_)))
               (_%E182305182345%_
                (lambda ()
                  (if (gx#stx-pair? _%e182304182314%_)
                      (let ((_%e182307182322%_
                             (gx#syntax-e _%e182304182314%_)))
                        (let ((_%hd182308182325%_ (##car _%e182307182322%_))
                              (_%tl182309182327%_ (##cdr _%e182307182322%_)))
                          (if (gx#stx-pair? _%tl182309182327%_)
                              (let ((_%e182310182330%_
                                     (gx#syntax-e _%tl182309182327%_)))
                                (let ((_%hd182311182333%_
                                       (##car _%e182310182330%_))
                                      (_%tl182312182335%_
                                       (##cdr _%e182310182330%_)))
                                  (let* ((_%hd182338%_ _%hd182311182333%_)
                                         (_%body182340%_ _%tl182312182335%_))
                                    (if (gx#core-bind-values? _%hd182338%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd182338%_)
                                           (let ((_%body182343%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd182338%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx182302%_
                                                               _%body182340%_)
                                                              '()))))
                                             (if _%wrap?182303%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body182343%_)
                                                  (gx#stx-source
                                                   _%stx182302%_))
                                                 _%body182343%_)))
                                         gx#current-expander-context
                                         (let ((__obj183612
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj183612)
                                           __obj183612))
                                        (_%E182306182318%_)))))
                              (_%E182306182318%_))))
                      (_%E182306182318%_)))))
          (_%E182305182345%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx182352%_)
        (let ((_%wrap?182354%_ '#t))
          (gx#core-expand-lambda%__% _%stx182352%_ _%wrap?182354%_))))
    (define gx#core-expand-lambda%
      (lambda _g183631_
        (let ((_g183632_ (##length _g183631_)))
          (cond ((##fx= _g183632_ 1)
                 (apply gx#core-expand-lambda%__0 _g183631_))
                ((##fx= _g183632_ 2)
                 (apply gx#core-expand-lambda%__% _g183631_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g183631_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx182266%_)
        (let* ((_%e182267182274%_ _%stx182266%_)
               (_%E182269182278%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182267182274%_)))
               (_%E182268182297%_
                (lambda ()
                  (if (gx#stx-pair? _%e182267182274%_)
                      (let ((_%e182270182282%_
                             (gx#syntax-e _%e182267182274%_)))
                        (let ((_%hd182271182285%_ (##car _%e182270182282%_))
                              (_%tl182272182287%_ (##cdr _%e182270182282%_)))
                          (let ((_%clauses182290%_ _%tl182272182287%_))
                            (if (gx#stx-list? _%clauses182290%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause182292%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause182292%_)
                                       (let ((_%$e182294%_
                                              (gx#stx-source
                                               _%clause182292%_)))
                                         (if _%$e182294%_
                                             _%$e182294%_
                                             (gx#stx-source _%stx182266%_))))
                                      '#f))
                                   _%clauses182290%_))
                                 (gx#stx-source _%stx182266%_))
                                (_%E182269182278%_)))))
                      (_%E182269182278%_)))))
          (_%E182268182297%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx182220%_)
        (let* ((_%e182221182231%_ _%stx182220%_)
               (_%E182223182235%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182221182231%_)))
               (_%E182222182262%_
                (lambda ()
                  (if (gx#stx-pair? _%e182221182231%_)
                      (let ((_%e182224182239%_
                             (gx#syntax-e _%e182221182231%_)))
                        (let ((_%hd182225182242%_ (##car _%e182224182239%_))
                              (_%tl182226182244%_ (##cdr _%e182224182239%_)))
                          (if (gx#stx-pair? _%tl182226182244%_)
                              (let ((_%e182227182247%_
                                     (gx#syntax-e _%tl182226182244%_)))
                                (let ((_%hd182228182250%_
                                       (##car _%e182227182247%_))
                                      (_%tl182229182252%_
                                       (##cdr _%e182227182247%_)))
                                  (let* ((_%hd182255%_ _%hd182228182250%_)
                                         (_%body182257%_ _%tl182229182252%_))
                                    (if (gx#core-expand-let-bind? _%hd182255%_)
                                        (let ((_%expressions182259%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd182255%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd182255%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd182255%_
                                                           _%expressions182259%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx182220%_
                         _%body182257%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx182220%_)))
                                           gx#current-expander-context
                                           (let ((__obj183613
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj183613)
                                             __obj183613)))
                                        (_%E182223182235%_)))))
                              (_%E182223182235%_))))
                      (_%E182223182235%_)))))
          (_%E182222182262%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx182165%_ _%form182166%_)
        (let* ((_%e182167182177%_ _%stx182165%_)
               (_%E182169182181%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182167182177%_)))
               (_%E182168182206%_
                (lambda ()
                  (if (gx#stx-pair? _%e182167182177%_)
                      (let ((_%e182170182185%_
                             (gx#syntax-e _%e182167182177%_)))
                        (let ((_%hd182171182188%_ (##car _%e182170182185%_))
                              (_%tl182172182190%_ (##cdr _%e182170182185%_)))
                          (if (gx#stx-pair? _%tl182172182190%_)
                              (let ((_%e182173182193%_
                                     (gx#syntax-e _%tl182172182190%_)))
                                (let ((_%hd182174182196%_
                                       (##car _%e182173182193%_))
                                      (_%tl182175182198%_
                                       (##cdr _%e182173182193%_)))
                                  (let* ((_%hd182201%_ _%hd182174182196%_)
                                         (_%body182203%_ _%tl182175182198%_))
                                    (if (gx#core-expand-let-bind? _%hd182201%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd182201%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form182166%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd182201%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd182201%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx182165%_
                                                               _%body182203%_)
                                                              '())))
                                            (gx#stx-source _%stx182165%_)))
                                         gx#current-expander-context
                                         (let ((__obj183614
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj183614)
                                           __obj183614))
                                        (_%E182169182181%_)))))
                              (_%E182169182181%_))))
                      (_%E182169182181%_)))))
          (_%E182168182206%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx182213%_)
        (let ((_%form182215%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx182213%_ _%form182215%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g183633_
        (let ((_g183634_ (##length _g183633_)))
          (cond ((##fx= _g183634_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g183633_))
                ((##fx= _g183634_ 2)
                 (apply gx#core-expand-letrec-values%__% _g183633_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g183633_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx182162%_)
        (gx#core-expand-letrec-values%__% _%stx182162%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx182119%_)
        (if (gx#stx-list? _%stx182119%_)
            (gx#stx-andmap
             (lambda (_%bind182121%_)
               (let* ((_%e182122182132%_ _%bind182121%_)
                      (_%E182124182136%_ (lambda () '#f))
                      (_%E182123182158%_
                       (lambda ()
                         (if (gx#stx-pair? _%e182122182132%_)
                             (let ((_%e182125182140%_
                                    (gx#syntax-e _%e182122182132%_)))
                               (let ((_%hd182126182143%_
                                      (##car _%e182125182140%_))
                                     (_%tl182127182145%_
                                      (##cdr _%e182125182140%_)))
                                 (let ((_%hd182148%_ _%hd182126182143%_))
                                   (if (gx#stx-pair? _%tl182127182145%_)
                                       (let ((_%e182128182150%_
                                              (gx#syntax-e
                                               _%tl182127182145%_)))
                                         (let ((_%hd182129182153%_
                                                (##car _%e182128182150%_))
                                               (_%tl182130182155%_
                                                (##cdr _%e182128182150%_)))
                                           (if (gx#stx-null?
                                                _%tl182130182155%_)
                                               (gx#core-bind-values?
                                                _%hd182148%_)
                                               (_%E182124182136%_))))
                                       (_%E182124182136%_)))))
                             (_%E182124182136%_)))))
                 (_%E182123182158%_)))
             _%stx182119%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind182078%_)
        (let* ((_%e182079182089%_ _%bind182078%_)
               (_%E182081182093%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182079182089%_)))
               (_%E182080182115%_
                (lambda ()
                  (if (gx#stx-pair? _%e182079182089%_)
                      (let ((_%e182082182097%_
                             (gx#syntax-e _%e182079182089%_)))
                        (let ((_%hd182083182100%_ (##car _%e182082182097%_))
                              (_%tl182084182102%_ (##cdr _%e182082182097%_)))
                          (if (gx#stx-pair? _%tl182084182102%_)
                              (let ((_%e182085182105%_
                                     (gx#syntax-e _%tl182084182102%_)))
                                (let ((_%hd182086182108%_
                                       (##car _%e182085182105%_))
                                      (_%tl182087182110%_
                                       (##cdr _%e182085182105%_)))
                                  (let ((_%expr182113%_ _%hd182086182108%_))
                                    (if (gx#stx-null? _%tl182087182110%_)
                                        (gx#core-expand-expression
                                         _%expr182113%_)
                                        (_%E182081182093%_)))))
                              (_%E182081182093%_))))
                      (_%E182081182093%_)))))
          (_%E182080182115%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind182037%_)
        (let* ((_%e182038182048%_ _%bind182037%_)
               (_%E182040182052%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182038182048%_)))
               (_%E182039182074%_
                (lambda ()
                  (if (gx#stx-pair? _%e182038182048%_)
                      (let ((_%e182041182056%_
                             (gx#syntax-e _%e182038182048%_)))
                        (let ((_%hd182042182059%_ (##car _%e182041182056%_))
                              (_%tl182043182061%_ (##cdr _%e182041182056%_)))
                          (let ((_%hd182064%_ _%hd182042182059%_))
                            (if (gx#stx-pair? _%tl182043182061%_)
                                (let ((_%e182044182066%_
                                       (gx#syntax-e _%tl182043182061%_)))
                                  (let ((_%hd182045182069%_
                                         (##car _%e182044182066%_))
                                        (_%tl182046182071%_
                                         (##cdr _%e182044182066%_)))
                                    (if (gx#stx-null? _%tl182046182071%_)
                                        (gx#core-bind-values!__0 _%hd182064%_)
                                        (_%E182040182052%_))))
                                (_%E182040182052%_)))))
                      (_%E182040182052%_)))))
          (_%E182039182074%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind181995%_ _%expr181996%_)
        (let* ((_%e181997182007%_ _%bind181995%_)
               (_%E181999182011%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181997182007%_)))
               (_%E181998182033%_
                (lambda ()
                  (if (gx#stx-pair? _%e181997182007%_)
                      (let ((_%e182000182015%_
                             (gx#syntax-e _%e181997182007%_)))
                        (let ((_%hd182001182018%_ (##car _%e182000182015%_))
                              (_%tl182002182020%_ (##cdr _%e182000182015%_)))
                          (let ((_%hd182023%_ _%hd182001182018%_))
                            (if (gx#stx-pair? _%tl182002182020%_)
                                (let ((_%e182003182025%_
                                       (gx#syntax-e _%tl182002182020%_)))
                                  (let ((_%hd182004182028%_
                                         (##car _%e182003182025%_))
                                        (_%tl182005182030%_
                                         (##cdr _%e182003182025%_)))
                                    (if (gx#stx-null? _%tl182005182030%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd182023%_)
                                              (cons _%expr181996%_ '()))
                                        (_%E181999182011%_))))
                                (_%E181999182011%_)))))
                      (_%E181999182011%_)))))
          (_%E181998182033%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx181949%_)
        (let* ((_%e181950181960%_ _%stx181949%_)
               (_%E181952181964%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181950181960%_)))
               (_%E181951181991%_
                (lambda ()
                  (if (gx#stx-pair? _%e181950181960%_)
                      (let ((_%e181953181968%_
                             (gx#syntax-e _%e181950181960%_)))
                        (let ((_%hd181954181971%_ (##car _%e181953181968%_))
                              (_%tl181955181973%_ (##cdr _%e181953181968%_)))
                          (if (gx#stx-pair? _%tl181955181973%_)
                              (let ((_%e181956181976%_
                                     (gx#syntax-e _%tl181955181973%_)))
                                (let ((_%hd181957181979%_
                                       (##car _%e181956181976%_))
                                      (_%tl181958181981%_
                                       (##cdr _%e181956181976%_)))
                                  (let* ((_%hd181984%_ _%hd181957181979%_)
                                         (_%body181986%_ _%tl181958181981%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd181984%_)
                                        (let ((_%expanders181988%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd181984%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd181984%_
                                              _%expanders181988%_)
                                             (gx#core-expand-local-block
                                              _%stx181949%_
                                              _%body181986%_))
                                           gx#current-expander-context
                                           (let ((__obj183615
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj183615)
                                             __obj183615)))
                                        (_%E181952181964%_)))))
                              (_%E181952181964%_))))
                      (_%E181952181964%_)))))
          (_%E181951181991%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx181898%_)
        (let* ((_%e181899181909%_ _%stx181898%_)
               (_%E181901181913%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181899181909%_)))
               (_%E181900181945%_
                (lambda ()
                  (if (gx#stx-pair? _%e181899181909%_)
                      (let ((_%e181902181917%_
                             (gx#syntax-e _%e181899181909%_)))
                        (let ((_%hd181903181920%_ (##car _%e181902181917%_))
                              (_%tl181904181922%_ (##cdr _%e181902181917%_)))
                          (if (gx#stx-pair? _%tl181904181922%_)
                              (let ((_%e181905181925%_
                                     (gx#syntax-e _%tl181904181922%_)))
                                (let ((_%hd181906181928%_
                                       (##car _%e181905181925%_))
                                      (_%tl181907181930%_
                                       (##cdr _%e181905181925%_)))
                                  (let* ((_%hd181933%_ _%hd181906181928%_)
                                         (_%body181935%_ _%tl181907181930%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd181933%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd181933%_
                                            (make-list
                                             (gx#stx-length _%hd181933%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g181937181940%_
                                                     _%g181938181942%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g181937181940%_
                                               _%g181938181942%_
                                               '#t))
                                            _%hd181933%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd181933%_))
                                           (gx#core-expand-local-block
                                            _%stx181898%_
                                            _%body181935%_))
                                         gx#current-expander-context
                                         (let ((__obj183616
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj183616)
                                           __obj183616))
                                        (_%E181901181913%_)))))
                              (_%E181901181913%_))))
                      (_%E181901181913%_)))))
          (_%E181900181945%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx181855%_)
        (if (gx#stx-list? _%stx181855%_)
            (gx#stx-andmap
             (lambda (_%bind181857%_)
               (let* ((_%e181858181868%_ _%bind181857%_)
                      (_%E181860181872%_ (lambda () '#f))
                      (_%E181859181894%_
                       (lambda ()
                         (if (gx#stx-pair? _%e181858181868%_)
                             (let ((_%e181861181876%_
                                    (gx#syntax-e _%e181858181868%_)))
                               (let ((_%hd181862181879%_
                                      (##car _%e181861181876%_))
                                     (_%tl181863181881%_
                                      (##cdr _%e181861181876%_)))
                                 (let ((_%hd181884%_ _%hd181862181879%_))
                                   (if (gx#stx-pair? _%tl181863181881%_)
                                       (let ((_%e181864181886%_
                                              (gx#syntax-e
                                               _%tl181863181881%_)))
                                         (let ((_%hd181865181889%_
                                                (##car _%e181864181886%_))
                                               (_%tl181866181891%_
                                                (##cdr _%e181864181886%_)))
                                           (if (gx#stx-null?
                                                _%tl181866181891%_)
                                               (gx#identifier? _%hd181884%_)
                                               (_%E181860181872%_))))
                                       (_%E181860181872%_)))))
                             (_%E181860181872%_)))))
                 (_%E181859181894%_)))
             _%stx181855%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind181811%_)
        (let* ((_%e181812181822%_ _%bind181811%_)
               (_%E181814181826%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181812181822%_)))
               (_%E181813181851%_
                (lambda ()
                  (if (gx#stx-pair? _%e181812181822%_)
                      (let ((_%e181815181830%_
                             (gx#syntax-e _%e181812181822%_)))
                        (let ((_%hd181816181833%_ (##car _%e181815181830%_))
                              (_%tl181817181835%_ (##cdr _%e181815181830%_)))
                          (if (gx#stx-pair? _%tl181817181835%_)
                              (let ((_%e181818181838%_
                                     (gx#syntax-e _%tl181817181835%_)))
                                (let ((_%hd181819181841%_
                                       (##car _%e181818181838%_))
                                      (_%tl181820181843%_
                                       (##cdr _%e181818181838%_)))
                                  (let ((_%expr181846%_ _%hd181819181841%_))
                                    (if (gx#stx-null? _%tl181820181843%_)
                                        (let ((_g183635_
                                               (gx#core-expand-expression+1
                                                _%expr181846%_)))
                                          (begin
                                            (let ((_g183636_
                                                   (if (##values? _g183635_)
                                                       (##values-length
                                                        _g183635_)
                                                       1)))
                                              (if (not (##fx= _g183636_ 2))
                                                  (error "Context expects 2 values"
                                                         _g183636_)))
                                            (let ((_%_181848%_
                                                   (##values-ref _g183635_ 0))
                                                  (_%e181849%_
                                                   (##values-ref _g183635_ 1)))
                                              _%e181849%_)))
                                        (_%E181814181826%_)))))
                              (_%E181814181826%_))))
                      (_%E181814181826%_)))))
          (_%E181813181851%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind181756%_ _%e181757%_ _%rebind?181758%_)
        (let* ((_%e181759181769%_ _%bind181756%_)
               (_%E181761181773%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181759181769%_)))
               (_%E181760181795%_
                (lambda ()
                  (if (gx#stx-pair? _%e181759181769%_)
                      (let ((_%e181762181777%_
                             (gx#syntax-e _%e181759181769%_)))
                        (let ((_%hd181763181780%_ (##car _%e181762181777%_))
                              (_%tl181764181782%_ (##cdr _%e181762181777%_)))
                          (let ((_%id181785%_ _%hd181763181780%_))
                            (if (gx#stx-pair? _%tl181764181782%_)
                                (let ((_%e181765181787%_
                                       (gx#syntax-e _%tl181764181782%_)))
                                  (let ((_%hd181766181790%_
                                         (##car _%e181765181787%_))
                                        (_%tl181767181792%_
                                         (##cdr _%e181765181787%_)))
                                    (if (gx#stx-null? _%tl181767181792%_)
                                        (gx#core-bind-syntax!__1
                                         _%id181785%_
                                         _%e181757%_
                                         _%rebind?181758%_)
                                        (_%E181761181773%_))))
                                (_%E181761181773%_)))))
                      (_%E181761181773%_)))))
          (_%E181760181795%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind181802%_ _%e181803%_)
        (let ((_%rebind?181805%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind181802%_
           _%e181803%_
           _%rebind?181805%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g183637_
        (let ((_g183638_ (##length _g183637_)))
          (cond ((##fx= _g183638_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g183637_))
                ((##fx= _g183638_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g183637_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g183637_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx181714%_)
        (let* ((_%e181715181725%_ _%stx181714%_)
               (_%E181717181729%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181715181725%_)))
               (_%E181716181751%_
                (lambda ()
                  (if (gx#stx-pair? _%e181715181725%_)
                      (let ((_%e181718181733%_
                             (gx#syntax-e _%e181715181725%_)))
                        (let ((_%hd181719181736%_ (##car _%e181718181733%_))
                              (_%tl181720181738%_ (##cdr _%e181718181733%_)))
                          (if (gx#stx-pair? _%tl181720181738%_)
                              (let ((_%e181721181741%_
                                     (gx#syntax-e _%tl181720181738%_)))
                                (let ((_%hd181722181744%_
                                       (##car _%e181721181741%_))
                                      (_%tl181723181746%_
                                       (##cdr _%e181721181741%_)))
                                  (let ((_%expr181749%_ _%hd181722181744%_))
                                    (if (gx#stx-null? _%tl181723181746%_)
                                        (gx#core-expand-expression
                                         _%expr181749%_)
                                        (_%E181717181729%_)))))
                              (_%E181717181729%_))))
                      (_%E181717181729%_)))))
          (_%E181716181751%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx181673%_)
        (let* ((_%e181674181684%_ _%stx181673%_)
               (_%E181676181688%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181674181684%_)))
               (_%E181675181710%_
                (lambda ()
                  (if (gx#stx-pair? _%e181674181684%_)
                      (let ((_%e181677181692%_
                             (gx#syntax-e _%e181674181684%_)))
                        (let ((_%hd181678181695%_ (##car _%e181677181692%_))
                              (_%tl181679181697%_ (##cdr _%e181677181692%_)))
                          (if (gx#stx-pair? _%tl181679181697%_)
                              (let ((_%e181680181700%_
                                     (gx#syntax-e _%tl181679181697%_)))
                                (let ((_%hd181681181703%_
                                       (##car _%e181680181700%_))
                                      (_%tl181682181705%_
                                       (##cdr _%e181680181700%_)))
                                  (let ((_%e181708%_ _%hd181681181703%_))
                                    (if (gx#stx-null? _%tl181682181705%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e181708%_)
                                                     '()))
                                         (gx#stx-source _%stx181673%_))
                                        (_%E181676181688%_)))))
                              (_%E181676181688%_))))
                      (_%E181676181688%_)))))
          (_%E181675181710%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx181632%_)
        (let* ((_%e181633181643%_ _%stx181632%_)
               (_%E181635181647%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181633181643%_)))
               (_%E181634181669%_
                (lambda ()
                  (if (gx#stx-pair? _%e181633181643%_)
                      (let ((_%e181636181651%_
                             (gx#syntax-e _%e181633181643%_)))
                        (let ((_%hd181637181654%_ (##car _%e181636181651%_))
                              (_%tl181638181656%_ (##cdr _%e181636181651%_)))
                          (if (gx#stx-pair? _%tl181638181656%_)
                              (let ((_%e181639181659%_
                                     (gx#syntax-e _%tl181638181656%_)))
                                (let ((_%hd181640181662%_
                                       (##car _%e181639181659%_))
                                      (_%tl181641181664%_
                                       (##cdr _%e181639181659%_)))
                                  (let ((_%e181667%_ _%hd181640181662%_))
                                    (if (gx#stx-null? _%tl181641181664%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e181667%_)
                                                     '()))
                                         (gx#stx-source _%stx181632%_))
                                        (_%E181635181647%_)))))
                              (_%E181635181647%_))))
                      (_%E181635181647%_)))))
          (_%E181634181669%_))))
    (define gx#core-expand-call%
      (lambda (_%stx181526%_)
        (letrec ((_%expand-runtime-call181528%_
                  (lambda (_%rator-expr181629%_ _%args181630%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons*
                      '%#call
                      _%rator-expr181629%_
                      (gx#stx-map1 gx#core-expand-expression _%args181630%_))
                     (gx#stx-source _%stx181526%_)))))
          (let* ((_%e181529181539%_ _%stx181526%_)
                 (_%E181531181543%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e181529181539%_)))
                 (_%E181530181625%_
                  (lambda ()
                    (if (gx#stx-pair? _%e181529181539%_)
                        (let ((_%e181532181547%_
                               (gx#syntax-e _%e181529181539%_)))
                          (let ((_%hd181533181550%_ (##car _%e181532181547%_))
                                (_%tl181534181552%_ (##cdr _%e181532181547%_)))
                            (if (gx#stx-pair? _%tl181534181552%_)
                                (let ((_%e181535181555%_
                                       (gx#syntax-e _%tl181534181552%_)))
                                  (let ((_%hd181536181558%_
                                         (##car _%e181535181555%_))
                                        (_%tl181537181560%_
                                         (##cdr _%e181535181555%_)))
                                    (let* ((_%rator181563%_ _%hd181536181558%_)
                                           (_%args181565%_ _%tl181537181560%_))
                                      (if (gx#stx-list? _%args181565%_)
                                          (let* ((_%rator-expr181567%_
                                                  (gx#core-expand-expression
                                                   _%rator181563%_))
                                                 (_%e181568181578%_
                                                  _%rator-expr181567%_)
                                                 (_%E181570181582%_
                                                  (lambda ()
                                                    (_%expand-runtime-call181528%_
                                                     _%rator-expr181567%_
                                                     _%args181565%_)))
                                                 (_%E181569181621%_
                                                  (lambda ()
                                                    (if (gx#stx-pair?
                                                         _%e181568181578%_)
                                                        (let ((_%e181571181586%_
                                                               (gx#syntax-e
                                                                _%e181568181578%_)))
                                                          (let ((_%hd181572181589%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e181571181586%_))
                        (_%tl181573181591%_ (##cdr _%e181571181586%_)))
                    (if (and (gx#identifier? _%hd181572181589%_)
                             (gx#core-identifier=? _%hd181572181589%_ '%#ref))
                        (if (gx#stx-pair? _%tl181573181591%_)
                            (let ((_%e181574181594%_
                                   (gx#syntax-e _%tl181573181591%_)))
                              (let ((_%hd181575181597%_
                                     (##car _%e181574181594%_))
                                    (_%tl181576181599%_
                                     (##cdr _%e181574181594%_)))
                                (let ((_%id181602%_ _%hd181575181597%_))
                                  (if (gx#stx-null? _%tl181576181599%_)
                                      (let ((_%$e181604%_
                                             (gx#resolve-identifier__0
                                              _%id181602%_)))
                                        (if _%$e181604%_
                                            (let _%again181609%_ ((_%bind181611%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e181604%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_%$e181613%_
                                                     (if (##structure-instance-of?
                                                          _%bind181611%_
                                                          'gx#runtime-binding::t)
                                                         (##unchecked-structure-ref
                                                          _%bind181611%_
                                                          '6
                                                          '#f
                                                          '#f)
                                                         '#f)))
                                                (if _%$e181613%_
                                                    (gx#core-expand-expression
                                                     (gx#stx-wrap-source
                                                      (cons _%$e181613%_
                                                            _%args181565%_)
                                                      (gx#stx-source
                                                       _%stx181526%_)))
                                                    (if (##structure-direct-instance-of?
                                                         _%bind181611%_
                                                         'gx#import-binding::t)
                                                        (_%again181609%_
                                                         (##unchecked-structure-ref
                                                          _%bind181611%_
                                                          '5
                                                          '#f
                                                          '#f))
                                                        (_%expand-runtime-call181528%_
                                                         _%rator-expr181567%_
                                                         _%args181565%_)))))
                                            (_%expand-runtime-call181528%_
                                             _%rator-expr181567%_
                                             _%args181565%_)))
                                      (_%E181570181582%_)))))
                            (_%E181570181582%_))
                        (_%E181570181582%_))))
                (_%E181570181582%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E181569181621%_))
                                          (_%E181531181543%_)))))
                                (_%E181531181543%_))))
                        (_%E181531181543%_)))))
            (_%E181530181625%_)))))
    (define gx#core-expand-if%
      (lambda (_%stx181459%_)
        (let* ((_%e181460181476%_ _%stx181459%_)
               (_%E181462181480%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181460181476%_)))
               (_%E181461181522%_
                (lambda ()
                  (if (gx#stx-pair? _%e181460181476%_)
                      (let ((_%e181463181484%_
                             (gx#syntax-e _%e181460181476%_)))
                        (let ((_%hd181464181487%_ (##car _%e181463181484%_))
                              (_%tl181465181489%_ (##cdr _%e181463181484%_)))
                          (if (gx#stx-pair? _%tl181465181489%_)
                              (let ((_%e181466181492%_
                                     (gx#syntax-e _%tl181465181489%_)))
                                (let ((_%hd181467181495%_
                                       (##car _%e181466181492%_))
                                      (_%tl181468181497%_
                                       (##cdr _%e181466181492%_)))
                                  (let ((_%test181500%_ _%hd181467181495%_))
                                    (if (gx#stx-pair? _%tl181468181497%_)
                                        (let ((_%e181469181502%_
                                               (gx#syntax-e
                                                _%tl181468181497%_)))
                                          (let ((_%hd181470181505%_
                                                 (##car _%e181469181502%_))
                                                (_%tl181471181507%_
                                                 (##cdr _%e181469181502%_)))
                                            (let ((_%K181510%_
                                                   _%hd181470181505%_))
                                              (if (gx#stx-pair?
                                                   _%tl181471181507%_)
                                                  (let ((_%e181472181512%_
                                                         (gx#syntax-e
                                                          _%tl181471181507%_)))
                                                    (let ((_%hd181473181515%_
                                                           (##car _%e181472181512%_))
                                                          (_%tl181474181517%_
                                                           (##cdr _%e181472181512%_)))
                                                      (let ((_%E181520%_
                                                             _%hd181473181515%_))
                                                        (if (gx#stx-null?
                                                             _%tl181474181517%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test181500%_)
                                 (cons (gx#core-expand-expression _%K181510%_)
                                       (cons (gx#core-expand-expression
                                              _%E181520%_)
                                             '()))))
                     (gx#stx-source _%stx181459%_))
                    (_%E181462181480%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E181462181480%_)))))
                                        (_%E181462181480%_)))))
                              (_%E181462181480%_))))
                      (_%E181462181480%_)))))
          (_%E181461181522%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx181418%_)
        (let* ((_%e181419181429%_ _%stx181418%_)
               (_%E181421181433%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181419181429%_)))
               (_%E181420181455%_
                (lambda ()
                  (if (gx#stx-pair? _%e181419181429%_)
                      (let ((_%e181422181437%_
                             (gx#syntax-e _%e181419181429%_)))
                        (let ((_%hd181423181440%_ (##car _%e181422181437%_))
                              (_%tl181424181442%_ (##cdr _%e181422181437%_)))
                          (if (gx#stx-pair? _%tl181424181442%_)
                              (let ((_%e181425181445%_
                                     (gx#syntax-e _%tl181424181442%_)))
                                (let ((_%hd181426181448%_
                                       (##car _%e181425181445%_))
                                      (_%tl181427181450%_
                                       (##cdr _%e181425181445%_)))
                                  (let ((_%id181453%_ _%hd181426181448%_))
                                    (if (gx#stx-null? _%tl181427181450%_)
                                        (if (gx#identifier? _%id181453%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id181453%_
                                                          _%stx181418%_)
                                                         '()))
                                             (gx#stx-source _%stx181418%_))
                                            (_%E181421181433%_))
                                        (_%E181421181433%_)))))
                              (_%E181421181433%_))))
                      (_%E181421181433%_)))))
          (_%E181420181455%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx181364%_)
        (let* ((_%e181365181378%_ _%stx181364%_)
               (_%E181367181382%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181365181378%_)))
               (_%E181366181414%_
                (lambda ()
                  (if (gx#stx-pair? _%e181365181378%_)
                      (let ((_%e181368181386%_
                             (gx#syntax-e _%e181365181378%_)))
                        (let ((_%hd181369181389%_ (##car _%e181368181386%_))
                              (_%tl181370181391%_ (##cdr _%e181368181386%_)))
                          (if (gx#stx-pair? _%tl181370181391%_)
                              (let ((_%e181371181394%_
                                     (gx#syntax-e _%tl181370181391%_)))
                                (let ((_%hd181372181397%_
                                       (##car _%e181371181394%_))
                                      (_%tl181373181399%_
                                       (##cdr _%e181371181394%_)))
                                  (let ((_%id181402%_ _%hd181372181397%_))
                                    (if (gx#stx-pair? _%tl181373181399%_)
                                        (let ((_%e181374181404%_
                                               (gx#syntax-e
                                                _%tl181373181399%_)))
                                          (let ((_%hd181375181407%_
                                                 (##car _%e181374181404%_))
                                                (_%tl181376181409%_
                                                 (##cdr _%e181374181404%_)))
                                            (let ((_%expr181412%_
                                                   _%hd181375181407%_))
                                              (if (gx#stx-null?
                                                   _%tl181376181409%_)
                                                  (if (gx#identifier?
                                                       _%id181402%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id181402%_
                            _%stx181364%_)
                           (cons (gx#core-expand-expression _%expr181412%_)
                                 '())))
               (gx#stx-source _%stx181364%_))
              (_%E181367181382%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E181367181382%_)))))
                                        (_%E181367181382%_)))))
                              (_%E181367181382%_))))
                      (_%E181367181382%_)))))
          (_%E181366181414%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx181209%_)
        (letrec ((_%generate181211%_
                  (lambda (_%body181241%_)
                    (let _%lp181243%_ ((_%rest181245%_ _%body181241%_)
                                       (_%ns181246%_
                                        (gx#core-context-namespace__0))
                                       (_%r181247%_ '()))
                      (let* ((_%e181248181263%_ _%rest181245%_)
                             (_%E181261181267%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e181248181263%_)))
                             (_%E181257181271%_
                              (lambda ()
                                (if (gx#stx-null? _%e181248181263%_)
                                    (reverse _%r181247%_)
                                    (_%E181261181267%_))))
                             (_%E181250181328%_
                              (lambda ()
                                (if (gx#stx-pair? _%e181248181263%_)
                                    (let ((_%e181258181275%_
                                           (gx#syntax-e _%e181248181263%_)))
                                      (let ((_%hd181259181278%_
                                             (##car _%e181258181275%_))
                                            (_%tl181260181280%_
                                             (##cdr _%e181258181275%_)))
                                        (let* ((_%hd181283%_
                                                _%hd181259181278%_)
                                               (_%rest181285%_
                                                _%tl181260181280%_))
                                          (if (gx#identifier? _%hd181283%_)
                                              (_%lp181243%_
                                               _%rest181285%_
                                               _%ns181246%_
                                               (cons (cons _%hd181283%_
                                                           (cons (if _%ns181246%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd181283%_
                              _%ns181246%_
                              '"#"
                              _%hd181283%_)
                             _%hd181283%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r181247%_))
                                              (let* ((_%e181286181296%_
                                                      _%hd181283%_)
                                                     (_%E181288181300%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%e181286181296%_)))
                                                     (_%E181287181324%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e181286181296%_)
                                                            (let ((_%e181289181304%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e181286181296%_)))
                      (let ((_%hd181290181307%_ (##car _%e181289181304%_))
                            (_%tl181291181309%_ (##cdr _%e181289181304%_)))
                        (let ((_%id181312%_ _%hd181290181307%_))
                          (if (gx#stx-pair? _%tl181291181309%_)
                              (let ((_%e181292181314%_
                                     (gx#syntax-e _%tl181291181309%_)))
                                (let ((_%hd181293181317%_
                                       (##car _%e181292181314%_))
                                      (_%tl181294181319%_
                                       (##cdr _%e181292181314%_)))
                                  (let ((_%eid181322%_ _%hd181293181317%_))
                                    (if (gx#stx-null? _%tl181294181319%_)
                                        (if (and (gx#identifier? _%id181312%_)
                                                 (gx#identifier?
                                                  _%eid181322%_))
                                            (_%lp181243%_
                                             _%rest181285%_
                                             _%ns181246%_
                                             (cons (cons _%id181312%_
                                                         (cons _%eid181322%_
                                                               '()))
                                                   _%r181247%_))
                                            (_%E181288181300%_))
                                        (_%E181288181300%_)))))
                              (_%E181288181300%_)))))
                    (_%E181288181300%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E181287181324%_))))))
                                    (_%E181257181271%_))))
                             (_%E181249181360%_
                              (lambda ()
                                (if (gx#stx-pair? _%e181248181263%_)
                                    (let ((_%e181251181332%_
                                           (gx#syntax-e _%e181248181263%_)))
                                      (let ((_%hd181252181335%_
                                             (##car _%e181251181332%_))
                                            (_%tl181253181337%_
                                             (##cdr _%e181251181332%_)))
                                        (if (eq? (gx#stx-e _%hd181252181335%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl181253181337%_)
                                                (let ((_%e181254181340%_
                                                       (gx#syntax-e
                                                        _%tl181253181337%_)))
                                                  (let ((_%hd181255181343%_
                                                         (##car _%e181254181340%_))
                                                        (_%tl181256181345%_
                                                         (##cdr _%e181254181340%_)))
                                                    (let* ((_%ns181348%_
                                                            _%hd181255181343%_)
                                                           (_%rest181350%_
                                                            _%tl181256181345%_)
                                                           (_%ns181358%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns181348%_)
                        (symbol->string (gx#stx-e _%ns181348%_))
                        (if (or (gx#stx-string? _%ns181348%_)
                                (gx#stx-false? _%ns181348%_))
                            (gx#stx-e _%ns181348%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx181209%_
                             _%ns181348%_)))))
              (_%lp181243%_ _%rest181350%_ _%ns181358%_ _%r181247%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E181250181328%_))
                                            (_%E181250181328%_))))
                                    (_%E181250181328%_)))))
                        (_%E181249181360%_))))))
          (let* ((_%e181212181219%_ _%stx181209%_)
                 (_%E181214181223%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e181212181219%_)))
                 (_%E181213181237%_
                  (lambda ()
                    (if (gx#stx-pair? _%e181212181219%_)
                        (let ((_%e181215181227%_
                               (gx#syntax-e _%e181212181219%_)))
                          (let ((_%hd181216181230%_ (##car _%e181215181227%_))
                                (_%tl181217181232%_ (##cdr _%e181215181227%_)))
                            (let ((_%body181235%_ _%tl181217181232%_))
                              (if (gx#stx-list? _%body181235%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate181211%_ _%body181235%_))
                                  (_%E181214181223%_)))))
                        (_%E181214181223%_)))))
            (_%E181213181237%_)))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx181166%_)
        (let* ((_%e181167181177%_ _%stx181166%_)
               (_%E181169181181%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181167181177%_)))
               (_%E181168181205%_
                (lambda ()
                  (if (gx#stx-pair? _%e181167181177%_)
                      (let ((_%e181170181185%_
                             (gx#syntax-e _%e181167181177%_)))
                        (let ((_%hd181171181188%_ (##car _%e181170181185%_))
                              (_%tl181172181190%_ (##cdr _%e181170181185%_)))
                          (if (gx#stx-pair? _%tl181172181190%_)
                              (let ((_%e181173181193%_
                                     (gx#syntax-e _%tl181172181190%_)))
                                (let ((_%hd181174181196%_
                                       (##car _%e181173181193%_))
                                      (_%tl181175181198%_
                                       (##cdr _%e181173181193%_)))
                                  (let* ((_%hd181201%_ _%hd181174181196%_)
                                         (_%body181203%_ _%tl181175181198%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd181201%_)
                                             (gx#stx-list? _%body181203%_)
                                             (not (gx#stx-null?
                                                   _%body181203%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd181201%_)
                                         _%body181203%_)
                                        (_%E181169181181%_)))))
                              (_%E181169181181%_))))
                      (_%E181169181181%_)))))
          (_%E181168181205%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx181102%_)
        (letrec ((_%generate181104%_
                  (lambda (_%clause181134%_)
                    (let* ((_%e181135181142%_ _%clause181134%_)
                           (_%E181137181146%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx181102%_
                               _%clause181134%_)))
                           (_%E181136181162%_
                            (lambda ()
                              (if (gx#stx-pair? _%e181135181142%_)
                                  (let ((_%e181138181150%_
                                         (gx#syntax-e _%e181135181142%_)))
                                    (let ((_%hd181139181153%_
                                           (##car _%e181138181150%_))
                                          (_%tl181140181155%_
                                           (##cdr _%e181138181150%_)))
                                      (let* ((_%hd181158%_ _%hd181139181153%_)
                                             (_%body181160%_
                                              _%tl181140181155%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd181158%_)
                                                 (gx#stx-list? _%body181160%_)
                                                 (not (gx#stx-null?
                                                       _%body181160%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd181158%_)
                                                   _%body181160%_)
                                             (gx#stx-source _%clause181134%_))
                                            (_%E181137181146%_)))))
                                  (_%E181137181146%_)))))
                      (_%E181136181162%_)))))
          (let* ((_%e181105181112%_ _%stx181102%_)
                 (_%E181107181116%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e181105181112%_)))
                 (_%E181106181130%_
                  (lambda ()
                    (if (gx#stx-pair? _%e181105181112%_)
                        (let ((_%e181108181120%_
                               (gx#syntax-e _%e181105181112%_)))
                          (let ((_%hd181109181123%_ (##car _%e181108181120%_))
                                (_%tl181110181125%_ (##cdr _%e181108181120%_)))
                            (let ((_%clauses181128%_ _%tl181110181125%_))
                              (if (gx#stx-list? _%clauses181128%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate181104%_
                                    _%clauses181128%_))
                                  (_%E181107181116%_)))))
                        (_%E181107181116%_)))))
            (_%E181106181130%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx181003%_ _%form181004%_)
        (letrec ((_%generate181006%_
                  (lambda (_%bind181049%_)
                    (let* ((_%e181050181060%_ _%bind181049%_)
                           (_%E181052181064%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx181003%_
                               _%bind181049%_)))
                           (_%E181051181088%_
                            (lambda ()
                              (if (gx#stx-pair? _%e181050181060%_)
                                  (let ((_%e181053181068%_
                                         (gx#syntax-e _%e181050181060%_)))
                                    (let ((_%hd181054181071%_
                                           (##car _%e181053181068%_))
                                          (_%tl181055181073%_
                                           (##cdr _%e181053181068%_)))
                                      (let ((_%ids181076%_ _%hd181054181071%_))
                                        (if (gx#stx-pair? _%tl181055181073%_)
                                            (let ((_%e181056181078%_
                                                   (gx#syntax-e
                                                    _%tl181055181073%_)))
                                              (let ((_%hd181057181081%_
                                                     (##car _%e181056181078%_))
                                                    (_%tl181058181083%_
                                                     (##cdr _%e181056181078%_)))
                                                (let ((_%expr181086%_
                                                       _%hd181057181081%_))
                                                  (if (gx#stx-null?
                                                       _%tl181058181083%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids181076%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids181076%_)
                        (cons _%expr181086%_ '()))
                  (_%E181052181064%_))
              (_%E181052181064%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E181052181064%_)))))
                                  (_%E181052181064%_)))))
                      (_%E181051181088%_)))))
          (let* ((_%e181007181017%_ _%stx181003%_)
                 (_%E181009181021%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e181007181017%_)))
                 (_%E181008181045%_
                  (lambda ()
                    (if (gx#stx-pair? _%e181007181017%_)
                        (let ((_%e181010181025%_
                               (gx#syntax-e _%e181007181017%_)))
                          (let ((_%hd181011181028%_ (##car _%e181010181025%_))
                                (_%tl181012181030%_ (##cdr _%e181010181025%_)))
                            (if (gx#stx-pair? _%tl181012181030%_)
                                (let ((_%e181013181033%_
                                       (gx#syntax-e _%tl181012181030%_)))
                                  (let ((_%hd181014181036%_
                                         (##car _%e181013181033%_))
                                        (_%tl181015181038%_
                                         (##cdr _%e181013181033%_)))
                                    (let* ((_%hd181041%_ _%hd181014181036%_)
                                           (_%body181043%_ _%tl181015181038%_))
                                      (if (and (gx#stx-list? _%hd181041%_)
                                               (gx#stx-list? _%body181043%_)
                                               (not (gx#stx-null?
                                                     _%body181043%_)))
                                          (gx#core-cons*
                                           _%form181004%_
                                           (gx#stx-map1
                                            _%generate181006%_
                                            _%hd181041%_)
                                           _%body181043%_)
                                          (_%E181009181021%_)))))
                                (_%E181009181021%_))))
                        (_%E181009181021%_)))))
            (_%E181008181045%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx181095%_)
        (let ((_%form181097%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx181095%_ _%form181097%_))))
    (define gx#macro-expand-let-values
      (lambda _g183639_
        (let ((_g183640_ (##length _g183639_)))
          (cond ((##fx= _g183640_ 1)
                 (apply gx#macro-expand-let-values__0 _g183639_))
                ((##fx= _g183640_ 2)
                 (apply gx#macro-expand-let-values__% _g183639_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g183639_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx181000%_)
        (gx#macro-expand-let-values__% _%stx181000%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx180998%_)
        (gx#macro-expand-let-values__% _%stx180998%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx180889%_)
        (let* ((_%e180890180916%_ _%stx180889%_)
               (_%E180902180920%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180890180916%_)))
               (_%E180892180962%_
                (lambda ()
                  (if (gx#stx-pair? _%e180890180916%_)
                      (let ((_%e180903180924%_
                             (gx#syntax-e _%e180890180916%_)))
                        (let ((_%hd180904180927%_ (##car _%e180903180924%_))
                              (_%tl180905180929%_ (##cdr _%e180903180924%_)))
                          (if (gx#stx-pair? _%tl180905180929%_)
                              (let ((_%e180906180932%_
                                     (gx#syntax-e _%tl180905180929%_)))
                                (let ((_%hd180907180935%_
                                       (##car _%e180906180932%_))
                                      (_%tl180908180937%_
                                       (##cdr _%e180906180932%_)))
                                  (let ((_%test180940%_ _%hd180907180935%_))
                                    (if (gx#stx-pair? _%tl180908180937%_)
                                        (let ((_%e180909180942%_
                                               (gx#syntax-e
                                                _%tl180908180937%_)))
                                          (let ((_%hd180910180945%_
                                                 (##car _%e180909180942%_))
                                                (_%tl180911180947%_
                                                 (##cdr _%e180909180942%_)))
                                            (let ((_%K180950%_
                                                   _%hd180910180945%_))
                                              (if (gx#stx-pair?
                                                   _%tl180911180947%_)
                                                  (let ((_%e180912180952%_
                                                         (gx#syntax-e
                                                          _%tl180911180947%_)))
                                                    (let ((_%hd180913180955%_
                                                           (##car _%e180912180952%_))
                                                          (_%tl180914180957%_
                                                           (##cdr _%e180912180952%_)))
                                                      (let ((_%E180960%_
                                                             _%hd180913180955%_))
                                                        (if (gx#stx-null?
                                                             _%tl180914180957%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test180940%_
                                                             _%K180950%_
                                                             _%E180960%_)
                                                            (_%E180902180920%_)))))
                                                  (_%E180902180920%_)))))
                                        (_%E180902180920%_)))))
                              (_%E180902180920%_))))
                      (_%E180902180920%_))))
               (_%E180891180994%_
                (lambda ()
                  (if (gx#stx-pair? _%e180890180916%_)
                      (let ((_%e180893180966%_
                             (gx#syntax-e _%e180890180916%_)))
                        (let ((_%hd180894180969%_ (##car _%e180893180966%_))
                              (_%tl180895180971%_ (##cdr _%e180893180966%_)))
                          (if (gx#stx-pair? _%tl180895180971%_)
                              (let ((_%e180896180974%_
                                     (gx#syntax-e _%tl180895180971%_)))
                                (let ((_%hd180897180977%_
                                       (##car _%e180896180974%_))
                                      (_%tl180898180979%_
                                       (##cdr _%e180896180974%_)))
                                  (let ((_%test180982%_ _%hd180897180977%_))
                                    (if (gx#stx-pair? _%tl180898180979%_)
                                        (let ((_%e180899180984%_
                                               (gx#syntax-e
                                                _%tl180898180979%_)))
                                          (let ((_%hd180900180987%_
                                                 (##car _%e180899180984%_))
                                                (_%tl180901180989%_
                                                 (##cdr _%e180899180984%_)))
                                            (let ((_%K180992%_
                                                   _%hd180900180987%_))
                                              (if (gx#stx-null?
                                                   _%tl180901180989%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test180982%_
                                                   _%K180992%_
                                                   '#!void)
                                                  (_%E180892180962%_)))))
                                        (_%E180892180962%_)))))
                              (_%E180892180962%_))))
                      (_%E180892180962%_)))))
          (_%E180891180994%_))))
    (define gx#free-identifier=?
      (lambda (_%xid180874%_ _%yid180875%_)
        (let ((_%xe180877%_ (gx#resolve-identifier__0 _%xid180874%_))
              (_%ye180878%_ (gx#resolve-identifier__0 _%yid180875%_)))
          (if (and _%xe180877%_ _%ye180878%_)
              (let ((_%$e180881%_ (eq? _%xe180877%_ _%ye180878%_)))
                (if _%$e180881%_
                    _%$e180881%_
                    (if (##structure-instance-of? _%xe180877%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye180878%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe180877%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye180878%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe180877%_ _%ye180878%_)
                  '#f
                  (gx#stx-eq? _%xid180874%_ _%yid180875%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid180855%_ _%yid180856%_)
        (letrec ((_%context180858%_
                  (lambda (_%e180872%_)
                    (if (##structure-direct-instance-of?
                         _%e180872%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e180872%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks180859%_
                  (lambda (_%e180867%_)
                    (if (symbol? _%e180867%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e180867%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e180867%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e180867%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap180860%_
                  (lambda (_%e180865%_)
                    (if (symbol? _%e180865%_)
                        _%e180865%_
                        (gx#syntax-local-unwrap _%e180865%_)))))
          (let ((_%x180862%_ (_%unwrap180860%_ _%xid180855%_))
                (_%y180863%_ (_%unwrap180860%_ _%yid180856%_)))
            (if (gx#stx-eq? _%x180862%_ _%y180863%_)
                (if (eq? (_%context180858%_ _%x180862%_)
                         (_%context180858%_ _%y180863%_))
                    (equal? (_%marks180859%_ _%x180862%_)
                            (_%marks180859%_ _%y180863%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx180853%_)
        (if (gx#identifier? _%stx180853%_)
            (gx#core-identifier=? _%stx180853%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx180851%_)
        (if (gx#identifier? _%stx180851%_)
            (gx#core-identifier=? _%stx180851%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx180794%_ _%where180795%_)
        (let _%lp180797%_ ((_%rest180799%_ (gx#syntax->list _%stx180794%_)))
          (let* ((_%rest180800180808%_ _%rest180799%_)
                 (_%else180802180816%_ (lambda () '#t))
                 (_%K180804180829%_
                  (lambda (_%rest180819%_ _%hd180820%_)
                    (if (gx#identifier? _%hd180820%_)
                        (if (__find (lambda (_%g180822180824%_)
                                      (gx#bound-identifier=?
                                       _%g180822180824%_
                                       _%hd180820%_))
                                    _%rest180819%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where180795%_
                             _%hd180820%_)
                            (_%lp180797%_ _%rest180819%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where180795%_
                         _%hd180820%_)))))
            (if (pair? _%rest180800180808%_)
                (let ((_%hd180805180832%_ (##car _%rest180800180808%_))
                      (_%tl180806180834%_ (##cdr _%rest180800180808%_)))
                  (let* ((_%hd180837%_ _%hd180805180832%_)
                         (_%rest180839%_ _%tl180806180834%_))
                    (_%K180804180829%_ _%rest180839%_ _%hd180837%_)))
                (_%else180802180816%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx180844%_)
        (let ((_%where180846%_ _%stx180844%_))
          (gx#check-duplicate-identifiers__% _%stx180844%_ _%where180846%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g183641_
        (let ((_g183642_ (##length _g183641_)))
          (cond ((##fx= _g183642_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g183641_))
                ((##fx= _g183642_ 2)
                 (apply gx#check-duplicate-identifiers__% _g183641_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g183641_))))))
    (define gx#core-bind-values?
      (lambda (_%stx180786%_)
        (gx#stx-andmap
         (lambda (_%x180788%_)
           (let ((_%$e180790%_ (gx#identifier? _%x180788%_)))
             (if _%$e180790%_ _%$e180790%_ (gx#stx-false? _%x180788%_))))
         _%stx180786%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx180750%_ _%rebind?180751%_ _%phi180752%_ _%ctx180753%_)
        (gx#stx-for-each1
         (lambda (_%id180755%_)
           (if (gx#identifier? _%id180755%_)
               (gx#core-bind-runtime!__%
                _%id180755%_
                _%rebind?180751%_
                _%phi180752%_
                _%ctx180753%_)
               '#!void))
         _%stx180750%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx180760%_)
        (let* ((_%rebind?180762%_ '#f)
               (_%phi180764%_ (gx#current-expander-phi))
               (_%ctx180766%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx180760%_
           _%rebind?180762%_
           _%phi180764%_
           _%ctx180766%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx180768%_ _%rebind?180769%_)
        (let* ((_%phi180771%_ (gx#current-expander-phi))
               (_%ctx180773%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx180768%_
           _%rebind?180769%_
           _%phi180771%_
           _%ctx180773%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx180775%_ _%rebind?180776%_ _%phi180777%_)
        (let ((_%ctx180779%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx180775%_
           _%rebind?180776%_
           _%phi180777%_
           _%ctx180779%_))))
    (define gx#core-bind-values!
      (lambda _g183643_
        (let ((_g183644_ (##length _g183643_)))
          (cond ((##fx= _g183644_ 1) (apply gx#core-bind-values!__0 _g183643_))
                ((##fx= _g183644_ 2) (apply gx#core-bind-values!__1 _g183643_))
                ((##fx= _g183644_ 3) (apply gx#core-bind-values!__2 _g183643_))
                ((##fx= _g183644_ 4) (apply gx#core-bind-values!__% _g183643_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g183643_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx180745%_)
        (gx#stx-map1
         (lambda (_%x180747%_)
           (if (gx#identifier? _%x180747%_)
               (gx#core-quote-syntax__0 _%x180747%_)
               '#f))
         _%stx180745%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx180738%_)
        (if (gx#identifier? _%stx180738%_)
            (let* ((_%bind180740%_ (gx#resolve-identifier__0 _%stx180738%_))
                   (_%$e180742%_ (not _%bind180740%_)))
              (if _%$e180742%_
                  _%$e180742%_
                  (##structure-instance-of?
                   _%bind180740%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id180727%_ _%form180728%_)
        (let ((_%bind180730%_ (gx#resolve-identifier__0 _%id180727%_)))
          (if (##structure-instance-of? _%bind180730%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id180727%_)
              (if (not _%bind180730%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id180727%_)))
                      (gx#core-quote-syntax__0 _%id180727%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form180728%_
                       _%id180727%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form180728%_
                   _%id180727%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id180682%_ _%rebind?180683%_ _%phi180684%_ _%ctx180685%_)
        (let* ((_%key180687%_ (gx#core-identifier-key _%id180682%_))
               (_%eid180689%_
                (gx#make-binding-id__%
                 _%key180687%_
                 '#f
                 _%phi180684%_
                 _%ctx180685%_))
               (_%bind180695%_
                (if (##structure-instance-of?
                     _%ctx180685%_
                     'gx#module-context::t)
                    (let ((__obj183620
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
                       __obj183620
                       _%eid180689%_
                       _%key180687%_
                       _%phi180684%_
                       _%ctx180685%_)
                      __obj183620)
                    (if (##structure-instance-of?
                         _%ctx180685%_
                         'gx#top-context::t)
                        (let ((__obj183619
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj183619
                           _%eid180689%_
                           _%key180687%_
                           _%phi180684%_)
                          __obj183619)
                        (if (##structure-instance-of?
                             _%ctx180685%_
                             'gx#local-context::t)
                            (let ((__obj183618
                                   (##structure
                                    gx#local-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#local-binding:::init!
                               __obj183618
                               _%eid180689%_
                               _%key180687%_
                               _%phi180684%_)
                              __obj183618)
                            (let ((__obj183617
                                   (##structure
                                    gx#runtime-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#runtime-binding:::init!
                               __obj183617
                               _%eid180689%_
                               _%key180687%_
                               _%phi180684%_)
                              __obj183617))))))
          (gx#bind-identifier!__%
           _%id180682%_
           _%bind180695%_
           _%rebind?180683%_
           _%phi180684%_
           _%ctx180685%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id180701%_)
        (let* ((_%rebind?180703%_ '#f)
               (_%phi180705%_ (gx#current-expander-phi))
               (_%ctx180707%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id180701%_
           _%rebind?180703%_
           _%phi180705%_
           _%ctx180707%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id180709%_ _%rebind?180710%_)
        (let* ((_%phi180712%_ (gx#current-expander-phi))
               (_%ctx180714%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id180709%_
           _%rebind?180710%_
           _%phi180712%_
           _%ctx180714%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id180716%_ _%rebind?180717%_ _%phi180718%_)
        (let ((_%ctx180720%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id180716%_
           _%rebind?180717%_
           _%phi180718%_
           _%ctx180720%_))))
    (define gx#core-bind-runtime!
      (lambda _g183645_
        (let ((_g183646_ (##length _g183645_)))
          (cond ((##fx= _g183646_ 1)
                 (apply gx#core-bind-runtime!__0 _g183645_))
                ((##fx= _g183646_ 2)
                 (apply gx#core-bind-runtime!__1 _g183645_))
                ((##fx= _g183646_ 3)
                 (apply gx#core-bind-runtime!__2 _g183645_))
                ((##fx= _g183646_ 4)
                 (apply gx#core-bind-runtime!__% _g183645_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g183645_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id180634%_
               _%eid180635%_
               _%rebind?180636%_
               _%phi180637%_
               _%ctx180638%_)
        (let* ((_%key180640%_ (gx#core-identifier-key _%id180634%_))
               (_%bind180645%_
                (if (##structure-instance-of?
                     _%ctx180638%_
                     'gx#module-context::t)
                    (let ((__obj183623
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
                       __obj183623
                       _%eid180635%_
                       _%key180640%_
                       _%phi180637%_
                       _%ctx180638%_)
                      __obj183623)
                    (if (##structure-instance-of?
                         _%ctx180638%_
                         'gx#top-context::t)
                        (let ((__obj183622
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj183622
                           _%eid180635%_
                           _%key180640%_
                           _%phi180637%_)
                          __obj183622)
                        (let ((__obj183621
                               (##structure
                                gx#runtime-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#runtime-binding:::init!
                           __obj183621
                           _%eid180635%_
                           _%key180640%_
                           _%phi180637%_)
                          __obj183621)))))
          (gx#bind-identifier!__%
           _%id180634%_
           _%bind180645%_
           _%rebind?180636%_
           _%phi180637%_
           _%ctx180638%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id180651%_ _%eid180652%_)
        (let* ((_%rebind?180654%_ '#f)
               (_%phi180656%_ (gx#current-expander-phi))
               (_%ctx180658%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id180651%_
           _%eid180652%_
           _%rebind?180654%_
           _%phi180656%_
           _%ctx180658%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id180660%_ _%eid180661%_ _%rebind?180662%_)
        (let* ((_%phi180664%_ (gx#current-expander-phi))
               (_%ctx180666%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id180660%_
           _%eid180661%_
           _%rebind?180662%_
           _%phi180664%_
           _%ctx180666%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id180668%_ _%eid180669%_ _%rebind?180670%_ _%phi180671%_)
        (let ((_%ctx180673%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id180668%_
           _%eid180669%_
           _%rebind?180670%_
           _%phi180671%_
           _%ctx180673%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g183647_
        (let ((_g183648_ (##length _g183647_)))
          (cond ((##fx= _g183648_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g183647_))
                ((##fx= _g183648_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g183647_))
                ((##fx= _g183648_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g183647_))
                ((##fx= _g183648_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g183647_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g183647_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id180594%_
               _%eid180595%_
               _%rebind?180596%_
               _%phi180597%_
               _%ctx180598%_)
        (gx#bind-identifier!__%
         _%id180594%_
         (let ((__obj183624
                (##structure gx#extern-binding::t '#f '#f '#f '#f '#f '#f)))
           (gx#extern-binding:::init!
            __obj183624
            _%eid180595%_
            (gx#core-identifier-key _%id180594%_)
            _%phi180597%_)
           __obj183624)
         _%rebind?180596%_
         _%phi180597%_
         _%ctx180598%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id180603%_ _%eid180604%_)
        (let* ((_%rebind?180606%_ '#f)
               (_%phi180608%_ (gx#current-expander-phi))
               (_%ctx180610%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id180603%_
           _%eid180604%_
           _%rebind?180606%_
           _%phi180608%_
           _%ctx180610%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id180612%_ _%eid180613%_ _%rebind?180614%_)
        (let* ((_%phi180616%_ (gx#current-expander-phi))
               (_%ctx180618%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id180612%_
           _%eid180613%_
           _%rebind?180614%_
           _%phi180616%_
           _%ctx180618%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id180620%_ _%eid180621%_ _%rebind?180622%_ _%phi180623%_)
        (let ((_%ctx180625%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id180620%_
           _%eid180621%_
           _%rebind?180622%_
           _%phi180623%_
           _%ctx180625%_))))
    (define gx#core-bind-extern!
      (lambda _g183649_
        (let ((_g183650_ (##length _g183649_)))
          (cond ((##fx= _g183650_ 2) (apply gx#core-bind-extern!__0 _g183649_))
                ((##fx= _g183650_ 3) (apply gx#core-bind-extern!__1 _g183649_))
                ((##fx= _g183650_ 4) (apply gx#core-bind-extern!__2 _g183649_))
                ((##fx= _g183650_ 5) (apply gx#core-bind-extern!__% _g183649_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g183649_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id180548%_
               _%e180549%_
               _%rebind?180550%_
               _%phi180551%_
               _%ctx180552%_)
        (gx#bind-identifier!__%
         _%id180548%_
         (let ((_%key180557%_ (gx#core-identifier-key _%id180548%_))
               (_%e180558%_
                (if (or (##structure-instance-of? _%e180549%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e180549%_
                         'gx#expander-context::t))
                    _%e180549%_
                    (##structure
                     gx#user-expander::t
                     _%e180549%_
                     _%ctx180552%_
                     _%phi180551%_))))
           (let ((__obj183625
                  (##structure gx#syntax-binding::t '#f '#f '#f '#f '#f)))
             (gx#syntax-binding:::init!
              __obj183625
              (gx#make-binding-id__%
               _%key180557%_
               '#t
               _%phi180551%_
               _%ctx180552%_)
              _%key180557%_
              _%phi180551%_
              _%e180558%_)
             __obj183625))
         _%rebind?180550%_
         _%phi180551%_
         _%ctx180552%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id180563%_ _%e180564%_)
        (let* ((_%rebind?180566%_ '#f)
               (_%phi180568%_ (gx#current-expander-phi))
               (_%ctx180570%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id180563%_
           _%e180564%_
           _%rebind?180566%_
           _%phi180568%_
           _%ctx180570%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id180572%_ _%e180573%_ _%rebind?180574%_)
        (let* ((_%phi180576%_ (gx#current-expander-phi))
               (_%ctx180578%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id180572%_
           _%e180573%_
           _%rebind?180574%_
           _%phi180576%_
           _%ctx180578%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id180580%_ _%e180581%_ _%rebind?180582%_ _%phi180583%_)
        (let ((_%ctx180585%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id180580%_
           _%e180581%_
           _%rebind?180582%_
           _%phi180583%_
           _%ctx180585%_))))
    (define gx#core-bind-syntax!
      (lambda _g183651_
        (let ((_g183652_ (##length _g183651_)))
          (cond ((##fx= _g183652_ 2) (apply gx#core-bind-syntax!__0 _g183651_))
                ((##fx= _g183652_ 3) (apply gx#core-bind-syntax!__1 _g183651_))
                ((##fx= _g183652_ 4) (apply gx#core-bind-syntax!__2 _g183651_))
                ((##fx= _g183652_ 5) (apply gx#core-bind-syntax!__% _g183651_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g183651_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id180531%_ _%e180532%_ _%rebind?180533%_)
        (gx#core-bind-syntax!__%
         _%id180531%_
         _%e180532%_
         _%rebind?180533%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id180538%_ _%e180539%_)
        (let ((_%rebind?180541%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id180538%_
           _%e180539%_
           _%rebind?180541%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g183653_
        (let ((_g183654_ (##length _g183653_)))
          (cond ((##fx= _g183654_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g183653_))
                ((##fx= _g183654_ 3)
                 (apply gx#core-bind-root-syntax!__% _g183653_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g183653_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id180489%_
               _%alias-id180490%_
               _%rebind?180491%_
               _%phi180492%_
               _%ctx180493%_)
        (gx#bind-identifier!__%
         _%id180489%_
         (let* ((_%key180495%_ (gx#core-identifier-key _%id180489%_))
                (__obj183626
                 (##structure gx#alias-binding::t '#f '#f '#f '#f '#f)))
           (gx#alias-binding:::init!
            __obj183626
            (gx#make-binding-id__%
             _%key180495%_
             '#t
             _%phi180492%_
             _%ctx180493%_)
            _%key180495%_
            _%phi180492%_
            _%alias-id180490%_)
           __obj183626)
         _%rebind?180491%_
         _%phi180492%_
         _%ctx180493%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id180500%_ _%alias-id180501%_)
        (let* ((_%rebind?180503%_ '#f)
               (_%phi180505%_ (gx#current-expander-phi))
               (_%ctx180507%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id180500%_
           _%alias-id180501%_
           _%rebind?180503%_
           _%phi180505%_
           _%ctx180507%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id180509%_ _%alias-id180510%_ _%rebind?180511%_)
        (let* ((_%phi180513%_ (gx#current-expander-phi))
               (_%ctx180515%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id180509%_
           _%alias-id180510%_
           _%rebind?180511%_
           _%phi180513%_
           _%ctx180515%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id180517%_ _%alias-id180518%_ _%rebind?180519%_ _%phi180520%_)
        (let ((_%ctx180522%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id180517%_
           _%alias-id180518%_
           _%rebind?180519%_
           _%phi180520%_
           _%ctx180522%_))))
    (define gx#core-bind-alias!
      (lambda _g183655_
        (let ((_g183656_ (##length _g183655_)))
          (cond ((##fx= _g183656_ 2) (apply gx#core-bind-alias!__0 _g183655_))
                ((##fx= _g183656_ 3) (apply gx#core-bind-alias!__1 _g183655_))
                ((##fx= _g183656_ 4) (apply gx#core-bind-alias!__2 _g183655_))
                ((##fx= _g183656_ 5) (apply gx#core-bind-alias!__% _g183655_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g183655_))))))
    (define gx#make-binding-id__%
      (lambda (_%key180439%_ _%syntax?180440%_ _%phi180441%_ _%ctx180442%_)
        (if (uninterned-symbol? _%key180439%_)
            (##gensym 'L)
            (if (pair? _%key180439%_)
                (gensym (##car _%key180439%_))
                (if (##structure-instance-of? _%ctx180442%_ 'gx#top-context::t)
                    (let ((_%ns180447%_
                           (gx#core-context-namespace__% _%ctx180442%_)))
                      (if (and (fxzero? _%phi180441%_) (not _%syntax?180440%_))
                          (if _%ns180447%_
                              (make-symbol__1 _%ns180447%_ '"#" _%key180439%_)
                              _%key180439%_)
                          (if _%syntax?180440%_
                              (make-symbol__1
                               (let ((_%$e180451%_ _%ns180447%_))
                                 (if _%$e180451%_ _%$e180451%_ '""))
                               '"[:"
                               (number->string _%phi180441%_)
                               '":]#"
                               _%key180439%_)
                              (make-symbol__1
                               (let ((_%$e180455%_ _%ns180447%_))
                                 (if _%$e180455%_ _%$e180455%_ '""))
                               '"["
                               (number->string _%phi180441%_)
                               '"]#"
                               _%key180439%_))))
                    (gensym _%key180439%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key180462%_)
        (let* ((_%syntax?180464%_ '#f)
               (_%phi180466%_ (gx#current-expander-phi))
               (_%ctx180468%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key180462%_
           _%syntax?180464%_
           _%phi180466%_
           _%ctx180468%_))))
    (define gx#make-binding-id__1
      (lambda (_%key180470%_ _%syntax?180471%_)
        (let* ((_%phi180473%_ (gx#current-expander-phi))
               (_%ctx180475%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key180470%_
           _%syntax?180471%_
           _%phi180473%_
           _%ctx180475%_))))
    (define gx#make-binding-id__2
      (lambda (_%key180477%_ _%syntax?180478%_ _%phi180479%_)
        (let ((_%ctx180481%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key180477%_
           _%syntax?180478%_
           _%phi180479%_
           _%ctx180481%_))))
    (define gx#make-binding-id
      (lambda _g183657_
        (let ((_g183658_ (##length _g183657_)))
          (cond ((##fx= _g183658_ 1) (apply gx#make-binding-id__0 _g183657_))
                ((##fx= _g183658_ 2) (apply gx#make-binding-id__1 _g183657_))
                ((##fx= _g183658_ 3) (apply gx#make-binding-id__2 _g183657_))
                ((##fx= _g183658_ 4) (apply gx#make-binding-id__% _g183657_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g183657_))))))))
