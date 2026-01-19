(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1768863412)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx137086%_)
        (letrec ((_%expand-special137088%_
                  (lambda (_%hd137090%_ _%K137091%_ _%rest137092%_ _%r137093%_)
                    (_%K137091%_
                     _%rest137092%_
                     (cons (gx#core-expand-top _%hd137090%_) _%r137093%_)))))
          (gx#core-expand-block__0 _%stx137086%_ _%expand-special137088%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx136839%_)
        (letrec ((_%expand-special136841%_
                  (lambda (_%hd136961%_ _%K136962%_ _%rest136963%_ _%r136964%_)
                    (let* ((_%K136968%_
                            (lambda (_%e136966%_)
                              (_%K136962%_
                               _%rest136963%_
                               (cons _%e136966%_ _%r136964%_))))
                           (_%e136969136998%_ _%hd136961%_)
                           (_%E136993137002%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e136969136998%_)))
                           (_%E136989137014%_
                            (lambda ()
                              (if (gx#stx-pair? _%e136969136998%_)
                                  (let ((_%e136994137006%_
                                         (gx#syntax-e _%e136969136998%_)))
                                    (let ((_%hd136995137009%_
                                           (##car _%e136994137006%_))
                                          (_%tl136996137011%_
                                           (##cdr _%e136994137006%_)))
                                      (if (and (gx#identifier?
                                                _%hd136995137009%_)
                                               (gx#core-identifier=?
                                                _%hd136995137009%_
                                                '%#define-runtime))
                                          (_%K136968%_
                                           (gx#core-expand-define-runtime%
                                            _%hd136961%_))
                                          (_%E136993137002%_))))
                                  (_%E136993137002%_))))
                           (_%E136985137026%_
                            (lambda ()
                              (if (gx#stx-pair? _%e136969136998%_)
                                  (let ((_%e136990137018%_
                                         (gx#syntax-e _%e136969136998%_)))
                                    (let ((_%hd136991137021%_
                                           (##car _%e136990137018%_))
                                          (_%tl136992137023%_
                                           (##cdr _%e136990137018%_)))
                                      (if (and (gx#identifier?
                                                _%hd136991137021%_)
                                               (gx#core-identifier=?
                                                _%hd136991137021%_
                                                '%#define-alias))
                                          (_%K136968%_
                                           (gx#core-expand-define-alias%
                                            _%hd136961%_))
                                          (_%E136989137014%_))))
                                  (_%E136989137014%_))))
                           (_%E136975137038%_
                            (lambda ()
                              (if (gx#stx-pair? _%e136969136998%_)
                                  (let ((_%e136986137030%_
                                         (gx#syntax-e _%e136969136998%_)))
                                    (let ((_%hd136987137033%_
                                           (##car _%e136986137030%_))
                                          (_%tl136988137035%_
                                           (##cdr _%e136986137030%_)))
                                      (if (and (gx#identifier?
                                                _%hd136987137033%_)
                                               (gx#core-identifier=?
                                                _%hd136987137033%_
                                                '%#define-syntax))
                                          (_%K136968%_
                                           (gx#core-expand-define-syntax%
                                            _%hd136961%_))
                                          (_%E136985137026%_))))
                                  (_%E136985137026%_))))
                           (_%E136971137070%_
                            (lambda ()
                              (if (gx#stx-pair? _%e136969136998%_)
                                  (let ((_%e136976137042%_
                                         (gx#syntax-e _%e136969136998%_)))
                                    (let ((_%hd136977137045%_
                                           (##car _%e136976137042%_))
                                          (_%tl136978137047%_
                                           (##cdr _%e136976137042%_)))
                                      (if (and (gx#identifier?
                                                _%hd136977137045%_)
                                               (gx#core-identifier=?
                                                _%hd136977137045%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl136978137047%_)
                                              (let ((_%e136979137050%_
                                                     (gx#syntax-e
                                                      _%tl136978137047%_)))
                                                (let ((_%hd136980137053%_
                                                       (##car _%e136979137050%_))
                                                      (_%tl136981137055%_
                                                       (##cdr _%e136979137050%_)))
                                                  (let ((_%hd-bind137058%_
                                                         _%hd136980137053%_))
                                                    (if (gx#stx-pair?
                                                         _%tl136981137055%_)
                                                        (let ((_%e136982137060%_
                                                               (gx#syntax-e
                                                                _%tl136981137055%_)))
                                                          (let ((_%hd136983137063%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e136982137060%_))
                        (_%tl136984137065%_ (##cdr _%e136982137060%_)))
                    (let ((_%expr137068%_ _%hd136983137063%_))
                      (if (gx#stx-null? _%tl136984137065%_)
                          (if (gx#core-bind-values? _%hd-bind137058%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind137058%_)
                                (_%K136968%_ _%hd136961%_))
                              (_%E136975137038%_))
                          (_%E136975137038%_)))))
                (_%E136975137038%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E136975137038%_))
                                          (_%E136975137038%_))))
                                  (_%E136975137038%_))))
                           (_%E136970137082%_
                            (lambda ()
                              (if (gx#stx-pair? _%e136969136998%_)
                                  (let ((_%e136972137074%_
                                         (gx#syntax-e _%e136969136998%_)))
                                    (let ((_%hd136973137077%_
                                           (##car _%e136972137074%_))
                                          (_%tl136974137079%_
                                           (##cdr _%e136972137074%_)))
                                      (if (and (gx#identifier?
                                                _%hd136973137077%_)
                                               (gx#core-identifier=?
                                                _%hd136973137077%_
                                                '%#begin-syntax))
                                          (_%K136968%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd136961%_))
                                          (_%E136971137070%_))))
                                  (_%E136971137070%_)))))
                      (_%E136970137082%_))))
                 (_%eval-body136842%_
                  (lambda (_%rbody136850%_)
                    (let _%lp136852%_ ((_%rest136854%_ _%rbody136850%_)
                                       (_%body136855%_ '())
                                       (_%ebody136856%_ '()))
                      (let* ((_%rest136857136865%_ _%rest136854%_)
                             (_%else136859136873%_
                              (lambda ()
                                (values _%body136855%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody136856%_)
                                          (gx#stx-source _%stx136839%_))))))
                             (_%K136861136949%_
                              (lambda (_%rest136876%_ _%hd136877%_)
                                (let* ((_%e136878136895%_ _%hd136877%_)
                                       (_%E136890136899%_
                                        (lambda ()
                                          (_%lp136852%_
                                           _%rest136876%_
                                           (cons _%hd136877%_ _%body136855%_)
                                           (cons _%hd136877%_
                                                 _%ebody136856%_))))
                                       (_%E136880136911%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e136878136895%_)
                                              (let ((_%e136891136903%_
                                                     (gx#syntax-e
                                                      _%e136878136895%_)))
                                                (let ((_%hd136892136906%_
                                                       (##car _%e136891136903%_))
                                                      (_%tl136893136908%_
                                                       (##cdr _%e136891136903%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd136892136906%_)
                                                           (gx#core-identifier=?
                                                            _%hd136892136906%_
                                                            '%#begin-syntax))
                                                      (_%lp136852%_
                                                       _%rest136876%_
                                                       (cons _%hd136877%_
                                                             _%body136855%_)
                                                       _%ebody136856%_)
                                                      (_%E136890136899%_))))
                                              (_%E136890136899%_))))
                                       (_%E136879136945%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e136878136895%_)
                                              (let ((_%e136881136915%_
                                                     (gx#syntax-e
                                                      _%e136878136895%_)))
                                                (let ((_%hd136882136918%_
                                                       (##car _%e136881136915%_))
                                                      (_%tl136883136920%_
                                                       (##cdr _%e136881136915%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd136882136918%_)
                                                           (gx#core-identifier=?
                                                            _%hd136882136918%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl136883136920%_)
                                                          (let ((_%e136884136923%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl136883136920%_)))
                    (let ((_%hd136885136926%_ (##car _%e136884136923%_))
                          (_%tl136886136928%_ (##cdr _%e136884136923%_)))
                      (let ((_%hd-bind136931%_ _%hd136885136926%_))
                        (if (gx#stx-pair? _%tl136886136928%_)
                            (let ((_%e136887136933%_
                                   (gx#syntax-e _%tl136886136928%_)))
                              (let ((_%hd136888136936%_
                                     (##car _%e136887136933%_))
                                    (_%tl136889136938%_
                                     (##cdr _%e136887136933%_)))
                                (let ((_%expr136941%_ _%hd136888136936%_))
                                  (if (gx#stx-null? _%tl136889136938%_)
                                      (let ((_%ehd136943%_
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#define-values)
                                                    (cons (gx#core-quote-bind-values
                                                           _%hd-bind136931%_)
                                                          (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%expr136941%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%hd136877%_))))
                                        (_%lp136852%_
                                         _%rest136876%_
                                         (cons _%ehd136943%_ _%body136855%_)
                                         (cons _%ehd136943%_ _%ebody136856%_)))
                                      (_%E136880136911%_)))))
                            (_%E136880136911%_)))))
                  (_%E136880136911%_))
              (_%E136880136911%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E136880136911%_)))))
                                  (_%E136879136945%_)))))
                        (if (pair? _%rest136857136865%_)
                            (let ((_%hd136862136952%_
                                   (##car _%rest136857136865%_))
                                  (_%tl136863136954%_
                                   (##cdr _%rest136857136865%_)))
                              (let* ((_%hd136957%_ _%hd136862136952%_)
                                     (_%rest136959%_ _%tl136863136954%_))
                                (_%K136861136949%_
                                 _%rest136959%_
                                 _%hd136957%_)))
                            (_%else136859136873%_)))))))
          (call-with-parameters__1
           (lambda ()
             (let* ((_%rbody136845%_
                     (gx#core-expand-block__1
                      _%stx136839%_
                      _%expand-special136841%_
                      '#f))
                    (_g137109_ (_%eval-body136842%_ _%rbody136845%_)))
               (begin
                 (let ((_g137110_
                        (if (##values? _g137109_)
                            (##values-length _g137109_)
                            1)))
                   (if (not (##fx= _g137110_ 2))
                       (error "Context expects 2 values" _g137110_)))
                 (let ((_%expanded-body136847%_ (##values-ref _g137109_ 0))
                       (_%value136848%_ (##values-ref _g137109_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body136847%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value136848%_ '())))
                    (gx#stx-source _%stx136839%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx136809%_)
        (let* ((_%e136810136817%_ _%stx136809%_)
               (_%E136812136821%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136810136817%_)))
               (_%E136811136835%_
                (lambda ()
                  (if (gx#stx-pair? _%e136810136817%_)
                      (let ((_%e136813136825%_
                             (gx#syntax-e _%e136810136817%_)))
                        (let ((_%hd136814136828%_ (##car _%e136813136825%_))
                              (_%tl136815136830%_ (##cdr _%e136813136825%_)))
                          (let ((_%body136833%_ _%tl136815136830%_))
                            (if (gx#stx-list? _%body136833%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body136833%_)
                                 (gx#stx-source _%stx136809%_))
                                (_%E136812136821%_)))))
                      (_%E136812136821%_)))))
          (_%E136811136835%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx136807%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx136807%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx136753%_)
        (let* ((_%e136754136767%_ _%stx136753%_)
               (_%E136756136771%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136754136767%_)))
               (_%E136755136803%_
                (lambda ()
                  (if (gx#stx-pair? _%e136754136767%_)
                      (let ((_%e136757136775%_
                             (gx#syntax-e _%e136754136767%_)))
                        (let ((_%hd136758136778%_ (##car _%e136757136775%_))
                              (_%tl136759136780%_ (##cdr _%e136757136775%_)))
                          (if (gx#stx-pair? _%tl136759136780%_)
                              (let ((_%e136760136783%_
                                     (gx#syntax-e _%tl136759136780%_)))
                                (let ((_%hd136761136786%_
                                       (##car _%e136760136783%_))
                                      (_%tl136762136788%_
                                       (##cdr _%e136760136783%_)))
                                  (let ((_%ann136791%_ _%hd136761136786%_))
                                    (if (gx#stx-pair? _%tl136762136788%_)
                                        (let ((_%e136763136793%_
                                               (gx#syntax-e
                                                _%tl136762136788%_)))
                                          (let ((_%hd136764136796%_
                                                 (##car _%e136763136793%_))
                                                (_%tl136765136798%_
                                                 (##cdr _%e136763136793%_)))
                                            (let ((_%expr136801%_
                                                   _%hd136764136796%_))
                                              (if (gx#stx-null?
                                                   _%tl136765136798%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann136791%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr136801%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx136753%_))
                                                  (_%E136756136771%_)))))
                                        (_%E136756136771%_)))))
                              (_%E136756136771%_))))
                      (_%E136756136771%_)))))
          (_%E136755136803%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx136477%_ _%body136478%_)
        (letrec ((_%expand-special136480%_
                  (lambda (_%hd136748%_ _%K136749%_ _%rest136750%_ _%r136751%_)
                    (_%K136749%_
                     '()
                     (cons (_%expand-internal136481%_
                            _%hd136748%_
                            _%rest136750%_)
                           _%r136751%_))))
                 (_%expand-internal136481%_
                  (lambda (_%hd136744%_ _%rest136745%_)
                    (call-with-parameters__1
                     (lambda ()
                       (_%wrap-internal136483%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd136744%_ _%rest136745%_))
                          (gx#stx-source _%stx136477%_))
                         _%expand-internal-special136482%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj137103
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj137103)
                       __obj137103))))
                 (_%expand-internal-special136482%_
                  (lambda (_%hd136639%_ _%K136640%_ _%rest136641%_ _%r136642%_)
                    (let* ((_%e136643136668%_ _%hd136639%_)
                           (_%E136663136672%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e136643136668%_)))
                           (_%E136659136684%_
                            (lambda ()
                              (if (gx#stx-pair? _%e136643136668%_)
                                  (let ((_%e136664136676%_
                                         (gx#syntax-e _%e136643136668%_)))
                                    (let ((_%hd136665136679%_
                                           (##car _%e136664136676%_))
                                          (_%tl136666136681%_
                                           (##cdr _%e136664136676%_)))
                                      (if (and (gx#identifier?
                                                _%hd136665136679%_)
                                               (gx#core-identifier=?
                                                _%hd136665136679%_
                                                '%#declare))
                                          (_%K136640%_
                                           _%rest136641%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd136639%_)
                                                 _%r136642%_))
                                          (_%E136663136672%_))))
                                  (_%E136663136672%_))))
                           (_%E136655136696%_
                            (lambda ()
                              (if (gx#stx-pair? _%e136643136668%_)
                                  (let ((_%e136660136688%_
                                         (gx#syntax-e _%e136643136668%_)))
                                    (let ((_%hd136661136691%_
                                           (##car _%e136660136688%_))
                                          (_%tl136662136693%_
                                           (##cdr _%e136660136688%_)))
                                      (if (and (gx#identifier?
                                                _%hd136661136691%_)
                                               (gx#core-identifier=?
                                                _%hd136661136691%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd136639%_)
                                            (_%K136640%_
                                             _%rest136641%_
                                             _%r136642%_))
                                          (_%E136659136684%_))))
                                  (_%E136659136684%_))))
                           (_%E136645136708%_
                            (lambda ()
                              (if (gx#stx-pair? _%e136643136668%_)
                                  (let ((_%e136656136700%_
                                         (gx#syntax-e _%e136643136668%_)))
                                    (let ((_%hd136657136703%_
                                           (##car _%e136656136700%_))
                                          (_%tl136658136705%_
                                           (##cdr _%e136656136700%_)))
                                      (if (and (gx#identifier?
                                                _%hd136657136703%_)
                                               (gx#core-identifier=?
                                                _%hd136657136703%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd136639%_)
                                            (_%K136640%_
                                             _%rest136641%_
                                             _%r136642%_))
                                          (_%E136655136696%_))))
                                  (_%E136655136696%_))))
                           (_%E136644136740%_
                            (lambda ()
                              (if (gx#stx-pair? _%e136643136668%_)
                                  (let ((_%e136646136712%_
                                         (gx#syntax-e _%e136643136668%_)))
                                    (let ((_%hd136647136715%_
                                           (##car _%e136646136712%_))
                                          (_%tl136648136717%_
                                           (##cdr _%e136646136712%_)))
                                      (if (and (gx#identifier?
                                                _%hd136647136715%_)
                                               (gx#core-identifier=?
                                                _%hd136647136715%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl136648136717%_)
                                              (let ((_%e136649136720%_
                                                     (gx#syntax-e
                                                      _%tl136648136717%_)))
                                                (let ((_%hd136650136723%_
                                                       (##car _%e136649136720%_))
                                                      (_%tl136651136725%_
                                                       (##cdr _%e136649136720%_)))
                                                  (let ((_%hd-bind136728%_
                                                         _%hd136650136723%_))
                                                    (if (gx#stx-pair?
                                                         _%tl136651136725%_)
                                                        (let ((_%e136652136730%_
                                                               (gx#syntax-e
                                                                _%tl136651136725%_)))
                                                          (let ((_%hd136653136733%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e136652136730%_))
                        (_%tl136654136735%_ (##cdr _%e136652136730%_)))
                    (let ((_%expr136738%_ _%hd136653136733%_))
                      (if (gx#stx-null? _%tl136654136735%_)
                          (if (gx#core-bind-values? _%hd-bind136728%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind136728%_)
                                (_%K136640%_
                                 _%rest136641%_
                                 (cons _%hd136639%_ _%r136642%_)))
                              (_%E136645136708%_))
                          (_%E136645136708%_)))))
                (_%E136645136708%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E136645136708%_))
                                          (_%E136645136708%_))))
                                  (_%E136645136708%_)))))
                      (_%E136644136740%_))))
                 (_%wrap-internal136483%_
                  (lambda (_%rbody136485%_)
                    (let _%lp136487%_ ((_%rest136489%_ _%rbody136485%_)
                                       (_%decls136490%_ '())
                                       (_%bind136491%_ '())
                                       (_%body136492%_ '()))
                      (let* ((_%e136493136500%_ _%rest136489%_)
                             (_%E136495136549%_
                              (lambda ()
                                (let* ((_%body136544%_
                                        (let* ((_%body136503136513%_
                                                _%body136492%_)
                                               (_%else136506136521%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body136492%_)
                                                   (gx#stx-source
                                                    _%stx136477%_)))))
                                          (let ((_%K136511136541%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx136477%_)))
                                                (_%K136508136527%_
                                                 (lambda (_%expr136525%_)
                                                   _%expr136525%_)))
                                            (let ((_%try-match136505136537%_
                                                   (lambda ()
                                                     (if (pair? _%body136503136513%_)
                                                         (let ((_%tl136510136532%_
                                                                (##cdr _%body136503136513%_))
                                                               (_%hd136509136530%_
                                                                (##car _%body136503136513%_)))
                                                           (if (null? _%tl136510136532%_)
                                                               (let ((_%expr136535%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd136509136530%_))
                         (_%K136508136527%_ _%expr136535%_))
                       (_%else136506136521%_)))
                 (_%else136506136521%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%body136503136513%_)
                                                  (_%K136511136541%_)
                                                  (_%try-match136505136537%_))))))
                                       (_%body136546%_
                                        (if (null? _%bind136491%_)
                                            _%body136544%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind136491%_
                                                         (cons _%body136544%_
                                                               '())))
                                             (gx#stx-source _%stx136477%_)))))
                                  (if (null? _%decls136490%_)
                                      _%body136546%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls136490%_
                                                   (cons _%body136546%_ '())))
                                       (gx#stx-source _%stx136477%_))))))
                             (_%E136494136635%_
                              (lambda ()
                                (if (gx#stx-pair? _%e136493136500%_)
                                    (let ((_%e136496136553%_
                                           (gx#syntax-e _%e136493136500%_)))
                                      (let ((_%hd136497136556%_
                                             (##car _%e136496136553%_))
                                            (_%tl136498136558%_
                                             (##cdr _%e136496136553%_)))
                                        (let* ((_%hd136561%_
                                                _%hd136497136556%_)
                                               (_%rest136563%_
                                                _%tl136498136558%_)
                                               (_%e136564136581%_ _%hd136561%_)
                                               (_%E136576136585%_
                                                (lambda ()
                                                  (if (null? _%bind136491%_)
                                                      (_%lp136487%_
                                                       _%rest136563%_
                                                       _%decls136490%_
                                                       _%bind136491%_
                                                       (cons _%hd136561%_
                                                             _%body136492%_))
                                                      (_%lp136487%_
                                                       _%rest136563%_
                                                       _%decls136490%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd136561%_ '()))
                     _%bind136491%_)
               _%body136492%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E136566136599%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e136564136581%_)
                                                      (let ((_%e136577136589%_
                                                             (gx#syntax-e
                                                              _%e136564136581%_)))
                                                        (let ((_%hd136578136592%_
                                                               (##car _%e136577136589%_))
                                                              (_%tl136579136594%_
                                                               (##cdr _%e136577136589%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd136578136592%_)
                           (gx#core-identifier=?
                            _%hd136578136592%_
                            '%#declare))
                      (let ((_%xdecls136597%_ _%tl136579136594%_))
                        (_%lp136487%_
                         _%rest136563%_
                         (gx#stx-foldr cons _%decls136490%_ _%xdecls136597%_)
                         _%bind136491%_
                         _%body136492%_))
                      (_%E136576136585%_))))
              (_%E136576136585%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E136565136631%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e136564136581%_)
                                                      (let ((_%e136567136603%_
                                                             (gx#syntax-e
                                                              _%e136564136581%_)))
                                                        (let ((_%hd136568136606%_
                                                               (##car _%e136567136603%_))
                                                              (_%tl136569136608%_
                                                               (##cdr _%e136567136603%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd136568136606%_)
                           (gx#core-identifier=?
                            _%hd136568136606%_
                            '%#define-values))
                      (if (gx#stx-pair? _%tl136569136608%_)
                          (let ((_%e136570136611%_
                                 (gx#syntax-e _%tl136569136608%_)))
                            (let ((_%hd136571136614%_
                                   (##car _%e136570136611%_))
                                  (_%tl136572136616%_
                                   (##cdr _%e136570136611%_)))
                              (let ((_%hd-bind136619%_ _%hd136571136614%_))
                                (if (gx#stx-pair? _%tl136572136616%_)
                                    (let ((_%e136573136621%_
                                           (gx#syntax-e _%tl136572136616%_)))
                                      (let ((_%hd136574136624%_
                                             (##car _%e136573136621%_))
                                            (_%tl136575136626%_
                                             (##cdr _%e136573136621%_)))
                                        (let ((_%expr136629%_
                                               _%hd136574136624%_))
                                          (if (gx#stx-null? _%tl136575136626%_)
                                              (_%lp136487%_
                                               _%rest136563%_
                                               _%decls136490%_
                                               (cons (cons (gx#core-quote-bind-values
                                                            _%hd-bind136619%_)
                                                           (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%expr136629%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind136491%_)
                                               _%body136492%_)
                                              (_%E136566136599%_)))))
                                    (_%E136566136599%_)))))
                          (_%E136566136599%_))
                      (_%E136566136599%_))))
              (_%E136566136599%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%E136565136631%_))))
                                    (_%E136495136549%_)))))
                        (_%E136494136635%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body136478%_)
            (gx#stx-source _%stx136477%_))
           _%expand-special136480%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx136415%_)
        (let* ((_%e136416136423%_ _%stx136415%_)
               (_%E136418136427%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136416136423%_)))
               (_%E136417136473%_
                (lambda ()
                  (if (gx#stx-pair? _%e136416136423%_)
                      (let ((_%e136419136431%_
                             (gx#syntax-e _%e136416136423%_)))
                        (let ((_%hd136420136434%_ (##car _%e136419136431%_))
                              (_%tl136421136436%_ (##cdr _%e136419136431%_)))
                          (let ((_%body136439%_ _%tl136421136436%_))
                            (if (gx#stx-list? _%body136439%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl136441%_)
                                     (let* ((_%e136442136449%_ _%decl136441%_)
                                            (_%E136444136453%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e136442136449%_)))
                                            (_%E136443136469%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e136442136449%_)
                                                   (let ((_%e136445136457%_
                                                          (gx#syntax-e
                                                           _%e136442136449%_)))
                                                     (let ((_%hd136446136460%_
                                                            (##car _%e136445136457%_))
                                                           (_%tl136447136462%_
                                                            (##cdr _%e136445136457%_)))
                                                       (let* ((_%head136465%_
                                                               _%hd136446136460%_)
                                                              (_%args136467%_
                                                               _%tl136447136462%_))
                                                         (if (gx#stx-list?
                                                              _%args136467%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl136441%_)
                                                             (_%E136444136453%_)))))
                                                   (_%E136444136453%_)))))
                                       (_%E136443136469%_)))
                                   _%body136439%_))
                                 (gx#stx-source _%stx136415%_))
                                (_%E136418136427%_)))))
                      (_%E136418136427%_)))))
          (_%E136417136473%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx136319%_)
        (let* ((_%e136320136327%_ _%stx136319%_)
               (_%E136322136331%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136320136327%_)))
               (_%E136321136411%_
                (lambda ()
                  (if (gx#stx-pair? _%e136320136327%_)
                      (let ((_%e136323136335%_
                             (gx#syntax-e _%e136320136327%_)))
                        (let ((_%hd136324136338%_ (##car _%e136323136335%_))
                              (_%tl136325136340%_ (##cdr _%e136323136335%_)))
                          (let ((_%body136343%_ _%tl136325136340%_))
                            (let _%lp136345%_ ((_%rest136347%_ _%body136343%_)
                                               (_%r136348%_ '()))
                              (let* ((_%e136349136363%_ _%rest136347%_)
                                     (_%E136361136367%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx136319%_)))
                                     (_%E136351136371%_
                                      (lambda ()
                                        (if (gx#stx-null? _%e136349136363%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r136348%_))
                                             (gx#stx-source _%stx136319%_))
                                            (_%E136361136367%_))))
                                     (_%E136350136407%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e136349136363%_)
                                            (let ((_%e136352136375%_
                                                   (gx#syntax-e
                                                    _%e136349136363%_)))
                                              (let ((_%hd136353136378%_
                                                     (##car _%e136352136375%_))
                                                    (_%tl136354136380%_
                                                     (##cdr _%e136352136375%_)))
                                                (if (gx#stx-pair?
                                                     _%hd136353136378%_)
                                                    (let ((_%e136355136383%_
                                                           (gx#syntax-e
                                                            _%hd136353136378%_)))
                                                      (let ((_%hd136356136386%_
                                                             (##car _%e136355136383%_))
                                                            (_%tl136357136388%_
                                                             (##cdr _%e136355136383%_)))
                                                        (let ((_%id136391%_
                                                               _%hd136356136386%_))
                                                          (if (gx#stx-pair?
                                                               _%tl136357136388%_)
                                                              (let ((_%e136358136393%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl136357136388%_)))
                        (let ((_%hd136359136396%_ (##car _%e136358136393%_))
                              (_%tl136360136398%_ (##cdr _%e136358136393%_)))
                          (let ((_%eid136401%_ _%hd136359136396%_))
                            (if (gx#stx-null? _%tl136360136398%_)
                                (let ((_%rest136403%_ _%tl136354136380%_))
                                  (if (and (gx#identifier? _%id136391%_)
                                           (gx#identifier? _%eid136401%_))
                                      (let ((_%eid136405%_
                                             (gx#stx-e _%eid136401%_)))
                                        (gx#core-bind-extern!__0
                                         _%id136391%_
                                         _%eid136405%_)
                                        (_%lp136345%_
                                         _%rest136403%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id136391%_)
                                                     (cons _%eid136405%_ '()))
                                               _%r136348%_)))
                                      (_%E136351136371%_)))
                                (_%E136351136371%_)))))
                      (_%E136351136371%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E136351136371%_))))
                                            (_%E136351136371%_)))))
                                (_%E136350136407%_))))))
                      (_%E136322136331%_)))))
          (_%E136321136411%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx136265%_)
        (let* ((_%e136266136279%_ _%stx136265%_)
               (_%E136268136283%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136266136279%_)))
               (_%E136267136315%_
                (lambda ()
                  (if (gx#stx-pair? _%e136266136279%_)
                      (let ((_%e136269136287%_
                             (gx#syntax-e _%e136266136279%_)))
                        (let ((_%hd136270136290%_ (##car _%e136269136287%_))
                              (_%tl136271136292%_ (##cdr _%e136269136287%_)))
                          (if (gx#stx-pair? _%tl136271136292%_)
                              (let ((_%e136272136295%_
                                     (gx#syntax-e _%tl136271136292%_)))
                                (let ((_%hd136273136298%_
                                       (##car _%e136272136295%_))
                                      (_%tl136274136300%_
                                       (##cdr _%e136272136295%_)))
                                  (let ((_%hd136303%_ _%hd136273136298%_))
                                    (if (gx#stx-pair? _%tl136274136300%_)
                                        (let ((_%e136275136305%_
                                               (gx#syntax-e
                                                _%tl136274136300%_)))
                                          (let ((_%hd136276136308%_
                                                 (##car _%e136275136305%_))
                                                (_%tl136277136310%_
                                                 (##cdr _%e136275136305%_)))
                                            (let ((_%expr136313%_
                                                   _%hd136276136308%_))
                                              (if (gx#stx-null?
                                                   _%tl136277136310%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd136303%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd136303%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd136303%_)
                             (cons (gx#core-expand-expression _%expr136313%_)
                                   '())))
                 (gx#stx-source _%stx136265%_)))
              (_%E136268136283%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E136268136283%_)))))
                                        (_%E136268136283%_)))))
                              (_%E136268136283%_))))
                      (_%E136268136283%_)))))
          (_%E136267136315%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx136209%_)
        (let* ((_%e136210136223%_ _%stx136209%_)
               (_%E136212136227%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136210136223%_)))
               (_%E136211136261%_
                (lambda ()
                  (if (gx#stx-pair? _%e136210136223%_)
                      (let ((_%e136213136231%_
                             (gx#syntax-e _%e136210136223%_)))
                        (let ((_%hd136214136234%_ (##car _%e136213136231%_))
                              (_%tl136215136236%_ (##cdr _%e136213136231%_)))
                          (if (gx#stx-pair? _%tl136215136236%_)
                              (let ((_%e136216136239%_
                                     (gx#syntax-e _%tl136215136236%_)))
                                (let ((_%hd136217136242%_
                                       (##car _%e136216136239%_))
                                      (_%tl136218136244%_
                                       (##cdr _%e136216136239%_)))
                                  (let ((_%id136247%_ _%hd136217136242%_))
                                    (if (gx#stx-pair? _%tl136218136244%_)
                                        (let ((_%e136219136249%_
                                               (gx#syntax-e
                                                _%tl136218136244%_)))
                                          (let ((_%hd136220136252%_
                                                 (##car _%e136219136249%_))
                                                (_%tl136221136254%_
                                                 (##cdr _%e136219136249%_)))
                                            (let ((_%binding-id136257%_
                                                   _%hd136220136252%_))
                                              (if (gx#stx-null?
                                                   _%tl136221136254%_)
                                                  (if (and (gx#identifier?
                                                            _%id136247%_)
                                                           (gx#identifier?
                                                            _%binding-id136257%_))
                                                      (let ((_%eid136259%_
                                                             (gx#stx-e
                                                              _%binding-id136257%_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _%id136247%_
                                                         _%eid136259%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id136247%_)
                             (cons _%eid136259%_ '())))))
              (_%E136212136227%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E136212136227%_)))))
                                        (_%E136212136227%_)))))
                              (_%E136212136227%_))))
                      (_%E136212136227%_)))))
          (_%E136211136261%_))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx136152%_)
        (let* ((_%e136153136166%_ _%stx136152%_)
               (_%E136155136170%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136153136166%_)))
               (_%E136154136205%_
                (lambda ()
                  (if (gx#stx-pair? _%e136153136166%_)
                      (let ((_%e136156136174%_
                             (gx#syntax-e _%e136153136166%_)))
                        (let ((_%hd136157136177%_ (##car _%e136156136174%_))
                              (_%tl136158136179%_ (##cdr _%e136156136174%_)))
                          (if (gx#stx-pair? _%tl136158136179%_)
                              (let ((_%e136159136182%_
                                     (gx#syntax-e _%tl136158136179%_)))
                                (let ((_%hd136160136185%_
                                       (##car _%e136159136182%_))
                                      (_%tl136161136187%_
                                       (##cdr _%e136159136182%_)))
                                  (let ((_%id136190%_ _%hd136160136185%_))
                                    (if (gx#stx-pair? _%tl136161136187%_)
                                        (let ((_%e136162136192%_
                                               (gx#syntax-e
                                                _%tl136161136187%_)))
                                          (let ((_%hd136163136195%_
                                                 (##car _%e136162136192%_))
                                                (_%tl136164136197%_
                                                 (##cdr _%e136162136192%_)))
                                            (let ((_%expr136200%_
                                                   _%hd136163136195%_))
                                              (if (gx#stx-null?
                                                   _%tl136164136197%_)
                                                  (if (gx#identifier?
                                                       _%id136190%_)
                                                      (let ((_g137111_
                                                             (gx#core-expand-expression+1
                                                              _%expr136200%_)))
                                                        (begin
                                                          (let ((_g137112_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g137111_)
                             (##values-length _g137111_)
                             1)))
                    (if (not (##fx= _g137112_ 2))
                        (error "Context expects 2 values" _g137112_)))
                  (let ((_%e-stx136202%_ (##values-ref _g137111_ 0))
                        (_%e136203%_ (##values-ref _g137111_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id136190%_ _%e136203%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id136190%_)
                                   (cons _%e-stx136202%_ '())))
                       (gx#stx-source _%stx136152%_))))))
              (_%E136155136170%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E136155136170%_)))))
                                        (_%E136155136170%_)))))
                              (_%E136155136170%_))))
                      (_%E136155136170%_)))))
          (_%E136154136205%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx136096%_)
        (let* ((_%e136097136110%_ _%stx136096%_)
               (_%E136099136114%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136097136110%_)))
               (_%E136098136148%_
                (lambda ()
                  (if (gx#stx-pair? _%e136097136110%_)
                      (let ((_%e136100136118%_
                             (gx#syntax-e _%e136097136110%_)))
                        (let ((_%hd136101136121%_ (##car _%e136100136118%_))
                              (_%tl136102136123%_ (##cdr _%e136100136118%_)))
                          (if (gx#stx-pair? _%tl136102136123%_)
                              (let ((_%e136103136126%_
                                     (gx#syntax-e _%tl136102136123%_)))
                                (let ((_%hd136104136129%_
                                       (##car _%e136103136126%_))
                                      (_%tl136105136131%_
                                       (##cdr _%e136103136126%_)))
                                  (let ((_%id136134%_ _%hd136104136129%_))
                                    (if (gx#stx-pair? _%tl136105136131%_)
                                        (let ((_%e136106136136%_
                                               (gx#syntax-e
                                                _%tl136105136131%_)))
                                          (let ((_%hd136107136139%_
                                                 (##car _%e136106136136%_))
                                                (_%tl136108136141%_
                                                 (##cdr _%e136106136136%_)))
                                            (let ((_%alias-id136144%_
                                                   _%hd136107136139%_))
                                              (if (gx#stx-null?
                                                   _%tl136108136141%_)
                                                  (if (and (gx#identifier?
                                                            _%id136134%_)
                                                           (gx#identifier?
                                                            _%alias-id136144%_))
                                                      (let ((_%alias-id136146%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id136144%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id136134%_
                                                         _%alias-id136146%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id136134%_)
                             (cons _%alias-id136146%_ '())))))
              (_%E136099136114%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E136099136114%_)))))
                                        (_%E136099136114%_)))))
                              (_%E136099136114%_))))
                      (_%E136099136114%_)))))
          (_%E136098136148%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx136039%_ _%wrap?136040%_)
        (let* ((_%e136041136051%_ _%stx136039%_)
               (_%E136043136055%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136041136051%_)))
               (_%E136042136082%_
                (lambda ()
                  (if (gx#stx-pair? _%e136041136051%_)
                      (let ((_%e136044136059%_
                             (gx#syntax-e _%e136041136051%_)))
                        (let ((_%hd136045136062%_ (##car _%e136044136059%_))
                              (_%tl136046136064%_ (##cdr _%e136044136059%_)))
                          (if (gx#stx-pair? _%tl136046136064%_)
                              (let ((_%e136047136067%_
                                     (gx#syntax-e _%tl136046136064%_)))
                                (let ((_%hd136048136070%_
                                       (##car _%e136047136067%_))
                                      (_%tl136049136072%_
                                       (##cdr _%e136047136067%_)))
                                  (let* ((_%hd136075%_ _%hd136048136070%_)
                                         (_%body136077%_ _%tl136049136072%_))
                                    (if (gx#core-bind-values? _%hd136075%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd136075%_)
                                           (let ((_%body136080%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd136075%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx136039%_
                                                               _%body136077%_)
                                                              '()))))
                                             (if _%wrap?136040%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body136080%_)
                                                  (gx#stx-source
                                                   _%stx136039%_))
                                                 _%body136080%_)))
                                         gx#current-expander-context
                                         (let ((__obj137104
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj137104)
                                           __obj137104))
                                        (_%E136043136055%_)))))
                              (_%E136043136055%_))))
                      (_%E136043136055%_)))))
          (_%E136042136082%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx136089%_)
        (let ((_%wrap?136091%_ '#t))
          (gx#core-expand-lambda%__% _%stx136089%_ _%wrap?136091%_))))
    (define gx#core-expand-lambda%
      (lambda _g137113_
        (let ((_g137114_ (##length _g137113_)))
          (cond ((##fx= _g137114_ 1)
                 (apply gx#core-expand-lambda%__0 _g137113_))
                ((##fx= _g137114_ 2)
                 (apply gx#core-expand-lambda%__% _g137113_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g137113_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx136003%_)
        (let* ((_%e136004136011%_ _%stx136003%_)
               (_%E136006136015%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136004136011%_)))
               (_%E136005136034%_
                (lambda ()
                  (if (gx#stx-pair? _%e136004136011%_)
                      (let ((_%e136007136019%_
                             (gx#syntax-e _%e136004136011%_)))
                        (let ((_%hd136008136022%_ (##car _%e136007136019%_))
                              (_%tl136009136024%_ (##cdr _%e136007136019%_)))
                          (let ((_%clauses136027%_ _%tl136009136024%_))
                            (if (gx#stx-list? _%clauses136027%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause136029%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause136029%_)
                                       (let ((_%$e136031%_
                                              (gx#stx-source
                                               _%clause136029%_)))
                                         (if _%$e136031%_
                                             _%$e136031%_
                                             (gx#stx-source _%stx136003%_))))
                                      '#f))
                                   _%clauses136027%_))
                                 (gx#stx-source _%stx136003%_))
                                (_%E136006136015%_)))))
                      (_%E136006136015%_)))))
          (_%E136005136034%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx135957%_)
        (let* ((_%e135958135968%_ _%stx135957%_)
               (_%E135960135972%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135958135968%_)))
               (_%E135959135999%_
                (lambda ()
                  (if (gx#stx-pair? _%e135958135968%_)
                      (let ((_%e135961135976%_
                             (gx#syntax-e _%e135958135968%_)))
                        (let ((_%hd135962135979%_ (##car _%e135961135976%_))
                              (_%tl135963135981%_ (##cdr _%e135961135976%_)))
                          (if (gx#stx-pair? _%tl135963135981%_)
                              (let ((_%e135964135984%_
                                     (gx#syntax-e _%tl135963135981%_)))
                                (let ((_%hd135965135987%_
                                       (##car _%e135964135984%_))
                                      (_%tl135966135989%_
                                       (##cdr _%e135964135984%_)))
                                  (let* ((_%hd135992%_ _%hd135965135987%_)
                                         (_%body135994%_ _%tl135966135989%_))
                                    (if (gx#core-expand-let-bind? _%hd135992%_)
                                        (let ((_%expressions135996%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd135992%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd135992%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd135992%_
                                                           _%expressions135996%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx135957%_
                         _%body135994%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx135957%_)))
                                           gx#current-expander-context
                                           (let ((__obj137105
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj137105)
                                             __obj137105)))
                                        (_%E135960135972%_)))))
                              (_%E135960135972%_))))
                      (_%E135960135972%_)))))
          (_%E135959135999%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx135902%_ _%form135903%_)
        (let* ((_%e135904135914%_ _%stx135902%_)
               (_%E135906135918%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135904135914%_)))
               (_%E135905135943%_
                (lambda ()
                  (if (gx#stx-pair? _%e135904135914%_)
                      (let ((_%e135907135922%_
                             (gx#syntax-e _%e135904135914%_)))
                        (let ((_%hd135908135925%_ (##car _%e135907135922%_))
                              (_%tl135909135927%_ (##cdr _%e135907135922%_)))
                          (if (gx#stx-pair? _%tl135909135927%_)
                              (let ((_%e135910135930%_
                                     (gx#syntax-e _%tl135909135927%_)))
                                (let ((_%hd135911135933%_
                                       (##car _%e135910135930%_))
                                      (_%tl135912135935%_
                                       (##cdr _%e135910135930%_)))
                                  (let* ((_%hd135938%_ _%hd135911135933%_)
                                         (_%body135940%_ _%tl135912135935%_))
                                    (if (gx#core-expand-let-bind? _%hd135938%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd135938%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form135903%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd135938%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd135938%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx135902%_
                                                               _%body135940%_)
                                                              '())))
                                            (gx#stx-source _%stx135902%_)))
                                         gx#current-expander-context
                                         (let ((__obj137106
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj137106)
                                           __obj137106))
                                        (_%E135906135918%_)))))
                              (_%E135906135918%_))))
                      (_%E135906135918%_)))))
          (_%E135905135943%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx135950%_)
        (let ((_%form135952%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx135950%_ _%form135952%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g137115_
        (let ((_g137116_ (##length _g137115_)))
          (cond ((##fx= _g137116_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g137115_))
                ((##fx= _g137116_ 2)
                 (apply gx#core-expand-letrec-values%__% _g137115_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g137115_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx135899%_)
        (gx#core-expand-letrec-values%__% _%stx135899%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx135856%_)
        (if (gx#stx-list? _%stx135856%_)
            (gx#stx-andmap
             (lambda (_%bind135858%_)
               (let* ((_%e135859135869%_ _%bind135858%_)
                      (_%E135861135873%_ (lambda () '#f))
                      (_%E135860135895%_
                       (lambda ()
                         (if (gx#stx-pair? _%e135859135869%_)
                             (let ((_%e135862135877%_
                                    (gx#syntax-e _%e135859135869%_)))
                               (let ((_%hd135863135880%_
                                      (##car _%e135862135877%_))
                                     (_%tl135864135882%_
                                      (##cdr _%e135862135877%_)))
                                 (let ((_%hd135885%_ _%hd135863135880%_))
                                   (if (gx#stx-pair? _%tl135864135882%_)
                                       (let ((_%e135865135887%_
                                              (gx#syntax-e
                                               _%tl135864135882%_)))
                                         (let ((_%hd135866135890%_
                                                (##car _%e135865135887%_))
                                               (_%tl135867135892%_
                                                (##cdr _%e135865135887%_)))
                                           (if (gx#stx-null?
                                                _%tl135867135892%_)
                                               (gx#core-bind-values?
                                                _%hd135885%_)
                                               (_%E135861135873%_))))
                                       (_%E135861135873%_)))))
                             (_%E135861135873%_)))))
                 (_%E135860135895%_)))
             _%stx135856%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind135815%_)
        (let* ((_%e135816135826%_ _%bind135815%_)
               (_%E135818135830%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135816135826%_)))
               (_%E135817135852%_
                (lambda ()
                  (if (gx#stx-pair? _%e135816135826%_)
                      (let ((_%e135819135834%_
                             (gx#syntax-e _%e135816135826%_)))
                        (let ((_%hd135820135837%_ (##car _%e135819135834%_))
                              (_%tl135821135839%_ (##cdr _%e135819135834%_)))
                          (if (gx#stx-pair? _%tl135821135839%_)
                              (let ((_%e135822135842%_
                                     (gx#syntax-e _%tl135821135839%_)))
                                (let ((_%hd135823135845%_
                                       (##car _%e135822135842%_))
                                      (_%tl135824135847%_
                                       (##cdr _%e135822135842%_)))
                                  (let ((_%expr135850%_ _%hd135823135845%_))
                                    (if (gx#stx-null? _%tl135824135847%_)
                                        (gx#core-expand-expression
                                         _%expr135850%_)
                                        (_%E135818135830%_)))))
                              (_%E135818135830%_))))
                      (_%E135818135830%_)))))
          (_%E135817135852%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind135774%_)
        (let* ((_%e135775135785%_ _%bind135774%_)
               (_%E135777135789%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135775135785%_)))
               (_%E135776135811%_
                (lambda ()
                  (if (gx#stx-pair? _%e135775135785%_)
                      (let ((_%e135778135793%_
                             (gx#syntax-e _%e135775135785%_)))
                        (let ((_%hd135779135796%_ (##car _%e135778135793%_))
                              (_%tl135780135798%_ (##cdr _%e135778135793%_)))
                          (let ((_%hd135801%_ _%hd135779135796%_))
                            (if (gx#stx-pair? _%tl135780135798%_)
                                (let ((_%e135781135803%_
                                       (gx#syntax-e _%tl135780135798%_)))
                                  (let ((_%hd135782135806%_
                                         (##car _%e135781135803%_))
                                        (_%tl135783135808%_
                                         (##cdr _%e135781135803%_)))
                                    (if (gx#stx-null? _%tl135783135808%_)
                                        (gx#core-bind-values!__0 _%hd135801%_)
                                        (_%E135777135789%_))))
                                (_%E135777135789%_)))))
                      (_%E135777135789%_)))))
          (_%E135776135811%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind135732%_ _%expr135733%_)
        (let* ((_%e135734135744%_ _%bind135732%_)
               (_%E135736135748%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135734135744%_)))
               (_%E135735135770%_
                (lambda ()
                  (if (gx#stx-pair? _%e135734135744%_)
                      (let ((_%e135737135752%_
                             (gx#syntax-e _%e135734135744%_)))
                        (let ((_%hd135738135755%_ (##car _%e135737135752%_))
                              (_%tl135739135757%_ (##cdr _%e135737135752%_)))
                          (let ((_%hd135760%_ _%hd135738135755%_))
                            (if (gx#stx-pair? _%tl135739135757%_)
                                (let ((_%e135740135762%_
                                       (gx#syntax-e _%tl135739135757%_)))
                                  (let ((_%hd135741135765%_
                                         (##car _%e135740135762%_))
                                        (_%tl135742135767%_
                                         (##cdr _%e135740135762%_)))
                                    (if (gx#stx-null? _%tl135742135767%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd135760%_)
                                              (cons _%expr135733%_ '()))
                                        (_%E135736135748%_))))
                                (_%E135736135748%_)))))
                      (_%E135736135748%_)))))
          (_%E135735135770%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx135686%_)
        (let* ((_%e135687135697%_ _%stx135686%_)
               (_%E135689135701%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135687135697%_)))
               (_%E135688135728%_
                (lambda ()
                  (if (gx#stx-pair? _%e135687135697%_)
                      (let ((_%e135690135705%_
                             (gx#syntax-e _%e135687135697%_)))
                        (let ((_%hd135691135708%_ (##car _%e135690135705%_))
                              (_%tl135692135710%_ (##cdr _%e135690135705%_)))
                          (if (gx#stx-pair? _%tl135692135710%_)
                              (let ((_%e135693135713%_
                                     (gx#syntax-e _%tl135692135710%_)))
                                (let ((_%hd135694135716%_
                                       (##car _%e135693135713%_))
                                      (_%tl135695135718%_
                                       (##cdr _%e135693135713%_)))
                                  (let* ((_%hd135721%_ _%hd135694135716%_)
                                         (_%body135723%_ _%tl135695135718%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd135721%_)
                                        (let ((_%expanders135725%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd135721%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd135721%_
                                              _%expanders135725%_)
                                             (gx#core-expand-local-block
                                              _%stx135686%_
                                              _%body135723%_))
                                           gx#current-expander-context
                                           (let ((__obj137107
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj137107)
                                             __obj137107)))
                                        (_%E135689135701%_)))))
                              (_%E135689135701%_))))
                      (_%E135689135701%_)))))
          (_%E135688135728%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx135635%_)
        (let* ((_%e135636135646%_ _%stx135635%_)
               (_%E135638135650%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135636135646%_)))
               (_%E135637135682%_
                (lambda ()
                  (if (gx#stx-pair? _%e135636135646%_)
                      (let ((_%e135639135654%_
                             (gx#syntax-e _%e135636135646%_)))
                        (let ((_%hd135640135657%_ (##car _%e135639135654%_))
                              (_%tl135641135659%_ (##cdr _%e135639135654%_)))
                          (if (gx#stx-pair? _%tl135641135659%_)
                              (let ((_%e135642135662%_
                                     (gx#syntax-e _%tl135641135659%_)))
                                (let ((_%hd135643135665%_
                                       (##car _%e135642135662%_))
                                      (_%tl135644135667%_
                                       (##cdr _%e135642135662%_)))
                                  (let* ((_%hd135670%_ _%hd135643135665%_)
                                         (_%body135672%_ _%tl135644135667%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd135670%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd135670%_
                                            (make-list
                                             (gx#stx-length _%hd135670%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g135674135677%_
                                                     _%g135675135679%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g135674135677%_
                                               _%g135675135679%_
                                               '#t))
                                            _%hd135670%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd135670%_))
                                           (gx#core-expand-local-block
                                            _%stx135635%_
                                            _%body135672%_))
                                         gx#current-expander-context
                                         (let ((__obj137108
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj137108)
                                           __obj137108))
                                        (_%E135638135650%_)))))
                              (_%E135638135650%_))))
                      (_%E135638135650%_)))))
          (_%E135637135682%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx135592%_)
        (if (gx#stx-list? _%stx135592%_)
            (gx#stx-andmap
             (lambda (_%bind135594%_)
               (let* ((_%e135595135605%_ _%bind135594%_)
                      (_%E135597135609%_ (lambda () '#f))
                      (_%E135596135631%_
                       (lambda ()
                         (if (gx#stx-pair? _%e135595135605%_)
                             (let ((_%e135598135613%_
                                    (gx#syntax-e _%e135595135605%_)))
                               (let ((_%hd135599135616%_
                                      (##car _%e135598135613%_))
                                     (_%tl135600135618%_
                                      (##cdr _%e135598135613%_)))
                                 (let ((_%hd135621%_ _%hd135599135616%_))
                                   (if (gx#stx-pair? _%tl135600135618%_)
                                       (let ((_%e135601135623%_
                                              (gx#syntax-e
                                               _%tl135600135618%_)))
                                         (let ((_%hd135602135626%_
                                                (##car _%e135601135623%_))
                                               (_%tl135603135628%_
                                                (##cdr _%e135601135623%_)))
                                           (if (gx#stx-null?
                                                _%tl135603135628%_)
                                               (gx#identifier? _%hd135621%_)
                                               (_%E135597135609%_))))
                                       (_%E135597135609%_)))))
                             (_%E135597135609%_)))))
                 (_%E135596135631%_)))
             _%stx135592%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind135548%_)
        (let* ((_%e135549135559%_ _%bind135548%_)
               (_%E135551135563%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135549135559%_)))
               (_%E135550135588%_
                (lambda ()
                  (if (gx#stx-pair? _%e135549135559%_)
                      (let ((_%e135552135567%_
                             (gx#syntax-e _%e135549135559%_)))
                        (let ((_%hd135553135570%_ (##car _%e135552135567%_))
                              (_%tl135554135572%_ (##cdr _%e135552135567%_)))
                          (if (gx#stx-pair? _%tl135554135572%_)
                              (let ((_%e135555135575%_
                                     (gx#syntax-e _%tl135554135572%_)))
                                (let ((_%hd135556135578%_
                                       (##car _%e135555135575%_))
                                      (_%tl135557135580%_
                                       (##cdr _%e135555135575%_)))
                                  (let ((_%expr135583%_ _%hd135556135578%_))
                                    (if (gx#stx-null? _%tl135557135580%_)
                                        (let ((_g137117_
                                               (gx#core-expand-expression+1
                                                _%expr135583%_)))
                                          (begin
                                            (let ((_g137118_
                                                   (if (##values? _g137117_)
                                                       (##values-length
                                                        _g137117_)
                                                       1)))
                                              (if (not (##fx= _g137118_ 2))
                                                  (error "Context expects 2 values"
                                                         _g137118_)))
                                            (let ((_%_135585%_
                                                   (##values-ref _g137117_ 0))
                                                  (_%e135586%_
                                                   (##values-ref _g137117_ 1)))
                                              _%e135586%_)))
                                        (_%E135551135563%_)))))
                              (_%E135551135563%_))))
                      (_%E135551135563%_)))))
          (_%E135550135588%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind135493%_ _%e135494%_ _%rebind?135495%_)
        (let* ((_%e135496135506%_ _%bind135493%_)
               (_%E135498135510%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135496135506%_)))
               (_%E135497135532%_
                (lambda ()
                  (if (gx#stx-pair? _%e135496135506%_)
                      (let ((_%e135499135514%_
                             (gx#syntax-e _%e135496135506%_)))
                        (let ((_%hd135500135517%_ (##car _%e135499135514%_))
                              (_%tl135501135519%_ (##cdr _%e135499135514%_)))
                          (let ((_%id135522%_ _%hd135500135517%_))
                            (if (gx#stx-pair? _%tl135501135519%_)
                                (let ((_%e135502135524%_
                                       (gx#syntax-e _%tl135501135519%_)))
                                  (let ((_%hd135503135527%_
                                         (##car _%e135502135524%_))
                                        (_%tl135504135529%_
                                         (##cdr _%e135502135524%_)))
                                    (if (gx#stx-null? _%tl135504135529%_)
                                        (gx#core-bind-syntax!__1
                                         _%id135522%_
                                         _%e135494%_
                                         _%rebind?135495%_)
                                        (_%E135498135510%_))))
                                (_%E135498135510%_)))))
                      (_%E135498135510%_)))))
          (_%E135497135532%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind135539%_ _%e135540%_)
        (let ((_%rebind?135542%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind135539%_
           _%e135540%_
           _%rebind?135542%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g137119_
        (let ((_g137120_ (##length _g137119_)))
          (cond ((##fx= _g137120_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g137119_))
                ((##fx= _g137120_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g137119_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g137119_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx135451%_)
        (let* ((_%e135452135462%_ _%stx135451%_)
               (_%E135454135466%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135452135462%_)))
               (_%E135453135488%_
                (lambda ()
                  (if (gx#stx-pair? _%e135452135462%_)
                      (let ((_%e135455135470%_
                             (gx#syntax-e _%e135452135462%_)))
                        (let ((_%hd135456135473%_ (##car _%e135455135470%_))
                              (_%tl135457135475%_ (##cdr _%e135455135470%_)))
                          (if (gx#stx-pair? _%tl135457135475%_)
                              (let ((_%e135458135478%_
                                     (gx#syntax-e _%tl135457135475%_)))
                                (let ((_%hd135459135481%_
                                       (##car _%e135458135478%_))
                                      (_%tl135460135483%_
                                       (##cdr _%e135458135478%_)))
                                  (let ((_%expr135486%_ _%hd135459135481%_))
                                    (if (gx#stx-null? _%tl135460135483%_)
                                        (gx#core-expand-expression
                                         _%expr135486%_)
                                        (_%E135454135466%_)))))
                              (_%E135454135466%_))))
                      (_%E135454135466%_)))))
          (_%E135453135488%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx135410%_)
        (let* ((_%e135411135421%_ _%stx135410%_)
               (_%E135413135425%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135411135421%_)))
               (_%E135412135447%_
                (lambda ()
                  (if (gx#stx-pair? _%e135411135421%_)
                      (let ((_%e135414135429%_
                             (gx#syntax-e _%e135411135421%_)))
                        (let ((_%hd135415135432%_ (##car _%e135414135429%_))
                              (_%tl135416135434%_ (##cdr _%e135414135429%_)))
                          (if (gx#stx-pair? _%tl135416135434%_)
                              (let ((_%e135417135437%_
                                     (gx#syntax-e _%tl135416135434%_)))
                                (let ((_%hd135418135440%_
                                       (##car _%e135417135437%_))
                                      (_%tl135419135442%_
                                       (##cdr _%e135417135437%_)))
                                  (let ((_%e135445%_ _%hd135418135440%_))
                                    (if (gx#stx-null? _%tl135419135442%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e135445%_)
                                                     '()))
                                         (gx#stx-source _%stx135410%_))
                                        (_%E135413135425%_)))))
                              (_%E135413135425%_))))
                      (_%E135413135425%_)))))
          (_%E135412135447%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx135369%_)
        (let* ((_%e135370135380%_ _%stx135369%_)
               (_%E135372135384%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135370135380%_)))
               (_%E135371135406%_
                (lambda ()
                  (if (gx#stx-pair? _%e135370135380%_)
                      (let ((_%e135373135388%_
                             (gx#syntax-e _%e135370135380%_)))
                        (let ((_%hd135374135391%_ (##car _%e135373135388%_))
                              (_%tl135375135393%_ (##cdr _%e135373135388%_)))
                          (if (gx#stx-pair? _%tl135375135393%_)
                              (let ((_%e135376135396%_
                                     (gx#syntax-e _%tl135375135393%_)))
                                (let ((_%hd135377135399%_
                                       (##car _%e135376135396%_))
                                      (_%tl135378135401%_
                                       (##cdr _%e135376135396%_)))
                                  (let ((_%e135404%_ _%hd135377135399%_))
                                    (if (gx#stx-null? _%tl135378135401%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e135404%_)
                                                     '()))
                                         (gx#stx-source _%stx135369%_))
                                        (_%E135372135384%_)))))
                              (_%E135372135384%_))))
                      (_%E135372135384%_)))))
          (_%E135371135406%_))))
    (define gx#core-expand-call%
      (lambda (_%stx135326%_)
        (let* ((_%e135327135337%_ _%stx135326%_)
               (_%E135329135341%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135327135337%_)))
               (_%E135328135365%_
                (lambda ()
                  (if (gx#stx-pair? _%e135327135337%_)
                      (let ((_%e135330135345%_
                             (gx#syntax-e _%e135327135337%_)))
                        (let ((_%hd135331135348%_ (##car _%e135330135345%_))
                              (_%tl135332135350%_ (##cdr _%e135330135345%_)))
                          (if (gx#stx-pair? _%tl135332135350%_)
                              (let ((_%e135333135353%_
                                     (gx#syntax-e _%tl135332135350%_)))
                                (let ((_%hd135334135356%_
                                       (##car _%e135333135353%_))
                                      (_%tl135335135358%_
                                       (##cdr _%e135333135353%_)))
                                  (let* ((_%rator135361%_ _%hd135334135356%_)
                                         (_%args135363%_ _%tl135335135358%_))
                                    (if (gx#stx-list? _%args135363%_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _%rator135361%_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _%args135363%_))
                                         (gx#stx-source _%stx135326%_))
                                        (_%E135329135341%_)))))
                              (_%E135329135341%_))))
                      (_%E135329135341%_)))))
          (_%E135328135365%_))))
    (define gx#core-expand-if%
      (lambda (_%stx135259%_)
        (let* ((_%e135260135276%_ _%stx135259%_)
               (_%E135262135280%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135260135276%_)))
               (_%E135261135322%_
                (lambda ()
                  (if (gx#stx-pair? _%e135260135276%_)
                      (let ((_%e135263135284%_
                             (gx#syntax-e _%e135260135276%_)))
                        (let ((_%hd135264135287%_ (##car _%e135263135284%_))
                              (_%tl135265135289%_ (##cdr _%e135263135284%_)))
                          (if (gx#stx-pair? _%tl135265135289%_)
                              (let ((_%e135266135292%_
                                     (gx#syntax-e _%tl135265135289%_)))
                                (let ((_%hd135267135295%_
                                       (##car _%e135266135292%_))
                                      (_%tl135268135297%_
                                       (##cdr _%e135266135292%_)))
                                  (let ((_%test135300%_ _%hd135267135295%_))
                                    (if (gx#stx-pair? _%tl135268135297%_)
                                        (let ((_%e135269135302%_
                                               (gx#syntax-e
                                                _%tl135268135297%_)))
                                          (let ((_%hd135270135305%_
                                                 (##car _%e135269135302%_))
                                                (_%tl135271135307%_
                                                 (##cdr _%e135269135302%_)))
                                            (let ((_%K135310%_
                                                   _%hd135270135305%_))
                                              (if (gx#stx-pair?
                                                   _%tl135271135307%_)
                                                  (let ((_%e135272135312%_
                                                         (gx#syntax-e
                                                          _%tl135271135307%_)))
                                                    (let ((_%hd135273135315%_
                                                           (##car _%e135272135312%_))
                                                          (_%tl135274135317%_
                                                           (##cdr _%e135272135312%_)))
                                                      (let ((_%E135320%_
                                                             _%hd135273135315%_))
                                                        (if (gx#stx-null?
                                                             _%tl135274135317%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test135300%_)
                                 (cons (gx#core-expand-expression _%K135310%_)
                                       (cons (gx#core-expand-expression
                                              _%E135320%_)
                                             '()))))
                     (gx#stx-source _%stx135259%_))
                    (_%E135262135280%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E135262135280%_)))))
                                        (_%E135262135280%_)))))
                              (_%E135262135280%_))))
                      (_%E135262135280%_)))))
          (_%E135261135322%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx135218%_)
        (let* ((_%e135219135229%_ _%stx135218%_)
               (_%E135221135233%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135219135229%_)))
               (_%E135220135255%_
                (lambda ()
                  (if (gx#stx-pair? _%e135219135229%_)
                      (let ((_%e135222135237%_
                             (gx#syntax-e _%e135219135229%_)))
                        (let ((_%hd135223135240%_ (##car _%e135222135237%_))
                              (_%tl135224135242%_ (##cdr _%e135222135237%_)))
                          (if (gx#stx-pair? _%tl135224135242%_)
                              (let ((_%e135225135245%_
                                     (gx#syntax-e _%tl135224135242%_)))
                                (let ((_%hd135226135248%_
                                       (##car _%e135225135245%_))
                                      (_%tl135227135250%_
                                       (##cdr _%e135225135245%_)))
                                  (let ((_%id135253%_ _%hd135226135248%_))
                                    (if (gx#stx-null? _%tl135227135250%_)
                                        (if (gx#identifier? _%id135253%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id135253%_
                                                          _%stx135218%_)
                                                         '()))
                                             (gx#stx-source _%stx135218%_))
                                            (_%E135221135233%_))
                                        (_%E135221135233%_)))))
                              (_%E135221135233%_))))
                      (_%E135221135233%_)))))
          (_%E135220135255%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx135164%_)
        (let* ((_%e135165135178%_ _%stx135164%_)
               (_%E135167135182%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135165135178%_)))
               (_%E135166135214%_
                (lambda ()
                  (if (gx#stx-pair? _%e135165135178%_)
                      (let ((_%e135168135186%_
                             (gx#syntax-e _%e135165135178%_)))
                        (let ((_%hd135169135189%_ (##car _%e135168135186%_))
                              (_%tl135170135191%_ (##cdr _%e135168135186%_)))
                          (if (gx#stx-pair? _%tl135170135191%_)
                              (let ((_%e135171135194%_
                                     (gx#syntax-e _%tl135170135191%_)))
                                (let ((_%hd135172135197%_
                                       (##car _%e135171135194%_))
                                      (_%tl135173135199%_
                                       (##cdr _%e135171135194%_)))
                                  (let ((_%id135202%_ _%hd135172135197%_))
                                    (if (gx#stx-pair? _%tl135173135199%_)
                                        (let ((_%e135174135204%_
                                               (gx#syntax-e
                                                _%tl135173135199%_)))
                                          (let ((_%hd135175135207%_
                                                 (##car _%e135174135204%_))
                                                (_%tl135176135209%_
                                                 (##cdr _%e135174135204%_)))
                                            (let ((_%expr135212%_
                                                   _%hd135175135207%_))
                                              (if (gx#stx-null?
                                                   _%tl135176135209%_)
                                                  (if (gx#identifier?
                                                       _%id135202%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id135202%_
                            _%stx135164%_)
                           (cons (gx#core-expand-expression _%expr135212%_)
                                 '())))
               (gx#stx-source _%stx135164%_))
              (_%E135167135182%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E135167135182%_)))))
                                        (_%E135167135182%_)))))
                              (_%E135167135182%_))))
                      (_%E135167135182%_)))))
          (_%E135166135214%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx135009%_)
        (letrec ((_%generate135011%_
                  (lambda (_%body135041%_)
                    (let _%lp135043%_ ((_%rest135045%_ _%body135041%_)
                                       (_%ns135046%_
                                        (gx#core-context-namespace__0))
                                       (_%r135047%_ '()))
                      (let* ((_%e135048135063%_ _%rest135045%_)
                             (_%E135061135067%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e135048135063%_)))
                             (_%E135057135071%_
                              (lambda ()
                                (if (gx#stx-null? _%e135048135063%_)
                                    (reverse _%r135047%_)
                                    (_%E135061135067%_))))
                             (_%E135050135128%_
                              (lambda ()
                                (if (gx#stx-pair? _%e135048135063%_)
                                    (let ((_%e135058135075%_
                                           (gx#syntax-e _%e135048135063%_)))
                                      (let ((_%hd135059135078%_
                                             (##car _%e135058135075%_))
                                            (_%tl135060135080%_
                                             (##cdr _%e135058135075%_)))
                                        (let* ((_%hd135083%_
                                                _%hd135059135078%_)
                                               (_%rest135085%_
                                                _%tl135060135080%_))
                                          (if (gx#identifier? _%hd135083%_)
                                              (_%lp135043%_
                                               _%rest135085%_
                                               _%ns135046%_
                                               (cons (cons _%hd135083%_
                                                           (cons (if _%ns135046%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd135083%_
                              _%ns135046%_
                              '"#"
                              _%hd135083%_)
                             _%hd135083%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r135047%_))
                                              (let* ((_%e135086135096%_
                                                      _%hd135083%_)
                                                     (_%E135088135100%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%e135086135096%_)))
                                                     (_%E135087135124%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e135086135096%_)
                                                            (let ((_%e135089135104%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e135086135096%_)))
                      (let ((_%hd135090135107%_ (##car _%e135089135104%_))
                            (_%tl135091135109%_ (##cdr _%e135089135104%_)))
                        (let ((_%id135112%_ _%hd135090135107%_))
                          (if (gx#stx-pair? _%tl135091135109%_)
                              (let ((_%e135092135114%_
                                     (gx#syntax-e _%tl135091135109%_)))
                                (let ((_%hd135093135117%_
                                       (##car _%e135092135114%_))
                                      (_%tl135094135119%_
                                       (##cdr _%e135092135114%_)))
                                  (let ((_%eid135122%_ _%hd135093135117%_))
                                    (if (gx#stx-null? _%tl135094135119%_)
                                        (if (and (gx#identifier? _%id135112%_)
                                                 (gx#identifier?
                                                  _%eid135122%_))
                                            (_%lp135043%_
                                             _%rest135085%_
                                             _%ns135046%_
                                             (cons (cons _%id135112%_
                                                         (cons _%eid135122%_
                                                               '()))
                                                   _%r135047%_))
                                            (_%E135088135100%_))
                                        (_%E135088135100%_)))))
                              (_%E135088135100%_)))))
                    (_%E135088135100%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E135087135124%_))))))
                                    (_%E135057135071%_))))
                             (_%E135049135160%_
                              (lambda ()
                                (if (gx#stx-pair? _%e135048135063%_)
                                    (let ((_%e135051135132%_
                                           (gx#syntax-e _%e135048135063%_)))
                                      (let ((_%hd135052135135%_
                                             (##car _%e135051135132%_))
                                            (_%tl135053135137%_
                                             (##cdr _%e135051135132%_)))
                                        (if (eq? (gx#stx-e _%hd135052135135%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl135053135137%_)
                                                (let ((_%e135054135140%_
                                                       (gx#syntax-e
                                                        _%tl135053135137%_)))
                                                  (let ((_%hd135055135143%_
                                                         (##car _%e135054135140%_))
                                                        (_%tl135056135145%_
                                                         (##cdr _%e135054135140%_)))
                                                    (let* ((_%ns135148%_
                                                            _%hd135055135143%_)
                                                           (_%rest135150%_
                                                            _%tl135056135145%_)
                                                           (_%ns135158%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns135148%_)
                        (symbol->string (gx#stx-e _%ns135148%_))
                        (if (or (gx#stx-string? _%ns135148%_)
                                (gx#stx-false? _%ns135148%_))
                            (gx#stx-e _%ns135148%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx135009%_
                             _%ns135148%_)))))
              (_%lp135043%_ _%rest135150%_ _%ns135158%_ _%r135047%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E135050135128%_))
                                            (_%E135050135128%_))))
                                    (_%E135050135128%_)))))
                        (_%E135049135160%_))))))
          (let* ((_%e135012135019%_ _%stx135009%_)
                 (_%E135014135023%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e135012135019%_)))
                 (_%E135013135037%_
                  (lambda ()
                    (if (gx#stx-pair? _%e135012135019%_)
                        (let ((_%e135015135027%_
                               (gx#syntax-e _%e135012135019%_)))
                          (let ((_%hd135016135030%_ (##car _%e135015135027%_))
                                (_%tl135017135032%_ (##cdr _%e135015135027%_)))
                            (let ((_%body135035%_ _%tl135017135032%_))
                              (if (gx#stx-list? _%body135035%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate135011%_ _%body135035%_))
                                  (_%E135014135023%_)))))
                        (_%E135014135023%_)))))
            (_%E135013135037%_)))))
    (define gx#macro-expand-define-values
      (lambda (_%stx134955%_)
        (let* ((_%e134956134969%_ _%stx134955%_)
               (_%E134958134973%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e134956134969%_)))
               (_%E134957135005%_
                (lambda ()
                  (if (gx#stx-pair? _%e134956134969%_)
                      (let ((_%e134959134977%_
                             (gx#syntax-e _%e134956134969%_)))
                        (let ((_%hd134960134980%_ (##car _%e134959134977%_))
                              (_%tl134961134982%_ (##cdr _%e134959134977%_)))
                          (if (gx#stx-pair? _%tl134961134982%_)
                              (let ((_%e134962134985%_
                                     (gx#syntax-e _%tl134961134982%_)))
                                (let ((_%hd134963134988%_
                                       (##car _%e134962134985%_))
                                      (_%tl134964134990%_
                                       (##cdr _%e134962134985%_)))
                                  (let ((_%hd134993%_ _%hd134963134988%_))
                                    (if (gx#stx-pair? _%tl134964134990%_)
                                        (let ((_%e134965134995%_
                                               (gx#syntax-e
                                                _%tl134964134990%_)))
                                          (let ((_%hd134966134998%_
                                                 (##car _%e134965134995%_))
                                                (_%tl134967135000%_
                                                 (##cdr _%e134965134995%_)))
                                            (let ((_%expr135003%_
                                                   _%hd134966134998%_))
                                              (if (gx#stx-null?
                                                   _%tl134967135000%_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _%hd134993%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           identity
                           _%hd134993%_)
                          (cons _%expr135003%_ '())))
              (_%E134958134973%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E134958134973%_)))))
                                        (_%E134958134973%_)))))
                              (_%E134958134973%_))))
                      (_%E134958134973%_)))))
          (_%E134957135005%_))))
    (define gx#macro-expand-define-syntax
      (lambda (_%stx134901%_)
        (let* ((_%e134902134915%_ _%stx134901%_)
               (_%E134904134919%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e134902134915%_)))
               (_%E134903134951%_
                (lambda ()
                  (if (gx#stx-pair? _%e134902134915%_)
                      (let ((_%e134905134923%_
                             (gx#syntax-e _%e134902134915%_)))
                        (let ((_%hd134906134926%_ (##car _%e134905134923%_))
                              (_%tl134907134928%_ (##cdr _%e134905134923%_)))
                          (if (gx#stx-pair? _%tl134907134928%_)
                              (let ((_%e134908134931%_
                                     (gx#syntax-e _%tl134907134928%_)))
                                (let ((_%hd134909134934%_
                                       (##car _%e134908134931%_))
                                      (_%tl134910134936%_
                                       (##cdr _%e134908134931%_)))
                                  (let ((_%hd134939%_ _%hd134909134934%_))
                                    (if (gx#stx-pair? _%tl134910134936%_)
                                        (let ((_%e134911134941%_
                                               (gx#syntax-e
                                                _%tl134910134936%_)))
                                          (let ((_%hd134912134944%_
                                                 (##car _%e134911134941%_))
                                                (_%tl134913134946%_
                                                 (##cdr _%e134911134941%_)))
                                            (let ((_%expr134949%_
                                                   _%hd134912134944%_))
                                              (if (gx#stx-null?
                                                   _%tl134913134946%_)
                                                  (if (gx#identifier?
                                                       _%hd134939%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _%hd134939%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr134949%_ '())))
              (_%E134904134919%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E134904134919%_)))))
                                        (_%E134904134919%_)))))
                              (_%E134904134919%_))))
                      (_%E134904134919%_)))))
          (_%E134903134951%_))))
    (define gx#macro-expand-define-alias
      (lambda (_%stx134847%_)
        (let* ((_%e134848134861%_ _%stx134847%_)
               (_%E134850134865%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e134848134861%_)))
               (_%E134849134897%_
                (lambda ()
                  (if (gx#stx-pair? _%e134848134861%_)
                      (let ((_%e134851134869%_
                             (gx#syntax-e _%e134848134861%_)))
                        (let ((_%hd134852134872%_ (##car _%e134851134869%_))
                              (_%tl134853134874%_ (##cdr _%e134851134869%_)))
                          (if (gx#stx-pair? _%tl134853134874%_)
                              (let ((_%e134854134877%_
                                     (gx#syntax-e _%tl134853134874%_)))
                                (let ((_%hd134855134880%_
                                       (##car _%e134854134877%_))
                                      (_%tl134856134882%_
                                       (##cdr _%e134854134877%_)))
                                  (let ((_%id134885%_ _%hd134855134880%_))
                                    (if (gx#stx-pair? _%tl134856134882%_)
                                        (let ((_%e134857134887%_
                                               (gx#syntax-e
                                                _%tl134856134882%_)))
                                          (let ((_%hd134858134890%_
                                                 (##car _%e134857134887%_))
                                                (_%tl134859134892%_
                                                 (##cdr _%e134857134887%_)))
                                            (let ((_%alias-id134895%_
                                                   _%hd134858134890%_))
                                              (if (gx#stx-null?
                                                   _%tl134859134892%_)
                                                  (if (and (gx#identifier?
                                                            _%id134885%_)
                                                           (gx#identifier?
                                                            _%alias-id134895%_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _%id134885%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%alias-id134895%_ '())))
              (_%E134850134865%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E134850134865%_)))))
                                        (_%E134850134865%_)))))
                              (_%E134850134865%_))))
                      (_%E134850134865%_)))))
          (_%E134849134897%_))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx134804%_)
        (let* ((_%e134805134815%_ _%stx134804%_)
               (_%E134807134819%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e134805134815%_)))
               (_%E134806134843%_
                (lambda ()
                  (if (gx#stx-pair? _%e134805134815%_)
                      (let ((_%e134808134823%_
                             (gx#syntax-e _%e134805134815%_)))
                        (let ((_%hd134809134826%_ (##car _%e134808134823%_))
                              (_%tl134810134828%_ (##cdr _%e134808134823%_)))
                          (if (gx#stx-pair? _%tl134810134828%_)
                              (let ((_%e134811134831%_
                                     (gx#syntax-e _%tl134810134828%_)))
                                (let ((_%hd134812134834%_
                                       (##car _%e134811134831%_))
                                      (_%tl134813134836%_
                                       (##cdr _%e134811134831%_)))
                                  (let* ((_%hd134839%_ _%hd134812134834%_)
                                         (_%body134841%_ _%tl134813134836%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd134839%_)
                                             (gx#stx-list? _%body134841%_)
                                             (not (gx#stx-null?
                                                   _%body134841%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd134839%_)
                                         _%body134841%_)
                                        (_%E134807134819%_)))))
                              (_%E134807134819%_))))
                      (_%E134807134819%_)))))
          (_%E134806134843%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx134740%_)
        (letrec ((_%generate134742%_
                  (lambda (_%clause134772%_)
                    (let* ((_%e134773134780%_ _%clause134772%_)
                           (_%E134775134784%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx134740%_
                               _%clause134772%_)))
                           (_%E134774134800%_
                            (lambda ()
                              (if (gx#stx-pair? _%e134773134780%_)
                                  (let ((_%e134776134788%_
                                         (gx#syntax-e _%e134773134780%_)))
                                    (let ((_%hd134777134791%_
                                           (##car _%e134776134788%_))
                                          (_%tl134778134793%_
                                           (##cdr _%e134776134788%_)))
                                      (let* ((_%hd134796%_ _%hd134777134791%_)
                                             (_%body134798%_
                                              _%tl134778134793%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd134796%_)
                                                 (gx#stx-list? _%body134798%_)
                                                 (not (gx#stx-null?
                                                       _%body134798%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd134796%_)
                                                   _%body134798%_)
                                             (gx#stx-source _%clause134772%_))
                                            (_%E134775134784%_)))))
                                  (_%E134775134784%_)))))
                      (_%E134774134800%_)))))
          (let* ((_%e134743134750%_ _%stx134740%_)
                 (_%E134745134754%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e134743134750%_)))
                 (_%E134744134768%_
                  (lambda ()
                    (if (gx#stx-pair? _%e134743134750%_)
                        (let ((_%e134746134758%_
                               (gx#syntax-e _%e134743134750%_)))
                          (let ((_%hd134747134761%_ (##car _%e134746134758%_))
                                (_%tl134748134763%_ (##cdr _%e134746134758%_)))
                            (let ((_%clauses134766%_ _%tl134748134763%_))
                              (if (gx#stx-list? _%clauses134766%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate134742%_
                                    _%clauses134766%_))
                                  (_%E134745134754%_)))))
                        (_%E134745134754%_)))))
            (_%E134744134768%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx134641%_ _%form134642%_)
        (letrec ((_%generate134644%_
                  (lambda (_%bind134687%_)
                    (let* ((_%e134688134698%_ _%bind134687%_)
                           (_%E134690134702%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx134641%_
                               _%bind134687%_)))
                           (_%E134689134726%_
                            (lambda ()
                              (if (gx#stx-pair? _%e134688134698%_)
                                  (let ((_%e134691134706%_
                                         (gx#syntax-e _%e134688134698%_)))
                                    (let ((_%hd134692134709%_
                                           (##car _%e134691134706%_))
                                          (_%tl134693134711%_
                                           (##cdr _%e134691134706%_)))
                                      (let ((_%ids134714%_ _%hd134692134709%_))
                                        (if (gx#stx-pair? _%tl134693134711%_)
                                            (let ((_%e134694134716%_
                                                   (gx#syntax-e
                                                    _%tl134693134711%_)))
                                              (let ((_%hd134695134719%_
                                                     (##car _%e134694134716%_))
                                                    (_%tl134696134721%_
                                                     (##cdr _%e134694134716%_)))
                                                (let ((_%expr134724%_
                                                       _%hd134695134719%_))
                                                  (if (gx#stx-null?
                                                       _%tl134696134721%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids134714%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids134714%_)
                        (cons _%expr134724%_ '()))
                  (_%E134690134702%_))
              (_%E134690134702%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E134690134702%_)))))
                                  (_%E134690134702%_)))))
                      (_%E134689134726%_)))))
          (let* ((_%e134645134655%_ _%stx134641%_)
                 (_%E134647134659%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e134645134655%_)))
                 (_%E134646134683%_
                  (lambda ()
                    (if (gx#stx-pair? _%e134645134655%_)
                        (let ((_%e134648134663%_
                               (gx#syntax-e _%e134645134655%_)))
                          (let ((_%hd134649134666%_ (##car _%e134648134663%_))
                                (_%tl134650134668%_ (##cdr _%e134648134663%_)))
                            (if (gx#stx-pair? _%tl134650134668%_)
                                (let ((_%e134651134671%_
                                       (gx#syntax-e _%tl134650134668%_)))
                                  (let ((_%hd134652134674%_
                                         (##car _%e134651134671%_))
                                        (_%tl134653134676%_
                                         (##cdr _%e134651134671%_)))
                                    (let* ((_%hd134679%_ _%hd134652134674%_)
                                           (_%body134681%_ _%tl134653134676%_))
                                      (if (and (gx#stx-list? _%hd134679%_)
                                               (gx#stx-list? _%body134681%_)
                                               (not (gx#stx-null?
                                                     _%body134681%_)))
                                          (gx#core-cons*
                                           _%form134642%_
                                           (gx#stx-map1
                                            _%generate134644%_
                                            _%hd134679%_)
                                           _%body134681%_)
                                          (_%E134647134659%_)))))
                                (_%E134647134659%_))))
                        (_%E134647134659%_)))))
            (_%E134646134683%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx134733%_)
        (let ((_%form134735%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx134733%_ _%form134735%_))))
    (define gx#macro-expand-let-values
      (lambda _g137121_
        (let ((_g137122_ (##length _g137121_)))
          (cond ((##fx= _g137122_ 1)
                 (apply gx#macro-expand-let-values__0 _g137121_))
                ((##fx= _g137122_ 2)
                 (apply gx#macro-expand-let-values__% _g137121_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g137121_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx134638%_)
        (gx#macro-expand-let-values__% _%stx134638%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx134636%_)
        (gx#macro-expand-let-values__% _%stx134636%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx134527%_)
        (let* ((_%e134528134554%_ _%stx134527%_)
               (_%E134540134558%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e134528134554%_)))
               (_%E134530134600%_
                (lambda ()
                  (if (gx#stx-pair? _%e134528134554%_)
                      (let ((_%e134541134562%_
                             (gx#syntax-e _%e134528134554%_)))
                        (let ((_%hd134542134565%_ (##car _%e134541134562%_))
                              (_%tl134543134567%_ (##cdr _%e134541134562%_)))
                          (if (gx#stx-pair? _%tl134543134567%_)
                              (let ((_%e134544134570%_
                                     (gx#syntax-e _%tl134543134567%_)))
                                (let ((_%hd134545134573%_
                                       (##car _%e134544134570%_))
                                      (_%tl134546134575%_
                                       (##cdr _%e134544134570%_)))
                                  (let ((_%test134578%_ _%hd134545134573%_))
                                    (if (gx#stx-pair? _%tl134546134575%_)
                                        (let ((_%e134547134580%_
                                               (gx#syntax-e
                                                _%tl134546134575%_)))
                                          (let ((_%hd134548134583%_
                                                 (##car _%e134547134580%_))
                                                (_%tl134549134585%_
                                                 (##cdr _%e134547134580%_)))
                                            (let ((_%K134588%_
                                                   _%hd134548134583%_))
                                              (if (gx#stx-pair?
                                                   _%tl134549134585%_)
                                                  (let ((_%e134550134590%_
                                                         (gx#syntax-e
                                                          _%tl134549134585%_)))
                                                    (let ((_%hd134551134593%_
                                                           (##car _%e134550134590%_))
                                                          (_%tl134552134595%_
                                                           (##cdr _%e134550134590%_)))
                                                      (let ((_%E134598%_
                                                             _%hd134551134593%_))
                                                        (if (gx#stx-null?
                                                             _%tl134552134595%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test134578%_
                                                             _%K134588%_
                                                             _%E134598%_)
                                                            (_%E134540134558%_)))))
                                                  (_%E134540134558%_)))))
                                        (_%E134540134558%_)))))
                              (_%E134540134558%_))))
                      (_%E134540134558%_))))
               (_%E134529134632%_
                (lambda ()
                  (if (gx#stx-pair? _%e134528134554%_)
                      (let ((_%e134531134604%_
                             (gx#syntax-e _%e134528134554%_)))
                        (let ((_%hd134532134607%_ (##car _%e134531134604%_))
                              (_%tl134533134609%_ (##cdr _%e134531134604%_)))
                          (if (gx#stx-pair? _%tl134533134609%_)
                              (let ((_%e134534134612%_
                                     (gx#syntax-e _%tl134533134609%_)))
                                (let ((_%hd134535134615%_
                                       (##car _%e134534134612%_))
                                      (_%tl134536134617%_
                                       (##cdr _%e134534134612%_)))
                                  (let ((_%test134620%_ _%hd134535134615%_))
                                    (if (gx#stx-pair? _%tl134536134617%_)
                                        (let ((_%e134537134622%_
                                               (gx#syntax-e
                                                _%tl134536134617%_)))
                                          (let ((_%hd134538134625%_
                                                 (##car _%e134537134622%_))
                                                (_%tl134539134627%_
                                                 (##cdr _%e134537134622%_)))
                                            (let ((_%K134630%_
                                                   _%hd134538134625%_))
                                              (if (gx#stx-null?
                                                   _%tl134539134627%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test134620%_
                                                   _%K134630%_
                                                   '#!void)
                                                  (_%E134530134600%_)))))
                                        (_%E134530134600%_)))))
                              (_%E134530134600%_))))
                      (_%E134530134600%_)))))
          (_%E134529134632%_))))
    (define gx#free-identifier=?
      (lambda (_%xid134512%_ _%yid134513%_)
        (let ((_%xe134515%_ (gx#resolve-identifier__0 _%xid134512%_))
              (_%ye134516%_ (gx#resolve-identifier__0 _%yid134513%_)))
          (if (and _%xe134515%_ _%ye134516%_)
              (let ((_%$e134519%_ (eq? _%xe134515%_ _%ye134516%_)))
                (if _%$e134519%_
                    _%$e134519%_
                    (if (##structure-instance-of? _%xe134515%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye134516%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe134515%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye134516%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe134515%_ _%ye134516%_)
                  '#f
                  (gx#stx-eq? _%xid134512%_ _%yid134513%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid134493%_ _%yid134494%_)
        (letrec ((_%context134496%_
                  (lambda (_%e134510%_)
                    (if (##structure-direct-instance-of?
                         _%e134510%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e134510%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks134497%_
                  (lambda (_%e134505%_)
                    (if (symbol? _%e134505%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e134505%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e134505%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e134505%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap134498%_
                  (lambda (_%e134503%_)
                    (if (symbol? _%e134503%_)
                        _%e134503%_
                        (gx#syntax-local-unwrap _%e134503%_)))))
          (let ((_%x134500%_ (_%unwrap134498%_ _%xid134493%_))
                (_%y134501%_ (_%unwrap134498%_ _%yid134494%_)))
            (if (gx#stx-eq? _%x134500%_ _%y134501%_)
                (if (eq? (_%context134496%_ _%x134500%_)
                         (_%context134496%_ _%y134501%_))
                    (equal? (_%marks134497%_ _%x134500%_)
                            (_%marks134497%_ _%y134501%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx134491%_)
        (if (gx#identifier? _%stx134491%_)
            (gx#core-identifier=? _%stx134491%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx134489%_)
        (if (gx#identifier? _%stx134489%_)
            (gx#core-identifier=? _%stx134489%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx134432%_ _%where134433%_)
        (let _%lp134435%_ ((_%rest134437%_ (gx#syntax->list _%stx134432%_)))
          (let* ((_%rest134438134446%_ _%rest134437%_)
                 (_%else134440134454%_ (lambda () '#t))
                 (_%K134442134467%_
                  (lambda (_%rest134457%_ _%hd134458%_)
                    (if (gx#identifier? _%hd134458%_)
                        (if (__find (lambda (_%g134460134462%_)
                                      (gx#bound-identifier=?
                                       _%g134460134462%_
                                       _%hd134458%_))
                                    _%rest134457%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where134433%_
                             _%hd134458%_)
                            (_%lp134435%_ _%rest134457%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where134433%_
                         _%hd134458%_)))))
            (if (pair? _%rest134438134446%_)
                (let ((_%hd134443134470%_ (##car _%rest134438134446%_))
                      (_%tl134444134472%_ (##cdr _%rest134438134446%_)))
                  (let* ((_%hd134475%_ _%hd134443134470%_)
                         (_%rest134477%_ _%tl134444134472%_))
                    (_%K134442134467%_ _%rest134477%_ _%hd134475%_)))
                (_%else134440134454%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx134482%_)
        (let ((_%where134484%_ _%stx134482%_))
          (gx#check-duplicate-identifiers__% _%stx134482%_ _%where134484%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g137123_
        (let ((_g137124_ (##length _g137123_)))
          (cond ((##fx= _g137124_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g137123_))
                ((##fx= _g137124_ 2)
                 (apply gx#check-duplicate-identifiers__% _g137123_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g137123_))))))
    (define gx#core-bind-values?
      (lambda (_%stx134424%_)
        (gx#stx-andmap
         (lambda (_%x134426%_)
           (let ((_%$e134428%_ (gx#identifier? _%x134426%_)))
             (if _%$e134428%_ _%$e134428%_ (gx#stx-false? _%x134426%_))))
         _%stx134424%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx134388%_ _%rebind?134389%_ _%phi134390%_ _%ctx134391%_)
        (gx#stx-for-each1
         (lambda (_%id134393%_)
           (if (gx#identifier? _%id134393%_)
               (gx#core-bind-runtime!__%
                _%id134393%_
                _%rebind?134389%_
                _%phi134390%_
                _%ctx134391%_)
               '#!void))
         _%stx134388%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx134398%_)
        (let* ((_%rebind?134400%_ '#f)
               (_%phi134402%_ (gx#current-expander-phi))
               (_%ctx134404%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx134398%_
           _%rebind?134400%_
           _%phi134402%_
           _%ctx134404%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx134406%_ _%rebind?134407%_)
        (let* ((_%phi134409%_ (gx#current-expander-phi))
               (_%ctx134411%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx134406%_
           _%rebind?134407%_
           _%phi134409%_
           _%ctx134411%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx134413%_ _%rebind?134414%_ _%phi134415%_)
        (let ((_%ctx134417%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx134413%_
           _%rebind?134414%_
           _%phi134415%_
           _%ctx134417%_))))
    (define gx#core-bind-values!
      (lambda _g137125_
        (let ((_g137126_ (##length _g137125_)))
          (cond ((##fx= _g137126_ 1) (apply gx#core-bind-values!__0 _g137125_))
                ((##fx= _g137126_ 2) (apply gx#core-bind-values!__1 _g137125_))
                ((##fx= _g137126_ 3) (apply gx#core-bind-values!__2 _g137125_))
                ((##fx= _g137126_ 4) (apply gx#core-bind-values!__% _g137125_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g137125_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx134383%_)
        (gx#stx-map1
         (lambda (_%x134385%_)
           (if (gx#identifier? _%x134385%_)
               (gx#core-quote-syntax__0 _%x134385%_)
               '#f))
         _%stx134383%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx134376%_)
        (if (gx#identifier? _%stx134376%_)
            (let* ((_%bind134378%_ (gx#resolve-identifier__0 _%stx134376%_))
                   (_%$e134380%_ (not _%bind134378%_)))
              (if _%$e134380%_
                  _%$e134380%_
                  (##structure-instance-of?
                   _%bind134378%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id134365%_ _%form134366%_)
        (let ((_%bind134368%_ (gx#resolve-identifier__0 _%id134365%_)))
          (if (##structure-instance-of? _%bind134368%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id134365%_)
              (if (not _%bind134368%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id134365%_)))
                      (gx#core-quote-syntax__0 _%id134365%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form134366%_
                       _%id134365%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form134366%_
                   _%id134365%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id134320%_ _%rebind?134321%_ _%phi134322%_ _%ctx134323%_)
        (let* ((_%key134325%_ (gx#core-identifier-key _%id134320%_))
               (_%eid134327%_
                (gx#make-binding-id__%
                 _%key134325%_
                 '#f
                 _%phi134322%_
                 _%ctx134323%_))
               (_%bind134333%_
                (if (##structure-instance-of?
                     _%ctx134323%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid134327%_
                     _%key134325%_
                     _%phi134322%_
                     _%ctx134323%_)
                    (if (##structure-instance-of?
                         _%ctx134323%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid134327%_
                         _%key134325%_
                         _%phi134322%_)
                        (if (##structure-instance-of?
                             _%ctx134323%_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _%eid134327%_
                             _%key134325%_
                             _%phi134322%_)
                            (##structure
                             gx#runtime-binding::t
                             _%eid134327%_
                             _%key134325%_
                             _%phi134322%_))))))
          (gx#bind-identifier!__%
           _%id134320%_
           _%bind134333%_
           _%rebind?134321%_
           _%phi134322%_
           _%ctx134323%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id134339%_)
        (let* ((_%rebind?134341%_ '#f)
               (_%phi134343%_ (gx#current-expander-phi))
               (_%ctx134345%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id134339%_
           _%rebind?134341%_
           _%phi134343%_
           _%ctx134345%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id134347%_ _%rebind?134348%_)
        (let* ((_%phi134350%_ (gx#current-expander-phi))
               (_%ctx134352%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id134347%_
           _%rebind?134348%_
           _%phi134350%_
           _%ctx134352%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id134354%_ _%rebind?134355%_ _%phi134356%_)
        (let ((_%ctx134358%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id134354%_
           _%rebind?134355%_
           _%phi134356%_
           _%ctx134358%_))))
    (define gx#core-bind-runtime!
      (lambda _g137127_
        (let ((_g137128_ (##length _g137127_)))
          (cond ((##fx= _g137128_ 1)
                 (apply gx#core-bind-runtime!__0 _g137127_))
                ((##fx= _g137128_ 2)
                 (apply gx#core-bind-runtime!__1 _g137127_))
                ((##fx= _g137128_ 3)
                 (apply gx#core-bind-runtime!__2 _g137127_))
                ((##fx= _g137128_ 4)
                 (apply gx#core-bind-runtime!__% _g137127_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g137127_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id134272%_
               _%eid134273%_
               _%rebind?134274%_
               _%phi134275%_
               _%ctx134276%_)
        (let* ((_%key134278%_ (gx#core-identifier-key _%id134272%_))
               (_%bind134283%_
                (if (##structure-instance-of?
                     _%ctx134276%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid134273%_
                     _%key134278%_
                     _%phi134275%_
                     _%ctx134276%_)
                    (if (##structure-instance-of?
                         _%ctx134276%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid134273%_
                         _%key134278%_
                         _%phi134275%_)
                        (##structure
                         gx#runtime-binding::t
                         _%eid134273%_
                         _%key134278%_
                         _%phi134275%_)))))
          (gx#bind-identifier!__%
           _%id134272%_
           _%bind134283%_
           _%rebind?134274%_
           _%phi134275%_
           _%ctx134276%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id134289%_ _%eid134290%_)
        (let* ((_%rebind?134292%_ '#f)
               (_%phi134294%_ (gx#current-expander-phi))
               (_%ctx134296%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id134289%_
           _%eid134290%_
           _%rebind?134292%_
           _%phi134294%_
           _%ctx134296%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id134298%_ _%eid134299%_ _%rebind?134300%_)
        (let* ((_%phi134302%_ (gx#current-expander-phi))
               (_%ctx134304%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id134298%_
           _%eid134299%_
           _%rebind?134300%_
           _%phi134302%_
           _%ctx134304%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id134306%_ _%eid134307%_ _%rebind?134308%_ _%phi134309%_)
        (let ((_%ctx134311%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id134306%_
           _%eid134307%_
           _%rebind?134308%_
           _%phi134309%_
           _%ctx134311%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g137129_
        (let ((_g137130_ (##length _g137129_)))
          (cond ((##fx= _g137130_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g137129_))
                ((##fx= _g137130_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g137129_))
                ((##fx= _g137130_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g137129_))
                ((##fx= _g137130_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g137129_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g137129_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id134232%_
               _%eid134233%_
               _%rebind?134234%_
               _%phi134235%_
               _%ctx134236%_)
        (gx#bind-identifier!__%
         _%id134232%_
         (##structure
          gx#extern-binding::t
          _%eid134233%_
          (gx#core-identifier-key _%id134232%_)
          _%phi134235%_)
         _%rebind?134234%_
         _%phi134235%_
         _%ctx134236%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id134241%_ _%eid134242%_)
        (let* ((_%rebind?134244%_ '#f)
               (_%phi134246%_ (gx#current-expander-phi))
               (_%ctx134248%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id134241%_
           _%eid134242%_
           _%rebind?134244%_
           _%phi134246%_
           _%ctx134248%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id134250%_ _%eid134251%_ _%rebind?134252%_)
        (let* ((_%phi134254%_ (gx#current-expander-phi))
               (_%ctx134256%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id134250%_
           _%eid134251%_
           _%rebind?134252%_
           _%phi134254%_
           _%ctx134256%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id134258%_ _%eid134259%_ _%rebind?134260%_ _%phi134261%_)
        (let ((_%ctx134263%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id134258%_
           _%eid134259%_
           _%rebind?134260%_
           _%phi134261%_
           _%ctx134263%_))))
    (define gx#core-bind-extern!
      (lambda _g137131_
        (let ((_g137132_ (##length _g137131_)))
          (cond ((##fx= _g137132_ 2) (apply gx#core-bind-extern!__0 _g137131_))
                ((##fx= _g137132_ 3) (apply gx#core-bind-extern!__1 _g137131_))
                ((##fx= _g137132_ 4) (apply gx#core-bind-extern!__2 _g137131_))
                ((##fx= _g137132_ 5) (apply gx#core-bind-extern!__% _g137131_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g137131_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id134186%_
               _%e134187%_
               _%rebind?134188%_
               _%phi134189%_
               _%ctx134190%_)
        (gx#bind-identifier!__%
         _%id134186%_
         (let ((_%key134195%_ (gx#core-identifier-key _%id134186%_))
               (_%e134196%_
                (if (or (##structure-instance-of? _%e134187%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e134187%_
                         'gx#expander-context::t))
                    _%e134187%_
                    (##structure
                     gx#user-expander::t
                     _%e134187%_
                     _%ctx134190%_
                     _%phi134189%_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__%
             _%key134195%_
             '#t
             _%phi134189%_
             _%ctx134190%_)
            _%key134195%_
            _%phi134189%_
            _%e134196%_))
         _%rebind?134188%_
         _%phi134189%_
         _%ctx134190%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id134201%_ _%e134202%_)
        (let* ((_%rebind?134204%_ '#f)
               (_%phi134206%_ (gx#current-expander-phi))
               (_%ctx134208%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id134201%_
           _%e134202%_
           _%rebind?134204%_
           _%phi134206%_
           _%ctx134208%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id134210%_ _%e134211%_ _%rebind?134212%_)
        (let* ((_%phi134214%_ (gx#current-expander-phi))
               (_%ctx134216%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id134210%_
           _%e134211%_
           _%rebind?134212%_
           _%phi134214%_
           _%ctx134216%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id134218%_ _%e134219%_ _%rebind?134220%_ _%phi134221%_)
        (let ((_%ctx134223%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id134218%_
           _%e134219%_
           _%rebind?134220%_
           _%phi134221%_
           _%ctx134223%_))))
    (define gx#core-bind-syntax!
      (lambda _g137133_
        (let ((_g137134_ (##length _g137133_)))
          (cond ((##fx= _g137134_ 2) (apply gx#core-bind-syntax!__0 _g137133_))
                ((##fx= _g137134_ 3) (apply gx#core-bind-syntax!__1 _g137133_))
                ((##fx= _g137134_ 4) (apply gx#core-bind-syntax!__2 _g137133_))
                ((##fx= _g137134_ 5) (apply gx#core-bind-syntax!__% _g137133_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g137133_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id134169%_ _%e134170%_ _%rebind?134171%_)
        (gx#core-bind-syntax!__%
         _%id134169%_
         _%e134170%_
         _%rebind?134171%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id134176%_ _%e134177%_)
        (let ((_%rebind?134179%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id134176%_
           _%e134177%_
           _%rebind?134179%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g137135_
        (let ((_g137136_ (##length _g137135_)))
          (cond ((##fx= _g137136_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g137135_))
                ((##fx= _g137136_ 3)
                 (apply gx#core-bind-root-syntax!__% _g137135_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g137135_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id134127%_
               _%alias-id134128%_
               _%rebind?134129%_
               _%phi134130%_
               _%ctx134131%_)
        (gx#bind-identifier!__%
         _%id134127%_
         (let ((_%key134133%_ (gx#core-identifier-key _%id134127%_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__%
             _%key134133%_
             '#t
             _%phi134130%_
             _%ctx134131%_)
            _%key134133%_
            _%phi134130%_
            _%alias-id134128%_))
         _%rebind?134129%_
         _%phi134130%_
         _%ctx134131%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id134138%_ _%alias-id134139%_)
        (let* ((_%rebind?134141%_ '#f)
               (_%phi134143%_ (gx#current-expander-phi))
               (_%ctx134145%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id134138%_
           _%alias-id134139%_
           _%rebind?134141%_
           _%phi134143%_
           _%ctx134145%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id134147%_ _%alias-id134148%_ _%rebind?134149%_)
        (let* ((_%phi134151%_ (gx#current-expander-phi))
               (_%ctx134153%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id134147%_
           _%alias-id134148%_
           _%rebind?134149%_
           _%phi134151%_
           _%ctx134153%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id134155%_ _%alias-id134156%_ _%rebind?134157%_ _%phi134158%_)
        (let ((_%ctx134160%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id134155%_
           _%alias-id134156%_
           _%rebind?134157%_
           _%phi134158%_
           _%ctx134160%_))))
    (define gx#core-bind-alias!
      (lambda _g137137_
        (let ((_g137138_ (##length _g137137_)))
          (cond ((##fx= _g137138_ 2) (apply gx#core-bind-alias!__0 _g137137_))
                ((##fx= _g137138_ 3) (apply gx#core-bind-alias!__1 _g137137_))
                ((##fx= _g137138_ 4) (apply gx#core-bind-alias!__2 _g137137_))
                ((##fx= _g137138_ 5) (apply gx#core-bind-alias!__% _g137137_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g137137_))))))
    (define gx#make-binding-id__%
      (lambda (_%key134077%_ _%syntax?134078%_ _%phi134079%_ _%ctx134080%_)
        (if (uninterned-symbol? _%key134077%_)
            (##gensym 'L)
            (if (pair? _%key134077%_)
                (gensym (##car _%key134077%_))
                (if (##structure-instance-of? _%ctx134080%_ 'gx#top-context::t)
                    (let ((_%ns134085%_
                           (gx#core-context-namespace__% _%ctx134080%_)))
                      (if (and (fxzero? _%phi134079%_) (not _%syntax?134078%_))
                          (if _%ns134085%_
                              (make-symbol__1 _%ns134085%_ '"#" _%key134077%_)
                              _%key134077%_)
                          (if _%syntax?134078%_
                              (make-symbol__1
                               (let ((_%$e134089%_ _%ns134085%_))
                                 (if _%$e134089%_ _%$e134089%_ '""))
                               '"[:"
                               (number->string _%phi134079%_)
                               '":]#"
                               _%key134077%_)
                              (make-symbol__1
                               (let ((_%$e134093%_ _%ns134085%_))
                                 (if _%$e134093%_ _%$e134093%_ '""))
                               '"["
                               (number->string _%phi134079%_)
                               '"]#"
                               _%key134077%_))))
                    (gensym _%key134077%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key134100%_)
        (let* ((_%syntax?134102%_ '#f)
               (_%phi134104%_ (gx#current-expander-phi))
               (_%ctx134106%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key134100%_
           _%syntax?134102%_
           _%phi134104%_
           _%ctx134106%_))))
    (define gx#make-binding-id__1
      (lambda (_%key134108%_ _%syntax?134109%_)
        (let* ((_%phi134111%_ (gx#current-expander-phi))
               (_%ctx134113%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key134108%_
           _%syntax?134109%_
           _%phi134111%_
           _%ctx134113%_))))
    (define gx#make-binding-id__2
      (lambda (_%key134115%_ _%syntax?134116%_ _%phi134117%_)
        (let ((_%ctx134119%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key134115%_
           _%syntax?134116%_
           _%phi134117%_
           _%ctx134119%_))))
    (define gx#make-binding-id
      (lambda _g137139_
        (let ((_g137140_ (##length _g137139_)))
          (cond ((##fx= _g137140_ 1) (apply gx#make-binding-id__0 _g137139_))
                ((##fx= _g137140_ 2) (apply gx#make-binding-id__1 _g137139_))
                ((##fx= _g137140_ 3) (apply gx#make-binding-id__2 _g137139_))
                ((##fx= _g137140_ 4) (apply gx#make-binding-id__% _g137139_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g137139_))))))))
