(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1784471383)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx191117%_)
        (letrec ((_%expand-special191119%_
                  (lambda (_%hd191121%_ _%K191122%_ _%rest191123%_ _%r191124%_)
                    (_%K191122%_
                     _%rest191123%_
                     (cons (gx#core-expand-top _%hd191121%_) _%r191124%_)))))
          (gx#core-expand-block__0 _%stx191117%_ _%expand-special191119%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx190771%_)
        (letrec ((_%expand-special190773%_
                  (lambda (_%hd190893%_ _%K190894%_ _%rest190895%_ _%r190896%_)
                    (let* ((_%K*190900%_
                            (lambda (_%e190898%_)
                              (_%K190894%_
                               _%rest190895%_
                               (cons _%e190898%_ _%r190896%_))))
                           (_%$%e190901190953%_ _%hd190893%_)
                           (_%$%E190939190957%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e190901190953%_)))
                           (_%$%E190935190999%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e190901190953%_)
                                  (let ((_%$%e190940190961%_
                                         (gx#syntax-e _%$%e190901190953%_)))
                                    (let ((_%$%hd190941190964%_
                                           (##car _%$%e190940190961%_))
                                          (_%$%tl190942190966%_
                                           (##cdr _%$%e190940190961%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd190941190964%_)
                                               (gx#core-identifier=?
                                                _%$%hd190941190964%_
                                                '%#bind-runtime-properties!))
                                          (if (gx#stx-pair?
                                               _%$%tl190942190966%_)
                                              (let ((_%$%e190943190969%_
                                                     (gx#syntax-e
                                                      _%$%tl190942190966%_)))
                                                (let ((_%$%hd190944190972%_
                                                       (##car _%$%e190943190969%_))
                                                      (_%$%tl190945190974%_
                                                       (##cdr _%$%e190943190969%_)))
                                                  (if (gx#stx-pair?
                                                       _%$%hd190944190972%_)
                                                      (let ((_%$%e190949190977%_
                                                             (gx#syntax-e
                                                              _%$%hd190944190972%_)))
                                                        (let ((_%$%hd190950190980%_
                                                               (##car _%$%e190949190977%_))
                                                              (_%$%tl190951190982%_
                                                               (##cdr _%$%e190949190977%_)))
                                                          (let ((_%id190985%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%hd190950190980%_))
                    (if (gx#stx-null? _%$%tl190951190982%_)
                        (if (gx#stx-pair? _%$%tl190945190974%_)
                            (let ((_%$%e190946190987%_
                                   (gx#syntax-e _%$%tl190945190974%_)))
                              (let ((_%$%hd190947190990%_
                                     (##car _%$%e190946190987%_))
                                    (_%$%tl190948190992%_
                                     (##cdr _%$%e190946190987%_)))
                                (let ((_%props190995%_ _%$%hd190947190990%_))
                                  (if (gx#stx-null? _%$%tl190948190992%_)
                                      (let ((_%bind190997%_
                                             (gx#resolve-identifier__0
                                              _%id190985%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind190997%_
                                         _%props190995%_)
                                        (_%K190894%_
                                         _%rest190895%_
                                         _%r190896%_))
                                      (_%$%E190939190957%_)))))
                            (_%$%E190939190957%_))
                        (_%$%E190939190957%_)))))
              (_%$%E190939190957%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E190939190957%_))
                                          (_%$%E190939190957%_))))
                                  (_%$%E190939190957%_))))
                           (_%$%E190931191011%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e190901190953%_)
                                  (let ((_%$%e190936191003%_
                                         (gx#syntax-e _%$%e190901190953%_)))
                                    (let ((_%$%hd190937191006%_
                                           (##car _%$%e190936191003%_))
                                          (_%$%tl190938191008%_
                                           (##cdr _%$%e190936191003%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd190937191006%_)
                                               (gx#core-identifier=?
                                                _%$%hd190937191006%_
                                                '%#define-runtime))
                                          (_%K*190900%_
                                           (gx#core-expand-define-runtime%
                                            _%hd190893%_))
                                          (_%$%E190935190999%_))))
                                  (_%$%E190935190999%_))))
                           (_%$%E190927191023%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e190901190953%_)
                                  (let ((_%$%e190932191015%_
                                         (gx#syntax-e _%$%e190901190953%_)))
                                    (let ((_%$%hd190933191018%_
                                           (##car _%$%e190932191015%_))
                                          (_%$%tl190934191020%_
                                           (##cdr _%$%e190932191015%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd190933191018%_)
                                               (gx#core-identifier=?
                                                _%$%hd190933191018%_
                                                '%#define-alias))
                                          (_%K*190900%_
                                           (gx#core-expand-define-alias%
                                            _%hd190893%_))
                                          (_%$%E190931191011%_))))
                                  (_%$%E190931191011%_))))
                           (_%$%E190917191035%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e190901190953%_)
                                  (let ((_%$%e190928191027%_
                                         (gx#syntax-e _%$%e190901190953%_)))
                                    (let ((_%$%hd190929191030%_
                                           (##car _%$%e190928191027%_))
                                          (_%$%tl190930191032%_
                                           (##cdr _%$%e190928191027%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd190929191030%_)
                                               (gx#core-identifier=?
                                                _%$%hd190929191030%_
                                                '%#define-syntax))
                                          (_%K*190900%_
                                           (gx#core-expand-define-syntax%
                                            _%hd190893%_))
                                          (_%$%E190927191023%_))))
                                  (_%$%E190927191023%_))))
                           (_%$%E190907191067%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e190901190953%_)
                                  (let ((_%$%e190918191039%_
                                         (gx#syntax-e _%$%e190901190953%_)))
                                    (let ((_%$%hd190919191042%_
                                           (##car _%$%e190918191039%_))
                                          (_%$%tl190920191044%_
                                           (##cdr _%$%e190918191039%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd190919191042%_)
                                               (gx#core-identifier=?
                                                _%$%hd190919191042%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl190920191044%_)
                                              (let ((_%$%e190921191047%_
                                                     (gx#syntax-e
                                                      _%$%tl190920191044%_)))
                                                (let ((_%$%hd190922191050%_
                                                       (##car _%$%e190921191047%_))
                                                      (_%$%tl190923191052%_
                                                       (##cdr _%$%e190921191047%_)))
                                                  (let ((_%hd-bind191055%_
                                                         _%$%hd190922191050%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl190923191052%_)
                                                        (let ((_%$%e190924191057%_
                                                               (gx#syntax-e
                                                                _%$%tl190923191052%_)))
                                                          (let ((_%$%hd190925191060%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e190924191057%_))
                        (_%$%tl190926191062%_ (##cdr _%$%e190924191057%_)))
                    (let ((_%expr191065%_ _%$%hd190925191060%_))
                      (if (gx#stx-null? _%$%tl190926191062%_)
                          (if (gx#core-bind-values? _%hd-bind191055%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind191055%_)
                                (_%K*190900%_ _%hd190893%_))
                              (_%$%E190917191035%_))
                          (_%$%E190917191035%_)))))
                (_%$%E190917191035%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E190917191035%_))
                                          (_%$%E190917191035%_))))
                                  (_%$%E190917191035%_))))
                           (_%$%E190903191101%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e190901190953%_)
                                  (let ((_%$%e190908191071%_
                                         (gx#syntax-e _%$%e190901190953%_)))
                                    (let ((_%$%hd190909191074%_
                                           (##car _%$%e190908191071%_))
                                          (_%$%tl190910191076%_
                                           (##cdr _%$%e190908191071%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd190909191074%_)
                                               (gx#core-identifier=?
                                                _%$%hd190909191074%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl190910191076%_)
                                              (let ((_%$%e190911191079%_
                                                     (gx#syntax-e
                                                      _%$%tl190910191076%_)))
                                                (let ((_%$%hd190912191082%_
                                                       (##car _%$%e190911191079%_))
                                                      (_%$%tl190913191084%_
                                                       (##cdr _%$%e190911191079%_)))
                                                  (let ((_%hd-bind191087%_
                                                         _%$%hd190912191082%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl190913191084%_)
                                                        (let ((_%$%e190914191089%_
                                                               (gx#syntax-e
                                                                _%$%tl190913191084%_)))
                                                          (let ((_%$%hd190915191092%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e190914191089%_))
                        (_%$%tl190916191094%_ (##cdr _%$%e190914191089%_)))
                    (let* ((_%expr191097%_ _%$%hd190915191092%_)
                           (_%props191099%_ _%$%tl190916191094%_))
                      (if (and (gx#core-bind-values? _%hd-bind191087%_)
                               (gx#stx-list? _%props191099%_)
                               (not (gx#stx-null? _%props191099%_)))
                          (begin
                            (gx#core-bind-values!__0 _%hd-bind191087%_)
                            (_%K190894%_
                             (cons (gx#core-cons
                                    '%#bind-runtime-properties!
                                    (cons _%hd-bind191087%_
                                          (cons _%props191099%_ '())))
                                   _%rest190895%_)
                             (cons (gx#core-cons
                                    '%#define-values
                                    (cons _%hd-bind191087%_
                                          (cons _%expr191097%_ '())))
                                   _%r190896%_)))
                          (_%$%E190907191067%_)))))
                (_%$%E190907191067%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E190907191067%_))
                                          (_%$%E190907191067%_))))
                                  (_%$%E190907191067%_))))
                           (_%$%E190902191113%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e190901190953%_)
                                  (let ((_%$%e190904191105%_
                                         (gx#syntax-e _%$%e190901190953%_)))
                                    (let ((_%$%hd190905191108%_
                                           (##car _%$%e190904191105%_))
                                          (_%$%tl190906191110%_
                                           (##cdr _%$%e190904191105%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd190905191108%_)
                                               (gx#core-identifier=?
                                                _%$%hd190905191108%_
                                                '%#begin-syntax))
                                          (_%K*190900%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd190893%_))
                                          (_%$%E190903191101%_))))
                                  (_%$%E190903191101%_)))))
                      (_%$%E190902191113%_))))
                 (_%eval-body190774%_
                  (lambda (_%rbody190782%_)
                    (let _%lp190784%_ ((_%rest190786%_ _%rbody190782%_)
                                       (_%body190787%_ '())
                                       (_%ebody190788%_ '()))
                      (let* ((_%$%rest190789190797%_ _%rest190786%_)
                             (_%$%else190791190805%_
                              (lambda ()
                                (values _%body190787%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody190788%_)
                                          (gx#stx-source _%stx190771%_))))))
                             (_%$%K190793190881%_
                              (lambda (_%rest190808%_ _%hd190809%_)
                                (let* ((_%$%e190810190827%_ _%hd190809%_)
                                       (_%$%E190822190831%_
                                        (lambda ()
                                          (_%lp190784%_
                                           _%rest190808%_
                                           (cons _%hd190809%_ _%body190787%_)
                                           (cons _%hd190809%_
                                                 _%ebody190788%_))))
                                       (_%$%E190812190843%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e190810190827%_)
                                              (let ((_%$%e190823190835%_
                                                     (gx#syntax-e
                                                      _%$%e190810190827%_)))
                                                (let ((_%$%hd190824190838%_
                                                       (##car _%$%e190823190835%_))
                                                      (_%$%tl190825190840%_
                                                       (##cdr _%$%e190823190835%_)))
                                                  (if (and (gx#identifier?
                                                            _%$%hd190824190838%_)
                                                           (gx#core-identifier=?
                                                            _%$%hd190824190838%_
                                                            '%#begin-syntax))
                                                      (_%lp190784%_
                                                       _%rest190808%_
                                                       (cons _%hd190809%_
                                                             _%body190787%_)
                                                       _%ebody190788%_)
                                                      (_%$%E190822190831%_))))
                                              (_%$%E190822190831%_))))
                                       (_%$%E190811190877%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e190810190827%_)
                                              (let ((_%$%e190813190847%_
                                                     (gx#syntax-e
                                                      _%$%e190810190827%_)))
                                                (let ((_%$%hd190814190850%_
                                                       (##car _%$%e190813190847%_))
                                                      (_%$%tl190815190852%_
                                                       (##cdr _%$%e190813190847%_)))
                                                  (if (and (gx#identifier?
                                                            _%$%hd190814190850%_)
                                                           (gx#core-identifier=?
                                                            _%$%hd190814190850%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%$%tl190815190852%_)
                                                          (let ((_%$%e190816190855%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl190815190852%_)))
                    (let ((_%$%hd190817190858%_ (##car _%$%e190816190855%_))
                          (_%$%tl190818190860%_ (##cdr _%$%e190816190855%_)))
                      (let ((_%hd-bind190863%_ _%$%hd190817190858%_))
                        (if (gx#stx-pair? _%$%tl190818190860%_)
                            (let ((_%$%e190819190865%_
                                   (gx#syntax-e _%$%tl190818190860%_)))
                              (let ((_%$%hd190820190868%_
                                     (##car _%$%e190819190865%_))
                                    (_%$%tl190821190870%_
                                     (##cdr _%$%e190819190865%_)))
                                (let ((_%expr190873%_ _%$%hd190820190868%_))
                                  (if (gx#stx-null? _%$%tl190821190870%_)
                                      (let ((_%ehd190875%_
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#define-values)
                                                    (cons (gx#core-quote-bind-values
                                                           _%hd-bind190863%_)
                                                          (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%expr190873%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%hd190809%_))))
                                        (_%lp190784%_
                                         _%rest190808%_
                                         (cons _%ehd190875%_ _%body190787%_)
                                         (cons _%ehd190875%_ _%ebody190788%_)))
                                      (_%$%E190812190843%_)))))
                            (_%$%E190812190843%_)))))
                  (_%$%E190812190843%_))
              (_%$%E190812190843%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E190812190843%_)))))
                                  (_%$%E190811190877%_)))))
                        (if (pair? _%$%rest190789190797%_)
                            (let ((_%$%hd190794190884%_
                                   (##car _%$%rest190789190797%_))
                                  (_%$%tl190795190886%_
                                   (##cdr _%$%rest190789190797%_)))
                              (let* ((_%hd190889%_ _%$%hd190794190884%_)
                                     (_%rest190891%_ _%$%tl190795190886%_))
                                (_%$%K190793190881%_
                                 _%rest190891%_
                                 _%hd190889%_)))
                            (_%$%else190791190805%_)))))))
          (call-with-parameters__1
           (lambda ()
             (let* ((_%rbody190777%_
                     (gx#core-expand-block__1
                      _%stx190771%_
                      _%expand-special190773%_
                      '#f))
                    (_g191150_ (_%eval-body190774%_ _%rbody190777%_)))
               (begin
                 (let ((_g191151_
                        (if (##values? _g191150_)
                            (##values-length _g191150_)
                            1)))
                   (if (not (##fx= _g191151_ 2))
                       (error "Context expects 2 values" _g191151_)))
                 (let ((_%expanded-body190779%_ (##values-ref _g191150_ 0))
                       (_%value190780%_ (##values-ref _g191150_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body190779%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value190780%_ '())))
                    (gx#stx-source _%stx190771%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx190741%_)
        (let* ((_%$%e190742190749%_ _%stx190741%_)
               (_%$%E190744190753%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e190742190749%_)))
               (_%$%E190743190767%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190742190749%_)
                      (let ((_%$%e190745190757%_
                             (gx#syntax-e _%$%e190742190749%_)))
                        (let ((_%$%hd190746190760%_
                               (##car _%$%e190745190757%_))
                              (_%$%tl190747190762%_
                               (##cdr _%$%e190745190757%_)))
                          (let ((_%body190765%_ _%$%tl190747190762%_))
                            (if (gx#stx-list? _%body190765%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body190765%_)
                                 (gx#stx-source _%stx190741%_))
                                (_%$%E190744190753%_)))))
                      (_%$%E190744190753%_)))))
          (_%$%E190743190767%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx190739%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx190739%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx190685%_)
        (let* ((_%$%e190686190699%_ _%stx190685%_)
               (_%$%E190688190703%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e190686190699%_)))
               (_%$%E190687190735%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190686190699%_)
                      (let ((_%$%e190689190707%_
                             (gx#syntax-e _%$%e190686190699%_)))
                        (let ((_%$%hd190690190710%_
                               (##car _%$%e190689190707%_))
                              (_%$%tl190691190712%_
                               (##cdr _%$%e190689190707%_)))
                          (if (gx#stx-pair? _%$%tl190691190712%_)
                              (let ((_%$%e190692190715%_
                                     (gx#syntax-e _%$%tl190691190712%_)))
                                (let ((_%$%hd190693190718%_
                                       (##car _%$%e190692190715%_))
                                      (_%$%tl190694190720%_
                                       (##cdr _%$%e190692190715%_)))
                                  (let ((_%ann190723%_ _%$%hd190693190718%_))
                                    (if (gx#stx-pair? _%$%tl190694190720%_)
                                        (let ((_%$%e190695190725%_
                                               (gx#syntax-e
                                                _%$%tl190694190720%_)))
                                          (let ((_%$%hd190696190728%_
                                                 (##car _%$%e190695190725%_))
                                                (_%$%tl190697190730%_
                                                 (##cdr _%$%e190695190725%_)))
                                            (let ((_%expr190733%_
                                                   _%$%hd190696190728%_))
                                              (if (gx#stx-null?
                                                   _%$%tl190697190730%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann190723%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr190733%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx190685%_))
                                                  (_%$%E190688190703%_)))))
                                        (_%$%E190688190703%_)))))
                              (_%$%E190688190703%_))))
                      (_%$%E190688190703%_)))))
          (_%$%E190687190735%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx190310%_ _%body190311%_)
        (letrec ((_%expand-special190313%_
                  (lambda (_%hd190680%_ _%K190681%_ _%rest190682%_ _%r190683%_)
                    (_%K190681%_
                     '()
                     (cons (_%expand-internal190314%_
                            _%hd190680%_
                            _%rest190682%_)
                           _%r190683%_))))
                 (_%expand-internal190314%_
                  (lambda (_%hd190676%_ _%rest190677%_)
                    (call-with-parameters__1
                     (lambda ()
                       (_%wrap-internal190316%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd190676%_ _%rest190677%_))
                          (gx#stx-source _%stx190310%_))
                         _%expand-internal-special190315%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj191134
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj191134)
                       __obj191134))))
                 (_%expand-internal-special190315%_
                  (lambda (_%hd190472%_ _%K190473%_ _%rest190474%_ _%r190475%_)
                    (let* ((_%$%e190476190524%_ _%hd190472%_)
                           (_%$%E190519190528%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e190476190524%_)))
                           (_%$%E190506190540%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e190476190524%_)
                                  (let ((_%$%e190520190532%_
                                         (gx#syntax-e _%$%e190476190524%_)))
                                    (let ((_%$%hd190521190535%_
                                           (##car _%$%e190520190532%_))
                                          (_%$%tl190522190537%_
                                           (##cdr _%$%e190520190532%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd190521190535%_)
                                               (gx#core-identifier=?
                                                _%$%hd190521190535%_
                                                '%#declare))
                                          (_%K190473%_
                                           _%rest190474%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd190472%_)
                                                 _%r190475%_))
                                          (_%$%E190519190528%_))))
                                  (_%$%E190519190528%_))))
                           (_%$%E190502190582%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e190476190524%_)
                                  (let ((_%$%e190507190544%_
                                         (gx#syntax-e _%$%e190476190524%_)))
                                    (let ((_%$%hd190508190547%_
                                           (##car _%$%e190507190544%_))
                                          (_%$%tl190509190549%_
                                           (##cdr _%$%e190507190544%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd190508190547%_)
                                               (gx#core-identifier=?
                                                _%$%hd190508190547%_
                                                '%#bind-runtime-properties!))
                                          (if (gx#stx-pair?
                                               _%$%tl190509190549%_)
                                              (let ((_%$%e190510190552%_
                                                     (gx#syntax-e
                                                      _%$%tl190509190549%_)))
                                                (let ((_%$%hd190511190555%_
                                                       (##car _%$%e190510190552%_))
                                                      (_%$%tl190512190557%_
                                                       (##cdr _%$%e190510190552%_)))
                                                  (if (gx#stx-pair?
                                                       _%$%hd190511190555%_)
                                                      (let ((_%$%e190516190560%_
                                                             (gx#syntax-e
                                                              _%$%hd190511190555%_)))
                                                        (let ((_%$%hd190517190563%_
                                                               (##car _%$%e190516190560%_))
                                                              (_%$%tl190518190565%_
                                                               (##cdr _%$%e190516190560%_)))
                                                          (let ((_%id190568%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%hd190517190563%_))
                    (if (gx#stx-null? _%$%tl190518190565%_)
                        (if (gx#stx-pair? _%$%tl190512190557%_)
                            (let ((_%$%e190513190570%_
                                   (gx#syntax-e _%$%tl190512190557%_)))
                              (let ((_%$%hd190514190573%_
                                     (##car _%$%e190513190570%_))
                                    (_%$%tl190515190575%_
                                     (##cdr _%$%e190513190570%_)))
                                (let ((_%props190578%_ _%$%hd190514190573%_))
                                  (if (gx#stx-null? _%$%tl190515190575%_)
                                      (let ((_%bind190580%_
                                             (gx#resolve-identifier__0
                                              _%id190568%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind190580%_
                                         _%props190578%_)
                                        (_%K190473%_
                                         _%rest190474%_
                                         _%r190475%_))
                                      (_%$%E190506190540%_)))))
                            (_%$%E190506190540%_))
                        (_%$%E190506190540%_)))))
              (_%$%E190506190540%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E190506190540%_))
                                          (_%$%E190506190540%_))))
                                  (_%$%E190506190540%_))))
                           (_%$%E190498190594%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e190476190524%_)
                                  (let ((_%$%e190503190586%_
                                         (gx#syntax-e _%$%e190476190524%_)))
                                    (let ((_%$%hd190504190589%_
                                           (##car _%$%e190503190586%_))
                                          (_%$%tl190505190591%_
                                           (##cdr _%$%e190503190586%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd190504190589%_)
                                               (gx#core-identifier=?
                                                _%$%hd190504190589%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd190472%_)
                                            (_%K190473%_
                                             _%rest190474%_
                                             _%r190475%_))
                                          (_%$%E190502190582%_))))
                                  (_%$%E190502190582%_))))
                           (_%$%E190488190606%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e190476190524%_)
                                  (let ((_%$%e190499190598%_
                                         (gx#syntax-e _%$%e190476190524%_)))
                                    (let ((_%$%hd190500190601%_
                                           (##car _%$%e190499190598%_))
                                          (_%$%tl190501190603%_
                                           (##cdr _%$%e190499190598%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd190500190601%_)
                                               (gx#core-identifier=?
                                                _%$%hd190500190601%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd190472%_)
                                            (_%K190473%_
                                             _%rest190474%_
                                             _%r190475%_))
                                          (_%$%E190498190594%_))))
                                  (_%$%E190498190594%_))))
                           (_%$%E190478190638%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e190476190524%_)
                                  (let ((_%$%e190489190610%_
                                         (gx#syntax-e _%$%e190476190524%_)))
                                    (let ((_%$%hd190490190613%_
                                           (##car _%$%e190489190610%_))
                                          (_%$%tl190491190615%_
                                           (##cdr _%$%e190489190610%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd190490190613%_)
                                               (gx#core-identifier=?
                                                _%$%hd190490190613%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl190491190615%_)
                                              (let ((_%$%e190492190618%_
                                                     (gx#syntax-e
                                                      _%$%tl190491190615%_)))
                                                (let ((_%$%hd190493190621%_
                                                       (##car _%$%e190492190618%_))
                                                      (_%$%tl190494190623%_
                                                       (##cdr _%$%e190492190618%_)))
                                                  (let ((_%hd-bind190626%_
                                                         _%$%hd190493190621%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl190494190623%_)
                                                        (let ((_%$%e190495190628%_
                                                               (gx#syntax-e
                                                                _%$%tl190494190623%_)))
                                                          (let ((_%$%hd190496190631%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e190495190628%_))
                        (_%$%tl190497190633%_ (##cdr _%$%e190495190628%_)))
                    (let ((_%expr190636%_ _%$%hd190496190631%_))
                      (if (gx#stx-null? _%$%tl190497190633%_)
                          (if (gx#core-bind-values? _%hd-bind190626%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind190626%_)
                                (_%K190473%_
                                 _%rest190474%_
                                 (cons _%hd190472%_ _%r190475%_)))
                              (_%$%E190488190606%_))
                          (_%$%E190488190606%_)))))
                (_%$%E190488190606%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E190488190606%_))
                                          (_%$%E190488190606%_))))
                                  (_%$%E190488190606%_))))
                           (_%$%E190477190672%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e190476190524%_)
                                  (let ((_%$%e190479190642%_
                                         (gx#syntax-e _%$%e190476190524%_)))
                                    (let ((_%$%hd190480190645%_
                                           (##car _%$%e190479190642%_))
                                          (_%$%tl190481190647%_
                                           (##cdr _%$%e190479190642%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd190480190645%_)
                                               (gx#core-identifier=?
                                                _%$%hd190480190645%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl190481190647%_)
                                              (let ((_%$%e190482190650%_
                                                     (gx#syntax-e
                                                      _%$%tl190481190647%_)))
                                                (let ((_%$%hd190483190653%_
                                                       (##car _%$%e190482190650%_))
                                                      (_%$%tl190484190655%_
                                                       (##cdr _%$%e190482190650%_)))
                                                  (let ((_%hd-bind190658%_
                                                         _%$%hd190483190653%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl190484190655%_)
                                                        (let ((_%$%e190485190660%_
                                                               (gx#syntax-e
                                                                _%$%tl190484190655%_)))
                                                          (let ((_%$%hd190486190663%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e190485190660%_))
                        (_%$%tl190487190665%_ (##cdr _%$%e190485190660%_)))
                    (let* ((_%expr190668%_ _%$%hd190486190663%_)
                           (_%props190670%_ _%$%tl190487190665%_))
                      (if (and (gx#core-bind-values? _%hd-bind190658%_)
                               (gx#stx-list? _%props190670%_)
                               (not (gx#stx-null? _%props190670%_)))
                          (begin
                            (gx#core-bind-values!__0 _%hd-bind190658%_)
                            (_%K190473%_
                             (cons (gx#core-cons
                                    '%#bind-runtime-properties!
                                    (cons _%hd-bind190658%_
                                          (cons _%props190670%_ '())))
                                   _%rest190474%_)
                             (cons (gx#core-cons
                                    '%#define-values
                                    (cons _%hd-bind190658%_
                                          (cons _%expr190668%_ '())))
                                   _%r190475%_)))
                          (_%$%E190478190638%_)))))
                (_%$%E190478190638%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E190478190638%_))
                                          (_%$%E190478190638%_))))
                                  (_%$%E190478190638%_)))))
                      (_%$%E190477190672%_))))
                 (_%wrap-internal190316%_
                  (lambda (_%rbody190318%_)
                    (let _%lp190320%_ ((_%rest190322%_ _%rbody190318%_)
                                       (_%decls190323%_ '())
                                       (_%bind190324%_ '())
                                       (_%body190325%_ '()))
                      (let* ((_%$%e190326190333%_ _%rest190322%_)
                             (_%$%E190328190382%_
                              (lambda ()
                                (let* ((_%body190377%_
                                        (let* ((_%$%body190336190346%_
                                                _%body190325%_)
                                               (_%$%else190339190354%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body190325%_)
                                                   (gx#stx-source
                                                    _%stx190310%_)))))
                                          (let ((_%$%K190344190374%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx190310%_)))
                                                (_%$%K190341190360%_
                                                 (lambda (_%expr190358%_)
                                                   _%expr190358%_)))
                                            (let ((_%$%try-match190338190370%_
                                                   (lambda ()
                                                     (if (pair? _%$%body190336190346%_)
                                                         (let ((_%$%tl190343190365%_
                                                                (##cdr _%$%body190336190346%_))
                                                               (_%$%hd190342190363%_
                                                                (##car _%$%body190336190346%_)))
                                                           (if (null? _%$%tl190343190365%_)
                                                               (let ((_%expr190368%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%hd190342190363%_))
                         (_%$%K190341190360%_ _%expr190368%_))
                       (_%$%else190339190354%_)))
                 (_%$%else190339190354%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%$%body190336190346%_)
                                                  (_%$%K190344190374%_)
                                                  (_%$%try-match190338190370%_))))))
                                       (_%body190379%_
                                        (if (null? _%bind190324%_)
                                            _%body190377%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind190324%_
                                                         (cons _%body190377%_
                                                               '())))
                                             (gx#stx-source _%stx190310%_)))))
                                  (if (null? _%decls190323%_)
                                      _%body190379%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls190323%_
                                                   (cons _%body190379%_ '())))
                                       (gx#stx-source _%stx190310%_))))))
                             (_%$%E190327190468%_
                              (lambda ()
                                (if (gx#stx-pair? _%$%e190326190333%_)
                                    (let ((_%$%e190329190386%_
                                           (gx#syntax-e _%$%e190326190333%_)))
                                      (let ((_%$%hd190330190389%_
                                             (##car _%$%e190329190386%_))
                                            (_%$%tl190331190391%_
                                             (##cdr _%$%e190329190386%_)))
                                        (let* ((_%hd190394%_
                                                _%$%hd190330190389%_)
                                               (_%rest190396%_
                                                _%$%tl190331190391%_)
                                               (_%$%e190397190414%_
                                                _%hd190394%_)
                                               (_%$%E190409190418%_
                                                (lambda ()
                                                  (if (null? _%bind190324%_)
                                                      (_%lp190320%_
                                                       _%rest190396%_
                                                       _%decls190323%_
                                                       _%bind190324%_
                                                       (cons _%hd190394%_
                                                             _%body190325%_))
                                                      (_%lp190320%_
                                                       _%rest190396%_
                                                       _%decls190323%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd190394%_ '()))
                     _%bind190324%_)
               _%body190325%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%E190399190432%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%$%e190397190414%_)
                                                      (let ((_%$%e190410190422%_
                                                             (gx#syntax-e
                                                              _%$%e190397190414%_)))
                                                        (let ((_%$%hd190411190425%_
                                                               (##car _%$%e190410190422%_))
                                                              (_%$%tl190412190427%_
                                                               (##cdr _%$%e190410190422%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%hd190411190425%_)
                           (gx#core-identifier=?
                            _%$%hd190411190425%_
                            '%#declare))
                      (let ((_%xdecls190430%_ _%$%tl190412190427%_))
                        (_%lp190320%_
                         _%rest190396%_
                         (gx#stx-foldr cons _%decls190323%_ _%xdecls190430%_)
                         _%bind190324%_
                         _%body190325%_))
                      (_%$%E190409190418%_))))
              (_%$%E190409190418%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%E190398190464%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%$%e190397190414%_)
                                                      (let ((_%$%e190400190436%_
                                                             (gx#syntax-e
                                                              _%$%e190397190414%_)))
                                                        (let ((_%$%hd190401190439%_
                                                               (##car _%$%e190400190436%_))
                                                              (_%$%tl190402190441%_
                                                               (##cdr _%$%e190400190436%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%hd190401190439%_)
                           (gx#core-identifier=?
                            _%$%hd190401190439%_
                            '%#define-values))
                      (if (gx#stx-pair? _%$%tl190402190441%_)
                          (let ((_%$%e190403190444%_
                                 (gx#syntax-e _%$%tl190402190441%_)))
                            (let ((_%$%hd190404190447%_
                                   (##car _%$%e190403190444%_))
                                  (_%$%tl190405190449%_
                                   (##cdr _%$%e190403190444%_)))
                              (let ((_%hd-bind190452%_ _%$%hd190404190447%_))
                                (if (gx#stx-pair? _%$%tl190405190449%_)
                                    (let ((_%$%e190406190454%_
                                           (gx#syntax-e _%$%tl190405190449%_)))
                                      (let ((_%$%hd190407190457%_
                                             (##car _%$%e190406190454%_))
                                            (_%$%tl190408190459%_
                                             (##cdr _%$%e190406190454%_)))
                                        (let ((_%expr190462%_
                                               _%$%hd190407190457%_))
                                          (if (gx#stx-null?
                                               _%$%tl190408190459%_)
                                              (_%lp190320%_
                                               _%rest190396%_
                                               _%decls190323%_
                                               (cons (cons (gx#core-quote-bind-values
                                                            _%hd-bind190452%_)
                                                           (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%expr190462%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind190324%_)
                                               _%body190325%_)
                                              (_%$%E190399190432%_)))))
                                    (_%$%E190399190432%_)))))
                          (_%$%E190399190432%_))
                      (_%$%E190399190432%_))))
              (_%$%E190399190432%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%E190398190464%_))))
                                    (_%$%E190328190382%_)))))
                        (_%$%E190327190468%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body190311%_)
            (gx#stx-source _%stx190310%_))
           _%expand-special190313%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx190248%_)
        (let* ((_%$%e190249190256%_ _%stx190248%_)
               (_%$%E190251190260%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e190249190256%_)))
               (_%$%E190250190306%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190249190256%_)
                      (let ((_%$%e190252190264%_
                             (gx#syntax-e _%$%e190249190256%_)))
                        (let ((_%$%hd190253190267%_
                               (##car _%$%e190252190264%_))
                              (_%$%tl190254190269%_
                               (##cdr _%$%e190252190264%_)))
                          (let ((_%body190272%_ _%$%tl190254190269%_))
                            (if (gx#stx-list? _%body190272%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl190274%_)
                                     (let* ((_%$%e190275190282%_
                                             _%decl190274%_)
                                            (_%$%E190277190286%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%$%e190275190282%_)))
                                            (_%$%E190276190302%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%$%e190275190282%_)
                                                   (let ((_%$%e190278190290%_
                                                          (gx#syntax-e
                                                           _%$%e190275190282%_)))
                                                     (let ((_%$%hd190279190293%_
                                                            (##car _%$%e190278190290%_))
                                                           (_%$%tl190280190295%_
                                                            (##cdr _%$%e190278190290%_)))
                                                       (let* ((_%head190298%_
                                                               _%$%hd190279190293%_)
                                                              (_%args190300%_
                                                               _%$%tl190280190295%_))
                                                         (if (gx#stx-list?
                                                              _%args190300%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl190274%_)
                                                             (_%$%E190277190286%_)))))
                                                   (_%$%E190277190286%_)))))
                                       (_%$%E190276190302%_)))
                                   _%body190272%_))
                                 (gx#stx-source _%stx190248%_))
                                (_%$%E190251190260%_)))))
                      (_%$%E190251190260%_)))))
          (_%$%E190250190306%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx190152%_)
        (let* ((_%$%e190153190160%_ _%stx190152%_)
               (_%$%E190155190164%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e190153190160%_)))
               (_%$%E190154190244%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190153190160%_)
                      (let ((_%$%e190156190168%_
                             (gx#syntax-e _%$%e190153190160%_)))
                        (let ((_%$%hd190157190171%_
                               (##car _%$%e190156190168%_))
                              (_%$%tl190158190173%_
                               (##cdr _%$%e190156190168%_)))
                          (let ((_%body190176%_ _%$%tl190158190173%_))
                            (let _%lp190178%_ ((_%rest190180%_ _%body190176%_)
                                               (_%r190181%_ '()))
                              (let* ((_%$%e190182190196%_ _%rest190180%_)
                                     (_%$%E190194190200%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx190152%_)))
                                     (_%$%E190184190204%_
                                      (lambda ()
                                        (if (gx#stx-null? _%$%e190182190196%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r190181%_))
                                             (gx#stx-source _%stx190152%_))
                                            (_%$%E190194190200%_))))
                                     (_%$%E190183190240%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%$%e190182190196%_)
                                            (let ((_%$%e190185190208%_
                                                   (gx#syntax-e
                                                    _%$%e190182190196%_)))
                                              (let ((_%$%hd190186190211%_
                                                     (##car _%$%e190185190208%_))
                                                    (_%$%tl190187190213%_
                                                     (##cdr _%$%e190185190208%_)))
                                                (if (gx#stx-pair?
                                                     _%$%hd190186190211%_)
                                                    (let ((_%$%e190188190216%_
                                                           (gx#syntax-e
                                                            _%$%hd190186190211%_)))
                                                      (let ((_%$%hd190189190219%_
                                                             (##car _%$%e190188190216%_))
                                                            (_%$%tl190190190221%_
                                                             (##cdr _%$%e190188190216%_)))
                                                        (let ((_%id190224%_
                                                               _%$%hd190189190219%_))
                                                          (if (gx#stx-pair?
                                                               _%$%tl190190190221%_)
                                                              (let ((_%$%e190191190226%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%$%tl190190190221%_)))
                        (let ((_%$%hd190192190229%_
                               (##car _%$%e190191190226%_))
                              (_%$%tl190193190231%_
                               (##cdr _%$%e190191190226%_)))
                          (let ((_%eid190234%_ _%$%hd190192190229%_))
                            (if (gx#stx-null? _%$%tl190193190231%_)
                                (let ((_%rest190236%_ _%$%tl190187190213%_))
                                  (if (and (gx#identifier? _%id190224%_)
                                           (gx#identifier? _%eid190234%_))
                                      (let ((_%eid190238%_
                                             (gx#stx-e _%eid190234%_)))
                                        (gx#core-bind-extern!__0
                                         _%id190224%_
                                         _%eid190238%_)
                                        (_%lp190178%_
                                         _%rest190236%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id190224%_)
                                                     (cons _%eid190238%_ '()))
                                               _%r190181%_)))
                                      (_%$%E190184190204%_)))
                                (_%$%E190184190204%_)))))
                      (_%$%E190184190204%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E190184190204%_))))
                                            (_%$%E190184190204%_)))))
                                (_%$%E190183190240%_))))))
                      (_%$%E190155190164%_)))))
          (_%$%E190154190244%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx190054%_)
        (let* ((_%$%e190055190078%_ _%stx190054%_)
               (_%$%E190067190082%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e190055190078%_)))
               (_%$%E190057190114%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190055190078%_)
                      (let ((_%$%e190068190086%_
                             (gx#syntax-e _%$%e190055190078%_)))
                        (let ((_%$%hd190069190089%_
                               (##car _%$%e190068190086%_))
                              (_%$%tl190070190091%_
                               (##cdr _%$%e190068190086%_)))
                          (if (gx#stx-pair? _%$%tl190070190091%_)
                              (let ((_%$%e190071190094%_
                                     (gx#syntax-e _%$%tl190070190091%_)))
                                (let ((_%$%hd190072190097%_
                                       (##car _%$%e190071190094%_))
                                      (_%$%tl190073190099%_
                                       (##cdr _%$%e190071190094%_)))
                                  (let ((_%hd190102%_ _%$%hd190072190097%_))
                                    (if (gx#stx-pair? _%$%tl190073190099%_)
                                        (let ((_%$%e190074190104%_
                                               (gx#syntax-e
                                                _%$%tl190073190099%_)))
                                          (let ((_%$%hd190075190107%_
                                                 (##car _%$%e190074190104%_))
                                                (_%$%tl190076190109%_
                                                 (##cdr _%$%e190074190104%_)))
                                            (let ((_%expr190112%_
                                                   _%$%hd190075190107%_))
                                              (if (gx#stx-null?
                                                   _%$%tl190076190109%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd190102%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd190102%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd190102%_)
                             (cons (gx#core-expand-expression _%expr190112%_)
                                   '())))
                 (gx#stx-source _%stx190054%_)))
              (_%$%E190067190082%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E190067190082%_)))))
                                        (_%$%E190067190082%_)))))
                              (_%$%E190067190082%_))))
                      (_%$%E190067190082%_))))
               (_%$%E190056190148%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190055190078%_)
                      (let ((_%$%e190058190118%_
                             (gx#syntax-e _%$%e190055190078%_)))
                        (let ((_%$%hd190059190121%_
                               (##car _%$%e190058190118%_))
                              (_%$%tl190060190123%_
                               (##cdr _%$%e190058190118%_)))
                          (if (gx#stx-pair? _%$%tl190060190123%_)
                              (let ((_%$%e190061190126%_
                                     (gx#syntax-e _%$%tl190060190123%_)))
                                (let ((_%$%hd190062190129%_
                                       (##car _%$%e190061190126%_))
                                      (_%$%tl190063190131%_
                                       (##cdr _%$%e190061190126%_)))
                                  (let ((_%hd190134%_ _%$%hd190062190129%_))
                                    (if (gx#stx-pair? _%$%tl190063190131%_)
                                        (let ((_%$%e190064190136%_
                                               (gx#syntax-e
                                                _%$%tl190063190131%_)))
                                          (let ((_%$%hd190065190139%_
                                                 (##car _%$%e190064190136%_))
                                                (_%$%tl190066190141%_
                                                 (##cdr _%$%e190064190136%_)))
                                            (let* ((_%expr190144%_
                                                    _%$%hd190065190139%_)
                                                   (_%props190146%_
                                                    _%$%tl190066190141%_))
                                              (if (and (gx#stx-list?
                                                        _%props190146%_)
                                                       (not (gx#stx-null?
                                                             _%props190146%_)))
                                                  (gx#core-cons
                                                   '%#begin
                                                   (cons (gx#core-cons
                                                          '%#define-values
                                                          (cons _%hd190134%_
                                                                (cons _%expr190144%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
                 (cons (gx#core-cons
                        '%#bind-runtime-properties!
                        (cons _%hd190134%_ (cons _%props190146%_ '())))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E190057190114%_)))))
                                        (_%$%E190057190114%_)))))
                              (_%$%E190057190114%_))))
                      (_%$%E190057190114%_)))))
          (_%$%E190056190148%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx189993%_)
        (let* ((_%$%e189994190007%_ _%stx189993%_)
               (_%$%E189996190011%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189994190007%_)))
               (_%$%E189995190050%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189994190007%_)
                      (let ((_%$%e189997190015%_
                             (gx#syntax-e _%$%e189994190007%_)))
                        (let ((_%$%hd189998190018%_
                               (##car _%$%e189997190015%_))
                              (_%$%tl189999190020%_
                               (##cdr _%$%e189997190015%_)))
                          (if (gx#stx-pair? _%$%tl189999190020%_)
                              (let ((_%$%e190000190023%_
                                     (gx#syntax-e _%$%tl189999190020%_)))
                                (let ((_%$%hd190001190026%_
                                       (##car _%$%e190000190023%_))
                                      (_%$%tl190002190028%_
                                       (##cdr _%$%e190000190023%_)))
                                  (let ((_%id190031%_ _%$%hd190001190026%_))
                                    (if (gx#stx-pair? _%$%tl190002190028%_)
                                        (let ((_%$%e190003190033%_
                                               (gx#syntax-e
                                                _%$%tl190002190028%_)))
                                          (let ((_%$%hd190004190036%_
                                                 (##car _%$%e190003190033%_))
                                                (_%$%tl190005190038%_
                                                 (##cdr _%$%e190003190033%_)))
                                            (let* ((_%binding-id190041%_
                                                    _%$%hd190004190036%_)
                                                   (_%props190043%_
                                                    _%$%tl190005190038%_))
                                              (if (and (gx#identifier?
                                                        _%id190031%_)
                                                       (gx#identifier?
                                                        _%binding-id190041%_)
                                                       (gx#stx-list?
                                                        _%props190043%_))
                                                  (let* ((_%eid190045%_
                                                          (gx#stx-e
                                                           _%binding-id190041%_))
                                                         (_%bind190047%_
                                                          (gx#core-bind-runtime-reference!__0
                                                           _%id190031%_
                                                           _%eid190045%_)))
                                                    (gx#core-bind-runtime-properties!
                                                     _%bind190047%_
                                                     _%props190043%_)
                                                    (gx#core-quote-syntax__0
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#define-runtime)
                                                           (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id190031%_)
                         (cons _%eid190045%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E189996190011%_)))))
                                        (_%$%E189996190011%_)))))
                              (_%$%E189996190011%_))))
                      (_%$%E189996190011%_)))))
          (_%$%E189995190050%_))))
    (define gx#core-expand-bind-runtime-properties%
      (lambda (_%stx189926%_)
        (let* ((_%$%e189927189943%_ _%stx189926%_)
               (_%$%E189929189947%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189927189943%_)))
               (_%$%E189928189989%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189927189943%_)
                      (let ((_%$%e189930189951%_
                             (gx#syntax-e _%$%e189927189943%_)))
                        (let ((_%$%hd189931189954%_
                               (##car _%$%e189930189951%_))
                              (_%$%tl189932189956%_
                               (##cdr _%$%e189930189951%_)))
                          (if (gx#stx-pair? _%$%tl189932189956%_)
                              (let ((_%$%e189933189959%_
                                     (gx#syntax-e _%$%tl189932189956%_)))
                                (let ((_%$%hd189934189962%_
                                       (##car _%$%e189933189959%_))
                                      (_%$%tl189935189964%_
                                       (##cdr _%$%e189933189959%_)))
                                  (if (gx#stx-pair? _%$%hd189934189962%_)
                                      (let ((_%$%e189939189967%_
                                             (gx#syntax-e
                                              _%$%hd189934189962%_)))
                                        (let ((_%$%hd189940189970%_
                                               (##car _%$%e189939189967%_))
                                              (_%$%tl189941189972%_
                                               (##cdr _%$%e189939189967%_)))
                                          (let ((_%id189975%_
                                                 _%$%hd189940189970%_))
                                            (if (gx#stx-null?
                                                 _%$%tl189941189972%_)
                                                (if (gx#stx-pair?
                                                     _%$%tl189935189964%_)
                                                    (let ((_%$%e189936189977%_
                                                           (gx#syntax-e
                                                            _%$%tl189935189964%_)))
                                                      (let ((_%$%hd189937189980%_
                                                             (##car _%$%e189936189977%_))
                                                            (_%$%tl189938189982%_
                                                             (##cdr _%$%e189936189977%_)))
                                                        (let ((_%props189985%_
                                                               _%$%hd189937189980%_))
                                                          (if (gx#stx-null?
                                                               _%$%tl189938189982%_)
                                                              (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%id189975%_)
                               (gx#stx-list? _%props189985%_))
                          (let ((_%bind189987%_
                                 (gx#resolve-identifier__0 _%id189975%_)))
                            (if (##structure-instance-of?
                                 _%bind189987%_
                                 'gx#runtime-binding::t)
                                '#!void
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; expected runtime binding"
                                 _%stx189926%_
                                 _%id189975%_
                                 _%bind189987%_))
                            (gx#core-bind-runtime-properties!
                             _%bind189987%_
                             _%props189985%_)
                            (gx#core-cons '%#begin '()))
                          (_%$%E189929189947%_))
                      (_%$%E189929189947%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E189929189947%_))
                                                (_%$%E189929189947%_)))))
                                      (_%$%E189929189947%_))))
                              (_%$%E189929189947%_))))
                      (_%$%E189929189947%_)))))
          (_%$%E189928189989%_))))
    (define gx#core-bind-runtime-properties!
      (lambda (_%bind189861%_ _%props189862%_)
        (letrec ((_%eval-prop189864%_
                  (lambda (_%prop189924%_)
                    (gx#eval-expression+1 _%prop189924%_))))
          (let _%loop189866%_ ((_%rest189868%_ _%props189862%_)
                               (_%props189869%_ '()))
            (let* ((_%$%e189870189881%_ _%rest189868%_)
                   (_%$%E189879189885%_
                    (lambda ()
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%$%e189870189881%_)))
                   (_%$%E189872189889%_
                    (lambda ()
                      (if (gx#stx-null? _%$%e189870189881%_)
                          (if (null? _%props189869%_)
                              '#!void
                              (##structure-set!
                               _%bind189861%_
                               (reverse! _%props189869%_)
                               '4
                               gx#binding::t
                               '#f))
                          (_%$%E189879189885%_))))
                   (_%$%E189871189920%_
                    (lambda ()
                      (if (gx#stx-pair? _%$%e189870189881%_)
                          (let ((_%$%e189873189893%_
                                 (gx#syntax-e _%$%e189870189881%_)))
                            (let ((_%$%hd189874189896%_
                                   (##car _%$%e189873189893%_))
                                  (_%$%tl189875189898%_
                                   (##cdr _%$%e189873189893%_)))
                              (let ((_%key189901%_ _%$%hd189874189896%_))
                                (if (gx#stx-pair? _%$%tl189875189898%_)
                                    (let ((_%$%e189876189903%_
                                           (gx#syntax-e _%$%tl189875189898%_)))
                                      (let ((_%$%hd189877189906%_
                                             (##car _%$%e189876189903%_))
                                            (_%$%tl189878189908%_
                                             (##cdr _%$%e189876189903%_)))
                                        (let* ((_%prop189911%_
                                                _%$%hd189877189906%_)
                                               (_%rest189913%_
                                                _%$%tl189878189908%_))
                                          (if (gx#stx-keyword? _%key189901%_)
                                              (let* ((_%key189915%_
                                                      (gx#stx-e _%key189901%_))
                                                     (_%$e189917%_
                                                      _%key189915%_))
                                                (if (eq? 'macro: _%$e189917%_)
                                                    (begin
                                                      (##structure-set!
                                                       _%bind189861%_
                                                       (if (gx#identifier?
                                                            _%prop189911%_)
                                                           (gx#core-quote-syntax__0
                                                            _%prop189911%_)
                                                           (gx#eval-expression+1
                                                            _%prop189911%_))
                                                       '6
                                                       gx#runtime-binding::t
                                                       '#f)
                                                      (_%loop189866%_
                                                       _%rest189913%_
                                                       _%props189869%_))
                                                    (if (eq? 'type:
                                                             _%$e189917%_)
                                                        (begin
                                                          (##structure-set!
                                                           _%bind189861%_
                                                           (gx#eval-expression+1
                                                            _%prop189911%_)
                                                           '5
                                                           gx#runtime-binding::t
                                                           '#f)
                                                          (_%loop189866%_
                                                           _%rest189913%_
                                                           _%props189869%_))
                                                        (_%loop189866%_
                                                         _%rest189913%_
                                                         (cons (gx#eval-expression+1
                                                                _%prop189911%_)
                                                               (cons _%key189915%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%props189869%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E189872189889%_)))))
                                    (_%$%E189872189889%_)))))
                          (_%$%E189872189889%_)))))
              (_%$%E189871189920%_))))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx189804%_)
        (let* ((_%$%e189805189818%_ _%stx189804%_)
               (_%$%E189807189822%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189805189818%_)))
               (_%$%E189806189857%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189805189818%_)
                      (let ((_%$%e189808189826%_
                             (gx#syntax-e _%$%e189805189818%_)))
                        (let ((_%$%hd189809189829%_
                               (##car _%$%e189808189826%_))
                              (_%$%tl189810189831%_
                               (##cdr _%$%e189808189826%_)))
                          (if (gx#stx-pair? _%$%tl189810189831%_)
                              (let ((_%$%e189811189834%_
                                     (gx#syntax-e _%$%tl189810189831%_)))
                                (let ((_%$%hd189812189837%_
                                       (##car _%$%e189811189834%_))
                                      (_%$%tl189813189839%_
                                       (##cdr _%$%e189811189834%_)))
                                  (let ((_%id189842%_ _%$%hd189812189837%_))
                                    (if (gx#stx-pair? _%$%tl189813189839%_)
                                        (let ((_%$%e189814189844%_
                                               (gx#syntax-e
                                                _%$%tl189813189839%_)))
                                          (let ((_%$%hd189815189847%_
                                                 (##car _%$%e189814189844%_))
                                                (_%$%tl189816189849%_
                                                 (##cdr _%$%e189814189844%_)))
                                            (let ((_%expr189852%_
                                                   _%$%hd189815189847%_))
                                              (if (gx#stx-null?
                                                   _%$%tl189816189849%_)
                                                  (if (gx#identifier?
                                                       _%id189842%_)
                                                      (let ((_g191152_
                                                             (gx#core-expand-expression+1
                                                              _%expr189852%_)))
                                                        (begin
                                                          (let ((_g191153_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g191152_)
                             (##values-length _g191152_)
                             1)))
                    (if (not (##fx= _g191153_ 2))
                        (error "Context expects 2 values" _g191153_)))
                  (let ((_%e-stx189854%_ (##values-ref _g191152_ 0))
                        (_%e189855%_ (##values-ref _g191152_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id189842%_ _%e189855%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id189842%_)
                                   (cons _%e-stx189854%_ '())))
                       (gx#stx-source _%stx189804%_))))))
              (_%$%E189807189822%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E189807189822%_)))))
                                        (_%$%E189807189822%_)))))
                              (_%$%E189807189822%_))))
                      (_%$%E189807189822%_)))))
          (_%$%E189806189857%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx189748%_)
        (let* ((_%$%e189749189762%_ _%stx189748%_)
               (_%$%E189751189766%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189749189762%_)))
               (_%$%E189750189800%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189749189762%_)
                      (let ((_%$%e189752189770%_
                             (gx#syntax-e _%$%e189749189762%_)))
                        (let ((_%$%hd189753189773%_
                               (##car _%$%e189752189770%_))
                              (_%$%tl189754189775%_
                               (##cdr _%$%e189752189770%_)))
                          (if (gx#stx-pair? _%$%tl189754189775%_)
                              (let ((_%$%e189755189778%_
                                     (gx#syntax-e _%$%tl189754189775%_)))
                                (let ((_%$%hd189756189781%_
                                       (##car _%$%e189755189778%_))
                                      (_%$%tl189757189783%_
                                       (##cdr _%$%e189755189778%_)))
                                  (let ((_%id189786%_ _%$%hd189756189781%_))
                                    (if (gx#stx-pair? _%$%tl189757189783%_)
                                        (let ((_%$%e189758189788%_
                                               (gx#syntax-e
                                                _%$%tl189757189783%_)))
                                          (let ((_%$%hd189759189791%_
                                                 (##car _%$%e189758189788%_))
                                                (_%$%tl189760189793%_
                                                 (##cdr _%$%e189758189788%_)))
                                            (let ((_%alias-id189796%_
                                                   _%$%hd189759189791%_))
                                              (if (gx#stx-null?
                                                   _%$%tl189760189793%_)
                                                  (if (and (gx#identifier?
                                                            _%id189786%_)
                                                           (gx#identifier?
                                                            _%alias-id189796%_))
                                                      (let ((_%alias-id189798%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id189796%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id189786%_
                                                         _%alias-id189798%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id189786%_)
                             (cons _%alias-id189798%_ '())))))
              (_%$%E189751189766%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E189751189766%_)))))
                                        (_%$%E189751189766%_)))))
                              (_%$%E189751189766%_))))
                      (_%$%E189751189766%_)))))
          (_%$%E189750189800%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx189691%_ _%wrap?189692%_)
        (let* ((_%$%e189693189703%_ _%stx189691%_)
               (_%$%E189695189707%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189693189703%_)))
               (_%$%E189694189734%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189693189703%_)
                      (let ((_%$%e189696189711%_
                             (gx#syntax-e _%$%e189693189703%_)))
                        (let ((_%$%hd189697189714%_
                               (##car _%$%e189696189711%_))
                              (_%$%tl189698189716%_
                               (##cdr _%$%e189696189711%_)))
                          (if (gx#stx-pair? _%$%tl189698189716%_)
                              (let ((_%$%e189699189719%_
                                     (gx#syntax-e _%$%tl189698189716%_)))
                                (let ((_%$%hd189700189722%_
                                       (##car _%$%e189699189719%_))
                                      (_%$%tl189701189724%_
                                       (##cdr _%$%e189699189719%_)))
                                  (let* ((_%hd189727%_ _%$%hd189700189722%_)
                                         (_%body189729%_ _%$%tl189701189724%_))
                                    (if (gx#core-bind-values? _%hd189727%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd189727%_)
                                           (let ((_%body189732%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd189727%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx189691%_
                                                               _%body189729%_)
                                                              '()))))
                                             (if _%wrap?189692%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body189732%_)
                                                  (gx#stx-source
                                                   _%stx189691%_))
                                                 _%body189732%_)))
                                         gx#current-expander-context
                                         (let ((__obj191135
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj191135)
                                           __obj191135))
                                        (_%$%E189695189707%_)))))
                              (_%$%E189695189707%_))))
                      (_%$%E189695189707%_)))))
          (_%$%E189694189734%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx189741%_)
        (let ((_%wrap?189743%_ '#t))
          (gx#core-expand-lambda%__% _%stx189741%_ _%wrap?189743%_))))
    (define gx#core-expand-lambda%
      (lambda _g191154_
        (let ((_g191155_ (##length _g191154_)))
          (cond ((##fx= _g191155_ 1)
                 (apply gx#core-expand-lambda%__0 _g191154_))
                ((##fx= _g191155_ 2)
                 (apply gx#core-expand-lambda%__% _g191154_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g191154_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx189655%_)
        (let* ((_%$%e189656189663%_ _%stx189655%_)
               (_%$%E189658189667%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189656189663%_)))
               (_%$%E189657189686%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189656189663%_)
                      (let ((_%$%e189659189671%_
                             (gx#syntax-e _%$%e189656189663%_)))
                        (let ((_%$%hd189660189674%_
                               (##car _%$%e189659189671%_))
                              (_%$%tl189661189676%_
                               (##cdr _%$%e189659189671%_)))
                          (let ((_%clauses189679%_ _%$%tl189661189676%_))
                            (if (gx#stx-list? _%clauses189679%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause189681%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause189681%_)
                                       (let ((_%$e189683%_
                                              (gx#stx-source
                                               _%clause189681%_)))
                                         (if _%$e189683%_
                                             _%$e189683%_
                                             (gx#stx-source _%stx189655%_))))
                                      '#f))
                                   _%clauses189679%_))
                                 (gx#stx-source _%stx189655%_))
                                (_%$%E189658189667%_)))))
                      (_%$%E189658189667%_)))))
          (_%$%E189657189686%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx189609%_)
        (let* ((_%$%e189610189620%_ _%stx189609%_)
               (_%$%E189612189624%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189610189620%_)))
               (_%$%E189611189651%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189610189620%_)
                      (let ((_%$%e189613189628%_
                             (gx#syntax-e _%$%e189610189620%_)))
                        (let ((_%$%hd189614189631%_
                               (##car _%$%e189613189628%_))
                              (_%$%tl189615189633%_
                               (##cdr _%$%e189613189628%_)))
                          (if (gx#stx-pair? _%$%tl189615189633%_)
                              (let ((_%$%e189616189636%_
                                     (gx#syntax-e _%$%tl189615189633%_)))
                                (let ((_%$%hd189617189639%_
                                       (##car _%$%e189616189636%_))
                                      (_%$%tl189618189641%_
                                       (##cdr _%$%e189616189636%_)))
                                  (let* ((_%hd189644%_ _%$%hd189617189639%_)
                                         (_%body189646%_ _%$%tl189618189641%_))
                                    (if (gx#core-expand-let-bind? _%hd189644%_)
                                        (let ((_%expressions189648%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd189644%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd189644%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd189644%_
                                                           _%expressions189648%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx189609%_
                         _%body189646%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx189609%_)))
                                           gx#current-expander-context
                                           (let ((__obj191136
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj191136)
                                             __obj191136)))
                                        (_%$%E189612189624%_)))))
                              (_%$%E189612189624%_))))
                      (_%$%E189612189624%_)))))
          (_%$%E189611189651%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx189554%_ _%form189555%_)
        (let* ((_%$%e189556189566%_ _%stx189554%_)
               (_%$%E189558189570%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189556189566%_)))
               (_%$%E189557189595%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189556189566%_)
                      (let ((_%$%e189559189574%_
                             (gx#syntax-e _%$%e189556189566%_)))
                        (let ((_%$%hd189560189577%_
                               (##car _%$%e189559189574%_))
                              (_%$%tl189561189579%_
                               (##cdr _%$%e189559189574%_)))
                          (if (gx#stx-pair? _%$%tl189561189579%_)
                              (let ((_%$%e189562189582%_
                                     (gx#syntax-e _%$%tl189561189579%_)))
                                (let ((_%$%hd189563189585%_
                                       (##car _%$%e189562189582%_))
                                      (_%$%tl189564189587%_
                                       (##cdr _%$%e189562189582%_)))
                                  (let* ((_%hd189590%_ _%$%hd189563189585%_)
                                         (_%body189592%_ _%$%tl189564189587%_))
                                    (if (gx#core-expand-let-bind? _%hd189590%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd189590%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form189555%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd189590%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd189590%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx189554%_
                                                               _%body189592%_)
                                                              '())))
                                            (gx#stx-source _%stx189554%_)))
                                         gx#current-expander-context
                                         (let ((__obj191137
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj191137)
                                           __obj191137))
                                        (_%$%E189558189570%_)))))
                              (_%$%E189558189570%_))))
                      (_%$%E189558189570%_)))))
          (_%$%E189557189595%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx189602%_)
        (let ((_%form189604%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx189602%_ _%form189604%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g191156_
        (let ((_g191157_ (##length _g191156_)))
          (cond ((##fx= _g191157_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g191156_))
                ((##fx= _g191157_ 2)
                 (apply gx#core-expand-letrec-values%__% _g191156_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g191156_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx189551%_)
        (gx#core-expand-letrec-values%__% _%stx189551%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx189508%_)
        (if (gx#stx-list? _%stx189508%_)
            (gx#stx-andmap
             (lambda (_%bind189510%_)
               (let* ((_%$%e189511189521%_ _%bind189510%_)
                      (_%$%E189513189525%_ (lambda () '#f))
                      (_%$%E189512189547%_
                       (lambda ()
                         (if (gx#stx-pair? _%$%e189511189521%_)
                             (let ((_%$%e189514189529%_
                                    (gx#syntax-e _%$%e189511189521%_)))
                               (let ((_%$%hd189515189532%_
                                      (##car _%$%e189514189529%_))
                                     (_%$%tl189516189534%_
                                      (##cdr _%$%e189514189529%_)))
                                 (let ((_%hd189537%_ _%$%hd189515189532%_))
                                   (if (gx#stx-pair? _%$%tl189516189534%_)
                                       (let ((_%$%e189517189539%_
                                              (gx#syntax-e
                                               _%$%tl189516189534%_)))
                                         (let ((_%$%hd189518189542%_
                                                (##car _%$%e189517189539%_))
                                               (_%$%tl189519189544%_
                                                (##cdr _%$%e189517189539%_)))
                                           (if (gx#stx-null?
                                                _%$%tl189519189544%_)
                                               (gx#core-bind-values?
                                                _%hd189537%_)
                                               (_%$%E189513189525%_))))
                                       (_%$%E189513189525%_)))))
                             (_%$%E189513189525%_)))))
                 (_%$%E189512189547%_)))
             _%stx189508%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind189467%_)
        (let* ((_%$%e189468189478%_ _%bind189467%_)
               (_%$%E189470189482%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189468189478%_)))
               (_%$%E189469189504%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189468189478%_)
                      (let ((_%$%e189471189486%_
                             (gx#syntax-e _%$%e189468189478%_)))
                        (let ((_%$%hd189472189489%_
                               (##car _%$%e189471189486%_))
                              (_%$%tl189473189491%_
                               (##cdr _%$%e189471189486%_)))
                          (if (gx#stx-pair? _%$%tl189473189491%_)
                              (let ((_%$%e189474189494%_
                                     (gx#syntax-e _%$%tl189473189491%_)))
                                (let ((_%$%hd189475189497%_
                                       (##car _%$%e189474189494%_))
                                      (_%$%tl189476189499%_
                                       (##cdr _%$%e189474189494%_)))
                                  (let ((_%expr189502%_ _%$%hd189475189497%_))
                                    (if (gx#stx-null? _%$%tl189476189499%_)
                                        (gx#core-expand-expression
                                         _%expr189502%_)
                                        (_%$%E189470189482%_)))))
                              (_%$%E189470189482%_))))
                      (_%$%E189470189482%_)))))
          (_%$%E189469189504%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind189426%_)
        (let* ((_%$%e189427189437%_ _%bind189426%_)
               (_%$%E189429189441%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189427189437%_)))
               (_%$%E189428189463%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189427189437%_)
                      (let ((_%$%e189430189445%_
                             (gx#syntax-e _%$%e189427189437%_)))
                        (let ((_%$%hd189431189448%_
                               (##car _%$%e189430189445%_))
                              (_%$%tl189432189450%_
                               (##cdr _%$%e189430189445%_)))
                          (let ((_%hd189453%_ _%$%hd189431189448%_))
                            (if (gx#stx-pair? _%$%tl189432189450%_)
                                (let ((_%$%e189433189455%_
                                       (gx#syntax-e _%$%tl189432189450%_)))
                                  (let ((_%$%hd189434189458%_
                                         (##car _%$%e189433189455%_))
                                        (_%$%tl189435189460%_
                                         (##cdr _%$%e189433189455%_)))
                                    (if (gx#stx-null? _%$%tl189435189460%_)
                                        (gx#core-bind-values!__0 _%hd189453%_)
                                        (_%$%E189429189441%_))))
                                (_%$%E189429189441%_)))))
                      (_%$%E189429189441%_)))))
          (_%$%E189428189463%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind189384%_ _%expr189385%_)
        (let* ((_%$%e189386189396%_ _%bind189384%_)
               (_%$%E189388189400%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189386189396%_)))
               (_%$%E189387189422%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189386189396%_)
                      (let ((_%$%e189389189404%_
                             (gx#syntax-e _%$%e189386189396%_)))
                        (let ((_%$%hd189390189407%_
                               (##car _%$%e189389189404%_))
                              (_%$%tl189391189409%_
                               (##cdr _%$%e189389189404%_)))
                          (let ((_%hd189412%_ _%$%hd189390189407%_))
                            (if (gx#stx-pair? _%$%tl189391189409%_)
                                (let ((_%$%e189392189414%_
                                       (gx#syntax-e _%$%tl189391189409%_)))
                                  (let ((_%$%hd189393189417%_
                                         (##car _%$%e189392189414%_))
                                        (_%$%tl189394189419%_
                                         (##cdr _%$%e189392189414%_)))
                                    (if (gx#stx-null? _%$%tl189394189419%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd189412%_)
                                              (cons _%expr189385%_ '()))
                                        (_%$%E189388189400%_))))
                                (_%$%E189388189400%_)))))
                      (_%$%E189388189400%_)))))
          (_%$%E189387189422%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx189338%_)
        (let* ((_%$%e189339189349%_ _%stx189338%_)
               (_%$%E189341189353%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189339189349%_)))
               (_%$%E189340189380%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189339189349%_)
                      (let ((_%$%e189342189357%_
                             (gx#syntax-e _%$%e189339189349%_)))
                        (let ((_%$%hd189343189360%_
                               (##car _%$%e189342189357%_))
                              (_%$%tl189344189362%_
                               (##cdr _%$%e189342189357%_)))
                          (if (gx#stx-pair? _%$%tl189344189362%_)
                              (let ((_%$%e189345189365%_
                                     (gx#syntax-e _%$%tl189344189362%_)))
                                (let ((_%$%hd189346189368%_
                                       (##car _%$%e189345189365%_))
                                      (_%$%tl189347189370%_
                                       (##cdr _%$%e189345189365%_)))
                                  (let* ((_%hd189373%_ _%$%hd189346189368%_)
                                         (_%body189375%_ _%$%tl189347189370%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd189373%_)
                                        (let ((_%expanders189377%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd189373%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd189373%_
                                              _%expanders189377%_)
                                             (gx#core-expand-local-block
                                              _%stx189338%_
                                              _%body189375%_))
                                           gx#current-expander-context
                                           (let ((__obj191138
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj191138)
                                             __obj191138)))
                                        (_%$%E189341189353%_)))))
                              (_%$%E189341189353%_))))
                      (_%$%E189341189353%_)))))
          (_%$%E189340189380%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx189287%_)
        (let* ((_%$%e189288189298%_ _%stx189287%_)
               (_%$%E189290189302%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189288189298%_)))
               (_%$%E189289189334%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189288189298%_)
                      (let ((_%$%e189291189306%_
                             (gx#syntax-e _%$%e189288189298%_)))
                        (let ((_%$%hd189292189309%_
                               (##car _%$%e189291189306%_))
                              (_%$%tl189293189311%_
                               (##cdr _%$%e189291189306%_)))
                          (if (gx#stx-pair? _%$%tl189293189311%_)
                              (let ((_%$%e189294189314%_
                                     (gx#syntax-e _%$%tl189293189311%_)))
                                (let ((_%$%hd189295189317%_
                                       (##car _%$%e189294189314%_))
                                      (_%$%tl189296189319%_
                                       (##cdr _%$%e189294189314%_)))
                                  (let* ((_%hd189322%_ _%$%hd189295189317%_)
                                         (_%body189324%_ _%$%tl189296189319%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd189322%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd189322%_
                                            (make-list
                                             (gx#stx-length _%hd189322%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%$%g189326189329%_
                                                     _%$%g189327189331%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%$%g189326189329%_
                                               _%$%g189327189331%_
                                               '#t))
                                            _%hd189322%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd189322%_))
                                           (gx#core-expand-local-block
                                            _%stx189287%_
                                            _%body189324%_))
                                         gx#current-expander-context
                                         (let ((__obj191139
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj191139)
                                           __obj191139))
                                        (_%$%E189290189302%_)))))
                              (_%$%E189290189302%_))))
                      (_%$%E189290189302%_)))))
          (_%$%E189289189334%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx189244%_)
        (if (gx#stx-list? _%stx189244%_)
            (gx#stx-andmap
             (lambda (_%bind189246%_)
               (let* ((_%$%e189247189257%_ _%bind189246%_)
                      (_%$%E189249189261%_ (lambda () '#f))
                      (_%$%E189248189283%_
                       (lambda ()
                         (if (gx#stx-pair? _%$%e189247189257%_)
                             (let ((_%$%e189250189265%_
                                    (gx#syntax-e _%$%e189247189257%_)))
                               (let ((_%$%hd189251189268%_
                                      (##car _%$%e189250189265%_))
                                     (_%$%tl189252189270%_
                                      (##cdr _%$%e189250189265%_)))
                                 (let ((_%hd189273%_ _%$%hd189251189268%_))
                                   (if (gx#stx-pair? _%$%tl189252189270%_)
                                       (let ((_%$%e189253189275%_
                                              (gx#syntax-e
                                               _%$%tl189252189270%_)))
                                         (let ((_%$%hd189254189278%_
                                                (##car _%$%e189253189275%_))
                                               (_%$%tl189255189280%_
                                                (##cdr _%$%e189253189275%_)))
                                           (if (gx#stx-null?
                                                _%$%tl189255189280%_)
                                               (gx#identifier? _%hd189273%_)
                                               (_%$%E189249189261%_))))
                                       (_%$%E189249189261%_)))))
                             (_%$%E189249189261%_)))))
                 (_%$%E189248189283%_)))
             _%stx189244%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind189200%_)
        (let* ((_%$%e189201189211%_ _%bind189200%_)
               (_%$%E189203189215%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189201189211%_)))
               (_%$%E189202189240%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189201189211%_)
                      (let ((_%$%e189204189219%_
                             (gx#syntax-e _%$%e189201189211%_)))
                        (let ((_%$%hd189205189222%_
                               (##car _%$%e189204189219%_))
                              (_%$%tl189206189224%_
                               (##cdr _%$%e189204189219%_)))
                          (if (gx#stx-pair? _%$%tl189206189224%_)
                              (let ((_%$%e189207189227%_
                                     (gx#syntax-e _%$%tl189206189224%_)))
                                (let ((_%$%hd189208189230%_
                                       (##car _%$%e189207189227%_))
                                      (_%$%tl189209189232%_
                                       (##cdr _%$%e189207189227%_)))
                                  (let ((_%expr189235%_ _%$%hd189208189230%_))
                                    (if (gx#stx-null? _%$%tl189209189232%_)
                                        (let ((_g191158_
                                               (gx#core-expand-expression+1
                                                _%expr189235%_)))
                                          (begin
                                            (let ((_g191159_
                                                   (if (##values? _g191158_)
                                                       (##values-length
                                                        _g191158_)
                                                       1)))
                                              (if (not (##fx= _g191159_ 2))
                                                  (error "Context expects 2 values"
                                                         _g191159_)))
                                            (let ((_%_189237%_
                                                   (##values-ref _g191158_ 0))
                                                  (_%e189238%_
                                                   (##values-ref _g191158_ 1)))
                                              _%e189238%_)))
                                        (_%$%E189203189215%_)))))
                              (_%$%E189203189215%_))))
                      (_%$%E189203189215%_)))))
          (_%$%E189202189240%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind189145%_ _%e189146%_ _%rebind?189147%_)
        (let* ((_%$%e189148189158%_ _%bind189145%_)
               (_%$%E189150189162%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189148189158%_)))
               (_%$%E189149189184%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189148189158%_)
                      (let ((_%$%e189151189166%_
                             (gx#syntax-e _%$%e189148189158%_)))
                        (let ((_%$%hd189152189169%_
                               (##car _%$%e189151189166%_))
                              (_%$%tl189153189171%_
                               (##cdr _%$%e189151189166%_)))
                          (let ((_%id189174%_ _%$%hd189152189169%_))
                            (if (gx#stx-pair? _%$%tl189153189171%_)
                                (let ((_%$%e189154189176%_
                                       (gx#syntax-e _%$%tl189153189171%_)))
                                  (let ((_%$%hd189155189179%_
                                         (##car _%$%e189154189176%_))
                                        (_%$%tl189156189181%_
                                         (##cdr _%$%e189154189176%_)))
                                    (if (gx#stx-null? _%$%tl189156189181%_)
                                        (gx#core-bind-syntax!__1
                                         _%id189174%_
                                         _%e189146%_
                                         _%rebind?189147%_)
                                        (_%$%E189150189162%_))))
                                (_%$%E189150189162%_)))))
                      (_%$%E189150189162%_)))))
          (_%$%E189149189184%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind189191%_ _%e189192%_)
        (let ((_%rebind?189194%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind189191%_
           _%e189192%_
           _%rebind?189194%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g191160_
        (let ((_g191161_ (##length _g191160_)))
          (cond ((##fx= _g191161_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g191160_))
                ((##fx= _g191161_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g191160_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g191160_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx189103%_)
        (let* ((_%$%e189104189114%_ _%stx189103%_)
               (_%$%E189106189118%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189104189114%_)))
               (_%$%E189105189140%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189104189114%_)
                      (let ((_%$%e189107189122%_
                             (gx#syntax-e _%$%e189104189114%_)))
                        (let ((_%$%hd189108189125%_
                               (##car _%$%e189107189122%_))
                              (_%$%tl189109189127%_
                               (##cdr _%$%e189107189122%_)))
                          (if (gx#stx-pair? _%$%tl189109189127%_)
                              (let ((_%$%e189110189130%_
                                     (gx#syntax-e _%$%tl189109189127%_)))
                                (let ((_%$%hd189111189133%_
                                       (##car _%$%e189110189130%_))
                                      (_%$%tl189112189135%_
                                       (##cdr _%$%e189110189130%_)))
                                  (let ((_%expr189138%_ _%$%hd189111189133%_))
                                    (if (gx#stx-null? _%$%tl189112189135%_)
                                        (gx#core-expand-expression
                                         _%expr189138%_)
                                        (_%$%E189106189118%_)))))
                              (_%$%E189106189118%_))))
                      (_%$%E189106189118%_)))))
          (_%$%E189105189140%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx189062%_)
        (let* ((_%$%e189063189073%_ _%stx189062%_)
               (_%$%E189065189077%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189063189073%_)))
               (_%$%E189064189099%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189063189073%_)
                      (let ((_%$%e189066189081%_
                             (gx#syntax-e _%$%e189063189073%_)))
                        (let ((_%$%hd189067189084%_
                               (##car _%$%e189066189081%_))
                              (_%$%tl189068189086%_
                               (##cdr _%$%e189066189081%_)))
                          (if (gx#stx-pair? _%$%tl189068189086%_)
                              (let ((_%$%e189069189089%_
                                     (gx#syntax-e _%$%tl189068189086%_)))
                                (let ((_%$%hd189070189092%_
                                       (##car _%$%e189069189089%_))
                                      (_%$%tl189071189094%_
                                       (##cdr _%$%e189069189089%_)))
                                  (let ((_%e189097%_ _%$%hd189070189092%_))
                                    (if (gx#stx-null? _%$%tl189071189094%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e189097%_)
                                                     '()))
                                         (gx#stx-source _%stx189062%_))
                                        (_%$%E189065189077%_)))))
                              (_%$%E189065189077%_))))
                      (_%$%E189065189077%_)))))
          (_%$%E189064189099%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx189021%_)
        (let* ((_%$%e189022189032%_ _%stx189021%_)
               (_%$%E189024189036%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189022189032%_)))
               (_%$%E189023189058%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189022189032%_)
                      (let ((_%$%e189025189040%_
                             (gx#syntax-e _%$%e189022189032%_)))
                        (let ((_%$%hd189026189043%_
                               (##car _%$%e189025189040%_))
                              (_%$%tl189027189045%_
                               (##cdr _%$%e189025189040%_)))
                          (if (gx#stx-pair? _%$%tl189027189045%_)
                              (let ((_%$%e189028189048%_
                                     (gx#syntax-e _%$%tl189027189045%_)))
                                (let ((_%$%hd189029189051%_
                                       (##car _%$%e189028189048%_))
                                      (_%$%tl189030189053%_
                                       (##cdr _%$%e189028189048%_)))
                                  (let ((_%e189056%_ _%$%hd189029189051%_))
                                    (if (gx#stx-null? _%$%tl189030189053%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e189056%_)
                                                     '()))
                                         (gx#stx-source _%stx189021%_))
                                        (_%$%E189024189036%_)))))
                              (_%$%E189024189036%_))))
                      (_%$%E189024189036%_)))))
          (_%$%E189023189058%_))))
    (define gx#core-expand-call%
      (lambda (_%stx188915%_)
        (letrec ((_%expand-runtime-call188917%_
                  (lambda (_%rator-expr189018%_ _%args189019%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons*
                      '%#call
                      _%rator-expr189018%_
                      (gx#stx-map1 gx#core-expand-expression _%args189019%_))
                     (gx#stx-source _%stx188915%_)))))
          (let* ((_%$%e188918188928%_ _%stx188915%_)
                 (_%$%E188920188932%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e188918188928%_)))
                 (_%$%E188919189014%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e188918188928%_)
                        (let ((_%$%e188921188936%_
                               (gx#syntax-e _%$%e188918188928%_)))
                          (let ((_%$%hd188922188939%_
                                 (##car _%$%e188921188936%_))
                                (_%$%tl188923188941%_
                                 (##cdr _%$%e188921188936%_)))
                            (if (gx#stx-pair? _%$%tl188923188941%_)
                                (let ((_%$%e188924188944%_
                                       (gx#syntax-e _%$%tl188923188941%_)))
                                  (let ((_%$%hd188925188947%_
                                         (##car _%$%e188924188944%_))
                                        (_%$%tl188926188949%_
                                         (##cdr _%$%e188924188944%_)))
                                    (let* ((_%rator188952%_
                                            _%$%hd188925188947%_)
                                           (_%args188954%_
                                            _%$%tl188926188949%_))
                                      (if (gx#stx-list? _%args188954%_)
                                          (let* ((_%rator-expr188956%_
                                                  (gx#core-expand-expression
                                                   _%rator188952%_))
                                                 (_%$%e188957188967%_
                                                  _%rator-expr188956%_)
                                                 (_%$%E188959188971%_
                                                  (lambda ()
                                                    (_%expand-runtime-call188917%_
                                                     _%rator-expr188956%_
                                                     _%args188954%_)))
                                                 (_%$%E188958189010%_
                                                  (lambda ()
                                                    (if (gx#stx-pair?
                                                         _%$%e188957188967%_)
                                                        (let ((_%$%e188960188975%_
                                                               (gx#syntax-e
                                                                _%$%e188957188967%_)))
                                                          (let ((_%$%hd188961188978%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e188960188975%_))
                        (_%$%tl188962188980%_ (##cdr _%$%e188960188975%_)))
                    (if (and (gx#identifier? _%$%hd188961188978%_)
                             (gx#core-identifier=?
                              _%$%hd188961188978%_
                              '%#ref))
                        (if (gx#stx-pair? _%$%tl188962188980%_)
                            (let ((_%$%e188963188983%_
                                   (gx#syntax-e _%$%tl188962188980%_)))
                              (let ((_%$%hd188964188986%_
                                     (##car _%$%e188963188983%_))
                                    (_%$%tl188965188988%_
                                     (##cdr _%$%e188963188983%_)))
                                (let ((_%id188991%_ _%$%hd188964188986%_))
                                  (if (gx#stx-null? _%$%tl188965188988%_)
                                      (let ((_%$e188993%_
                                             (gx#resolve-identifier__0
                                              _%id188991%_)))
                                        (if _%$e188993%_
                                            (let _%again188998%_ ((_%bind189000%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e188993%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_%$e189002%_
                                                     (if (##structure-instance-of?
                                                          _%bind189000%_
                                                          'gx#runtime-binding::t)
                                                         (##unchecked-structure-ref
                                                          _%bind189000%_
                                                          '6
                                                          '#f
                                                          '#f)
                                                         '#f)))
                                                (if _%$e189002%_
                                                    (gx#core-expand-expression
                                                     (gx#stx-wrap-source
                                                      (cons _%$e189002%_
                                                            _%args188954%_)
                                                      (gx#stx-source
                                                       _%stx188915%_)))
                                                    (if (##structure-direct-instance-of?
                                                         _%bind189000%_
                                                         'gx#import-binding::t)
                                                        (_%again188998%_
                                                         (##unchecked-structure-ref
                                                          _%bind189000%_
                                                          '5
                                                          '#f
                                                          '#f))
                                                        (_%expand-runtime-call188917%_
                                                         _%rator-expr188956%_
                                                         _%args188954%_)))))
                                            (_%expand-runtime-call188917%_
                                             _%rator-expr188956%_
                                             _%args188954%_)))
                                      (_%$%E188959188971%_)))))
                            (_%$%E188959188971%_))
                        (_%$%E188959188971%_))))
                (_%$%E188959188971%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%E188958189010%_))
                                          (_%$%E188920188932%_)))))
                                (_%$%E188920188932%_))))
                        (_%$%E188920188932%_)))))
            (_%$%E188919189014%_)))))
    (define gx#core-expand-if%
      (lambda (_%stx188848%_)
        (let* ((_%$%e188849188865%_ _%stx188848%_)
               (_%$%E188851188869%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e188849188865%_)))
               (_%$%E188850188911%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e188849188865%_)
                      (let ((_%$%e188852188873%_
                             (gx#syntax-e _%$%e188849188865%_)))
                        (let ((_%$%hd188853188876%_
                               (##car _%$%e188852188873%_))
                              (_%$%tl188854188878%_
                               (##cdr _%$%e188852188873%_)))
                          (if (gx#stx-pair? _%$%tl188854188878%_)
                              (let ((_%$%e188855188881%_
                                     (gx#syntax-e _%$%tl188854188878%_)))
                                (let ((_%$%hd188856188884%_
                                       (##car _%$%e188855188881%_))
                                      (_%$%tl188857188886%_
                                       (##cdr _%$%e188855188881%_)))
                                  (let ((_%test188889%_ _%$%hd188856188884%_))
                                    (if (gx#stx-pair? _%$%tl188857188886%_)
                                        (let ((_%$%e188858188891%_
                                               (gx#syntax-e
                                                _%$%tl188857188886%_)))
                                          (let ((_%$%hd188859188894%_
                                                 (##car _%$%e188858188891%_))
                                                (_%$%tl188860188896%_
                                                 (##cdr _%$%e188858188891%_)))
                                            (let ((_%K188899%_
                                                   _%$%hd188859188894%_))
                                              (if (gx#stx-pair?
                                                   _%$%tl188860188896%_)
                                                  (let ((_%$%e188861188901%_
                                                         (gx#syntax-e
                                                          _%$%tl188860188896%_)))
                                                    (let ((_%$%hd188862188904%_
                                                           (##car _%$%e188861188901%_))
                                                          (_%$%tl188863188906%_
                                                           (##cdr _%$%e188861188901%_)))
                                                      (let ((_%E188909%_
                                                             _%$%hd188862188904%_))
                                                        (if (gx#stx-null?
                                                             _%$%tl188863188906%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test188889%_)
                                 (cons (gx#core-expand-expression _%K188899%_)
                                       (cons (gx#core-expand-expression
                                              _%E188909%_)
                                             '()))))
                     (gx#stx-source _%stx188848%_))
                    (_%$%E188851188869%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E188851188869%_)))))
                                        (_%$%E188851188869%_)))))
                              (_%$%E188851188869%_))))
                      (_%$%E188851188869%_)))))
          (_%$%E188850188911%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx188807%_)
        (let* ((_%$%e188808188818%_ _%stx188807%_)
               (_%$%E188810188822%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e188808188818%_)))
               (_%$%E188809188844%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e188808188818%_)
                      (let ((_%$%e188811188826%_
                             (gx#syntax-e _%$%e188808188818%_)))
                        (let ((_%$%hd188812188829%_
                               (##car _%$%e188811188826%_))
                              (_%$%tl188813188831%_
                               (##cdr _%$%e188811188826%_)))
                          (if (gx#stx-pair? _%$%tl188813188831%_)
                              (let ((_%$%e188814188834%_
                                     (gx#syntax-e _%$%tl188813188831%_)))
                                (let ((_%$%hd188815188837%_
                                       (##car _%$%e188814188834%_))
                                      (_%$%tl188816188839%_
                                       (##cdr _%$%e188814188834%_)))
                                  (let ((_%id188842%_ _%$%hd188815188837%_))
                                    (if (gx#stx-null? _%$%tl188816188839%_)
                                        (if (gx#identifier? _%id188842%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id188842%_
                                                          _%stx188807%_)
                                                         '()))
                                             (gx#stx-source _%stx188807%_))
                                            (_%$%E188810188822%_))
                                        (_%$%E188810188822%_)))))
                              (_%$%E188810188822%_))))
                      (_%$%E188810188822%_)))))
          (_%$%E188809188844%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx188753%_)
        (let* ((_%$%e188754188767%_ _%stx188753%_)
               (_%$%E188756188771%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e188754188767%_)))
               (_%$%E188755188803%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e188754188767%_)
                      (let ((_%$%e188757188775%_
                             (gx#syntax-e _%$%e188754188767%_)))
                        (let ((_%$%hd188758188778%_
                               (##car _%$%e188757188775%_))
                              (_%$%tl188759188780%_
                               (##cdr _%$%e188757188775%_)))
                          (if (gx#stx-pair? _%$%tl188759188780%_)
                              (let ((_%$%e188760188783%_
                                     (gx#syntax-e _%$%tl188759188780%_)))
                                (let ((_%$%hd188761188786%_
                                       (##car _%$%e188760188783%_))
                                      (_%$%tl188762188788%_
                                       (##cdr _%$%e188760188783%_)))
                                  (let ((_%id188791%_ _%$%hd188761188786%_))
                                    (if (gx#stx-pair? _%$%tl188762188788%_)
                                        (let ((_%$%e188763188793%_
                                               (gx#syntax-e
                                                _%$%tl188762188788%_)))
                                          (let ((_%$%hd188764188796%_
                                                 (##car _%$%e188763188793%_))
                                                (_%$%tl188765188798%_
                                                 (##cdr _%$%e188763188793%_)))
                                            (let ((_%expr188801%_
                                                   _%$%hd188764188796%_))
                                              (if (gx#stx-null?
                                                   _%$%tl188765188798%_)
                                                  (if (gx#identifier?
                                                       _%id188791%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id188791%_
                            _%stx188753%_)
                           (cons (gx#core-expand-expression _%expr188801%_)
                                 '())))
               (gx#stx-source _%stx188753%_))
              (_%$%E188756188771%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E188756188771%_)))))
                                        (_%$%E188756188771%_)))))
                              (_%$%E188756188771%_))))
                      (_%$%E188756188771%_)))))
          (_%$%E188755188803%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx188598%_)
        (letrec ((_%generate188600%_
                  (lambda (_%body188630%_)
                    (let _%lp188632%_ ((_%rest188634%_ _%body188630%_)
                                       (_%ns188635%_
                                        (gx#core-context-namespace__0))
                                       (_%r188636%_ '()))
                      (let* ((_%$%e188637188652%_ _%rest188634%_)
                             (_%$%E188650188656%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%$%e188637188652%_)))
                             (_%$%E188646188660%_
                              (lambda ()
                                (if (gx#stx-null? _%$%e188637188652%_)
                                    (reverse _%r188636%_)
                                    (_%$%E188650188656%_))))
                             (_%$%E188639188717%_
                              (lambda ()
                                (if (gx#stx-pair? _%$%e188637188652%_)
                                    (let ((_%$%e188647188664%_
                                           (gx#syntax-e _%$%e188637188652%_)))
                                      (let ((_%$%hd188648188667%_
                                             (##car _%$%e188647188664%_))
                                            (_%$%tl188649188669%_
                                             (##cdr _%$%e188647188664%_)))
                                        (let* ((_%hd188672%_
                                                _%$%hd188648188667%_)
                                               (_%rest188674%_
                                                _%$%tl188649188669%_))
                                          (if (gx#identifier? _%hd188672%_)
                                              (_%lp188632%_
                                               _%rest188674%_
                                               _%ns188635%_
                                               (cons (cons _%hd188672%_
                                                           (cons (if _%ns188635%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd188672%_
                              _%ns188635%_
                              '"#"
                              _%hd188672%_)
                             _%hd188672%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r188636%_))
                                              (let* ((_%$%e188675188685%_
                                                      _%hd188672%_)
                                                     (_%$%E188677188689%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%$%e188675188685%_)))
                                                     (_%$%E188676188713%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%$%e188675188685%_)
                                                            (let ((_%$%e188678188693%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%e188675188685%_)))
                      (let ((_%$%hd188679188696%_ (##car _%$%e188678188693%_))
                            (_%$%tl188680188698%_ (##cdr _%$%e188678188693%_)))
                        (let ((_%id188701%_ _%$%hd188679188696%_))
                          (if (gx#stx-pair? _%$%tl188680188698%_)
                              (let ((_%$%e188681188703%_
                                     (gx#syntax-e _%$%tl188680188698%_)))
                                (let ((_%$%hd188682188706%_
                                       (##car _%$%e188681188703%_))
                                      (_%$%tl188683188708%_
                                       (##cdr _%$%e188681188703%_)))
                                  (let ((_%eid188711%_ _%$%hd188682188706%_))
                                    (if (gx#stx-null? _%$%tl188683188708%_)
                                        (if (and (gx#identifier? _%id188701%_)
                                                 (gx#identifier?
                                                  _%eid188711%_))
                                            (_%lp188632%_
                                             _%rest188674%_
                                             _%ns188635%_
                                             (cons (cons _%id188701%_
                                                         (cons _%eid188711%_
                                                               '()))
                                                   _%r188636%_))
                                            (_%$%E188677188689%_))
                                        (_%$%E188677188689%_)))))
                              (_%$%E188677188689%_)))))
                    (_%$%E188677188689%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%E188676188713%_))))))
                                    (_%$%E188646188660%_))))
                             (_%$%E188638188749%_
                              (lambda ()
                                (if (gx#stx-pair? _%$%e188637188652%_)
                                    (let ((_%$%e188640188721%_
                                           (gx#syntax-e _%$%e188637188652%_)))
                                      (let ((_%$%hd188641188724%_
                                             (##car _%$%e188640188721%_))
                                            (_%$%tl188642188726%_
                                             (##cdr _%$%e188640188721%_)))
                                        (if (eq? (gx#stx-e
                                                  _%$%hd188641188724%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%$%tl188642188726%_)
                                                (let ((_%$%e188643188729%_
                                                       (gx#syntax-e
                                                        _%$%tl188642188726%_)))
                                                  (let ((_%$%hd188644188732%_
                                                         (##car _%$%e188643188729%_))
                                                        (_%$%tl188645188734%_
                                                         (##cdr _%$%e188643188729%_)))
                                                    (let* ((_%ns188737%_
                                                            _%$%hd188644188732%_)
                                                           (_%rest188739%_
                                                            _%$%tl188645188734%_)
                                                           (_%ns188747%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns188737%_)
                        (symbol->string (gx#stx-e _%ns188737%_))
                        (if (or (gx#stx-string? _%ns188737%_)
                                (gx#stx-false? _%ns188737%_))
                            (gx#stx-e _%ns188737%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx188598%_
                             _%ns188737%_)))))
              (_%lp188632%_ _%rest188739%_ _%ns188747%_ _%r188636%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%E188639188717%_))
                                            (_%$%E188639188717%_))))
                                    (_%$%E188639188717%_)))))
                        (_%$%E188638188749%_))))))
          (let* ((_%$%e188601188608%_ _%stx188598%_)
                 (_%$%E188603188612%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e188601188608%_)))
                 (_%$%E188602188626%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e188601188608%_)
                        (let ((_%$%e188604188616%_
                               (gx#syntax-e _%$%e188601188608%_)))
                          (let ((_%$%hd188605188619%_
                                 (##car _%$%e188604188616%_))
                                (_%$%tl188606188621%_
                                 (##cdr _%$%e188604188616%_)))
                            (let ((_%body188624%_ _%$%tl188606188621%_))
                              (if (gx#stx-list? _%body188624%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate188600%_ _%body188624%_))
                                  (_%$%E188603188612%_)))))
                        (_%$%E188603188612%_)))))
            (_%$%E188602188626%_)))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx188555%_)
        (let* ((_%$%e188556188566%_ _%stx188555%_)
               (_%$%E188558188570%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e188556188566%_)))
               (_%$%E188557188594%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e188556188566%_)
                      (let ((_%$%e188559188574%_
                             (gx#syntax-e _%$%e188556188566%_)))
                        (let ((_%$%hd188560188577%_
                               (##car _%$%e188559188574%_))
                              (_%$%tl188561188579%_
                               (##cdr _%$%e188559188574%_)))
                          (if (gx#stx-pair? _%$%tl188561188579%_)
                              (let ((_%$%e188562188582%_
                                     (gx#syntax-e _%$%tl188561188579%_)))
                                (let ((_%$%hd188563188585%_
                                       (##car _%$%e188562188582%_))
                                      (_%$%tl188564188587%_
                                       (##cdr _%$%e188562188582%_)))
                                  (let* ((_%hd188590%_ _%$%hd188563188585%_)
                                         (_%body188592%_ _%$%tl188564188587%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd188590%_)
                                             (gx#stx-list? _%body188592%_)
                                             (not (gx#stx-null?
                                                   _%body188592%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd188590%_)
                                         _%body188592%_)
                                        (_%$%E188558188570%_)))))
                              (_%$%E188558188570%_))))
                      (_%$%E188558188570%_)))))
          (_%$%E188557188594%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx188491%_)
        (letrec ((_%generate188493%_
                  (lambda (_%clause188523%_)
                    (let* ((_%$%e188524188531%_ _%clause188523%_)
                           (_%$%E188526188535%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx188491%_
                               _%clause188523%_)))
                           (_%$%E188525188551%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e188524188531%_)
                                  (let ((_%$%e188527188539%_
                                         (gx#syntax-e _%$%e188524188531%_)))
                                    (let ((_%$%hd188528188542%_
                                           (##car _%$%e188527188539%_))
                                          (_%$%tl188529188544%_
                                           (##cdr _%$%e188527188539%_)))
                                      (let* ((_%hd188547%_
                                              _%$%hd188528188542%_)
                                             (_%body188549%_
                                              _%$%tl188529188544%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd188547%_)
                                                 (gx#stx-list? _%body188549%_)
                                                 (not (gx#stx-null?
                                                       _%body188549%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd188547%_)
                                                   _%body188549%_)
                                             (gx#stx-source _%clause188523%_))
                                            (_%$%E188526188535%_)))))
                                  (_%$%E188526188535%_)))))
                      (_%$%E188525188551%_)))))
          (let* ((_%$%e188494188501%_ _%stx188491%_)
                 (_%$%E188496188505%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e188494188501%_)))
                 (_%$%E188495188519%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e188494188501%_)
                        (let ((_%$%e188497188509%_
                               (gx#syntax-e _%$%e188494188501%_)))
                          (let ((_%$%hd188498188512%_
                                 (##car _%$%e188497188509%_))
                                (_%$%tl188499188514%_
                                 (##cdr _%$%e188497188509%_)))
                            (let ((_%clauses188517%_ _%$%tl188499188514%_))
                              (if (gx#stx-list? _%clauses188517%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate188493%_
                                    _%clauses188517%_))
                                  (_%$%E188496188505%_)))))
                        (_%$%E188496188505%_)))))
            (_%$%E188495188519%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx188392%_ _%form188393%_)
        (letrec ((_%generate188395%_
                  (lambda (_%bind188438%_)
                    (let* ((_%$%e188439188449%_ _%bind188438%_)
                           (_%$%E188441188453%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx188392%_
                               _%bind188438%_)))
                           (_%$%E188440188477%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e188439188449%_)
                                  (let ((_%$%e188442188457%_
                                         (gx#syntax-e _%$%e188439188449%_)))
                                    (let ((_%$%hd188443188460%_
                                           (##car _%$%e188442188457%_))
                                          (_%$%tl188444188462%_
                                           (##cdr _%$%e188442188457%_)))
                                      (let ((_%ids188465%_
                                             _%$%hd188443188460%_))
                                        (if (gx#stx-pair? _%$%tl188444188462%_)
                                            (let ((_%$%e188445188467%_
                                                   (gx#syntax-e
                                                    _%$%tl188444188462%_)))
                                              (let ((_%$%hd188446188470%_
                                                     (##car _%$%e188445188467%_))
                                                    (_%$%tl188447188472%_
                                                     (##cdr _%$%e188445188467%_)))
                                                (let ((_%expr188475%_
                                                       _%$%hd188446188470%_))
                                                  (if (gx#stx-null?
                                                       _%$%tl188447188472%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids188465%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids188465%_)
                        (cons _%expr188475%_ '()))
                  (_%$%E188441188453%_))
              (_%$%E188441188453%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%E188441188453%_)))))
                                  (_%$%E188441188453%_)))))
                      (_%$%E188440188477%_)))))
          (let* ((_%$%e188396188406%_ _%stx188392%_)
                 (_%$%E188398188410%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e188396188406%_)))
                 (_%$%E188397188434%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e188396188406%_)
                        (let ((_%$%e188399188414%_
                               (gx#syntax-e _%$%e188396188406%_)))
                          (let ((_%$%hd188400188417%_
                                 (##car _%$%e188399188414%_))
                                (_%$%tl188401188419%_
                                 (##cdr _%$%e188399188414%_)))
                            (if (gx#stx-pair? _%$%tl188401188419%_)
                                (let ((_%$%e188402188422%_
                                       (gx#syntax-e _%$%tl188401188419%_)))
                                  (let ((_%$%hd188403188425%_
                                         (##car _%$%e188402188422%_))
                                        (_%$%tl188404188427%_
                                         (##cdr _%$%e188402188422%_)))
                                    (let* ((_%hd188430%_ _%$%hd188403188425%_)
                                           (_%body188432%_
                                            _%$%tl188404188427%_))
                                      (if (and (gx#stx-list? _%hd188430%_)
                                               (gx#stx-list? _%body188432%_)
                                               (not (gx#stx-null?
                                                     _%body188432%_)))
                                          (gx#core-cons*
                                           _%form188393%_
                                           (gx#stx-map1
                                            _%generate188395%_
                                            _%hd188430%_)
                                           _%body188432%_)
                                          (_%$%E188398188410%_)))))
                                (_%$%E188398188410%_))))
                        (_%$%E188398188410%_)))))
            (_%$%E188397188434%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx188484%_)
        (let ((_%form188486%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx188484%_ _%form188486%_))))
    (define gx#macro-expand-let-values
      (lambda _g191162_
        (let ((_g191163_ (##length _g191162_)))
          (cond ((##fx= _g191163_ 1)
                 (apply gx#macro-expand-let-values__0 _g191162_))
                ((##fx= _g191163_ 2)
                 (apply gx#macro-expand-let-values__% _g191162_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g191162_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx188389%_)
        (gx#macro-expand-let-values__% _%stx188389%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx188387%_)
        (gx#macro-expand-let-values__% _%stx188387%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx188278%_)
        (let* ((_%$%e188279188305%_ _%stx188278%_)
               (_%$%E188291188309%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e188279188305%_)))
               (_%$%E188281188351%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e188279188305%_)
                      (let ((_%$%e188292188313%_
                             (gx#syntax-e _%$%e188279188305%_)))
                        (let ((_%$%hd188293188316%_
                               (##car _%$%e188292188313%_))
                              (_%$%tl188294188318%_
                               (##cdr _%$%e188292188313%_)))
                          (if (gx#stx-pair? _%$%tl188294188318%_)
                              (let ((_%$%e188295188321%_
                                     (gx#syntax-e _%$%tl188294188318%_)))
                                (let ((_%$%hd188296188324%_
                                       (##car _%$%e188295188321%_))
                                      (_%$%tl188297188326%_
                                       (##cdr _%$%e188295188321%_)))
                                  (let ((_%test188329%_ _%$%hd188296188324%_))
                                    (if (gx#stx-pair? _%$%tl188297188326%_)
                                        (let ((_%$%e188298188331%_
                                               (gx#syntax-e
                                                _%$%tl188297188326%_)))
                                          (let ((_%$%hd188299188334%_
                                                 (##car _%$%e188298188331%_))
                                                (_%$%tl188300188336%_
                                                 (##cdr _%$%e188298188331%_)))
                                            (let ((_%K188339%_
                                                   _%$%hd188299188334%_))
                                              (if (gx#stx-pair?
                                                   _%$%tl188300188336%_)
                                                  (let ((_%$%e188301188341%_
                                                         (gx#syntax-e
                                                          _%$%tl188300188336%_)))
                                                    (let ((_%$%hd188302188344%_
                                                           (##car _%$%e188301188341%_))
                                                          (_%$%tl188303188346%_
                                                           (##cdr _%$%e188301188341%_)))
                                                      (let ((_%E188349%_
                                                             _%$%hd188302188344%_))
                                                        (if (gx#stx-null?
                                                             _%$%tl188303188346%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test188329%_
                                                             _%K188339%_
                                                             _%E188349%_)
                                                            (_%$%E188291188309%_)))))
                                                  (_%$%E188291188309%_)))))
                                        (_%$%E188291188309%_)))))
                              (_%$%E188291188309%_))))
                      (_%$%E188291188309%_))))
               (_%$%E188280188383%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e188279188305%_)
                      (let ((_%$%e188282188355%_
                             (gx#syntax-e _%$%e188279188305%_)))
                        (let ((_%$%hd188283188358%_
                               (##car _%$%e188282188355%_))
                              (_%$%tl188284188360%_
                               (##cdr _%$%e188282188355%_)))
                          (if (gx#stx-pair? _%$%tl188284188360%_)
                              (let ((_%$%e188285188363%_
                                     (gx#syntax-e _%$%tl188284188360%_)))
                                (let ((_%$%hd188286188366%_
                                       (##car _%$%e188285188363%_))
                                      (_%$%tl188287188368%_
                                       (##cdr _%$%e188285188363%_)))
                                  (let ((_%test188371%_ _%$%hd188286188366%_))
                                    (if (gx#stx-pair? _%$%tl188287188368%_)
                                        (let ((_%$%e188288188373%_
                                               (gx#syntax-e
                                                _%$%tl188287188368%_)))
                                          (let ((_%$%hd188289188376%_
                                                 (##car _%$%e188288188373%_))
                                                (_%$%tl188290188378%_
                                                 (##cdr _%$%e188288188373%_)))
                                            (let ((_%K188381%_
                                                   _%$%hd188289188376%_))
                                              (if (gx#stx-null?
                                                   _%$%tl188290188378%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test188371%_
                                                   _%K188381%_
                                                   '#!void)
                                                  (_%$%E188281188351%_)))))
                                        (_%$%E188281188351%_)))))
                              (_%$%E188281188351%_))))
                      (_%$%E188281188351%_)))))
          (_%$%E188280188383%_))))
    (define gx#free-identifier=?
      (lambda (_%xid188263%_ _%yid188264%_)
        (let ((_%xe188266%_ (gx#resolve-identifier__0 _%xid188263%_))
              (_%ye188267%_ (gx#resolve-identifier__0 _%yid188264%_)))
          (if (and _%xe188266%_ _%ye188267%_)
              (let ((_%$e188270%_ (eq? _%xe188266%_ _%ye188267%_)))
                (if _%$e188270%_
                    _%$e188270%_
                    (if (##structure-instance-of? _%xe188266%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye188267%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe188266%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye188267%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe188266%_ _%ye188267%_)
                  '#f
                  (gx#stx-eq? _%xid188263%_ _%yid188264%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid188244%_ _%yid188245%_)
        (letrec ((_%context188247%_
                  (lambda (_%e188261%_)
                    (if (##structure-direct-instance-of?
                         _%e188261%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e188261%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks188248%_
                  (lambda (_%e188256%_)
                    (if (symbol? _%e188256%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e188256%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e188256%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e188256%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap188249%_
                  (lambda (_%e188254%_)
                    (if (symbol? _%e188254%_)
                        _%e188254%_
                        (gx#syntax-local-unwrap _%e188254%_)))))
          (let ((_%x188251%_ (_%unwrap188249%_ _%xid188244%_))
                (_%y188252%_ (_%unwrap188249%_ _%yid188245%_)))
            (if (gx#stx-eq? _%x188251%_ _%y188252%_)
                (if (eq? (_%context188247%_ _%x188251%_)
                         (_%context188247%_ _%y188252%_))
                    (equal? (_%marks188248%_ _%x188251%_)
                            (_%marks188248%_ _%y188252%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx188242%_)
        (if (gx#identifier? _%stx188242%_)
            (gx#core-identifier=? _%stx188242%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx188240%_)
        (if (gx#identifier? _%stx188240%_)
            (gx#core-identifier=? _%stx188240%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx188183%_ _%where188184%_)
        (let _%lp188186%_ ((_%rest188188%_ (gx#syntax->list _%stx188183%_)))
          (let* ((_%$%rest188189188197%_ _%rest188188%_)
                 (_%$%else188191188205%_ (lambda () '#t))
                 (_%$%K188193188218%_
                  (lambda (_%rest188208%_ _%hd188209%_)
                    (if (gx#identifier? _%hd188209%_)
                        (if (__find (lambda (_%$%g188211188213%_)
                                      (gx#bound-identifier=?
                                       _%$%g188211188213%_
                                       _%hd188209%_))
                                    _%rest188208%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where188184%_
                             _%hd188209%_)
                            (_%lp188186%_ _%rest188208%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where188184%_
                         _%hd188209%_)))))
            (if (pair? _%$%rest188189188197%_)
                (let ((_%$%hd188194188221%_ (##car _%$%rest188189188197%_))
                      (_%$%tl188195188223%_ (##cdr _%$%rest188189188197%_)))
                  (let* ((_%hd188226%_ _%$%hd188194188221%_)
                         (_%rest188228%_ _%$%tl188195188223%_))
                    (_%$%K188193188218%_ _%rest188228%_ _%hd188226%_)))
                (_%$%else188191188205%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx188233%_)
        (let ((_%where188235%_ _%stx188233%_))
          (gx#check-duplicate-identifiers__% _%stx188233%_ _%where188235%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g191164_
        (let ((_g191165_ (##length _g191164_)))
          (cond ((##fx= _g191165_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g191164_))
                ((##fx= _g191165_ 2)
                 (apply gx#check-duplicate-identifiers__% _g191164_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g191164_))))))
    (define gx#core-bind-values?
      (lambda (_%stx188175%_)
        (gx#stx-andmap
         (lambda (_%x188177%_)
           (let ((_%$e188179%_ (gx#identifier? _%x188177%_)))
             (if _%$e188179%_ _%$e188179%_ (gx#stx-false? _%x188177%_))))
         _%stx188175%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx188139%_ _%rebind?188140%_ _%phi188141%_ _%ctx188142%_)
        (gx#stx-for-each1
         (lambda (_%id188144%_)
           (if (gx#identifier? _%id188144%_)
               (gx#core-bind-runtime!__%
                _%id188144%_
                _%rebind?188140%_
                _%phi188141%_
                _%ctx188142%_)
               '#!void))
         _%stx188139%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx188149%_)
        (let* ((_%rebind?188151%_ '#f)
               (_%phi188153%_ (gx#current-expander-phi))
               (_%ctx188155%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx188149%_
           _%rebind?188151%_
           _%phi188153%_
           _%ctx188155%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx188157%_ _%rebind?188158%_)
        (let* ((_%phi188160%_ (gx#current-expander-phi))
               (_%ctx188162%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx188157%_
           _%rebind?188158%_
           _%phi188160%_
           _%ctx188162%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx188164%_ _%rebind?188165%_ _%phi188166%_)
        (let ((_%ctx188168%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx188164%_
           _%rebind?188165%_
           _%phi188166%_
           _%ctx188168%_))))
    (define gx#core-bind-values!
      (lambda _g191166_
        (let ((_g191167_ (##length _g191166_)))
          (cond ((##fx= _g191167_ 1) (apply gx#core-bind-values!__0 _g191166_))
                ((##fx= _g191167_ 2) (apply gx#core-bind-values!__1 _g191166_))
                ((##fx= _g191167_ 3) (apply gx#core-bind-values!__2 _g191166_))
                ((##fx= _g191167_ 4) (apply gx#core-bind-values!__% _g191166_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g191166_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx188134%_)
        (gx#stx-map1
         (lambda (_%x188136%_)
           (if (gx#identifier? _%x188136%_)
               (gx#core-quote-syntax__0 _%x188136%_)
               '#f))
         _%stx188134%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx188127%_)
        (if (gx#identifier? _%stx188127%_)
            (let* ((_%bind188129%_ (gx#resolve-identifier__0 _%stx188127%_))
                   (_%$e188131%_ (not _%bind188129%_)))
              (if _%$e188131%_
                  _%$e188131%_
                  (##structure-instance-of?
                   _%bind188129%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id188116%_ _%form188117%_)
        (let ((_%bind188119%_ (gx#resolve-identifier__0 _%id188116%_)))
          (if (##structure-instance-of? _%bind188119%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id188116%_)
              (if (not _%bind188119%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id188116%_)))
                      (gx#core-quote-syntax__0 _%id188116%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form188117%_
                       _%id188116%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form188117%_
                   _%id188116%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id188071%_ _%rebind?188072%_ _%phi188073%_ _%ctx188074%_)
        (let* ((_%key188076%_ (gx#core-identifier-key _%id188071%_))
               (_%eid188078%_
                (gx#make-binding-id__%
                 _%key188076%_
                 '#f
                 _%phi188073%_
                 _%ctx188074%_))
               (_%bind188084%_
                (if (##structure-instance-of?
                     _%ctx188074%_
                     'gx#module-context::t)
                    (let ((__obj191143
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
                       __obj191143
                       _%eid188078%_
                       _%key188076%_
                       _%phi188073%_
                       _%ctx188074%_)
                      __obj191143)
                    (if (##structure-instance-of?
                         _%ctx188074%_
                         'gx#top-context::t)
                        (let ((__obj191142
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj191142
                           _%eid188078%_
                           _%key188076%_
                           _%phi188073%_)
                          __obj191142)
                        (if (##structure-instance-of?
                             _%ctx188074%_
                             'gx#local-context::t)
                            (let ((__obj191141
                                   (##structure
                                    gx#local-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#local-binding:::init!
                               __obj191141
                               _%eid188078%_
                               _%key188076%_
                               _%phi188073%_)
                              __obj191141)
                            (let ((__obj191140
                                   (##structure
                                    gx#runtime-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#runtime-binding:::init!
                               __obj191140
                               _%eid188078%_
                               _%key188076%_
                               _%phi188073%_)
                              __obj191140))))))
          (gx#bind-identifier!__%
           _%id188071%_
           _%bind188084%_
           _%rebind?188072%_
           _%phi188073%_
           _%ctx188074%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id188090%_)
        (let* ((_%rebind?188092%_ '#f)
               (_%phi188094%_ (gx#current-expander-phi))
               (_%ctx188096%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id188090%_
           _%rebind?188092%_
           _%phi188094%_
           _%ctx188096%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id188098%_ _%rebind?188099%_)
        (let* ((_%phi188101%_ (gx#current-expander-phi))
               (_%ctx188103%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id188098%_
           _%rebind?188099%_
           _%phi188101%_
           _%ctx188103%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id188105%_ _%rebind?188106%_ _%phi188107%_)
        (let ((_%ctx188109%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id188105%_
           _%rebind?188106%_
           _%phi188107%_
           _%ctx188109%_))))
    (define gx#core-bind-runtime!
      (lambda _g191168_
        (let ((_g191169_ (##length _g191168_)))
          (cond ((##fx= _g191169_ 1)
                 (apply gx#core-bind-runtime!__0 _g191168_))
                ((##fx= _g191169_ 2)
                 (apply gx#core-bind-runtime!__1 _g191168_))
                ((##fx= _g191169_ 3)
                 (apply gx#core-bind-runtime!__2 _g191168_))
                ((##fx= _g191169_ 4)
                 (apply gx#core-bind-runtime!__% _g191168_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g191168_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id188023%_
               _%eid188024%_
               _%rebind?188025%_
               _%phi188026%_
               _%ctx188027%_)
        (let* ((_%key188029%_ (gx#core-identifier-key _%id188023%_))
               (_%bind188034%_
                (if (##structure-instance-of?
                     _%ctx188027%_
                     'gx#module-context::t)
                    (let ((__obj191146
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
                       __obj191146
                       _%eid188024%_
                       _%key188029%_
                       _%phi188026%_
                       _%ctx188027%_)
                      __obj191146)
                    (if (##structure-instance-of?
                         _%ctx188027%_
                         'gx#top-context::t)
                        (let ((__obj191145
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj191145
                           _%eid188024%_
                           _%key188029%_
                           _%phi188026%_)
                          __obj191145)
                        (let ((__obj191144
                               (##structure
                                gx#runtime-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#runtime-binding:::init!
                           __obj191144
                           _%eid188024%_
                           _%key188029%_
                           _%phi188026%_)
                          __obj191144)))))
          (gx#bind-identifier!__%
           _%id188023%_
           _%bind188034%_
           _%rebind?188025%_
           _%phi188026%_
           _%ctx188027%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id188040%_ _%eid188041%_)
        (let* ((_%rebind?188043%_ '#f)
               (_%phi188045%_ (gx#current-expander-phi))
               (_%ctx188047%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id188040%_
           _%eid188041%_
           _%rebind?188043%_
           _%phi188045%_
           _%ctx188047%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id188049%_ _%eid188050%_ _%rebind?188051%_)
        (let* ((_%phi188053%_ (gx#current-expander-phi))
               (_%ctx188055%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id188049%_
           _%eid188050%_
           _%rebind?188051%_
           _%phi188053%_
           _%ctx188055%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id188057%_ _%eid188058%_ _%rebind?188059%_ _%phi188060%_)
        (let ((_%ctx188062%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id188057%_
           _%eid188058%_
           _%rebind?188059%_
           _%phi188060%_
           _%ctx188062%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g191170_
        (let ((_g191171_ (##length _g191170_)))
          (cond ((##fx= _g191171_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g191170_))
                ((##fx= _g191171_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g191170_))
                ((##fx= _g191171_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g191170_))
                ((##fx= _g191171_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g191170_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g191170_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id187983%_
               _%eid187984%_
               _%rebind?187985%_
               _%phi187986%_
               _%ctx187987%_)
        (gx#bind-identifier!__%
         _%id187983%_
         (let ((__obj191147
                (##structure gx#extern-binding::t '#f '#f '#f '#f '#f '#f)))
           (gx#extern-binding:::init!
            __obj191147
            _%eid187984%_
            (gx#core-identifier-key _%id187983%_)
            _%phi187986%_)
           __obj191147)
         _%rebind?187985%_
         _%phi187986%_
         _%ctx187987%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id187992%_ _%eid187993%_)
        (let* ((_%rebind?187995%_ '#f)
               (_%phi187997%_ (gx#current-expander-phi))
               (_%ctx187999%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id187992%_
           _%eid187993%_
           _%rebind?187995%_
           _%phi187997%_
           _%ctx187999%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id188001%_ _%eid188002%_ _%rebind?188003%_)
        (let* ((_%phi188005%_ (gx#current-expander-phi))
               (_%ctx188007%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id188001%_
           _%eid188002%_
           _%rebind?188003%_
           _%phi188005%_
           _%ctx188007%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id188009%_ _%eid188010%_ _%rebind?188011%_ _%phi188012%_)
        (let ((_%ctx188014%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id188009%_
           _%eid188010%_
           _%rebind?188011%_
           _%phi188012%_
           _%ctx188014%_))))
    (define gx#core-bind-extern!
      (lambda _g191172_
        (let ((_g191173_ (##length _g191172_)))
          (cond ((##fx= _g191173_ 2) (apply gx#core-bind-extern!__0 _g191172_))
                ((##fx= _g191173_ 3) (apply gx#core-bind-extern!__1 _g191172_))
                ((##fx= _g191173_ 4) (apply gx#core-bind-extern!__2 _g191172_))
                ((##fx= _g191173_ 5) (apply gx#core-bind-extern!__% _g191172_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g191172_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id187937%_
               _%e187938%_
               _%rebind?187939%_
               _%phi187940%_
               _%ctx187941%_)
        (gx#bind-identifier!__%
         _%id187937%_
         (let ((_%key187946%_ (gx#core-identifier-key _%id187937%_))
               (_%e187947%_
                (if (or (##structure-instance-of? _%e187938%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e187938%_
                         'gx#expander-context::t))
                    _%e187938%_
                    (##structure
                     gx#user-expander::t
                     _%e187938%_
                     _%ctx187941%_
                     _%phi187940%_))))
           (let ((__obj191148
                  (##structure gx#syntax-binding::t '#f '#f '#f '#f '#f)))
             (gx#syntax-binding:::init!
              __obj191148
              (gx#make-binding-id__%
               _%key187946%_
               '#t
               _%phi187940%_
               _%ctx187941%_)
              _%key187946%_
              _%phi187940%_
              _%e187947%_)
             __obj191148))
         _%rebind?187939%_
         _%phi187940%_
         _%ctx187941%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id187952%_ _%e187953%_)
        (let* ((_%rebind?187955%_ '#f)
               (_%phi187957%_ (gx#current-expander-phi))
               (_%ctx187959%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id187952%_
           _%e187953%_
           _%rebind?187955%_
           _%phi187957%_
           _%ctx187959%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id187961%_ _%e187962%_ _%rebind?187963%_)
        (let* ((_%phi187965%_ (gx#current-expander-phi))
               (_%ctx187967%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id187961%_
           _%e187962%_
           _%rebind?187963%_
           _%phi187965%_
           _%ctx187967%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id187969%_ _%e187970%_ _%rebind?187971%_ _%phi187972%_)
        (let ((_%ctx187974%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id187969%_
           _%e187970%_
           _%rebind?187971%_
           _%phi187972%_
           _%ctx187974%_))))
    (define gx#core-bind-syntax!
      (lambda _g191174_
        (let ((_g191175_ (##length _g191174_)))
          (cond ((##fx= _g191175_ 2) (apply gx#core-bind-syntax!__0 _g191174_))
                ((##fx= _g191175_ 3) (apply gx#core-bind-syntax!__1 _g191174_))
                ((##fx= _g191175_ 4) (apply gx#core-bind-syntax!__2 _g191174_))
                ((##fx= _g191175_ 5) (apply gx#core-bind-syntax!__% _g191174_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g191174_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id187920%_ _%e187921%_ _%rebind?187922%_)
        (gx#core-bind-syntax!__%
         _%id187920%_
         _%e187921%_
         _%rebind?187922%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id187927%_ _%e187928%_)
        (let ((_%rebind?187930%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id187927%_
           _%e187928%_
           _%rebind?187930%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g191176_
        (let ((_g191177_ (##length _g191176_)))
          (cond ((##fx= _g191177_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g191176_))
                ((##fx= _g191177_ 3)
                 (apply gx#core-bind-root-syntax!__% _g191176_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g191176_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id187878%_
               _%alias-id187879%_
               _%rebind?187880%_
               _%phi187881%_
               _%ctx187882%_)
        (gx#bind-identifier!__%
         _%id187878%_
         (let* ((_%key187884%_ (gx#core-identifier-key _%id187878%_))
                (__obj191149
                 (##structure gx#alias-binding::t '#f '#f '#f '#f '#f)))
           (gx#alias-binding:::init!
            __obj191149
            (gx#make-binding-id__%
             _%key187884%_
             '#t
             _%phi187881%_
             _%ctx187882%_)
            _%key187884%_
            _%phi187881%_
            _%alias-id187879%_)
           __obj191149)
         _%rebind?187880%_
         _%phi187881%_
         _%ctx187882%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id187889%_ _%alias-id187890%_)
        (let* ((_%rebind?187892%_ '#f)
               (_%phi187894%_ (gx#current-expander-phi))
               (_%ctx187896%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id187889%_
           _%alias-id187890%_
           _%rebind?187892%_
           _%phi187894%_
           _%ctx187896%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id187898%_ _%alias-id187899%_ _%rebind?187900%_)
        (let* ((_%phi187902%_ (gx#current-expander-phi))
               (_%ctx187904%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id187898%_
           _%alias-id187899%_
           _%rebind?187900%_
           _%phi187902%_
           _%ctx187904%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id187906%_ _%alias-id187907%_ _%rebind?187908%_ _%phi187909%_)
        (let ((_%ctx187911%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id187906%_
           _%alias-id187907%_
           _%rebind?187908%_
           _%phi187909%_
           _%ctx187911%_))))
    (define gx#core-bind-alias!
      (lambda _g191178_
        (let ((_g191179_ (##length _g191178_)))
          (cond ((##fx= _g191179_ 2) (apply gx#core-bind-alias!__0 _g191178_))
                ((##fx= _g191179_ 3) (apply gx#core-bind-alias!__1 _g191178_))
                ((##fx= _g191179_ 4) (apply gx#core-bind-alias!__2 _g191178_))
                ((##fx= _g191179_ 5) (apply gx#core-bind-alias!__% _g191178_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g191178_))))))
    (define gx#make-binding-id__%
      (lambda (_%key187828%_ _%syntax?187829%_ _%phi187830%_ _%ctx187831%_)
        (if (uninterned-symbol? _%key187828%_)
            (##gensym 'L)
            (if (pair? _%key187828%_)
                (gensym (##car _%key187828%_))
                (if (##structure-instance-of? _%ctx187831%_ 'gx#top-context::t)
                    (let ((_%ns187836%_
                           (gx#core-context-namespace__% _%ctx187831%_)))
                      (if (and (fxzero? _%phi187830%_) (not _%syntax?187829%_))
                          (if _%ns187836%_
                              (make-symbol__1 _%ns187836%_ '"#" _%key187828%_)
                              _%key187828%_)
                          (if _%syntax?187829%_
                              (make-symbol__1
                               (let ((_%$e187840%_ _%ns187836%_))
                                 (if _%$e187840%_ _%$e187840%_ '""))
                               '"[:"
                               (number->string _%phi187830%_)
                               '":]#"
                               _%key187828%_)
                              (make-symbol__1
                               (let ((_%$e187844%_ _%ns187836%_))
                                 (if _%$e187844%_ _%$e187844%_ '""))
                               '"["
                               (number->string _%phi187830%_)
                               '"]#"
                               _%key187828%_))))
                    (gensym _%key187828%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key187851%_)
        (let* ((_%syntax?187853%_ '#f)
               (_%phi187855%_ (gx#current-expander-phi))
               (_%ctx187857%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key187851%_
           _%syntax?187853%_
           _%phi187855%_
           _%ctx187857%_))))
    (define gx#make-binding-id__1
      (lambda (_%key187859%_ _%syntax?187860%_)
        (let* ((_%phi187862%_ (gx#current-expander-phi))
               (_%ctx187864%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key187859%_
           _%syntax?187860%_
           _%phi187862%_
           _%ctx187864%_))))
    (define gx#make-binding-id__2
      (lambda (_%key187866%_ _%syntax?187867%_ _%phi187868%_)
        (let ((_%ctx187870%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key187866%_
           _%syntax?187867%_
           _%phi187868%_
           _%ctx187870%_))))
    (define gx#make-binding-id
      (lambda _g191180_
        (let ((_g191181_ (##length _g191180_)))
          (cond ((##fx= _g191181_ 1) (apply gx#make-binding-id__0 _g191180_))
                ((##fx= _g191181_ 2) (apply gx#make-binding-id__1 _g191180_))
                ((##fx= _g191181_ 3) (apply gx#make-binding-id__2 _g191180_))
                ((##fx= _g191181_ 4) (apply gx#make-binding-id__% _g191180_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g191180_))))))))
