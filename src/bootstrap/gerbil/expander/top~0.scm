(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1783939349)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx188460%_)
        (letrec ((_%expand-special188462%_
                  (lambda (_%hd188464%_ _%K188465%_ _%rest188466%_ _%r188467%_)
                    (_%K188465%_
                     _%rest188466%_
                     (cons (gx#core-expand-top _%hd188464%_) _%r188467%_)))))
          (gx#core-expand-block__0 _%stx188460%_ _%expand-special188462%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx188114%_)
        (letrec ((_%expand-special188116%_
                  (lambda (_%hd188236%_ _%K188237%_ _%rest188238%_ _%r188239%_)
                    (let* ((_%K*188243%_
                            (lambda (_%e188241%_)
                              (_%K188237%_
                               _%rest188238%_
                               (cons _%e188241%_ _%r188239%_))))
                           (_%$%e188244188296%_ _%hd188236%_)
                           (_%$%E188282188300%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e188244188296%_)))
                           (_%$%E188278188342%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e188244188296%_)
                                  (let ((_%$%e188283188304%_
                                         (gx#syntax-e _%$%e188244188296%_)))
                                    (let ((_%$%hd188284188307%_
                                           (##car _%$%e188283188304%_))
                                          (_%$%tl188285188309%_
                                           (##cdr _%$%e188283188304%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd188284188307%_)
                                               (gx#core-identifier=?
                                                _%$%hd188284188307%_
                                                '%#bind-runtime-properties!))
                                          (if (gx#stx-pair?
                                               _%$%tl188285188309%_)
                                              (let ((_%$%e188286188312%_
                                                     (gx#syntax-e
                                                      _%$%tl188285188309%_)))
                                                (let ((_%$%hd188287188315%_
                                                       (##car _%$%e188286188312%_))
                                                      (_%$%tl188288188317%_
                                                       (##cdr _%$%e188286188312%_)))
                                                  (if (gx#stx-pair?
                                                       _%$%hd188287188315%_)
                                                      (let ((_%$%e188292188320%_
                                                             (gx#syntax-e
                                                              _%$%hd188287188315%_)))
                                                        (let ((_%$%hd188293188323%_
                                                               (##car _%$%e188292188320%_))
                                                              (_%$%tl188294188325%_
                                                               (##cdr _%$%e188292188320%_)))
                                                          (let ((_%id188328%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%hd188293188323%_))
                    (if (gx#stx-null? _%$%tl188294188325%_)
                        (if (gx#stx-pair? _%$%tl188288188317%_)
                            (let ((_%$%e188289188330%_
                                   (gx#syntax-e _%$%tl188288188317%_)))
                              (let ((_%$%hd188290188333%_
                                     (##car _%$%e188289188330%_))
                                    (_%$%tl188291188335%_
                                     (##cdr _%$%e188289188330%_)))
                                (let ((_%props188338%_ _%$%hd188290188333%_))
                                  (if (gx#stx-null? _%$%tl188291188335%_)
                                      (let ((_%bind188340%_
                                             (gx#resolve-identifier__0
                                              _%id188328%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind188340%_
                                         _%props188338%_)
                                        (_%K188237%_
                                         _%rest188238%_
                                         _%r188239%_))
                                      (_%$%E188282188300%_)))))
                            (_%$%E188282188300%_))
                        (_%$%E188282188300%_)))))
              (_%$%E188282188300%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E188282188300%_))
                                          (_%$%E188282188300%_))))
                                  (_%$%E188282188300%_))))
                           (_%$%E188274188354%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e188244188296%_)
                                  (let ((_%$%e188279188346%_
                                         (gx#syntax-e _%$%e188244188296%_)))
                                    (let ((_%$%hd188280188349%_
                                           (##car _%$%e188279188346%_))
                                          (_%$%tl188281188351%_
                                           (##cdr _%$%e188279188346%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd188280188349%_)
                                               (gx#core-identifier=?
                                                _%$%hd188280188349%_
                                                '%#define-runtime))
                                          (_%K*188243%_
                                           (gx#core-expand-define-runtime%
                                            _%hd188236%_))
                                          (_%$%E188278188342%_))))
                                  (_%$%E188278188342%_))))
                           (_%$%E188270188366%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e188244188296%_)
                                  (let ((_%$%e188275188358%_
                                         (gx#syntax-e _%$%e188244188296%_)))
                                    (let ((_%$%hd188276188361%_
                                           (##car _%$%e188275188358%_))
                                          (_%$%tl188277188363%_
                                           (##cdr _%$%e188275188358%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd188276188361%_)
                                               (gx#core-identifier=?
                                                _%$%hd188276188361%_
                                                '%#define-alias))
                                          (_%K*188243%_
                                           (gx#core-expand-define-alias%
                                            _%hd188236%_))
                                          (_%$%E188274188354%_))))
                                  (_%$%E188274188354%_))))
                           (_%$%E188260188378%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e188244188296%_)
                                  (let ((_%$%e188271188370%_
                                         (gx#syntax-e _%$%e188244188296%_)))
                                    (let ((_%$%hd188272188373%_
                                           (##car _%$%e188271188370%_))
                                          (_%$%tl188273188375%_
                                           (##cdr _%$%e188271188370%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd188272188373%_)
                                               (gx#core-identifier=?
                                                _%$%hd188272188373%_
                                                '%#define-syntax))
                                          (_%K*188243%_
                                           (gx#core-expand-define-syntax%
                                            _%hd188236%_))
                                          (_%$%E188270188366%_))))
                                  (_%$%E188270188366%_))))
                           (_%$%E188250188410%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e188244188296%_)
                                  (let ((_%$%e188261188382%_
                                         (gx#syntax-e _%$%e188244188296%_)))
                                    (let ((_%$%hd188262188385%_
                                           (##car _%$%e188261188382%_))
                                          (_%$%tl188263188387%_
                                           (##cdr _%$%e188261188382%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd188262188385%_)
                                               (gx#core-identifier=?
                                                _%$%hd188262188385%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl188263188387%_)
                                              (let ((_%$%e188264188390%_
                                                     (gx#syntax-e
                                                      _%$%tl188263188387%_)))
                                                (let ((_%$%hd188265188393%_
                                                       (##car _%$%e188264188390%_))
                                                      (_%$%tl188266188395%_
                                                       (##cdr _%$%e188264188390%_)))
                                                  (let ((_%hd-bind188398%_
                                                         _%$%hd188265188393%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl188266188395%_)
                                                        (let ((_%$%e188267188400%_
                                                               (gx#syntax-e
                                                                _%$%tl188266188395%_)))
                                                          (let ((_%$%hd188268188403%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e188267188400%_))
                        (_%$%tl188269188405%_ (##cdr _%$%e188267188400%_)))
                    (let ((_%expr188408%_ _%$%hd188268188403%_))
                      (if (gx#stx-null? _%$%tl188269188405%_)
                          (if (gx#core-bind-values? _%hd-bind188398%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind188398%_)
                                (_%K*188243%_ _%hd188236%_))
                              (_%$%E188260188378%_))
                          (_%$%E188260188378%_)))))
                (_%$%E188260188378%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E188260188378%_))
                                          (_%$%E188260188378%_))))
                                  (_%$%E188260188378%_))))
                           (_%$%E188246188444%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e188244188296%_)
                                  (let ((_%$%e188251188414%_
                                         (gx#syntax-e _%$%e188244188296%_)))
                                    (let ((_%$%hd188252188417%_
                                           (##car _%$%e188251188414%_))
                                          (_%$%tl188253188419%_
                                           (##cdr _%$%e188251188414%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd188252188417%_)
                                               (gx#core-identifier=?
                                                _%$%hd188252188417%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl188253188419%_)
                                              (let ((_%$%e188254188422%_
                                                     (gx#syntax-e
                                                      _%$%tl188253188419%_)))
                                                (let ((_%$%hd188255188425%_
                                                       (##car _%$%e188254188422%_))
                                                      (_%$%tl188256188427%_
                                                       (##cdr _%$%e188254188422%_)))
                                                  (let ((_%hd-bind188430%_
                                                         _%$%hd188255188425%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl188256188427%_)
                                                        (let ((_%$%e188257188432%_
                                                               (gx#syntax-e
                                                                _%$%tl188256188427%_)))
                                                          (let ((_%$%hd188258188435%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e188257188432%_))
                        (_%$%tl188259188437%_ (##cdr _%$%e188257188432%_)))
                    (let* ((_%expr188440%_ _%$%hd188258188435%_)
                           (_%props188442%_ _%$%tl188259188437%_))
                      (if (and (gx#core-bind-values? _%hd-bind188430%_)
                               (gx#stx-list? _%props188442%_)
                               (not (gx#stx-null? _%props188442%_)))
                          (begin
                            (gx#core-bind-values!__0 _%hd-bind188430%_)
                            (_%K188237%_
                             (cons (gx#core-cons
                                    '%#bind-runtime-properties!
                                    (cons _%hd-bind188430%_
                                          (cons _%props188442%_ '())))
                                   _%rest188238%_)
                             (cons (gx#core-cons
                                    '%#define-values
                                    (cons _%hd-bind188430%_
                                          (cons _%expr188440%_ '())))
                                   _%r188239%_)))
                          (_%$%E188250188410%_)))))
                (_%$%E188250188410%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E188250188410%_))
                                          (_%$%E188250188410%_))))
                                  (_%$%E188250188410%_))))
                           (_%$%E188245188456%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e188244188296%_)
                                  (let ((_%$%e188247188448%_
                                         (gx#syntax-e _%$%e188244188296%_)))
                                    (let ((_%$%hd188248188451%_
                                           (##car _%$%e188247188448%_))
                                          (_%$%tl188249188453%_
                                           (##cdr _%$%e188247188448%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd188248188451%_)
                                               (gx#core-identifier=?
                                                _%$%hd188248188451%_
                                                '%#begin-syntax))
                                          (_%K*188243%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd188236%_))
                                          (_%$%E188246188444%_))))
                                  (_%$%E188246188444%_)))))
                      (_%$%E188245188456%_))))
                 (_%eval-body188117%_
                  (lambda (_%rbody188125%_)
                    (let _%lp188127%_ ((_%rest188129%_ _%rbody188125%_)
                                       (_%body188130%_ '())
                                       (_%ebody188131%_ '()))
                      (let* ((_%$%rest188132188140%_ _%rest188129%_)
                             (_%$%else188134188148%_
                              (lambda ()
                                (values _%body188130%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody188131%_)
                                          (gx#stx-source _%stx188114%_))))))
                             (_%$%K188136188224%_
                              (lambda (_%rest188151%_ _%hd188152%_)
                                (let* ((_%$%e188153188170%_ _%hd188152%_)
                                       (_%$%E188165188174%_
                                        (lambda ()
                                          (_%lp188127%_
                                           _%rest188151%_
                                           (cons _%hd188152%_ _%body188130%_)
                                           (cons _%hd188152%_
                                                 _%ebody188131%_))))
                                       (_%$%E188155188186%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e188153188170%_)
                                              (let ((_%$%e188166188178%_
                                                     (gx#syntax-e
                                                      _%$%e188153188170%_)))
                                                (let ((_%$%hd188167188181%_
                                                       (##car _%$%e188166188178%_))
                                                      (_%$%tl188168188183%_
                                                       (##cdr _%$%e188166188178%_)))
                                                  (if (and (gx#identifier?
                                                            _%$%hd188167188181%_)
                                                           (gx#core-identifier=?
                                                            _%$%hd188167188181%_
                                                            '%#begin-syntax))
                                                      (_%lp188127%_
                                                       _%rest188151%_
                                                       (cons _%hd188152%_
                                                             _%body188130%_)
                                                       _%ebody188131%_)
                                                      (_%$%E188165188174%_))))
                                              (_%$%E188165188174%_))))
                                       (_%$%E188154188220%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e188153188170%_)
                                              (let ((_%$%e188156188190%_
                                                     (gx#syntax-e
                                                      _%$%e188153188170%_)))
                                                (let ((_%$%hd188157188193%_
                                                       (##car _%$%e188156188190%_))
                                                      (_%$%tl188158188195%_
                                                       (##cdr _%$%e188156188190%_)))
                                                  (if (and (gx#identifier?
                                                            _%$%hd188157188193%_)
                                                           (gx#core-identifier=?
                                                            _%$%hd188157188193%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%$%tl188158188195%_)
                                                          (let ((_%$%e188159188198%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl188158188195%_)))
                    (let ((_%$%hd188160188201%_ (##car _%$%e188159188198%_))
                          (_%$%tl188161188203%_ (##cdr _%$%e188159188198%_)))
                      (let ((_%hd-bind188206%_ _%$%hd188160188201%_))
                        (if (gx#stx-pair? _%$%tl188161188203%_)
                            (let ((_%$%e188162188208%_
                                   (gx#syntax-e _%$%tl188161188203%_)))
                              (let ((_%$%hd188163188211%_
                                     (##car _%$%e188162188208%_))
                                    (_%$%tl188164188213%_
                                     (##cdr _%$%e188162188208%_)))
                                (let ((_%expr188216%_ _%$%hd188163188211%_))
                                  (if (gx#stx-null? _%$%tl188164188213%_)
                                      (let ((_%ehd188218%_
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#define-values)
                                                    (cons (gx#core-quote-bind-values
                                                           _%hd-bind188206%_)
                                                          (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%expr188216%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%hd188152%_))))
                                        (_%lp188127%_
                                         _%rest188151%_
                                         (cons _%ehd188218%_ _%body188130%_)
                                         (cons _%ehd188218%_ _%ebody188131%_)))
                                      (_%$%E188155188186%_)))))
                            (_%$%E188155188186%_)))))
                  (_%$%E188155188186%_))
              (_%$%E188155188186%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E188155188186%_)))))
                                  (_%$%E188154188220%_)))))
                        (if (pair? _%$%rest188132188140%_)
                            (let ((_%$%hd188137188227%_
                                   (##car _%$%rest188132188140%_))
                                  (_%$%tl188138188229%_
                                   (##cdr _%$%rest188132188140%_)))
                              (let* ((_%hd188232%_ _%$%hd188137188227%_)
                                     (_%rest188234%_ _%$%tl188138188229%_))
                                (_%$%K188136188224%_
                                 _%rest188234%_
                                 _%hd188232%_)))
                            (_%$%else188134188148%_)))))))
          (call-with-parameters__1
           (lambda ()
             (let* ((_%rbody188120%_
                     (gx#core-expand-block__1
                      _%stx188114%_
                      _%expand-special188116%_
                      '#f))
                    (_g188493_ (_%eval-body188117%_ _%rbody188120%_)))
               (begin
                 (let ((_g188494_
                        (if (##values? _g188493_)
                            (##values-length _g188493_)
                            1)))
                   (if (not (##fx= _g188494_ 2))
                       (error "Context expects 2 values" _g188494_)))
                 (let ((_%expanded-body188122%_ (##values-ref _g188493_ 0))
                       (_%value188123%_ (##values-ref _g188493_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body188122%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value188123%_ '())))
                    (gx#stx-source _%stx188114%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx188084%_)
        (let* ((_%$%e188085188092%_ _%stx188084%_)
               (_%$%E188087188096%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e188085188092%_)))
               (_%$%E188086188110%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e188085188092%_)
                      (let ((_%$%e188088188100%_
                             (gx#syntax-e _%$%e188085188092%_)))
                        (let ((_%$%hd188089188103%_
                               (##car _%$%e188088188100%_))
                              (_%$%tl188090188105%_
                               (##cdr _%$%e188088188100%_)))
                          (let ((_%body188108%_ _%$%tl188090188105%_))
                            (if (gx#stx-list? _%body188108%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body188108%_)
                                 (gx#stx-source _%stx188084%_))
                                (_%$%E188087188096%_)))))
                      (_%$%E188087188096%_)))))
          (_%$%E188086188110%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx188082%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx188082%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx188028%_)
        (let* ((_%$%e188029188042%_ _%stx188028%_)
               (_%$%E188031188046%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e188029188042%_)))
               (_%$%E188030188078%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e188029188042%_)
                      (let ((_%$%e188032188050%_
                             (gx#syntax-e _%$%e188029188042%_)))
                        (let ((_%$%hd188033188053%_
                               (##car _%$%e188032188050%_))
                              (_%$%tl188034188055%_
                               (##cdr _%$%e188032188050%_)))
                          (if (gx#stx-pair? _%$%tl188034188055%_)
                              (let ((_%$%e188035188058%_
                                     (gx#syntax-e _%$%tl188034188055%_)))
                                (let ((_%$%hd188036188061%_
                                       (##car _%$%e188035188058%_))
                                      (_%$%tl188037188063%_
                                       (##cdr _%$%e188035188058%_)))
                                  (let ((_%ann188066%_ _%$%hd188036188061%_))
                                    (if (gx#stx-pair? _%$%tl188037188063%_)
                                        (let ((_%$%e188038188068%_
                                               (gx#syntax-e
                                                _%$%tl188037188063%_)))
                                          (let ((_%$%hd188039188071%_
                                                 (##car _%$%e188038188068%_))
                                                (_%$%tl188040188073%_
                                                 (##cdr _%$%e188038188068%_)))
                                            (let ((_%expr188076%_
                                                   _%$%hd188039188071%_))
                                              (if (gx#stx-null?
                                                   _%$%tl188040188073%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann188066%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr188076%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx188028%_))
                                                  (_%$%E188031188046%_)))))
                                        (_%$%E188031188046%_)))))
                              (_%$%E188031188046%_))))
                      (_%$%E188031188046%_)))))
          (_%$%E188030188078%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx187653%_ _%body187654%_)
        (letrec ((_%expand-special187656%_
                  (lambda (_%hd188023%_ _%K188024%_ _%rest188025%_ _%r188026%_)
                    (_%K188024%_
                     '()
                     (cons (_%expand-internal187657%_
                            _%hd188023%_
                            _%rest188025%_)
                           _%r188026%_))))
                 (_%expand-internal187657%_
                  (lambda (_%hd188019%_ _%rest188020%_)
                    (call-with-parameters__1
                     (lambda ()
                       (_%wrap-internal187659%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd188019%_ _%rest188020%_))
                          (gx#stx-source _%stx187653%_))
                         _%expand-internal-special187658%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj188477
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj188477)
                       __obj188477))))
                 (_%expand-internal-special187658%_
                  (lambda (_%hd187815%_ _%K187816%_ _%rest187817%_ _%r187818%_)
                    (let* ((_%$%e187819187867%_ _%hd187815%_)
                           (_%$%E187862187871%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e187819187867%_)))
                           (_%$%E187849187883%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e187819187867%_)
                                  (let ((_%$%e187863187875%_
                                         (gx#syntax-e _%$%e187819187867%_)))
                                    (let ((_%$%hd187864187878%_
                                           (##car _%$%e187863187875%_))
                                          (_%$%tl187865187880%_
                                           (##cdr _%$%e187863187875%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd187864187878%_)
                                               (gx#core-identifier=?
                                                _%$%hd187864187878%_
                                                '%#declare))
                                          (_%K187816%_
                                           _%rest187817%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd187815%_)
                                                 _%r187818%_))
                                          (_%$%E187862187871%_))))
                                  (_%$%E187862187871%_))))
                           (_%$%E187845187925%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e187819187867%_)
                                  (let ((_%$%e187850187887%_
                                         (gx#syntax-e _%$%e187819187867%_)))
                                    (let ((_%$%hd187851187890%_
                                           (##car _%$%e187850187887%_))
                                          (_%$%tl187852187892%_
                                           (##cdr _%$%e187850187887%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd187851187890%_)
                                               (gx#core-identifier=?
                                                _%$%hd187851187890%_
                                                '%#bind-runtime-properties!))
                                          (if (gx#stx-pair?
                                               _%$%tl187852187892%_)
                                              (let ((_%$%e187853187895%_
                                                     (gx#syntax-e
                                                      _%$%tl187852187892%_)))
                                                (let ((_%$%hd187854187898%_
                                                       (##car _%$%e187853187895%_))
                                                      (_%$%tl187855187900%_
                                                       (##cdr _%$%e187853187895%_)))
                                                  (if (gx#stx-pair?
                                                       _%$%hd187854187898%_)
                                                      (let ((_%$%e187859187903%_
                                                             (gx#syntax-e
                                                              _%$%hd187854187898%_)))
                                                        (let ((_%$%hd187860187906%_
                                                               (##car _%$%e187859187903%_))
                                                              (_%$%tl187861187908%_
                                                               (##cdr _%$%e187859187903%_)))
                                                          (let ((_%id187911%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%hd187860187906%_))
                    (if (gx#stx-null? _%$%tl187861187908%_)
                        (if (gx#stx-pair? _%$%tl187855187900%_)
                            (let ((_%$%e187856187913%_
                                   (gx#syntax-e _%$%tl187855187900%_)))
                              (let ((_%$%hd187857187916%_
                                     (##car _%$%e187856187913%_))
                                    (_%$%tl187858187918%_
                                     (##cdr _%$%e187856187913%_)))
                                (let ((_%props187921%_ _%$%hd187857187916%_))
                                  (if (gx#stx-null? _%$%tl187858187918%_)
                                      (let ((_%bind187923%_
                                             (gx#resolve-identifier__0
                                              _%id187911%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind187923%_
                                         _%props187921%_)
                                        (_%K187816%_
                                         _%rest187817%_
                                         _%r187818%_))
                                      (_%$%E187849187883%_)))))
                            (_%$%E187849187883%_))
                        (_%$%E187849187883%_)))))
              (_%$%E187849187883%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E187849187883%_))
                                          (_%$%E187849187883%_))))
                                  (_%$%E187849187883%_))))
                           (_%$%E187841187937%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e187819187867%_)
                                  (let ((_%$%e187846187929%_
                                         (gx#syntax-e _%$%e187819187867%_)))
                                    (let ((_%$%hd187847187932%_
                                           (##car _%$%e187846187929%_))
                                          (_%$%tl187848187934%_
                                           (##cdr _%$%e187846187929%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd187847187932%_)
                                               (gx#core-identifier=?
                                                _%$%hd187847187932%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd187815%_)
                                            (_%K187816%_
                                             _%rest187817%_
                                             _%r187818%_))
                                          (_%$%E187845187925%_))))
                                  (_%$%E187845187925%_))))
                           (_%$%E187831187949%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e187819187867%_)
                                  (let ((_%$%e187842187941%_
                                         (gx#syntax-e _%$%e187819187867%_)))
                                    (let ((_%$%hd187843187944%_
                                           (##car _%$%e187842187941%_))
                                          (_%$%tl187844187946%_
                                           (##cdr _%$%e187842187941%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd187843187944%_)
                                               (gx#core-identifier=?
                                                _%$%hd187843187944%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd187815%_)
                                            (_%K187816%_
                                             _%rest187817%_
                                             _%r187818%_))
                                          (_%$%E187841187937%_))))
                                  (_%$%E187841187937%_))))
                           (_%$%E187821187981%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e187819187867%_)
                                  (let ((_%$%e187832187953%_
                                         (gx#syntax-e _%$%e187819187867%_)))
                                    (let ((_%$%hd187833187956%_
                                           (##car _%$%e187832187953%_))
                                          (_%$%tl187834187958%_
                                           (##cdr _%$%e187832187953%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd187833187956%_)
                                               (gx#core-identifier=?
                                                _%$%hd187833187956%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl187834187958%_)
                                              (let ((_%$%e187835187961%_
                                                     (gx#syntax-e
                                                      _%$%tl187834187958%_)))
                                                (let ((_%$%hd187836187964%_
                                                       (##car _%$%e187835187961%_))
                                                      (_%$%tl187837187966%_
                                                       (##cdr _%$%e187835187961%_)))
                                                  (let ((_%hd-bind187969%_
                                                         _%$%hd187836187964%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl187837187966%_)
                                                        (let ((_%$%e187838187971%_
                                                               (gx#syntax-e
                                                                _%$%tl187837187966%_)))
                                                          (let ((_%$%hd187839187974%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e187838187971%_))
                        (_%$%tl187840187976%_ (##cdr _%$%e187838187971%_)))
                    (let ((_%expr187979%_ _%$%hd187839187974%_))
                      (if (gx#stx-null? _%$%tl187840187976%_)
                          (if (gx#core-bind-values? _%hd-bind187969%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind187969%_)
                                (_%K187816%_
                                 _%rest187817%_
                                 (cons _%hd187815%_ _%r187818%_)))
                              (_%$%E187831187949%_))
                          (_%$%E187831187949%_)))))
                (_%$%E187831187949%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E187831187949%_))
                                          (_%$%E187831187949%_))))
                                  (_%$%E187831187949%_))))
                           (_%$%E187820188015%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e187819187867%_)
                                  (let ((_%$%e187822187985%_
                                         (gx#syntax-e _%$%e187819187867%_)))
                                    (let ((_%$%hd187823187988%_
                                           (##car _%$%e187822187985%_))
                                          (_%$%tl187824187990%_
                                           (##cdr _%$%e187822187985%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd187823187988%_)
                                               (gx#core-identifier=?
                                                _%$%hd187823187988%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl187824187990%_)
                                              (let ((_%$%e187825187993%_
                                                     (gx#syntax-e
                                                      _%$%tl187824187990%_)))
                                                (let ((_%$%hd187826187996%_
                                                       (##car _%$%e187825187993%_))
                                                      (_%$%tl187827187998%_
                                                       (##cdr _%$%e187825187993%_)))
                                                  (let ((_%hd-bind188001%_
                                                         _%$%hd187826187996%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl187827187998%_)
                                                        (let ((_%$%e187828188003%_
                                                               (gx#syntax-e
                                                                _%$%tl187827187998%_)))
                                                          (let ((_%$%hd187829188006%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e187828188003%_))
                        (_%$%tl187830188008%_ (##cdr _%$%e187828188003%_)))
                    (let* ((_%expr188011%_ _%$%hd187829188006%_)
                           (_%props188013%_ _%$%tl187830188008%_))
                      (if (and (gx#core-bind-values? _%hd-bind188001%_)
                               (gx#stx-list? _%props188013%_)
                               (not (gx#stx-null? _%props188013%_)))
                          (begin
                            (gx#core-bind-values!__0 _%hd-bind188001%_)
                            (_%K187816%_
                             (cons (gx#core-cons
                                    '%#bind-runtime-properties!
                                    (cons _%hd-bind188001%_
                                          (cons _%props188013%_ '())))
                                   _%rest187817%_)
                             (cons (gx#core-cons
                                    '%#define-values
                                    (cons _%hd-bind188001%_
                                          (cons _%expr188011%_ '())))
                                   _%r187818%_)))
                          (_%$%E187821187981%_)))))
                (_%$%E187821187981%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E187821187981%_))
                                          (_%$%E187821187981%_))))
                                  (_%$%E187821187981%_)))))
                      (_%$%E187820188015%_))))
                 (_%wrap-internal187659%_
                  (lambda (_%rbody187661%_)
                    (let _%lp187663%_ ((_%rest187665%_ _%rbody187661%_)
                                       (_%decls187666%_ '())
                                       (_%bind187667%_ '())
                                       (_%body187668%_ '()))
                      (let* ((_%$%e187669187676%_ _%rest187665%_)
                             (_%$%E187671187725%_
                              (lambda ()
                                (let* ((_%body187720%_
                                        (let* ((_%$%body187679187689%_
                                                _%body187668%_)
                                               (_%$%else187682187697%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body187668%_)
                                                   (gx#stx-source
                                                    _%stx187653%_)))))
                                          (let ((_%$%K187687187717%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx187653%_)))
                                                (_%$%K187684187703%_
                                                 (lambda (_%expr187701%_)
                                                   _%expr187701%_)))
                                            (let ((_%$%try-match187681187713%_
                                                   (lambda ()
                                                     (if (pair? _%$%body187679187689%_)
                                                         (let ((_%$%tl187686187708%_
                                                                (##cdr _%$%body187679187689%_))
                                                               (_%$%hd187685187706%_
                                                                (##car _%$%body187679187689%_)))
                                                           (if (null? _%$%tl187686187708%_)
                                                               (let ((_%expr187711%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%hd187685187706%_))
                         (_%$%K187684187703%_ _%expr187711%_))
                       (_%$%else187682187697%_)))
                 (_%$%else187682187697%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%$%body187679187689%_)
                                                  (_%$%K187687187717%_)
                                                  (_%$%try-match187681187713%_))))))
                                       (_%body187722%_
                                        (if (null? _%bind187667%_)
                                            _%body187720%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind187667%_
                                                         (cons _%body187720%_
                                                               '())))
                                             (gx#stx-source _%stx187653%_)))))
                                  (if (null? _%decls187666%_)
                                      _%body187722%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls187666%_
                                                   (cons _%body187722%_ '())))
                                       (gx#stx-source _%stx187653%_))))))
                             (_%$%E187670187811%_
                              (lambda ()
                                (if (gx#stx-pair? _%$%e187669187676%_)
                                    (let ((_%$%e187672187729%_
                                           (gx#syntax-e _%$%e187669187676%_)))
                                      (let ((_%$%hd187673187732%_
                                             (##car _%$%e187672187729%_))
                                            (_%$%tl187674187734%_
                                             (##cdr _%$%e187672187729%_)))
                                        (let* ((_%hd187737%_
                                                _%$%hd187673187732%_)
                                               (_%rest187739%_
                                                _%$%tl187674187734%_)
                                               (_%$%e187740187757%_
                                                _%hd187737%_)
                                               (_%$%E187752187761%_
                                                (lambda ()
                                                  (if (null? _%bind187667%_)
                                                      (_%lp187663%_
                                                       _%rest187739%_
                                                       _%decls187666%_
                                                       _%bind187667%_
                                                       (cons _%hd187737%_
                                                             _%body187668%_))
                                                      (_%lp187663%_
                                                       _%rest187739%_
                                                       _%decls187666%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd187737%_ '()))
                     _%bind187667%_)
               _%body187668%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%E187742187775%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%$%e187740187757%_)
                                                      (let ((_%$%e187753187765%_
                                                             (gx#syntax-e
                                                              _%$%e187740187757%_)))
                                                        (let ((_%$%hd187754187768%_
                                                               (##car _%$%e187753187765%_))
                                                              (_%$%tl187755187770%_
                                                               (##cdr _%$%e187753187765%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%hd187754187768%_)
                           (gx#core-identifier=?
                            _%$%hd187754187768%_
                            '%#declare))
                      (let ((_%xdecls187773%_ _%$%tl187755187770%_))
                        (_%lp187663%_
                         _%rest187739%_
                         (gx#stx-foldr cons _%decls187666%_ _%xdecls187773%_)
                         _%bind187667%_
                         _%body187668%_))
                      (_%$%E187752187761%_))))
              (_%$%E187752187761%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%E187741187807%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%$%e187740187757%_)
                                                      (let ((_%$%e187743187779%_
                                                             (gx#syntax-e
                                                              _%$%e187740187757%_)))
                                                        (let ((_%$%hd187744187782%_
                                                               (##car _%$%e187743187779%_))
                                                              (_%$%tl187745187784%_
                                                               (##cdr _%$%e187743187779%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%hd187744187782%_)
                           (gx#core-identifier=?
                            _%$%hd187744187782%_
                            '%#define-values))
                      (if (gx#stx-pair? _%$%tl187745187784%_)
                          (let ((_%$%e187746187787%_
                                 (gx#syntax-e _%$%tl187745187784%_)))
                            (let ((_%$%hd187747187790%_
                                   (##car _%$%e187746187787%_))
                                  (_%$%tl187748187792%_
                                   (##cdr _%$%e187746187787%_)))
                              (let ((_%hd-bind187795%_ _%$%hd187747187790%_))
                                (if (gx#stx-pair? _%$%tl187748187792%_)
                                    (let ((_%$%e187749187797%_
                                           (gx#syntax-e _%$%tl187748187792%_)))
                                      (let ((_%$%hd187750187800%_
                                             (##car _%$%e187749187797%_))
                                            (_%$%tl187751187802%_
                                             (##cdr _%$%e187749187797%_)))
                                        (let ((_%expr187805%_
                                               _%$%hd187750187800%_))
                                          (if (gx#stx-null?
                                               _%$%tl187751187802%_)
                                              (_%lp187663%_
                                               _%rest187739%_
                                               _%decls187666%_
                                               (cons (cons (gx#core-quote-bind-values
                                                            _%hd-bind187795%_)
                                                           (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%expr187805%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind187667%_)
                                               _%body187668%_)
                                              (_%$%E187742187775%_)))))
                                    (_%$%E187742187775%_)))))
                          (_%$%E187742187775%_))
                      (_%$%E187742187775%_))))
              (_%$%E187742187775%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%E187741187807%_))))
                                    (_%$%E187671187725%_)))))
                        (_%$%E187670187811%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body187654%_)
            (gx#stx-source _%stx187653%_))
           _%expand-special187656%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx187591%_)
        (let* ((_%$%e187592187599%_ _%stx187591%_)
               (_%$%E187594187603%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e187592187599%_)))
               (_%$%E187593187649%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e187592187599%_)
                      (let ((_%$%e187595187607%_
                             (gx#syntax-e _%$%e187592187599%_)))
                        (let ((_%$%hd187596187610%_
                               (##car _%$%e187595187607%_))
                              (_%$%tl187597187612%_
                               (##cdr _%$%e187595187607%_)))
                          (let ((_%body187615%_ _%$%tl187597187612%_))
                            (if (gx#stx-list? _%body187615%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl187617%_)
                                     (let* ((_%$%e187618187625%_
                                             _%decl187617%_)
                                            (_%$%E187620187629%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%$%e187618187625%_)))
                                            (_%$%E187619187645%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%$%e187618187625%_)
                                                   (let ((_%$%e187621187633%_
                                                          (gx#syntax-e
                                                           _%$%e187618187625%_)))
                                                     (let ((_%$%hd187622187636%_
                                                            (##car _%$%e187621187633%_))
                                                           (_%$%tl187623187638%_
                                                            (##cdr _%$%e187621187633%_)))
                                                       (let* ((_%head187641%_
                                                               _%$%hd187622187636%_)
                                                              (_%args187643%_
                                                               _%$%tl187623187638%_))
                                                         (if (gx#stx-list?
                                                              _%args187643%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl187617%_)
                                                             (_%$%E187620187629%_)))))
                                                   (_%$%E187620187629%_)))))
                                       (_%$%E187619187645%_)))
                                   _%body187615%_))
                                 (gx#stx-source _%stx187591%_))
                                (_%$%E187594187603%_)))))
                      (_%$%E187594187603%_)))))
          (_%$%E187593187649%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx187495%_)
        (let* ((_%$%e187496187503%_ _%stx187495%_)
               (_%$%E187498187507%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e187496187503%_)))
               (_%$%E187497187587%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e187496187503%_)
                      (let ((_%$%e187499187511%_
                             (gx#syntax-e _%$%e187496187503%_)))
                        (let ((_%$%hd187500187514%_
                               (##car _%$%e187499187511%_))
                              (_%$%tl187501187516%_
                               (##cdr _%$%e187499187511%_)))
                          (let ((_%body187519%_ _%$%tl187501187516%_))
                            (let _%lp187521%_ ((_%rest187523%_ _%body187519%_)
                                               (_%r187524%_ '()))
                              (let* ((_%$%e187525187539%_ _%rest187523%_)
                                     (_%$%E187537187543%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx187495%_)))
                                     (_%$%E187527187547%_
                                      (lambda ()
                                        (if (gx#stx-null? _%$%e187525187539%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r187524%_))
                                             (gx#stx-source _%stx187495%_))
                                            (_%$%E187537187543%_))))
                                     (_%$%E187526187583%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%$%e187525187539%_)
                                            (let ((_%$%e187528187551%_
                                                   (gx#syntax-e
                                                    _%$%e187525187539%_)))
                                              (let ((_%$%hd187529187554%_
                                                     (##car _%$%e187528187551%_))
                                                    (_%$%tl187530187556%_
                                                     (##cdr _%$%e187528187551%_)))
                                                (if (gx#stx-pair?
                                                     _%$%hd187529187554%_)
                                                    (let ((_%$%e187531187559%_
                                                           (gx#syntax-e
                                                            _%$%hd187529187554%_)))
                                                      (let ((_%$%hd187532187562%_
                                                             (##car _%$%e187531187559%_))
                                                            (_%$%tl187533187564%_
                                                             (##cdr _%$%e187531187559%_)))
                                                        (let ((_%id187567%_
                                                               _%$%hd187532187562%_))
                                                          (if (gx#stx-pair?
                                                               _%$%tl187533187564%_)
                                                              (let ((_%$%e187534187569%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%$%tl187533187564%_)))
                        (let ((_%$%hd187535187572%_
                               (##car _%$%e187534187569%_))
                              (_%$%tl187536187574%_
                               (##cdr _%$%e187534187569%_)))
                          (let ((_%eid187577%_ _%$%hd187535187572%_))
                            (if (gx#stx-null? _%$%tl187536187574%_)
                                (let ((_%rest187579%_ _%$%tl187530187556%_))
                                  (if (and (gx#identifier? _%id187567%_)
                                           (gx#identifier? _%eid187577%_))
                                      (let ((_%eid187581%_
                                             (gx#stx-e _%eid187577%_)))
                                        (gx#core-bind-extern!__0
                                         _%id187567%_
                                         _%eid187581%_)
                                        (_%lp187521%_
                                         _%rest187579%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id187567%_)
                                                     (cons _%eid187581%_ '()))
                                               _%r187524%_)))
                                      (_%$%E187527187547%_)))
                                (_%$%E187527187547%_)))))
                      (_%$%E187527187547%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E187527187547%_))))
                                            (_%$%E187527187547%_)))))
                                (_%$%E187526187583%_))))))
                      (_%$%E187498187507%_)))))
          (_%$%E187497187587%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx187397%_)
        (let* ((_%$%e187398187421%_ _%stx187397%_)
               (_%$%E187410187425%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e187398187421%_)))
               (_%$%E187400187457%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e187398187421%_)
                      (let ((_%$%e187411187429%_
                             (gx#syntax-e _%$%e187398187421%_)))
                        (let ((_%$%hd187412187432%_
                               (##car _%$%e187411187429%_))
                              (_%$%tl187413187434%_
                               (##cdr _%$%e187411187429%_)))
                          (if (gx#stx-pair? _%$%tl187413187434%_)
                              (let ((_%$%e187414187437%_
                                     (gx#syntax-e _%$%tl187413187434%_)))
                                (let ((_%$%hd187415187440%_
                                       (##car _%$%e187414187437%_))
                                      (_%$%tl187416187442%_
                                       (##cdr _%$%e187414187437%_)))
                                  (let ((_%hd187445%_ _%$%hd187415187440%_))
                                    (if (gx#stx-pair? _%$%tl187416187442%_)
                                        (let ((_%$%e187417187447%_
                                               (gx#syntax-e
                                                _%$%tl187416187442%_)))
                                          (let ((_%$%hd187418187450%_
                                                 (##car _%$%e187417187447%_))
                                                (_%$%tl187419187452%_
                                                 (##cdr _%$%e187417187447%_)))
                                            (let ((_%expr187455%_
                                                   _%$%hd187418187450%_))
                                              (if (gx#stx-null?
                                                   _%$%tl187419187452%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd187445%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd187445%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd187445%_)
                             (cons (gx#core-expand-expression _%expr187455%_)
                                   '())))
                 (gx#stx-source _%stx187397%_)))
              (_%$%E187410187425%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E187410187425%_)))))
                                        (_%$%E187410187425%_)))))
                              (_%$%E187410187425%_))))
                      (_%$%E187410187425%_))))
               (_%$%E187399187491%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e187398187421%_)
                      (let ((_%$%e187401187461%_
                             (gx#syntax-e _%$%e187398187421%_)))
                        (let ((_%$%hd187402187464%_
                               (##car _%$%e187401187461%_))
                              (_%$%tl187403187466%_
                               (##cdr _%$%e187401187461%_)))
                          (if (gx#stx-pair? _%$%tl187403187466%_)
                              (let ((_%$%e187404187469%_
                                     (gx#syntax-e _%$%tl187403187466%_)))
                                (let ((_%$%hd187405187472%_
                                       (##car _%$%e187404187469%_))
                                      (_%$%tl187406187474%_
                                       (##cdr _%$%e187404187469%_)))
                                  (let ((_%hd187477%_ _%$%hd187405187472%_))
                                    (if (gx#stx-pair? _%$%tl187406187474%_)
                                        (let ((_%$%e187407187479%_
                                               (gx#syntax-e
                                                _%$%tl187406187474%_)))
                                          (let ((_%$%hd187408187482%_
                                                 (##car _%$%e187407187479%_))
                                                (_%$%tl187409187484%_
                                                 (##cdr _%$%e187407187479%_)))
                                            (let* ((_%expr187487%_
                                                    _%$%hd187408187482%_)
                                                   (_%props187489%_
                                                    _%$%tl187409187484%_))
                                              (if (and (gx#stx-list?
                                                        _%props187489%_)
                                                       (not (gx#stx-null?
                                                             _%props187489%_)))
                                                  (gx#core-cons
                                                   '%#begin
                                                   (cons (gx#core-cons
                                                          '%#define-values
                                                          (cons _%hd187477%_
                                                                (cons _%expr187487%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
                 (cons (gx#core-cons
                        '%#bind-runtime-properties!
                        (cons _%hd187477%_ (cons _%props187489%_ '())))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E187400187457%_)))))
                                        (_%$%E187400187457%_)))))
                              (_%$%E187400187457%_))))
                      (_%$%E187400187457%_)))))
          (_%$%E187399187491%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx187336%_)
        (let* ((_%$%e187337187350%_ _%stx187336%_)
               (_%$%E187339187354%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e187337187350%_)))
               (_%$%E187338187393%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e187337187350%_)
                      (let ((_%$%e187340187358%_
                             (gx#syntax-e _%$%e187337187350%_)))
                        (let ((_%$%hd187341187361%_
                               (##car _%$%e187340187358%_))
                              (_%$%tl187342187363%_
                               (##cdr _%$%e187340187358%_)))
                          (if (gx#stx-pair? _%$%tl187342187363%_)
                              (let ((_%$%e187343187366%_
                                     (gx#syntax-e _%$%tl187342187363%_)))
                                (let ((_%$%hd187344187369%_
                                       (##car _%$%e187343187366%_))
                                      (_%$%tl187345187371%_
                                       (##cdr _%$%e187343187366%_)))
                                  (let ((_%id187374%_ _%$%hd187344187369%_))
                                    (if (gx#stx-pair? _%$%tl187345187371%_)
                                        (let ((_%$%e187346187376%_
                                               (gx#syntax-e
                                                _%$%tl187345187371%_)))
                                          (let ((_%$%hd187347187379%_
                                                 (##car _%$%e187346187376%_))
                                                (_%$%tl187348187381%_
                                                 (##cdr _%$%e187346187376%_)))
                                            (let* ((_%binding-id187384%_
                                                    _%$%hd187347187379%_)
                                                   (_%props187386%_
                                                    _%$%tl187348187381%_))
                                              (if (and (gx#identifier?
                                                        _%id187374%_)
                                                       (gx#identifier?
                                                        _%binding-id187384%_)
                                                       (gx#stx-list?
                                                        _%props187386%_))
                                                  (let* ((_%eid187388%_
                                                          (gx#stx-e
                                                           _%binding-id187384%_))
                                                         (_%bind187390%_
                                                          (gx#core-bind-runtime-reference!__0
                                                           _%id187374%_
                                                           _%eid187388%_)))
                                                    (gx#core-bind-runtime-properties!
                                                     _%bind187390%_
                                                     _%props187386%_)
                                                    (gx#core-quote-syntax__0
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#define-runtime)
                                                           (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id187374%_)
                         (cons _%eid187388%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E187339187354%_)))))
                                        (_%$%E187339187354%_)))))
                              (_%$%E187339187354%_))))
                      (_%$%E187339187354%_)))))
          (_%$%E187338187393%_))))
    (define gx#core-expand-bind-runtime-properties%
      (lambda (_%stx187269%_)
        (let* ((_%$%e187270187286%_ _%stx187269%_)
               (_%$%E187272187290%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e187270187286%_)))
               (_%$%E187271187332%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e187270187286%_)
                      (let ((_%$%e187273187294%_
                             (gx#syntax-e _%$%e187270187286%_)))
                        (let ((_%$%hd187274187297%_
                               (##car _%$%e187273187294%_))
                              (_%$%tl187275187299%_
                               (##cdr _%$%e187273187294%_)))
                          (if (gx#stx-pair? _%$%tl187275187299%_)
                              (let ((_%$%e187276187302%_
                                     (gx#syntax-e _%$%tl187275187299%_)))
                                (let ((_%$%hd187277187305%_
                                       (##car _%$%e187276187302%_))
                                      (_%$%tl187278187307%_
                                       (##cdr _%$%e187276187302%_)))
                                  (if (gx#stx-pair? _%$%hd187277187305%_)
                                      (let ((_%$%e187282187310%_
                                             (gx#syntax-e
                                              _%$%hd187277187305%_)))
                                        (let ((_%$%hd187283187313%_
                                               (##car _%$%e187282187310%_))
                                              (_%$%tl187284187315%_
                                               (##cdr _%$%e187282187310%_)))
                                          (let ((_%id187318%_
                                                 _%$%hd187283187313%_))
                                            (if (gx#stx-null?
                                                 _%$%tl187284187315%_)
                                                (if (gx#stx-pair?
                                                     _%$%tl187278187307%_)
                                                    (let ((_%$%e187279187320%_
                                                           (gx#syntax-e
                                                            _%$%tl187278187307%_)))
                                                      (let ((_%$%hd187280187323%_
                                                             (##car _%$%e187279187320%_))
                                                            (_%$%tl187281187325%_
                                                             (##cdr _%$%e187279187320%_)))
                                                        (let ((_%props187328%_
                                                               _%$%hd187280187323%_))
                                                          (if (gx#stx-null?
                                                               _%$%tl187281187325%_)
                                                              (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%id187318%_)
                               (gx#stx-list? _%props187328%_))
                          (let ((_%bind187330%_
                                 (gx#resolve-identifier__0 _%id187318%_)))
                            (if (##structure-instance-of?
                                 _%bind187330%_
                                 'gx#runtime-binding::t)
                                '#!void
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; expected runtime binding"
                                 _%stx187269%_
                                 _%id187318%_
                                 _%bind187330%_))
                            (gx#core-bind-runtime-properties!
                             _%bind187330%_
                             _%props187328%_)
                            (gx#core-cons '%#begin '()))
                          (_%$%E187272187290%_))
                      (_%$%E187272187290%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E187272187290%_))
                                                (_%$%E187272187290%_)))))
                                      (_%$%E187272187290%_))))
                              (_%$%E187272187290%_))))
                      (_%$%E187272187290%_)))))
          (_%$%E187271187332%_))))
    (define gx#core-bind-runtime-properties!
      (lambda (_%bind187204%_ _%props187205%_)
        (letrec ((_%eval-prop187207%_
                  (lambda (_%prop187267%_)
                    (gx#eval-expression+1 _%prop187267%_))))
          (let _%loop187209%_ ((_%rest187211%_ _%props187205%_)
                               (_%props187212%_ '()))
            (let* ((_%$%e187213187224%_ _%rest187211%_)
                   (_%$%E187222187228%_
                    (lambda ()
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%$%e187213187224%_)))
                   (_%$%E187215187232%_
                    (lambda ()
                      (if (gx#stx-null? _%$%e187213187224%_)
                          (if (null? _%props187212%_)
                              '#!void
                              (##structure-set!
                               _%bind187204%_
                               (reverse! _%props187212%_)
                               '4
                               gx#binding::t
                               '#f))
                          (_%$%E187222187228%_))))
                   (_%$%E187214187263%_
                    (lambda ()
                      (if (gx#stx-pair? _%$%e187213187224%_)
                          (let ((_%$%e187216187236%_
                                 (gx#syntax-e _%$%e187213187224%_)))
                            (let ((_%$%hd187217187239%_
                                   (##car _%$%e187216187236%_))
                                  (_%$%tl187218187241%_
                                   (##cdr _%$%e187216187236%_)))
                              (let ((_%key187244%_ _%$%hd187217187239%_))
                                (if (gx#stx-pair? _%$%tl187218187241%_)
                                    (let ((_%$%e187219187246%_
                                           (gx#syntax-e _%$%tl187218187241%_)))
                                      (let ((_%$%hd187220187249%_
                                             (##car _%$%e187219187246%_))
                                            (_%$%tl187221187251%_
                                             (##cdr _%$%e187219187246%_)))
                                        (let* ((_%prop187254%_
                                                _%$%hd187220187249%_)
                                               (_%rest187256%_
                                                _%$%tl187221187251%_))
                                          (if (gx#stx-keyword? _%key187244%_)
                                              (let* ((_%key187258%_
                                                      (gx#stx-e _%key187244%_))
                                                     (_%$e187260%_
                                                      _%key187258%_))
                                                (if (eq? 'macro: _%$e187260%_)
                                                    (begin
                                                      (##structure-set!
                                                       _%bind187204%_
                                                       (if (gx#identifier?
                                                            _%prop187254%_)
                                                           (gx#core-quote-syntax__0
                                                            _%prop187254%_)
                                                           (gx#eval-expression+1
                                                            _%prop187254%_))
                                                       '6
                                                       gx#runtime-binding::t
                                                       '#f)
                                                      (_%loop187209%_
                                                       _%rest187256%_
                                                       _%props187212%_))
                                                    (if (eq? 'type:
                                                             _%$e187260%_)
                                                        (begin
                                                          (##structure-set!
                                                           _%bind187204%_
                                                           (gx#eval-expression+1
                                                            _%prop187254%_)
                                                           '5
                                                           gx#runtime-binding::t
                                                           '#f)
                                                          (_%loop187209%_
                                                           _%rest187256%_
                                                           _%props187212%_))
                                                        (_%loop187209%_
                                                         _%rest187256%_
                                                         (cons (gx#eval-expression+1
                                                                _%prop187254%_)
                                                               (cons _%key187258%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%props187212%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E187215187232%_)))))
                                    (_%$%E187215187232%_)))))
                          (_%$%E187215187232%_)))))
              (_%$%E187214187263%_))))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx187147%_)
        (let* ((_%$%e187148187161%_ _%stx187147%_)
               (_%$%E187150187165%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e187148187161%_)))
               (_%$%E187149187200%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e187148187161%_)
                      (let ((_%$%e187151187169%_
                             (gx#syntax-e _%$%e187148187161%_)))
                        (let ((_%$%hd187152187172%_
                               (##car _%$%e187151187169%_))
                              (_%$%tl187153187174%_
                               (##cdr _%$%e187151187169%_)))
                          (if (gx#stx-pair? _%$%tl187153187174%_)
                              (let ((_%$%e187154187177%_
                                     (gx#syntax-e _%$%tl187153187174%_)))
                                (let ((_%$%hd187155187180%_
                                       (##car _%$%e187154187177%_))
                                      (_%$%tl187156187182%_
                                       (##cdr _%$%e187154187177%_)))
                                  (let ((_%id187185%_ _%$%hd187155187180%_))
                                    (if (gx#stx-pair? _%$%tl187156187182%_)
                                        (let ((_%$%e187157187187%_
                                               (gx#syntax-e
                                                _%$%tl187156187182%_)))
                                          (let ((_%$%hd187158187190%_
                                                 (##car _%$%e187157187187%_))
                                                (_%$%tl187159187192%_
                                                 (##cdr _%$%e187157187187%_)))
                                            (let ((_%expr187195%_
                                                   _%$%hd187158187190%_))
                                              (if (gx#stx-null?
                                                   _%$%tl187159187192%_)
                                                  (if (gx#identifier?
                                                       _%id187185%_)
                                                      (let ((_g188495_
                                                             (gx#core-expand-expression+1
                                                              _%expr187195%_)))
                                                        (begin
                                                          (let ((_g188496_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g188495_)
                             (##values-length _g188495_)
                             1)))
                    (if (not (##fx= _g188496_ 2))
                        (error "Context expects 2 values" _g188496_)))
                  (let ((_%e-stx187197%_ (##values-ref _g188495_ 0))
                        (_%e187198%_ (##values-ref _g188495_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id187185%_ _%e187198%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id187185%_)
                                   (cons _%e-stx187197%_ '())))
                       (gx#stx-source _%stx187147%_))))))
              (_%$%E187150187165%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E187150187165%_)))))
                                        (_%$%E187150187165%_)))))
                              (_%$%E187150187165%_))))
                      (_%$%E187150187165%_)))))
          (_%$%E187149187200%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx187091%_)
        (let* ((_%$%e187092187105%_ _%stx187091%_)
               (_%$%E187094187109%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e187092187105%_)))
               (_%$%E187093187143%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e187092187105%_)
                      (let ((_%$%e187095187113%_
                             (gx#syntax-e _%$%e187092187105%_)))
                        (let ((_%$%hd187096187116%_
                               (##car _%$%e187095187113%_))
                              (_%$%tl187097187118%_
                               (##cdr _%$%e187095187113%_)))
                          (if (gx#stx-pair? _%$%tl187097187118%_)
                              (let ((_%$%e187098187121%_
                                     (gx#syntax-e _%$%tl187097187118%_)))
                                (let ((_%$%hd187099187124%_
                                       (##car _%$%e187098187121%_))
                                      (_%$%tl187100187126%_
                                       (##cdr _%$%e187098187121%_)))
                                  (let ((_%id187129%_ _%$%hd187099187124%_))
                                    (if (gx#stx-pair? _%$%tl187100187126%_)
                                        (let ((_%$%e187101187131%_
                                               (gx#syntax-e
                                                _%$%tl187100187126%_)))
                                          (let ((_%$%hd187102187134%_
                                                 (##car _%$%e187101187131%_))
                                                (_%$%tl187103187136%_
                                                 (##cdr _%$%e187101187131%_)))
                                            (let ((_%alias-id187139%_
                                                   _%$%hd187102187134%_))
                                              (if (gx#stx-null?
                                                   _%$%tl187103187136%_)
                                                  (if (and (gx#identifier?
                                                            _%id187129%_)
                                                           (gx#identifier?
                                                            _%alias-id187139%_))
                                                      (let ((_%alias-id187141%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id187139%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id187129%_
                                                         _%alias-id187141%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id187129%_)
                             (cons _%alias-id187141%_ '())))))
              (_%$%E187094187109%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E187094187109%_)))))
                                        (_%$%E187094187109%_)))))
                              (_%$%E187094187109%_))))
                      (_%$%E187094187109%_)))))
          (_%$%E187093187143%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx187034%_ _%wrap?187035%_)
        (let* ((_%$%e187036187046%_ _%stx187034%_)
               (_%$%E187038187050%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e187036187046%_)))
               (_%$%E187037187077%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e187036187046%_)
                      (let ((_%$%e187039187054%_
                             (gx#syntax-e _%$%e187036187046%_)))
                        (let ((_%$%hd187040187057%_
                               (##car _%$%e187039187054%_))
                              (_%$%tl187041187059%_
                               (##cdr _%$%e187039187054%_)))
                          (if (gx#stx-pair? _%$%tl187041187059%_)
                              (let ((_%$%e187042187062%_
                                     (gx#syntax-e _%$%tl187041187059%_)))
                                (let ((_%$%hd187043187065%_
                                       (##car _%$%e187042187062%_))
                                      (_%$%tl187044187067%_
                                       (##cdr _%$%e187042187062%_)))
                                  (let* ((_%hd187070%_ _%$%hd187043187065%_)
                                         (_%body187072%_ _%$%tl187044187067%_))
                                    (if (gx#core-bind-values? _%hd187070%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd187070%_)
                                           (let ((_%body187075%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd187070%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx187034%_
                                                               _%body187072%_)
                                                              '()))))
                                             (if _%wrap?187035%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body187075%_)
                                                  (gx#stx-source
                                                   _%stx187034%_))
                                                 _%body187075%_)))
                                         gx#current-expander-context
                                         (let ((__obj188478
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj188478)
                                           __obj188478))
                                        (_%$%E187038187050%_)))))
                              (_%$%E187038187050%_))))
                      (_%$%E187038187050%_)))))
          (_%$%E187037187077%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx187084%_)
        (let ((_%wrap?187086%_ '#t))
          (gx#core-expand-lambda%__% _%stx187084%_ _%wrap?187086%_))))
    (define gx#core-expand-lambda%
      (lambda _g188497_
        (let ((_g188498_ (##length _g188497_)))
          (cond ((##fx= _g188498_ 1)
                 (apply gx#core-expand-lambda%__0 _g188497_))
                ((##fx= _g188498_ 2)
                 (apply gx#core-expand-lambda%__% _g188497_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g188497_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx186998%_)
        (let* ((_%$%e186999187006%_ _%stx186998%_)
               (_%$%E187001187010%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e186999187006%_)))
               (_%$%E187000187029%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e186999187006%_)
                      (let ((_%$%e187002187014%_
                             (gx#syntax-e _%$%e186999187006%_)))
                        (let ((_%$%hd187003187017%_
                               (##car _%$%e187002187014%_))
                              (_%$%tl187004187019%_
                               (##cdr _%$%e187002187014%_)))
                          (let ((_%clauses187022%_ _%$%tl187004187019%_))
                            (if (gx#stx-list? _%clauses187022%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause187024%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause187024%_)
                                       (let ((_%$e187026%_
                                              (gx#stx-source
                                               _%clause187024%_)))
                                         (if _%$e187026%_
                                             _%$e187026%_
                                             (gx#stx-source _%stx186998%_))))
                                      '#f))
                                   _%clauses187022%_))
                                 (gx#stx-source _%stx186998%_))
                                (_%$%E187001187010%_)))))
                      (_%$%E187001187010%_)))))
          (_%$%E187000187029%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx186952%_)
        (let* ((_%$%e186953186963%_ _%stx186952%_)
               (_%$%E186955186967%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e186953186963%_)))
               (_%$%E186954186994%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e186953186963%_)
                      (let ((_%$%e186956186971%_
                             (gx#syntax-e _%$%e186953186963%_)))
                        (let ((_%$%hd186957186974%_
                               (##car _%$%e186956186971%_))
                              (_%$%tl186958186976%_
                               (##cdr _%$%e186956186971%_)))
                          (if (gx#stx-pair? _%$%tl186958186976%_)
                              (let ((_%$%e186959186979%_
                                     (gx#syntax-e _%$%tl186958186976%_)))
                                (let ((_%$%hd186960186982%_
                                       (##car _%$%e186959186979%_))
                                      (_%$%tl186961186984%_
                                       (##cdr _%$%e186959186979%_)))
                                  (let* ((_%hd186987%_ _%$%hd186960186982%_)
                                         (_%body186989%_ _%$%tl186961186984%_))
                                    (if (gx#core-expand-let-bind? _%hd186987%_)
                                        (let ((_%expressions186991%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd186987%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd186987%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd186987%_
                                                           _%expressions186991%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx186952%_
                         _%body186989%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx186952%_)))
                                           gx#current-expander-context
                                           (let ((__obj188479
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj188479)
                                             __obj188479)))
                                        (_%$%E186955186967%_)))))
                              (_%$%E186955186967%_))))
                      (_%$%E186955186967%_)))))
          (_%$%E186954186994%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx186897%_ _%form186898%_)
        (let* ((_%$%e186899186909%_ _%stx186897%_)
               (_%$%E186901186913%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e186899186909%_)))
               (_%$%E186900186938%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e186899186909%_)
                      (let ((_%$%e186902186917%_
                             (gx#syntax-e _%$%e186899186909%_)))
                        (let ((_%$%hd186903186920%_
                               (##car _%$%e186902186917%_))
                              (_%$%tl186904186922%_
                               (##cdr _%$%e186902186917%_)))
                          (if (gx#stx-pair? _%$%tl186904186922%_)
                              (let ((_%$%e186905186925%_
                                     (gx#syntax-e _%$%tl186904186922%_)))
                                (let ((_%$%hd186906186928%_
                                       (##car _%$%e186905186925%_))
                                      (_%$%tl186907186930%_
                                       (##cdr _%$%e186905186925%_)))
                                  (let* ((_%hd186933%_ _%$%hd186906186928%_)
                                         (_%body186935%_ _%$%tl186907186930%_))
                                    (if (gx#core-expand-let-bind? _%hd186933%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd186933%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form186898%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd186933%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd186933%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx186897%_
                                                               _%body186935%_)
                                                              '())))
                                            (gx#stx-source _%stx186897%_)))
                                         gx#current-expander-context
                                         (let ((__obj188480
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj188480)
                                           __obj188480))
                                        (_%$%E186901186913%_)))))
                              (_%$%E186901186913%_))))
                      (_%$%E186901186913%_)))))
          (_%$%E186900186938%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx186945%_)
        (let ((_%form186947%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx186945%_ _%form186947%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g188499_
        (let ((_g188500_ (##length _g188499_)))
          (cond ((##fx= _g188500_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g188499_))
                ((##fx= _g188500_ 2)
                 (apply gx#core-expand-letrec-values%__% _g188499_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g188499_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx186894%_)
        (gx#core-expand-letrec-values%__% _%stx186894%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx186851%_)
        (if (gx#stx-list? _%stx186851%_)
            (gx#stx-andmap
             (lambda (_%bind186853%_)
               (let* ((_%$%e186854186864%_ _%bind186853%_)
                      (_%$%E186856186868%_ (lambda () '#f))
                      (_%$%E186855186890%_
                       (lambda ()
                         (if (gx#stx-pair? _%$%e186854186864%_)
                             (let ((_%$%e186857186872%_
                                    (gx#syntax-e _%$%e186854186864%_)))
                               (let ((_%$%hd186858186875%_
                                      (##car _%$%e186857186872%_))
                                     (_%$%tl186859186877%_
                                      (##cdr _%$%e186857186872%_)))
                                 (let ((_%hd186880%_ _%$%hd186858186875%_))
                                   (if (gx#stx-pair? _%$%tl186859186877%_)
                                       (let ((_%$%e186860186882%_
                                              (gx#syntax-e
                                               _%$%tl186859186877%_)))
                                         (let ((_%$%hd186861186885%_
                                                (##car _%$%e186860186882%_))
                                               (_%$%tl186862186887%_
                                                (##cdr _%$%e186860186882%_)))
                                           (if (gx#stx-null?
                                                _%$%tl186862186887%_)
                                               (gx#core-bind-values?
                                                _%hd186880%_)
                                               (_%$%E186856186868%_))))
                                       (_%$%E186856186868%_)))))
                             (_%$%E186856186868%_)))))
                 (_%$%E186855186890%_)))
             _%stx186851%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind186810%_)
        (let* ((_%$%e186811186821%_ _%bind186810%_)
               (_%$%E186813186825%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e186811186821%_)))
               (_%$%E186812186847%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e186811186821%_)
                      (let ((_%$%e186814186829%_
                             (gx#syntax-e _%$%e186811186821%_)))
                        (let ((_%$%hd186815186832%_
                               (##car _%$%e186814186829%_))
                              (_%$%tl186816186834%_
                               (##cdr _%$%e186814186829%_)))
                          (if (gx#stx-pair? _%$%tl186816186834%_)
                              (let ((_%$%e186817186837%_
                                     (gx#syntax-e _%$%tl186816186834%_)))
                                (let ((_%$%hd186818186840%_
                                       (##car _%$%e186817186837%_))
                                      (_%$%tl186819186842%_
                                       (##cdr _%$%e186817186837%_)))
                                  (let ((_%expr186845%_ _%$%hd186818186840%_))
                                    (if (gx#stx-null? _%$%tl186819186842%_)
                                        (gx#core-expand-expression
                                         _%expr186845%_)
                                        (_%$%E186813186825%_)))))
                              (_%$%E186813186825%_))))
                      (_%$%E186813186825%_)))))
          (_%$%E186812186847%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind186769%_)
        (let* ((_%$%e186770186780%_ _%bind186769%_)
               (_%$%E186772186784%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e186770186780%_)))
               (_%$%E186771186806%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e186770186780%_)
                      (let ((_%$%e186773186788%_
                             (gx#syntax-e _%$%e186770186780%_)))
                        (let ((_%$%hd186774186791%_
                               (##car _%$%e186773186788%_))
                              (_%$%tl186775186793%_
                               (##cdr _%$%e186773186788%_)))
                          (let ((_%hd186796%_ _%$%hd186774186791%_))
                            (if (gx#stx-pair? _%$%tl186775186793%_)
                                (let ((_%$%e186776186798%_
                                       (gx#syntax-e _%$%tl186775186793%_)))
                                  (let ((_%$%hd186777186801%_
                                         (##car _%$%e186776186798%_))
                                        (_%$%tl186778186803%_
                                         (##cdr _%$%e186776186798%_)))
                                    (if (gx#stx-null? _%$%tl186778186803%_)
                                        (gx#core-bind-values!__0 _%hd186796%_)
                                        (_%$%E186772186784%_))))
                                (_%$%E186772186784%_)))))
                      (_%$%E186772186784%_)))))
          (_%$%E186771186806%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind186727%_ _%expr186728%_)
        (let* ((_%$%e186729186739%_ _%bind186727%_)
               (_%$%E186731186743%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e186729186739%_)))
               (_%$%E186730186765%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e186729186739%_)
                      (let ((_%$%e186732186747%_
                             (gx#syntax-e _%$%e186729186739%_)))
                        (let ((_%$%hd186733186750%_
                               (##car _%$%e186732186747%_))
                              (_%$%tl186734186752%_
                               (##cdr _%$%e186732186747%_)))
                          (let ((_%hd186755%_ _%$%hd186733186750%_))
                            (if (gx#stx-pair? _%$%tl186734186752%_)
                                (let ((_%$%e186735186757%_
                                       (gx#syntax-e _%$%tl186734186752%_)))
                                  (let ((_%$%hd186736186760%_
                                         (##car _%$%e186735186757%_))
                                        (_%$%tl186737186762%_
                                         (##cdr _%$%e186735186757%_)))
                                    (if (gx#stx-null? _%$%tl186737186762%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd186755%_)
                                              (cons _%expr186728%_ '()))
                                        (_%$%E186731186743%_))))
                                (_%$%E186731186743%_)))))
                      (_%$%E186731186743%_)))))
          (_%$%E186730186765%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx186681%_)
        (let* ((_%$%e186682186692%_ _%stx186681%_)
               (_%$%E186684186696%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e186682186692%_)))
               (_%$%E186683186723%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e186682186692%_)
                      (let ((_%$%e186685186700%_
                             (gx#syntax-e _%$%e186682186692%_)))
                        (let ((_%$%hd186686186703%_
                               (##car _%$%e186685186700%_))
                              (_%$%tl186687186705%_
                               (##cdr _%$%e186685186700%_)))
                          (if (gx#stx-pair? _%$%tl186687186705%_)
                              (let ((_%$%e186688186708%_
                                     (gx#syntax-e _%$%tl186687186705%_)))
                                (let ((_%$%hd186689186711%_
                                       (##car _%$%e186688186708%_))
                                      (_%$%tl186690186713%_
                                       (##cdr _%$%e186688186708%_)))
                                  (let* ((_%hd186716%_ _%$%hd186689186711%_)
                                         (_%body186718%_ _%$%tl186690186713%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd186716%_)
                                        (let ((_%expanders186720%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd186716%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd186716%_
                                              _%expanders186720%_)
                                             (gx#core-expand-local-block
                                              _%stx186681%_
                                              _%body186718%_))
                                           gx#current-expander-context
                                           (let ((__obj188481
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj188481)
                                             __obj188481)))
                                        (_%$%E186684186696%_)))))
                              (_%$%E186684186696%_))))
                      (_%$%E186684186696%_)))))
          (_%$%E186683186723%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx186630%_)
        (let* ((_%$%e186631186641%_ _%stx186630%_)
               (_%$%E186633186645%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e186631186641%_)))
               (_%$%E186632186677%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e186631186641%_)
                      (let ((_%$%e186634186649%_
                             (gx#syntax-e _%$%e186631186641%_)))
                        (let ((_%$%hd186635186652%_
                               (##car _%$%e186634186649%_))
                              (_%$%tl186636186654%_
                               (##cdr _%$%e186634186649%_)))
                          (if (gx#stx-pair? _%$%tl186636186654%_)
                              (let ((_%$%e186637186657%_
                                     (gx#syntax-e _%$%tl186636186654%_)))
                                (let ((_%$%hd186638186660%_
                                       (##car _%$%e186637186657%_))
                                      (_%$%tl186639186662%_
                                       (##cdr _%$%e186637186657%_)))
                                  (let* ((_%hd186665%_ _%$%hd186638186660%_)
                                         (_%body186667%_ _%$%tl186639186662%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd186665%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd186665%_
                                            (make-list
                                             (gx#stx-length _%hd186665%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%$%g186669186672%_
                                                     _%$%g186670186674%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%$%g186669186672%_
                                               _%$%g186670186674%_
                                               '#t))
                                            _%hd186665%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd186665%_))
                                           (gx#core-expand-local-block
                                            _%stx186630%_
                                            _%body186667%_))
                                         gx#current-expander-context
                                         (let ((__obj188482
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj188482)
                                           __obj188482))
                                        (_%$%E186633186645%_)))))
                              (_%$%E186633186645%_))))
                      (_%$%E186633186645%_)))))
          (_%$%E186632186677%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx186587%_)
        (if (gx#stx-list? _%stx186587%_)
            (gx#stx-andmap
             (lambda (_%bind186589%_)
               (let* ((_%$%e186590186600%_ _%bind186589%_)
                      (_%$%E186592186604%_ (lambda () '#f))
                      (_%$%E186591186626%_
                       (lambda ()
                         (if (gx#stx-pair? _%$%e186590186600%_)
                             (let ((_%$%e186593186608%_
                                    (gx#syntax-e _%$%e186590186600%_)))
                               (let ((_%$%hd186594186611%_
                                      (##car _%$%e186593186608%_))
                                     (_%$%tl186595186613%_
                                      (##cdr _%$%e186593186608%_)))
                                 (let ((_%hd186616%_ _%$%hd186594186611%_))
                                   (if (gx#stx-pair? _%$%tl186595186613%_)
                                       (let ((_%$%e186596186618%_
                                              (gx#syntax-e
                                               _%$%tl186595186613%_)))
                                         (let ((_%$%hd186597186621%_
                                                (##car _%$%e186596186618%_))
                                               (_%$%tl186598186623%_
                                                (##cdr _%$%e186596186618%_)))
                                           (if (gx#stx-null?
                                                _%$%tl186598186623%_)
                                               (gx#identifier? _%hd186616%_)
                                               (_%$%E186592186604%_))))
                                       (_%$%E186592186604%_)))))
                             (_%$%E186592186604%_)))))
                 (_%$%E186591186626%_)))
             _%stx186587%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind186543%_)
        (let* ((_%$%e186544186554%_ _%bind186543%_)
               (_%$%E186546186558%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e186544186554%_)))
               (_%$%E186545186583%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e186544186554%_)
                      (let ((_%$%e186547186562%_
                             (gx#syntax-e _%$%e186544186554%_)))
                        (let ((_%$%hd186548186565%_
                               (##car _%$%e186547186562%_))
                              (_%$%tl186549186567%_
                               (##cdr _%$%e186547186562%_)))
                          (if (gx#stx-pair? _%$%tl186549186567%_)
                              (let ((_%$%e186550186570%_
                                     (gx#syntax-e _%$%tl186549186567%_)))
                                (let ((_%$%hd186551186573%_
                                       (##car _%$%e186550186570%_))
                                      (_%$%tl186552186575%_
                                       (##cdr _%$%e186550186570%_)))
                                  (let ((_%expr186578%_ _%$%hd186551186573%_))
                                    (if (gx#stx-null? _%$%tl186552186575%_)
                                        (let ((_g188501_
                                               (gx#core-expand-expression+1
                                                _%expr186578%_)))
                                          (begin
                                            (let ((_g188502_
                                                   (if (##values? _g188501_)
                                                       (##values-length
                                                        _g188501_)
                                                       1)))
                                              (if (not (##fx= _g188502_ 2))
                                                  (error "Context expects 2 values"
                                                         _g188502_)))
                                            (let ((_%_186580%_
                                                   (##values-ref _g188501_ 0))
                                                  (_%e186581%_
                                                   (##values-ref _g188501_ 1)))
                                              _%e186581%_)))
                                        (_%$%E186546186558%_)))))
                              (_%$%E186546186558%_))))
                      (_%$%E186546186558%_)))))
          (_%$%E186545186583%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind186488%_ _%e186489%_ _%rebind?186490%_)
        (let* ((_%$%e186491186501%_ _%bind186488%_)
               (_%$%E186493186505%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e186491186501%_)))
               (_%$%E186492186527%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e186491186501%_)
                      (let ((_%$%e186494186509%_
                             (gx#syntax-e _%$%e186491186501%_)))
                        (let ((_%$%hd186495186512%_
                               (##car _%$%e186494186509%_))
                              (_%$%tl186496186514%_
                               (##cdr _%$%e186494186509%_)))
                          (let ((_%id186517%_ _%$%hd186495186512%_))
                            (if (gx#stx-pair? _%$%tl186496186514%_)
                                (let ((_%$%e186497186519%_
                                       (gx#syntax-e _%$%tl186496186514%_)))
                                  (let ((_%$%hd186498186522%_
                                         (##car _%$%e186497186519%_))
                                        (_%$%tl186499186524%_
                                         (##cdr _%$%e186497186519%_)))
                                    (if (gx#stx-null? _%$%tl186499186524%_)
                                        (gx#core-bind-syntax!__1
                                         _%id186517%_
                                         _%e186489%_
                                         _%rebind?186490%_)
                                        (_%$%E186493186505%_))))
                                (_%$%E186493186505%_)))))
                      (_%$%E186493186505%_)))))
          (_%$%E186492186527%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind186534%_ _%e186535%_)
        (let ((_%rebind?186537%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind186534%_
           _%e186535%_
           _%rebind?186537%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g188503_
        (let ((_g188504_ (##length _g188503_)))
          (cond ((##fx= _g188504_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g188503_))
                ((##fx= _g188504_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g188503_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g188503_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx186446%_)
        (let* ((_%$%e186447186457%_ _%stx186446%_)
               (_%$%E186449186461%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e186447186457%_)))
               (_%$%E186448186483%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e186447186457%_)
                      (let ((_%$%e186450186465%_
                             (gx#syntax-e _%$%e186447186457%_)))
                        (let ((_%$%hd186451186468%_
                               (##car _%$%e186450186465%_))
                              (_%$%tl186452186470%_
                               (##cdr _%$%e186450186465%_)))
                          (if (gx#stx-pair? _%$%tl186452186470%_)
                              (let ((_%$%e186453186473%_
                                     (gx#syntax-e _%$%tl186452186470%_)))
                                (let ((_%$%hd186454186476%_
                                       (##car _%$%e186453186473%_))
                                      (_%$%tl186455186478%_
                                       (##cdr _%$%e186453186473%_)))
                                  (let ((_%expr186481%_ _%$%hd186454186476%_))
                                    (if (gx#stx-null? _%$%tl186455186478%_)
                                        (gx#core-expand-expression
                                         _%expr186481%_)
                                        (_%$%E186449186461%_)))))
                              (_%$%E186449186461%_))))
                      (_%$%E186449186461%_)))))
          (_%$%E186448186483%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx186405%_)
        (let* ((_%$%e186406186416%_ _%stx186405%_)
               (_%$%E186408186420%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e186406186416%_)))
               (_%$%E186407186442%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e186406186416%_)
                      (let ((_%$%e186409186424%_
                             (gx#syntax-e _%$%e186406186416%_)))
                        (let ((_%$%hd186410186427%_
                               (##car _%$%e186409186424%_))
                              (_%$%tl186411186429%_
                               (##cdr _%$%e186409186424%_)))
                          (if (gx#stx-pair? _%$%tl186411186429%_)
                              (let ((_%$%e186412186432%_
                                     (gx#syntax-e _%$%tl186411186429%_)))
                                (let ((_%$%hd186413186435%_
                                       (##car _%$%e186412186432%_))
                                      (_%$%tl186414186437%_
                                       (##cdr _%$%e186412186432%_)))
                                  (let ((_%e186440%_ _%$%hd186413186435%_))
                                    (if (gx#stx-null? _%$%tl186414186437%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e186440%_)
                                                     '()))
                                         (gx#stx-source _%stx186405%_))
                                        (_%$%E186408186420%_)))))
                              (_%$%E186408186420%_))))
                      (_%$%E186408186420%_)))))
          (_%$%E186407186442%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx186364%_)
        (let* ((_%$%e186365186375%_ _%stx186364%_)
               (_%$%E186367186379%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e186365186375%_)))
               (_%$%E186366186401%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e186365186375%_)
                      (let ((_%$%e186368186383%_
                             (gx#syntax-e _%$%e186365186375%_)))
                        (let ((_%$%hd186369186386%_
                               (##car _%$%e186368186383%_))
                              (_%$%tl186370186388%_
                               (##cdr _%$%e186368186383%_)))
                          (if (gx#stx-pair? _%$%tl186370186388%_)
                              (let ((_%$%e186371186391%_
                                     (gx#syntax-e _%$%tl186370186388%_)))
                                (let ((_%$%hd186372186394%_
                                       (##car _%$%e186371186391%_))
                                      (_%$%tl186373186396%_
                                       (##cdr _%$%e186371186391%_)))
                                  (let ((_%e186399%_ _%$%hd186372186394%_))
                                    (if (gx#stx-null? _%$%tl186373186396%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e186399%_)
                                                     '()))
                                         (gx#stx-source _%stx186364%_))
                                        (_%$%E186367186379%_)))))
                              (_%$%E186367186379%_))))
                      (_%$%E186367186379%_)))))
          (_%$%E186366186401%_))))
    (define gx#core-expand-call%
      (lambda (_%stx186258%_)
        (letrec ((_%expand-runtime-call186260%_
                  (lambda (_%rator-expr186361%_ _%args186362%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons*
                      '%#call
                      _%rator-expr186361%_
                      (gx#stx-map1 gx#core-expand-expression _%args186362%_))
                     (gx#stx-source _%stx186258%_)))))
          (let* ((_%$%e186261186271%_ _%stx186258%_)
                 (_%$%E186263186275%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e186261186271%_)))
                 (_%$%E186262186357%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e186261186271%_)
                        (let ((_%$%e186264186279%_
                               (gx#syntax-e _%$%e186261186271%_)))
                          (let ((_%$%hd186265186282%_
                                 (##car _%$%e186264186279%_))
                                (_%$%tl186266186284%_
                                 (##cdr _%$%e186264186279%_)))
                            (if (gx#stx-pair? _%$%tl186266186284%_)
                                (let ((_%$%e186267186287%_
                                       (gx#syntax-e _%$%tl186266186284%_)))
                                  (let ((_%$%hd186268186290%_
                                         (##car _%$%e186267186287%_))
                                        (_%$%tl186269186292%_
                                         (##cdr _%$%e186267186287%_)))
                                    (let* ((_%rator186295%_
                                            _%$%hd186268186290%_)
                                           (_%args186297%_
                                            _%$%tl186269186292%_))
                                      (if (gx#stx-list? _%args186297%_)
                                          (let* ((_%rator-expr186299%_
                                                  (gx#core-expand-expression
                                                   _%rator186295%_))
                                                 (_%$%e186300186310%_
                                                  _%rator-expr186299%_)
                                                 (_%$%E186302186314%_
                                                  (lambda ()
                                                    (_%expand-runtime-call186260%_
                                                     _%rator-expr186299%_
                                                     _%args186297%_)))
                                                 (_%$%E186301186353%_
                                                  (lambda ()
                                                    (if (gx#stx-pair?
                                                         _%$%e186300186310%_)
                                                        (let ((_%$%e186303186318%_
                                                               (gx#syntax-e
                                                                _%$%e186300186310%_)))
                                                          (let ((_%$%hd186304186321%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e186303186318%_))
                        (_%$%tl186305186323%_ (##cdr _%$%e186303186318%_)))
                    (if (and (gx#identifier? _%$%hd186304186321%_)
                             (gx#core-identifier=?
                              _%$%hd186304186321%_
                              '%#ref))
                        (if (gx#stx-pair? _%$%tl186305186323%_)
                            (let ((_%$%e186306186326%_
                                   (gx#syntax-e _%$%tl186305186323%_)))
                              (let ((_%$%hd186307186329%_
                                     (##car _%$%e186306186326%_))
                                    (_%$%tl186308186331%_
                                     (##cdr _%$%e186306186326%_)))
                                (let ((_%id186334%_ _%$%hd186307186329%_))
                                  (if (gx#stx-null? _%$%tl186308186331%_)
                                      (let ((_%$e186336%_
                                             (gx#resolve-identifier__0
                                              _%id186334%_)))
                                        (if _%$e186336%_
                                            (let _%again186341%_ ((_%bind186343%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e186336%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_%$e186345%_
                                                     (if (##structure-instance-of?
                                                          _%bind186343%_
                                                          'gx#runtime-binding::t)
                                                         (##unchecked-structure-ref
                                                          _%bind186343%_
                                                          '6
                                                          '#f
                                                          '#f)
                                                         '#f)))
                                                (if _%$e186345%_
                                                    (gx#core-expand-expression
                                                     (gx#stx-wrap-source
                                                      (cons _%$e186345%_
                                                            _%args186297%_)
                                                      (gx#stx-source
                                                       _%stx186258%_)))
                                                    (if (##structure-direct-instance-of?
                                                         _%bind186343%_
                                                         'gx#import-binding::t)
                                                        (_%again186341%_
                                                         (##unchecked-structure-ref
                                                          _%bind186343%_
                                                          '5
                                                          '#f
                                                          '#f))
                                                        (_%expand-runtime-call186260%_
                                                         _%rator-expr186299%_
                                                         _%args186297%_)))))
                                            (_%expand-runtime-call186260%_
                                             _%rator-expr186299%_
                                             _%args186297%_)))
                                      (_%$%E186302186314%_)))))
                            (_%$%E186302186314%_))
                        (_%$%E186302186314%_))))
                (_%$%E186302186314%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%E186301186353%_))
                                          (_%$%E186263186275%_)))))
                                (_%$%E186263186275%_))))
                        (_%$%E186263186275%_)))))
            (_%$%E186262186357%_)))))
    (define gx#core-expand-if%
      (lambda (_%stx186191%_)
        (let* ((_%$%e186192186208%_ _%stx186191%_)
               (_%$%E186194186212%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e186192186208%_)))
               (_%$%E186193186254%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e186192186208%_)
                      (let ((_%$%e186195186216%_
                             (gx#syntax-e _%$%e186192186208%_)))
                        (let ((_%$%hd186196186219%_
                               (##car _%$%e186195186216%_))
                              (_%$%tl186197186221%_
                               (##cdr _%$%e186195186216%_)))
                          (if (gx#stx-pair? _%$%tl186197186221%_)
                              (let ((_%$%e186198186224%_
                                     (gx#syntax-e _%$%tl186197186221%_)))
                                (let ((_%$%hd186199186227%_
                                       (##car _%$%e186198186224%_))
                                      (_%$%tl186200186229%_
                                       (##cdr _%$%e186198186224%_)))
                                  (let ((_%test186232%_ _%$%hd186199186227%_))
                                    (if (gx#stx-pair? _%$%tl186200186229%_)
                                        (let ((_%$%e186201186234%_
                                               (gx#syntax-e
                                                _%$%tl186200186229%_)))
                                          (let ((_%$%hd186202186237%_
                                                 (##car _%$%e186201186234%_))
                                                (_%$%tl186203186239%_
                                                 (##cdr _%$%e186201186234%_)))
                                            (let ((_%K186242%_
                                                   _%$%hd186202186237%_))
                                              (if (gx#stx-pair?
                                                   _%$%tl186203186239%_)
                                                  (let ((_%$%e186204186244%_
                                                         (gx#syntax-e
                                                          _%$%tl186203186239%_)))
                                                    (let ((_%$%hd186205186247%_
                                                           (##car _%$%e186204186244%_))
                                                          (_%$%tl186206186249%_
                                                           (##cdr _%$%e186204186244%_)))
                                                      (let ((_%E186252%_
                                                             _%$%hd186205186247%_))
                                                        (if (gx#stx-null?
                                                             _%$%tl186206186249%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test186232%_)
                                 (cons (gx#core-expand-expression _%K186242%_)
                                       (cons (gx#core-expand-expression
                                              _%E186252%_)
                                             '()))))
                     (gx#stx-source _%stx186191%_))
                    (_%$%E186194186212%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E186194186212%_)))))
                                        (_%$%E186194186212%_)))))
                              (_%$%E186194186212%_))))
                      (_%$%E186194186212%_)))))
          (_%$%E186193186254%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx186150%_)
        (let* ((_%$%e186151186161%_ _%stx186150%_)
               (_%$%E186153186165%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e186151186161%_)))
               (_%$%E186152186187%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e186151186161%_)
                      (let ((_%$%e186154186169%_
                             (gx#syntax-e _%$%e186151186161%_)))
                        (let ((_%$%hd186155186172%_
                               (##car _%$%e186154186169%_))
                              (_%$%tl186156186174%_
                               (##cdr _%$%e186154186169%_)))
                          (if (gx#stx-pair? _%$%tl186156186174%_)
                              (let ((_%$%e186157186177%_
                                     (gx#syntax-e _%$%tl186156186174%_)))
                                (let ((_%$%hd186158186180%_
                                       (##car _%$%e186157186177%_))
                                      (_%$%tl186159186182%_
                                       (##cdr _%$%e186157186177%_)))
                                  (let ((_%id186185%_ _%$%hd186158186180%_))
                                    (if (gx#stx-null? _%$%tl186159186182%_)
                                        (if (gx#identifier? _%id186185%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id186185%_
                                                          _%stx186150%_)
                                                         '()))
                                             (gx#stx-source _%stx186150%_))
                                            (_%$%E186153186165%_))
                                        (_%$%E186153186165%_)))))
                              (_%$%E186153186165%_))))
                      (_%$%E186153186165%_)))))
          (_%$%E186152186187%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx186096%_)
        (let* ((_%$%e186097186110%_ _%stx186096%_)
               (_%$%E186099186114%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e186097186110%_)))
               (_%$%E186098186146%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e186097186110%_)
                      (let ((_%$%e186100186118%_
                             (gx#syntax-e _%$%e186097186110%_)))
                        (let ((_%$%hd186101186121%_
                               (##car _%$%e186100186118%_))
                              (_%$%tl186102186123%_
                               (##cdr _%$%e186100186118%_)))
                          (if (gx#stx-pair? _%$%tl186102186123%_)
                              (let ((_%$%e186103186126%_
                                     (gx#syntax-e _%$%tl186102186123%_)))
                                (let ((_%$%hd186104186129%_
                                       (##car _%$%e186103186126%_))
                                      (_%$%tl186105186131%_
                                       (##cdr _%$%e186103186126%_)))
                                  (let ((_%id186134%_ _%$%hd186104186129%_))
                                    (if (gx#stx-pair? _%$%tl186105186131%_)
                                        (let ((_%$%e186106186136%_
                                               (gx#syntax-e
                                                _%$%tl186105186131%_)))
                                          (let ((_%$%hd186107186139%_
                                                 (##car _%$%e186106186136%_))
                                                (_%$%tl186108186141%_
                                                 (##cdr _%$%e186106186136%_)))
                                            (let ((_%expr186144%_
                                                   _%$%hd186107186139%_))
                                              (if (gx#stx-null?
                                                   _%$%tl186108186141%_)
                                                  (if (gx#identifier?
                                                       _%id186134%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id186134%_
                            _%stx186096%_)
                           (cons (gx#core-expand-expression _%expr186144%_)
                                 '())))
               (gx#stx-source _%stx186096%_))
              (_%$%E186099186114%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E186099186114%_)))))
                                        (_%$%E186099186114%_)))))
                              (_%$%E186099186114%_))))
                      (_%$%E186099186114%_)))))
          (_%$%E186098186146%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx185941%_)
        (letrec ((_%generate185943%_
                  (lambda (_%body185973%_)
                    (let _%lp185975%_ ((_%rest185977%_ _%body185973%_)
                                       (_%ns185978%_
                                        (gx#core-context-namespace__0))
                                       (_%r185979%_ '()))
                      (let* ((_%$%e185980185995%_ _%rest185977%_)
                             (_%$%E185993185999%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%$%e185980185995%_)))
                             (_%$%E185989186003%_
                              (lambda ()
                                (if (gx#stx-null? _%$%e185980185995%_)
                                    (reverse _%r185979%_)
                                    (_%$%E185993185999%_))))
                             (_%$%E185982186060%_
                              (lambda ()
                                (if (gx#stx-pair? _%$%e185980185995%_)
                                    (let ((_%$%e185990186007%_
                                           (gx#syntax-e _%$%e185980185995%_)))
                                      (let ((_%$%hd185991186010%_
                                             (##car _%$%e185990186007%_))
                                            (_%$%tl185992186012%_
                                             (##cdr _%$%e185990186007%_)))
                                        (let* ((_%hd186015%_
                                                _%$%hd185991186010%_)
                                               (_%rest186017%_
                                                _%$%tl185992186012%_))
                                          (if (gx#identifier? _%hd186015%_)
                                              (_%lp185975%_
                                               _%rest186017%_
                                               _%ns185978%_
                                               (cons (cons _%hd186015%_
                                                           (cons (if _%ns185978%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd186015%_
                              _%ns185978%_
                              '"#"
                              _%hd186015%_)
                             _%hd186015%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r185979%_))
                                              (let* ((_%$%e186018186028%_
                                                      _%hd186015%_)
                                                     (_%$%E186020186032%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%$%e186018186028%_)))
                                                     (_%$%E186019186056%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%$%e186018186028%_)
                                                            (let ((_%$%e186021186036%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%e186018186028%_)))
                      (let ((_%$%hd186022186039%_ (##car _%$%e186021186036%_))
                            (_%$%tl186023186041%_ (##cdr _%$%e186021186036%_)))
                        (let ((_%id186044%_ _%$%hd186022186039%_))
                          (if (gx#stx-pair? _%$%tl186023186041%_)
                              (let ((_%$%e186024186046%_
                                     (gx#syntax-e _%$%tl186023186041%_)))
                                (let ((_%$%hd186025186049%_
                                       (##car _%$%e186024186046%_))
                                      (_%$%tl186026186051%_
                                       (##cdr _%$%e186024186046%_)))
                                  (let ((_%eid186054%_ _%$%hd186025186049%_))
                                    (if (gx#stx-null? _%$%tl186026186051%_)
                                        (if (and (gx#identifier? _%id186044%_)
                                                 (gx#identifier?
                                                  _%eid186054%_))
                                            (_%lp185975%_
                                             _%rest186017%_
                                             _%ns185978%_
                                             (cons (cons _%id186044%_
                                                         (cons _%eid186054%_
                                                               '()))
                                                   _%r185979%_))
                                            (_%$%E186020186032%_))
                                        (_%$%E186020186032%_)))))
                              (_%$%E186020186032%_)))))
                    (_%$%E186020186032%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%E186019186056%_))))))
                                    (_%$%E185989186003%_))))
                             (_%$%E185981186092%_
                              (lambda ()
                                (if (gx#stx-pair? _%$%e185980185995%_)
                                    (let ((_%$%e185983186064%_
                                           (gx#syntax-e _%$%e185980185995%_)))
                                      (let ((_%$%hd185984186067%_
                                             (##car _%$%e185983186064%_))
                                            (_%$%tl185985186069%_
                                             (##cdr _%$%e185983186064%_)))
                                        (if (eq? (gx#stx-e
                                                  _%$%hd185984186067%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%$%tl185985186069%_)
                                                (let ((_%$%e185986186072%_
                                                       (gx#syntax-e
                                                        _%$%tl185985186069%_)))
                                                  (let ((_%$%hd185987186075%_
                                                         (##car _%$%e185986186072%_))
                                                        (_%$%tl185988186077%_
                                                         (##cdr _%$%e185986186072%_)))
                                                    (let* ((_%ns186080%_
                                                            _%$%hd185987186075%_)
                                                           (_%rest186082%_
                                                            _%$%tl185988186077%_)
                                                           (_%ns186090%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns186080%_)
                        (symbol->string (gx#stx-e _%ns186080%_))
                        (if (or (gx#stx-string? _%ns186080%_)
                                (gx#stx-false? _%ns186080%_))
                            (gx#stx-e _%ns186080%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx185941%_
                             _%ns186080%_)))))
              (_%lp185975%_ _%rest186082%_ _%ns186090%_ _%r185979%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%E185982186060%_))
                                            (_%$%E185982186060%_))))
                                    (_%$%E185982186060%_)))))
                        (_%$%E185981186092%_))))))
          (let* ((_%$%e185944185951%_ _%stx185941%_)
                 (_%$%E185946185955%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e185944185951%_)))
                 (_%$%E185945185969%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e185944185951%_)
                        (let ((_%$%e185947185959%_
                               (gx#syntax-e _%$%e185944185951%_)))
                          (let ((_%$%hd185948185962%_
                                 (##car _%$%e185947185959%_))
                                (_%$%tl185949185964%_
                                 (##cdr _%$%e185947185959%_)))
                            (let ((_%body185967%_ _%$%tl185949185964%_))
                              (if (gx#stx-list? _%body185967%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate185943%_ _%body185967%_))
                                  (_%$%E185946185955%_)))))
                        (_%$%E185946185955%_)))))
            (_%$%E185945185969%_)))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx185898%_)
        (let* ((_%$%e185899185909%_ _%stx185898%_)
               (_%$%E185901185913%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e185899185909%_)))
               (_%$%E185900185937%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e185899185909%_)
                      (let ((_%$%e185902185917%_
                             (gx#syntax-e _%$%e185899185909%_)))
                        (let ((_%$%hd185903185920%_
                               (##car _%$%e185902185917%_))
                              (_%$%tl185904185922%_
                               (##cdr _%$%e185902185917%_)))
                          (if (gx#stx-pair? _%$%tl185904185922%_)
                              (let ((_%$%e185905185925%_
                                     (gx#syntax-e _%$%tl185904185922%_)))
                                (let ((_%$%hd185906185928%_
                                       (##car _%$%e185905185925%_))
                                      (_%$%tl185907185930%_
                                       (##cdr _%$%e185905185925%_)))
                                  (let* ((_%hd185933%_ _%$%hd185906185928%_)
                                         (_%body185935%_ _%$%tl185907185930%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd185933%_)
                                             (gx#stx-list? _%body185935%_)
                                             (not (gx#stx-null?
                                                   _%body185935%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd185933%_)
                                         _%body185935%_)
                                        (_%$%E185901185913%_)))))
                              (_%$%E185901185913%_))))
                      (_%$%E185901185913%_)))))
          (_%$%E185900185937%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx185834%_)
        (letrec ((_%generate185836%_
                  (lambda (_%clause185866%_)
                    (let* ((_%$%e185867185874%_ _%clause185866%_)
                           (_%$%E185869185878%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx185834%_
                               _%clause185866%_)))
                           (_%$%E185868185894%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e185867185874%_)
                                  (let ((_%$%e185870185882%_
                                         (gx#syntax-e _%$%e185867185874%_)))
                                    (let ((_%$%hd185871185885%_
                                           (##car _%$%e185870185882%_))
                                          (_%$%tl185872185887%_
                                           (##cdr _%$%e185870185882%_)))
                                      (let* ((_%hd185890%_
                                              _%$%hd185871185885%_)
                                             (_%body185892%_
                                              _%$%tl185872185887%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd185890%_)
                                                 (gx#stx-list? _%body185892%_)
                                                 (not (gx#stx-null?
                                                       _%body185892%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd185890%_)
                                                   _%body185892%_)
                                             (gx#stx-source _%clause185866%_))
                                            (_%$%E185869185878%_)))))
                                  (_%$%E185869185878%_)))))
                      (_%$%E185868185894%_)))))
          (let* ((_%$%e185837185844%_ _%stx185834%_)
                 (_%$%E185839185848%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e185837185844%_)))
                 (_%$%E185838185862%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e185837185844%_)
                        (let ((_%$%e185840185852%_
                               (gx#syntax-e _%$%e185837185844%_)))
                          (let ((_%$%hd185841185855%_
                                 (##car _%$%e185840185852%_))
                                (_%$%tl185842185857%_
                                 (##cdr _%$%e185840185852%_)))
                            (let ((_%clauses185860%_ _%$%tl185842185857%_))
                              (if (gx#stx-list? _%clauses185860%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate185836%_
                                    _%clauses185860%_))
                                  (_%$%E185839185848%_)))))
                        (_%$%E185839185848%_)))))
            (_%$%E185838185862%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx185735%_ _%form185736%_)
        (letrec ((_%generate185738%_
                  (lambda (_%bind185781%_)
                    (let* ((_%$%e185782185792%_ _%bind185781%_)
                           (_%$%E185784185796%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx185735%_
                               _%bind185781%_)))
                           (_%$%E185783185820%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e185782185792%_)
                                  (let ((_%$%e185785185800%_
                                         (gx#syntax-e _%$%e185782185792%_)))
                                    (let ((_%$%hd185786185803%_
                                           (##car _%$%e185785185800%_))
                                          (_%$%tl185787185805%_
                                           (##cdr _%$%e185785185800%_)))
                                      (let ((_%ids185808%_
                                             _%$%hd185786185803%_))
                                        (if (gx#stx-pair? _%$%tl185787185805%_)
                                            (let ((_%$%e185788185810%_
                                                   (gx#syntax-e
                                                    _%$%tl185787185805%_)))
                                              (let ((_%$%hd185789185813%_
                                                     (##car _%$%e185788185810%_))
                                                    (_%$%tl185790185815%_
                                                     (##cdr _%$%e185788185810%_)))
                                                (let ((_%expr185818%_
                                                       _%$%hd185789185813%_))
                                                  (if (gx#stx-null?
                                                       _%$%tl185790185815%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids185808%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids185808%_)
                        (cons _%expr185818%_ '()))
                  (_%$%E185784185796%_))
              (_%$%E185784185796%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%E185784185796%_)))))
                                  (_%$%E185784185796%_)))))
                      (_%$%E185783185820%_)))))
          (let* ((_%$%e185739185749%_ _%stx185735%_)
                 (_%$%E185741185753%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e185739185749%_)))
                 (_%$%E185740185777%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e185739185749%_)
                        (let ((_%$%e185742185757%_
                               (gx#syntax-e _%$%e185739185749%_)))
                          (let ((_%$%hd185743185760%_
                                 (##car _%$%e185742185757%_))
                                (_%$%tl185744185762%_
                                 (##cdr _%$%e185742185757%_)))
                            (if (gx#stx-pair? _%$%tl185744185762%_)
                                (let ((_%$%e185745185765%_
                                       (gx#syntax-e _%$%tl185744185762%_)))
                                  (let ((_%$%hd185746185768%_
                                         (##car _%$%e185745185765%_))
                                        (_%$%tl185747185770%_
                                         (##cdr _%$%e185745185765%_)))
                                    (let* ((_%hd185773%_ _%$%hd185746185768%_)
                                           (_%body185775%_
                                            _%$%tl185747185770%_))
                                      (if (and (gx#stx-list? _%hd185773%_)
                                               (gx#stx-list? _%body185775%_)
                                               (not (gx#stx-null?
                                                     _%body185775%_)))
                                          (gx#core-cons*
                                           _%form185736%_
                                           (gx#stx-map1
                                            _%generate185738%_
                                            _%hd185773%_)
                                           _%body185775%_)
                                          (_%$%E185741185753%_)))))
                                (_%$%E185741185753%_))))
                        (_%$%E185741185753%_)))))
            (_%$%E185740185777%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx185827%_)
        (let ((_%form185829%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx185827%_ _%form185829%_))))
    (define gx#macro-expand-let-values
      (lambda _g188505_
        (let ((_g188506_ (##length _g188505_)))
          (cond ((##fx= _g188506_ 1)
                 (apply gx#macro-expand-let-values__0 _g188505_))
                ((##fx= _g188506_ 2)
                 (apply gx#macro-expand-let-values__% _g188505_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g188505_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx185732%_)
        (gx#macro-expand-let-values__% _%stx185732%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx185730%_)
        (gx#macro-expand-let-values__% _%stx185730%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx185621%_)
        (let* ((_%$%e185622185648%_ _%stx185621%_)
               (_%$%E185634185652%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e185622185648%_)))
               (_%$%E185624185694%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e185622185648%_)
                      (let ((_%$%e185635185656%_
                             (gx#syntax-e _%$%e185622185648%_)))
                        (let ((_%$%hd185636185659%_
                               (##car _%$%e185635185656%_))
                              (_%$%tl185637185661%_
                               (##cdr _%$%e185635185656%_)))
                          (if (gx#stx-pair? _%$%tl185637185661%_)
                              (let ((_%$%e185638185664%_
                                     (gx#syntax-e _%$%tl185637185661%_)))
                                (let ((_%$%hd185639185667%_
                                       (##car _%$%e185638185664%_))
                                      (_%$%tl185640185669%_
                                       (##cdr _%$%e185638185664%_)))
                                  (let ((_%test185672%_ _%$%hd185639185667%_))
                                    (if (gx#stx-pair? _%$%tl185640185669%_)
                                        (let ((_%$%e185641185674%_
                                               (gx#syntax-e
                                                _%$%tl185640185669%_)))
                                          (let ((_%$%hd185642185677%_
                                                 (##car _%$%e185641185674%_))
                                                (_%$%tl185643185679%_
                                                 (##cdr _%$%e185641185674%_)))
                                            (let ((_%K185682%_
                                                   _%$%hd185642185677%_))
                                              (if (gx#stx-pair?
                                                   _%$%tl185643185679%_)
                                                  (let ((_%$%e185644185684%_
                                                         (gx#syntax-e
                                                          _%$%tl185643185679%_)))
                                                    (let ((_%$%hd185645185687%_
                                                           (##car _%$%e185644185684%_))
                                                          (_%$%tl185646185689%_
                                                           (##cdr _%$%e185644185684%_)))
                                                      (let ((_%E185692%_
                                                             _%$%hd185645185687%_))
                                                        (if (gx#stx-null?
                                                             _%$%tl185646185689%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test185672%_
                                                             _%K185682%_
                                                             _%E185692%_)
                                                            (_%$%E185634185652%_)))))
                                                  (_%$%E185634185652%_)))))
                                        (_%$%E185634185652%_)))))
                              (_%$%E185634185652%_))))
                      (_%$%E185634185652%_))))
               (_%$%E185623185726%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e185622185648%_)
                      (let ((_%$%e185625185698%_
                             (gx#syntax-e _%$%e185622185648%_)))
                        (let ((_%$%hd185626185701%_
                               (##car _%$%e185625185698%_))
                              (_%$%tl185627185703%_
                               (##cdr _%$%e185625185698%_)))
                          (if (gx#stx-pair? _%$%tl185627185703%_)
                              (let ((_%$%e185628185706%_
                                     (gx#syntax-e _%$%tl185627185703%_)))
                                (let ((_%$%hd185629185709%_
                                       (##car _%$%e185628185706%_))
                                      (_%$%tl185630185711%_
                                       (##cdr _%$%e185628185706%_)))
                                  (let ((_%test185714%_ _%$%hd185629185709%_))
                                    (if (gx#stx-pair? _%$%tl185630185711%_)
                                        (let ((_%$%e185631185716%_
                                               (gx#syntax-e
                                                _%$%tl185630185711%_)))
                                          (let ((_%$%hd185632185719%_
                                                 (##car _%$%e185631185716%_))
                                                (_%$%tl185633185721%_
                                                 (##cdr _%$%e185631185716%_)))
                                            (let ((_%K185724%_
                                                   _%$%hd185632185719%_))
                                              (if (gx#stx-null?
                                                   _%$%tl185633185721%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test185714%_
                                                   _%K185724%_
                                                   '#!void)
                                                  (_%$%E185624185694%_)))))
                                        (_%$%E185624185694%_)))))
                              (_%$%E185624185694%_))))
                      (_%$%E185624185694%_)))))
          (_%$%E185623185726%_))))
    (define gx#free-identifier=?
      (lambda (_%xid185606%_ _%yid185607%_)
        (let ((_%xe185609%_ (gx#resolve-identifier__0 _%xid185606%_))
              (_%ye185610%_ (gx#resolve-identifier__0 _%yid185607%_)))
          (if (and _%xe185609%_ _%ye185610%_)
              (let ((_%$e185613%_ (eq? _%xe185609%_ _%ye185610%_)))
                (if _%$e185613%_
                    _%$e185613%_
                    (if (##structure-instance-of? _%xe185609%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye185610%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe185609%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye185610%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe185609%_ _%ye185610%_)
                  '#f
                  (gx#stx-eq? _%xid185606%_ _%yid185607%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid185587%_ _%yid185588%_)
        (letrec ((_%context185590%_
                  (lambda (_%e185604%_)
                    (if (##structure-direct-instance-of?
                         _%e185604%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e185604%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks185591%_
                  (lambda (_%e185599%_)
                    (if (symbol? _%e185599%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e185599%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e185599%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e185599%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap185592%_
                  (lambda (_%e185597%_)
                    (if (symbol? _%e185597%_)
                        _%e185597%_
                        (gx#syntax-local-unwrap _%e185597%_)))))
          (let ((_%x185594%_ (_%unwrap185592%_ _%xid185587%_))
                (_%y185595%_ (_%unwrap185592%_ _%yid185588%_)))
            (if (gx#stx-eq? _%x185594%_ _%y185595%_)
                (if (eq? (_%context185590%_ _%x185594%_)
                         (_%context185590%_ _%y185595%_))
                    (equal? (_%marks185591%_ _%x185594%_)
                            (_%marks185591%_ _%y185595%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx185585%_)
        (if (gx#identifier? _%stx185585%_)
            (gx#core-identifier=? _%stx185585%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx185583%_)
        (if (gx#identifier? _%stx185583%_)
            (gx#core-identifier=? _%stx185583%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx185526%_ _%where185527%_)
        (let _%lp185529%_ ((_%rest185531%_ (gx#syntax->list _%stx185526%_)))
          (let* ((_%$%rest185532185540%_ _%rest185531%_)
                 (_%$%else185534185548%_ (lambda () '#t))
                 (_%$%K185536185561%_
                  (lambda (_%rest185551%_ _%hd185552%_)
                    (if (gx#identifier? _%hd185552%_)
                        (if (__find (lambda (_%$%g185554185556%_)
                                      (gx#bound-identifier=?
                                       _%$%g185554185556%_
                                       _%hd185552%_))
                                    _%rest185551%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where185527%_
                             _%hd185552%_)
                            (_%lp185529%_ _%rest185551%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where185527%_
                         _%hd185552%_)))))
            (if (pair? _%$%rest185532185540%_)
                (let ((_%$%hd185537185564%_ (##car _%$%rest185532185540%_))
                      (_%$%tl185538185566%_ (##cdr _%$%rest185532185540%_)))
                  (let* ((_%hd185569%_ _%$%hd185537185564%_)
                         (_%rest185571%_ _%$%tl185538185566%_))
                    (_%$%K185536185561%_ _%rest185571%_ _%hd185569%_)))
                (_%$%else185534185548%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx185576%_)
        (let ((_%where185578%_ _%stx185576%_))
          (gx#check-duplicate-identifiers__% _%stx185576%_ _%where185578%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g188507_
        (let ((_g188508_ (##length _g188507_)))
          (cond ((##fx= _g188508_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g188507_))
                ((##fx= _g188508_ 2)
                 (apply gx#check-duplicate-identifiers__% _g188507_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g188507_))))))
    (define gx#core-bind-values?
      (lambda (_%stx185518%_)
        (gx#stx-andmap
         (lambda (_%x185520%_)
           (let ((_%$e185522%_ (gx#identifier? _%x185520%_)))
             (if _%$e185522%_ _%$e185522%_ (gx#stx-false? _%x185520%_))))
         _%stx185518%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx185482%_ _%rebind?185483%_ _%phi185484%_ _%ctx185485%_)
        (gx#stx-for-each1
         (lambda (_%id185487%_)
           (if (gx#identifier? _%id185487%_)
               (gx#core-bind-runtime!__%
                _%id185487%_
                _%rebind?185483%_
                _%phi185484%_
                _%ctx185485%_)
               '#!void))
         _%stx185482%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx185492%_)
        (let* ((_%rebind?185494%_ '#f)
               (_%phi185496%_ (gx#current-expander-phi))
               (_%ctx185498%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx185492%_
           _%rebind?185494%_
           _%phi185496%_
           _%ctx185498%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx185500%_ _%rebind?185501%_)
        (let* ((_%phi185503%_ (gx#current-expander-phi))
               (_%ctx185505%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx185500%_
           _%rebind?185501%_
           _%phi185503%_
           _%ctx185505%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx185507%_ _%rebind?185508%_ _%phi185509%_)
        (let ((_%ctx185511%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx185507%_
           _%rebind?185508%_
           _%phi185509%_
           _%ctx185511%_))))
    (define gx#core-bind-values!
      (lambda _g188509_
        (let ((_g188510_ (##length _g188509_)))
          (cond ((##fx= _g188510_ 1) (apply gx#core-bind-values!__0 _g188509_))
                ((##fx= _g188510_ 2) (apply gx#core-bind-values!__1 _g188509_))
                ((##fx= _g188510_ 3) (apply gx#core-bind-values!__2 _g188509_))
                ((##fx= _g188510_ 4) (apply gx#core-bind-values!__% _g188509_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g188509_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx185477%_)
        (gx#stx-map1
         (lambda (_%x185479%_)
           (if (gx#identifier? _%x185479%_)
               (gx#core-quote-syntax__0 _%x185479%_)
               '#f))
         _%stx185477%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx185470%_)
        (if (gx#identifier? _%stx185470%_)
            (let* ((_%bind185472%_ (gx#resolve-identifier__0 _%stx185470%_))
                   (_%$e185474%_ (not _%bind185472%_)))
              (if _%$e185474%_
                  _%$e185474%_
                  (##structure-instance-of?
                   _%bind185472%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id185459%_ _%form185460%_)
        (let ((_%bind185462%_ (gx#resolve-identifier__0 _%id185459%_)))
          (if (##structure-instance-of? _%bind185462%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id185459%_)
              (if (not _%bind185462%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id185459%_)))
                      (gx#core-quote-syntax__0 _%id185459%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form185460%_
                       _%id185459%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form185460%_
                   _%id185459%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id185414%_ _%rebind?185415%_ _%phi185416%_ _%ctx185417%_)
        (let* ((_%key185419%_ (gx#core-identifier-key _%id185414%_))
               (_%eid185421%_
                (gx#make-binding-id__%
                 _%key185419%_
                 '#f
                 _%phi185416%_
                 _%ctx185417%_))
               (_%bind185427%_
                (if (##structure-instance-of?
                     _%ctx185417%_
                     'gx#module-context::t)
                    (let ((__obj188486
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
                       __obj188486
                       _%eid185421%_
                       _%key185419%_
                       _%phi185416%_
                       _%ctx185417%_)
                      __obj188486)
                    (if (##structure-instance-of?
                         _%ctx185417%_
                         'gx#top-context::t)
                        (let ((__obj188485
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj188485
                           _%eid185421%_
                           _%key185419%_
                           _%phi185416%_)
                          __obj188485)
                        (if (##structure-instance-of?
                             _%ctx185417%_
                             'gx#local-context::t)
                            (let ((__obj188484
                                   (##structure
                                    gx#local-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#local-binding:::init!
                               __obj188484
                               _%eid185421%_
                               _%key185419%_
                               _%phi185416%_)
                              __obj188484)
                            (let ((__obj188483
                                   (##structure
                                    gx#runtime-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#runtime-binding:::init!
                               __obj188483
                               _%eid185421%_
                               _%key185419%_
                               _%phi185416%_)
                              __obj188483))))))
          (gx#bind-identifier!__%
           _%id185414%_
           _%bind185427%_
           _%rebind?185415%_
           _%phi185416%_
           _%ctx185417%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id185433%_)
        (let* ((_%rebind?185435%_ '#f)
               (_%phi185437%_ (gx#current-expander-phi))
               (_%ctx185439%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id185433%_
           _%rebind?185435%_
           _%phi185437%_
           _%ctx185439%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id185441%_ _%rebind?185442%_)
        (let* ((_%phi185444%_ (gx#current-expander-phi))
               (_%ctx185446%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id185441%_
           _%rebind?185442%_
           _%phi185444%_
           _%ctx185446%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id185448%_ _%rebind?185449%_ _%phi185450%_)
        (let ((_%ctx185452%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id185448%_
           _%rebind?185449%_
           _%phi185450%_
           _%ctx185452%_))))
    (define gx#core-bind-runtime!
      (lambda _g188511_
        (let ((_g188512_ (##length _g188511_)))
          (cond ((##fx= _g188512_ 1)
                 (apply gx#core-bind-runtime!__0 _g188511_))
                ((##fx= _g188512_ 2)
                 (apply gx#core-bind-runtime!__1 _g188511_))
                ((##fx= _g188512_ 3)
                 (apply gx#core-bind-runtime!__2 _g188511_))
                ((##fx= _g188512_ 4)
                 (apply gx#core-bind-runtime!__% _g188511_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g188511_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id185366%_
               _%eid185367%_
               _%rebind?185368%_
               _%phi185369%_
               _%ctx185370%_)
        (let* ((_%key185372%_ (gx#core-identifier-key _%id185366%_))
               (_%bind185377%_
                (if (##structure-instance-of?
                     _%ctx185370%_
                     'gx#module-context::t)
                    (let ((__obj188489
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
                       __obj188489
                       _%eid185367%_
                       _%key185372%_
                       _%phi185369%_
                       _%ctx185370%_)
                      __obj188489)
                    (if (##structure-instance-of?
                         _%ctx185370%_
                         'gx#top-context::t)
                        (let ((__obj188488
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj188488
                           _%eid185367%_
                           _%key185372%_
                           _%phi185369%_)
                          __obj188488)
                        (let ((__obj188487
                               (##structure
                                gx#runtime-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#runtime-binding:::init!
                           __obj188487
                           _%eid185367%_
                           _%key185372%_
                           _%phi185369%_)
                          __obj188487)))))
          (gx#bind-identifier!__%
           _%id185366%_
           _%bind185377%_
           _%rebind?185368%_
           _%phi185369%_
           _%ctx185370%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id185383%_ _%eid185384%_)
        (let* ((_%rebind?185386%_ '#f)
               (_%phi185388%_ (gx#current-expander-phi))
               (_%ctx185390%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id185383%_
           _%eid185384%_
           _%rebind?185386%_
           _%phi185388%_
           _%ctx185390%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id185392%_ _%eid185393%_ _%rebind?185394%_)
        (let* ((_%phi185396%_ (gx#current-expander-phi))
               (_%ctx185398%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id185392%_
           _%eid185393%_
           _%rebind?185394%_
           _%phi185396%_
           _%ctx185398%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id185400%_ _%eid185401%_ _%rebind?185402%_ _%phi185403%_)
        (let ((_%ctx185405%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id185400%_
           _%eid185401%_
           _%rebind?185402%_
           _%phi185403%_
           _%ctx185405%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g188513_
        (let ((_g188514_ (##length _g188513_)))
          (cond ((##fx= _g188514_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g188513_))
                ((##fx= _g188514_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g188513_))
                ((##fx= _g188514_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g188513_))
                ((##fx= _g188514_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g188513_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g188513_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id185326%_
               _%eid185327%_
               _%rebind?185328%_
               _%phi185329%_
               _%ctx185330%_)
        (gx#bind-identifier!__%
         _%id185326%_
         (let ((__obj188490
                (##structure gx#extern-binding::t '#f '#f '#f '#f '#f '#f)))
           (gx#extern-binding:::init!
            __obj188490
            _%eid185327%_
            (gx#core-identifier-key _%id185326%_)
            _%phi185329%_)
           __obj188490)
         _%rebind?185328%_
         _%phi185329%_
         _%ctx185330%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id185335%_ _%eid185336%_)
        (let* ((_%rebind?185338%_ '#f)
               (_%phi185340%_ (gx#current-expander-phi))
               (_%ctx185342%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id185335%_
           _%eid185336%_
           _%rebind?185338%_
           _%phi185340%_
           _%ctx185342%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id185344%_ _%eid185345%_ _%rebind?185346%_)
        (let* ((_%phi185348%_ (gx#current-expander-phi))
               (_%ctx185350%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id185344%_
           _%eid185345%_
           _%rebind?185346%_
           _%phi185348%_
           _%ctx185350%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id185352%_ _%eid185353%_ _%rebind?185354%_ _%phi185355%_)
        (let ((_%ctx185357%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id185352%_
           _%eid185353%_
           _%rebind?185354%_
           _%phi185355%_
           _%ctx185357%_))))
    (define gx#core-bind-extern!
      (lambda _g188515_
        (let ((_g188516_ (##length _g188515_)))
          (cond ((##fx= _g188516_ 2) (apply gx#core-bind-extern!__0 _g188515_))
                ((##fx= _g188516_ 3) (apply gx#core-bind-extern!__1 _g188515_))
                ((##fx= _g188516_ 4) (apply gx#core-bind-extern!__2 _g188515_))
                ((##fx= _g188516_ 5) (apply gx#core-bind-extern!__% _g188515_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g188515_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id185280%_
               _%e185281%_
               _%rebind?185282%_
               _%phi185283%_
               _%ctx185284%_)
        (gx#bind-identifier!__%
         _%id185280%_
         (let ((_%key185289%_ (gx#core-identifier-key _%id185280%_))
               (_%e185290%_
                (if (or (##structure-instance-of? _%e185281%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e185281%_
                         'gx#expander-context::t))
                    _%e185281%_
                    (##structure
                     gx#user-expander::t
                     _%e185281%_
                     _%ctx185284%_
                     _%phi185283%_))))
           (let ((__obj188491
                  (##structure gx#syntax-binding::t '#f '#f '#f '#f '#f)))
             (gx#syntax-binding:::init!
              __obj188491
              (gx#make-binding-id__%
               _%key185289%_
               '#t
               _%phi185283%_
               _%ctx185284%_)
              _%key185289%_
              _%phi185283%_
              _%e185290%_)
             __obj188491))
         _%rebind?185282%_
         _%phi185283%_
         _%ctx185284%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id185295%_ _%e185296%_)
        (let* ((_%rebind?185298%_ '#f)
               (_%phi185300%_ (gx#current-expander-phi))
               (_%ctx185302%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id185295%_
           _%e185296%_
           _%rebind?185298%_
           _%phi185300%_
           _%ctx185302%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id185304%_ _%e185305%_ _%rebind?185306%_)
        (let* ((_%phi185308%_ (gx#current-expander-phi))
               (_%ctx185310%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id185304%_
           _%e185305%_
           _%rebind?185306%_
           _%phi185308%_
           _%ctx185310%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id185312%_ _%e185313%_ _%rebind?185314%_ _%phi185315%_)
        (let ((_%ctx185317%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id185312%_
           _%e185313%_
           _%rebind?185314%_
           _%phi185315%_
           _%ctx185317%_))))
    (define gx#core-bind-syntax!
      (lambda _g188517_
        (let ((_g188518_ (##length _g188517_)))
          (cond ((##fx= _g188518_ 2) (apply gx#core-bind-syntax!__0 _g188517_))
                ((##fx= _g188518_ 3) (apply gx#core-bind-syntax!__1 _g188517_))
                ((##fx= _g188518_ 4) (apply gx#core-bind-syntax!__2 _g188517_))
                ((##fx= _g188518_ 5) (apply gx#core-bind-syntax!__% _g188517_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g188517_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id185263%_ _%e185264%_ _%rebind?185265%_)
        (gx#core-bind-syntax!__%
         _%id185263%_
         _%e185264%_
         _%rebind?185265%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id185270%_ _%e185271%_)
        (let ((_%rebind?185273%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id185270%_
           _%e185271%_
           _%rebind?185273%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g188519_
        (let ((_g188520_ (##length _g188519_)))
          (cond ((##fx= _g188520_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g188519_))
                ((##fx= _g188520_ 3)
                 (apply gx#core-bind-root-syntax!__% _g188519_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g188519_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id185221%_
               _%alias-id185222%_
               _%rebind?185223%_
               _%phi185224%_
               _%ctx185225%_)
        (gx#bind-identifier!__%
         _%id185221%_
         (let* ((_%key185227%_ (gx#core-identifier-key _%id185221%_))
                (__obj188492
                 (##structure gx#alias-binding::t '#f '#f '#f '#f '#f)))
           (gx#alias-binding:::init!
            __obj188492
            (gx#make-binding-id__%
             _%key185227%_
             '#t
             _%phi185224%_
             _%ctx185225%_)
            _%key185227%_
            _%phi185224%_
            _%alias-id185222%_)
           __obj188492)
         _%rebind?185223%_
         _%phi185224%_
         _%ctx185225%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id185232%_ _%alias-id185233%_)
        (let* ((_%rebind?185235%_ '#f)
               (_%phi185237%_ (gx#current-expander-phi))
               (_%ctx185239%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id185232%_
           _%alias-id185233%_
           _%rebind?185235%_
           _%phi185237%_
           _%ctx185239%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id185241%_ _%alias-id185242%_ _%rebind?185243%_)
        (let* ((_%phi185245%_ (gx#current-expander-phi))
               (_%ctx185247%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id185241%_
           _%alias-id185242%_
           _%rebind?185243%_
           _%phi185245%_
           _%ctx185247%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id185249%_ _%alias-id185250%_ _%rebind?185251%_ _%phi185252%_)
        (let ((_%ctx185254%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id185249%_
           _%alias-id185250%_
           _%rebind?185251%_
           _%phi185252%_
           _%ctx185254%_))))
    (define gx#core-bind-alias!
      (lambda _g188521_
        (let ((_g188522_ (##length _g188521_)))
          (cond ((##fx= _g188522_ 2) (apply gx#core-bind-alias!__0 _g188521_))
                ((##fx= _g188522_ 3) (apply gx#core-bind-alias!__1 _g188521_))
                ((##fx= _g188522_ 4) (apply gx#core-bind-alias!__2 _g188521_))
                ((##fx= _g188522_ 5) (apply gx#core-bind-alias!__% _g188521_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g188521_))))))
    (define gx#make-binding-id__%
      (lambda (_%key185171%_ _%syntax?185172%_ _%phi185173%_ _%ctx185174%_)
        (if (uninterned-symbol? _%key185171%_)
            (##gensym 'L)
            (if (pair? _%key185171%_)
                (gensym (##car _%key185171%_))
                (if (##structure-instance-of? _%ctx185174%_ 'gx#top-context::t)
                    (let ((_%ns185179%_
                           (gx#core-context-namespace__% _%ctx185174%_)))
                      (if (and (fxzero? _%phi185173%_) (not _%syntax?185172%_))
                          (if _%ns185179%_
                              (make-symbol__1 _%ns185179%_ '"#" _%key185171%_)
                              _%key185171%_)
                          (if _%syntax?185172%_
                              (make-symbol__1
                               (let ((_%$e185183%_ _%ns185179%_))
                                 (if _%$e185183%_ _%$e185183%_ '""))
                               '"[:"
                               (number->string _%phi185173%_)
                               '":]#"
                               _%key185171%_)
                              (make-symbol__1
                               (let ((_%$e185187%_ _%ns185179%_))
                                 (if _%$e185187%_ _%$e185187%_ '""))
                               '"["
                               (number->string _%phi185173%_)
                               '"]#"
                               _%key185171%_))))
                    (gensym _%key185171%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key185194%_)
        (let* ((_%syntax?185196%_ '#f)
               (_%phi185198%_ (gx#current-expander-phi))
               (_%ctx185200%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key185194%_
           _%syntax?185196%_
           _%phi185198%_
           _%ctx185200%_))))
    (define gx#make-binding-id__1
      (lambda (_%key185202%_ _%syntax?185203%_)
        (let* ((_%phi185205%_ (gx#current-expander-phi))
               (_%ctx185207%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key185202%_
           _%syntax?185203%_
           _%phi185205%_
           _%ctx185207%_))))
    (define gx#make-binding-id__2
      (lambda (_%key185209%_ _%syntax?185210%_ _%phi185211%_)
        (let ((_%ctx185213%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key185209%_
           _%syntax?185210%_
           _%phi185211%_
           _%ctx185213%_))))
    (define gx#make-binding-id
      (lambda _g188523_
        (let ((_g188524_ (##length _g188523_)))
          (cond ((##fx= _g188524_ 1) (apply gx#make-binding-id__0 _g188523_))
                ((##fx= _g188524_ 2) (apply gx#make-binding-id__1 _g188523_))
                ((##fx= _g188524_ 3) (apply gx#make-binding-id__2 _g188523_))
                ((##fx= _g188524_ 4) (apply gx#make-binding-id__% _g188523_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g188523_))))))))
