(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1768864948)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx137113%_)
        (letrec ((_%expand-special137115%_
                  (lambda (_%hd137117%_ _%K137118%_ _%rest137119%_ _%r137120%_)
                    (_%K137118%_
                     _%rest137119%_
                     (cons (gx#core-expand-top _%hd137117%_) _%r137120%_)))))
          (gx#core-expand-block__0 _%stx137113%_ _%expand-special137115%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx136866%_)
        (letrec ((_%expand-special136868%_
                  (lambda (_%hd136988%_ _%K136989%_ _%rest136990%_ _%r136991%_)
                    (let* ((_%K136995%_
                            (lambda (_%e136993%_)
                              (_%K136989%_
                               _%rest136990%_
                               (cons _%e136993%_ _%r136991%_))))
                           (_%e136996137025%_ _%hd136988%_)
                           (_%E137020137029%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e136996137025%_)))
                           (_%E137016137041%_
                            (lambda ()
                              (if (gx#stx-pair? _%e136996137025%_)
                                  (let ((_%e137021137033%_
                                         (gx#syntax-e _%e136996137025%_)))
                                    (let ((_%hd137022137036%_
                                           (##car _%e137021137033%_))
                                          (_%tl137023137038%_
                                           (##cdr _%e137021137033%_)))
                                      (if (and (gx#identifier?
                                                _%hd137022137036%_)
                                               (gx#core-identifier=?
                                                _%hd137022137036%_
                                                '%#define-runtime))
                                          (_%K136995%_
                                           (gx#core-expand-define-runtime%
                                            _%hd136988%_))
                                          (_%E137020137029%_))))
                                  (_%E137020137029%_))))
                           (_%E137012137053%_
                            (lambda ()
                              (if (gx#stx-pair? _%e136996137025%_)
                                  (let ((_%e137017137045%_
                                         (gx#syntax-e _%e136996137025%_)))
                                    (let ((_%hd137018137048%_
                                           (##car _%e137017137045%_))
                                          (_%tl137019137050%_
                                           (##cdr _%e137017137045%_)))
                                      (if (and (gx#identifier?
                                                _%hd137018137048%_)
                                               (gx#core-identifier=?
                                                _%hd137018137048%_
                                                '%#define-alias))
                                          (_%K136995%_
                                           (gx#core-expand-define-alias%
                                            _%hd136988%_))
                                          (_%E137016137041%_))))
                                  (_%E137016137041%_))))
                           (_%E137002137065%_
                            (lambda ()
                              (if (gx#stx-pair? _%e136996137025%_)
                                  (let ((_%e137013137057%_
                                         (gx#syntax-e _%e136996137025%_)))
                                    (let ((_%hd137014137060%_
                                           (##car _%e137013137057%_))
                                          (_%tl137015137062%_
                                           (##cdr _%e137013137057%_)))
                                      (if (and (gx#identifier?
                                                _%hd137014137060%_)
                                               (gx#core-identifier=?
                                                _%hd137014137060%_
                                                '%#define-syntax))
                                          (_%K136995%_
                                           (gx#core-expand-define-syntax%
                                            _%hd136988%_))
                                          (_%E137012137053%_))))
                                  (_%E137012137053%_))))
                           (_%E136998137097%_
                            (lambda ()
                              (if (gx#stx-pair? _%e136996137025%_)
                                  (let ((_%e137003137069%_
                                         (gx#syntax-e _%e136996137025%_)))
                                    (let ((_%hd137004137072%_
                                           (##car _%e137003137069%_))
                                          (_%tl137005137074%_
                                           (##cdr _%e137003137069%_)))
                                      (if (and (gx#identifier?
                                                _%hd137004137072%_)
                                               (gx#core-identifier=?
                                                _%hd137004137072%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl137005137074%_)
                                              (let ((_%e137006137077%_
                                                     (gx#syntax-e
                                                      _%tl137005137074%_)))
                                                (let ((_%hd137007137080%_
                                                       (##car _%e137006137077%_))
                                                      (_%tl137008137082%_
                                                       (##cdr _%e137006137077%_)))
                                                  (let ((_%hd-bind137085%_
                                                         _%hd137007137080%_))
                                                    (if (gx#stx-pair?
                                                         _%tl137008137082%_)
                                                        (let ((_%e137009137087%_
                                                               (gx#syntax-e
                                                                _%tl137008137082%_)))
                                                          (let ((_%hd137010137090%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e137009137087%_))
                        (_%tl137011137092%_ (##cdr _%e137009137087%_)))
                    (let ((_%expr137095%_ _%hd137010137090%_))
                      (if (gx#stx-null? _%tl137011137092%_)
                          (if (gx#core-bind-values? _%hd-bind137085%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind137085%_)
                                (_%K136995%_ _%hd136988%_))
                              (_%E137002137065%_))
                          (_%E137002137065%_)))))
                (_%E137002137065%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E137002137065%_))
                                          (_%E137002137065%_))))
                                  (_%E137002137065%_))))
                           (_%E136997137109%_
                            (lambda ()
                              (if (gx#stx-pair? _%e136996137025%_)
                                  (let ((_%e136999137101%_
                                         (gx#syntax-e _%e136996137025%_)))
                                    (let ((_%hd137000137104%_
                                           (##car _%e136999137101%_))
                                          (_%tl137001137106%_
                                           (##cdr _%e136999137101%_)))
                                      (if (and (gx#identifier?
                                                _%hd137000137104%_)
                                               (gx#core-identifier=?
                                                _%hd137000137104%_
                                                '%#begin-syntax))
                                          (_%K136995%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd136988%_))
                                          (_%E136998137097%_))))
                                  (_%E136998137097%_)))))
                      (_%E136997137109%_))))
                 (_%eval-body136869%_
                  (lambda (_%rbody136877%_)
                    (let _%lp136879%_ ((_%rest136881%_ _%rbody136877%_)
                                       (_%body136882%_ '())
                                       (_%ebody136883%_ '()))
                      (let* ((_%rest136884136892%_ _%rest136881%_)
                             (_%else136886136900%_
                              (lambda ()
                                (values _%body136882%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody136883%_)
                                          (gx#stx-source _%stx136866%_))))))
                             (_%K136888136976%_
                              (lambda (_%rest136903%_ _%hd136904%_)
                                (let* ((_%e136905136922%_ _%hd136904%_)
                                       (_%E136917136926%_
                                        (lambda ()
                                          (_%lp136879%_
                                           _%rest136903%_
                                           (cons _%hd136904%_ _%body136882%_)
                                           (cons _%hd136904%_
                                                 _%ebody136883%_))))
                                       (_%E136907136938%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e136905136922%_)
                                              (let ((_%e136918136930%_
                                                     (gx#syntax-e
                                                      _%e136905136922%_)))
                                                (let ((_%hd136919136933%_
                                                       (##car _%e136918136930%_))
                                                      (_%tl136920136935%_
                                                       (##cdr _%e136918136930%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd136919136933%_)
                                                           (gx#core-identifier=?
                                                            _%hd136919136933%_
                                                            '%#begin-syntax))
                                                      (_%lp136879%_
                                                       _%rest136903%_
                                                       (cons _%hd136904%_
                                                             _%body136882%_)
                                                       _%ebody136883%_)
                                                      (_%E136917136926%_))))
                                              (_%E136917136926%_))))
                                       (_%E136906136972%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e136905136922%_)
                                              (let ((_%e136908136942%_
                                                     (gx#syntax-e
                                                      _%e136905136922%_)))
                                                (let ((_%hd136909136945%_
                                                       (##car _%e136908136942%_))
                                                      (_%tl136910136947%_
                                                       (##cdr _%e136908136942%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd136909136945%_)
                                                           (gx#core-identifier=?
                                                            _%hd136909136945%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl136910136947%_)
                                                          (let ((_%e136911136950%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl136910136947%_)))
                    (let ((_%hd136912136953%_ (##car _%e136911136950%_))
                          (_%tl136913136955%_ (##cdr _%e136911136950%_)))
                      (let ((_%hd-bind136958%_ _%hd136912136953%_))
                        (if (gx#stx-pair? _%tl136913136955%_)
                            (let ((_%e136914136960%_
                                   (gx#syntax-e _%tl136913136955%_)))
                              (let ((_%hd136915136963%_
                                     (##car _%e136914136960%_))
                                    (_%tl136916136965%_
                                     (##cdr _%e136914136960%_)))
                                (let ((_%expr136968%_ _%hd136915136963%_))
                                  (if (gx#stx-null? _%tl136916136965%_)
                                      (let ((_%ehd136970%_
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#define-values)
                                                    (cons (gx#core-quote-bind-values
                                                           _%hd-bind136958%_)
                                                          (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%expr136968%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%hd136904%_))))
                                        (_%lp136879%_
                                         _%rest136903%_
                                         (cons _%ehd136970%_ _%body136882%_)
                                         (cons _%ehd136970%_ _%ebody136883%_)))
                                      (_%E136907136938%_)))))
                            (_%E136907136938%_)))))
                  (_%E136907136938%_))
              (_%E136907136938%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E136907136938%_)))))
                                  (_%E136906136972%_)))))
                        (if (pair? _%rest136884136892%_)
                            (let ((_%hd136889136979%_
                                   (##car _%rest136884136892%_))
                                  (_%tl136890136981%_
                                   (##cdr _%rest136884136892%_)))
                              (let* ((_%hd136984%_ _%hd136889136979%_)
                                     (_%rest136986%_ _%tl136890136981%_))
                                (_%K136888136976%_
                                 _%rest136986%_
                                 _%hd136984%_)))
                            (_%else136886136900%_)))))))
          (call-with-parameters__1
           (lambda ()
             (let* ((_%rbody136872%_
                     (gx#core-expand-block__1
                      _%stx136866%_
                      _%expand-special136868%_
                      '#f))
                    (_g137136_ (_%eval-body136869%_ _%rbody136872%_)))
               (begin
                 (let ((_g137137_
                        (if (##values? _g137136_)
                            (##values-length _g137136_)
                            1)))
                   (if (not (##fx= _g137137_ 2))
                       (error "Context expects 2 values" _g137137_)))
                 (let ((_%expanded-body136874%_ (##values-ref _g137136_ 0))
                       (_%value136875%_ (##values-ref _g137136_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body136874%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value136875%_ '())))
                    (gx#stx-source _%stx136866%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx136836%_)
        (let* ((_%e136837136844%_ _%stx136836%_)
               (_%E136839136848%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136837136844%_)))
               (_%E136838136862%_
                (lambda ()
                  (if (gx#stx-pair? _%e136837136844%_)
                      (let ((_%e136840136852%_
                             (gx#syntax-e _%e136837136844%_)))
                        (let ((_%hd136841136855%_ (##car _%e136840136852%_))
                              (_%tl136842136857%_ (##cdr _%e136840136852%_)))
                          (let ((_%body136860%_ _%tl136842136857%_))
                            (if (gx#stx-list? _%body136860%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body136860%_)
                                 (gx#stx-source _%stx136836%_))
                                (_%E136839136848%_)))))
                      (_%E136839136848%_)))))
          (_%E136838136862%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx136834%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx136834%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx136780%_)
        (let* ((_%e136781136794%_ _%stx136780%_)
               (_%E136783136798%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136781136794%_)))
               (_%E136782136830%_
                (lambda ()
                  (if (gx#stx-pair? _%e136781136794%_)
                      (let ((_%e136784136802%_
                             (gx#syntax-e _%e136781136794%_)))
                        (let ((_%hd136785136805%_ (##car _%e136784136802%_))
                              (_%tl136786136807%_ (##cdr _%e136784136802%_)))
                          (if (gx#stx-pair? _%tl136786136807%_)
                              (let ((_%e136787136810%_
                                     (gx#syntax-e _%tl136786136807%_)))
                                (let ((_%hd136788136813%_
                                       (##car _%e136787136810%_))
                                      (_%tl136789136815%_
                                       (##cdr _%e136787136810%_)))
                                  (let ((_%ann136818%_ _%hd136788136813%_))
                                    (if (gx#stx-pair? _%tl136789136815%_)
                                        (let ((_%e136790136820%_
                                               (gx#syntax-e
                                                _%tl136789136815%_)))
                                          (let ((_%hd136791136823%_
                                                 (##car _%e136790136820%_))
                                                (_%tl136792136825%_
                                                 (##cdr _%e136790136820%_)))
                                            (let ((_%expr136828%_
                                                   _%hd136791136823%_))
                                              (if (gx#stx-null?
                                                   _%tl136792136825%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann136818%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr136828%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx136780%_))
                                                  (_%E136783136798%_)))))
                                        (_%E136783136798%_)))))
                              (_%E136783136798%_))))
                      (_%E136783136798%_)))))
          (_%E136782136830%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx136504%_ _%body136505%_)
        (letrec ((_%expand-special136507%_
                  (lambda (_%hd136775%_ _%K136776%_ _%rest136777%_ _%r136778%_)
                    (_%K136776%_
                     '()
                     (cons (_%expand-internal136508%_
                            _%hd136775%_
                            _%rest136777%_)
                           _%r136778%_))))
                 (_%expand-internal136508%_
                  (lambda (_%hd136771%_ _%rest136772%_)
                    (call-with-parameters__1
                     (lambda ()
                       (_%wrap-internal136510%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd136771%_ _%rest136772%_))
                          (gx#stx-source _%stx136504%_))
                         _%expand-internal-special136509%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj137130
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj137130)
                       __obj137130))))
                 (_%expand-internal-special136509%_
                  (lambda (_%hd136666%_ _%K136667%_ _%rest136668%_ _%r136669%_)
                    (let* ((_%e136670136695%_ _%hd136666%_)
                           (_%E136690136699%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e136670136695%_)))
                           (_%E136686136711%_
                            (lambda ()
                              (if (gx#stx-pair? _%e136670136695%_)
                                  (let ((_%e136691136703%_
                                         (gx#syntax-e _%e136670136695%_)))
                                    (let ((_%hd136692136706%_
                                           (##car _%e136691136703%_))
                                          (_%tl136693136708%_
                                           (##cdr _%e136691136703%_)))
                                      (if (and (gx#identifier?
                                                _%hd136692136706%_)
                                               (gx#core-identifier=?
                                                _%hd136692136706%_
                                                '%#declare))
                                          (_%K136667%_
                                           _%rest136668%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd136666%_)
                                                 _%r136669%_))
                                          (_%E136690136699%_))))
                                  (_%E136690136699%_))))
                           (_%E136682136723%_
                            (lambda ()
                              (if (gx#stx-pair? _%e136670136695%_)
                                  (let ((_%e136687136715%_
                                         (gx#syntax-e _%e136670136695%_)))
                                    (let ((_%hd136688136718%_
                                           (##car _%e136687136715%_))
                                          (_%tl136689136720%_
                                           (##cdr _%e136687136715%_)))
                                      (if (and (gx#identifier?
                                                _%hd136688136718%_)
                                               (gx#core-identifier=?
                                                _%hd136688136718%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd136666%_)
                                            (_%K136667%_
                                             _%rest136668%_
                                             _%r136669%_))
                                          (_%E136686136711%_))))
                                  (_%E136686136711%_))))
                           (_%E136672136735%_
                            (lambda ()
                              (if (gx#stx-pair? _%e136670136695%_)
                                  (let ((_%e136683136727%_
                                         (gx#syntax-e _%e136670136695%_)))
                                    (let ((_%hd136684136730%_
                                           (##car _%e136683136727%_))
                                          (_%tl136685136732%_
                                           (##cdr _%e136683136727%_)))
                                      (if (and (gx#identifier?
                                                _%hd136684136730%_)
                                               (gx#core-identifier=?
                                                _%hd136684136730%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd136666%_)
                                            (_%K136667%_
                                             _%rest136668%_
                                             _%r136669%_))
                                          (_%E136682136723%_))))
                                  (_%E136682136723%_))))
                           (_%E136671136767%_
                            (lambda ()
                              (if (gx#stx-pair? _%e136670136695%_)
                                  (let ((_%e136673136739%_
                                         (gx#syntax-e _%e136670136695%_)))
                                    (let ((_%hd136674136742%_
                                           (##car _%e136673136739%_))
                                          (_%tl136675136744%_
                                           (##cdr _%e136673136739%_)))
                                      (if (and (gx#identifier?
                                                _%hd136674136742%_)
                                               (gx#core-identifier=?
                                                _%hd136674136742%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl136675136744%_)
                                              (let ((_%e136676136747%_
                                                     (gx#syntax-e
                                                      _%tl136675136744%_)))
                                                (let ((_%hd136677136750%_
                                                       (##car _%e136676136747%_))
                                                      (_%tl136678136752%_
                                                       (##cdr _%e136676136747%_)))
                                                  (let ((_%hd-bind136755%_
                                                         _%hd136677136750%_))
                                                    (if (gx#stx-pair?
                                                         _%tl136678136752%_)
                                                        (let ((_%e136679136757%_
                                                               (gx#syntax-e
                                                                _%tl136678136752%_)))
                                                          (let ((_%hd136680136760%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e136679136757%_))
                        (_%tl136681136762%_ (##cdr _%e136679136757%_)))
                    (let ((_%expr136765%_ _%hd136680136760%_))
                      (if (gx#stx-null? _%tl136681136762%_)
                          (if (gx#core-bind-values? _%hd-bind136755%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind136755%_)
                                (_%K136667%_
                                 _%rest136668%_
                                 (cons _%hd136666%_ _%r136669%_)))
                              (_%E136672136735%_))
                          (_%E136672136735%_)))))
                (_%E136672136735%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E136672136735%_))
                                          (_%E136672136735%_))))
                                  (_%E136672136735%_)))))
                      (_%E136671136767%_))))
                 (_%wrap-internal136510%_
                  (lambda (_%rbody136512%_)
                    (let _%lp136514%_ ((_%rest136516%_ _%rbody136512%_)
                                       (_%decls136517%_ '())
                                       (_%bind136518%_ '())
                                       (_%body136519%_ '()))
                      (let* ((_%e136520136527%_ _%rest136516%_)
                             (_%E136522136576%_
                              (lambda ()
                                (let* ((_%body136571%_
                                        (let* ((_%body136530136540%_
                                                _%body136519%_)
                                               (_%else136533136548%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body136519%_)
                                                   (gx#stx-source
                                                    _%stx136504%_)))))
                                          (let ((_%K136538136568%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx136504%_)))
                                                (_%K136535136554%_
                                                 (lambda (_%expr136552%_)
                                                   _%expr136552%_)))
                                            (let ((_%try-match136532136564%_
                                                   (lambda ()
                                                     (if (pair? _%body136530136540%_)
                                                         (let ((_%tl136537136559%_
                                                                (##cdr _%body136530136540%_))
                                                               (_%hd136536136557%_
                                                                (##car _%body136530136540%_)))
                                                           (if (null? _%tl136537136559%_)
                                                               (let ((_%expr136562%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd136536136557%_))
                         (_%K136535136554%_ _%expr136562%_))
                       (_%else136533136548%_)))
                 (_%else136533136548%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%body136530136540%_)
                                                  (_%K136538136568%_)
                                                  (_%try-match136532136564%_))))))
                                       (_%body136573%_
                                        (if (null? _%bind136518%_)
                                            _%body136571%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind136518%_
                                                         (cons _%body136571%_
                                                               '())))
                                             (gx#stx-source _%stx136504%_)))))
                                  (if (null? _%decls136517%_)
                                      _%body136573%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls136517%_
                                                   (cons _%body136573%_ '())))
                                       (gx#stx-source _%stx136504%_))))))
                             (_%E136521136662%_
                              (lambda ()
                                (if (gx#stx-pair? _%e136520136527%_)
                                    (let ((_%e136523136580%_
                                           (gx#syntax-e _%e136520136527%_)))
                                      (let ((_%hd136524136583%_
                                             (##car _%e136523136580%_))
                                            (_%tl136525136585%_
                                             (##cdr _%e136523136580%_)))
                                        (let* ((_%hd136588%_
                                                _%hd136524136583%_)
                                               (_%rest136590%_
                                                _%tl136525136585%_)
                                               (_%e136591136608%_ _%hd136588%_)
                                               (_%E136603136612%_
                                                (lambda ()
                                                  (if (null? _%bind136518%_)
                                                      (_%lp136514%_
                                                       _%rest136590%_
                                                       _%decls136517%_
                                                       _%bind136518%_
                                                       (cons _%hd136588%_
                                                             _%body136519%_))
                                                      (_%lp136514%_
                                                       _%rest136590%_
                                                       _%decls136517%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd136588%_ '()))
                     _%bind136518%_)
               _%body136519%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E136593136626%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e136591136608%_)
                                                      (let ((_%e136604136616%_
                                                             (gx#syntax-e
                                                              _%e136591136608%_)))
                                                        (let ((_%hd136605136619%_
                                                               (##car _%e136604136616%_))
                                                              (_%tl136606136621%_
                                                               (##cdr _%e136604136616%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd136605136619%_)
                           (gx#core-identifier=?
                            _%hd136605136619%_
                            '%#declare))
                      (let ((_%xdecls136624%_ _%tl136606136621%_))
                        (_%lp136514%_
                         _%rest136590%_
                         (gx#stx-foldr cons _%decls136517%_ _%xdecls136624%_)
                         _%bind136518%_
                         _%body136519%_))
                      (_%E136603136612%_))))
              (_%E136603136612%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E136592136658%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e136591136608%_)
                                                      (let ((_%e136594136630%_
                                                             (gx#syntax-e
                                                              _%e136591136608%_)))
                                                        (let ((_%hd136595136633%_
                                                               (##car _%e136594136630%_))
                                                              (_%tl136596136635%_
                                                               (##cdr _%e136594136630%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd136595136633%_)
                           (gx#core-identifier=?
                            _%hd136595136633%_
                            '%#define-values))
                      (if (gx#stx-pair? _%tl136596136635%_)
                          (let ((_%e136597136638%_
                                 (gx#syntax-e _%tl136596136635%_)))
                            (let ((_%hd136598136641%_
                                   (##car _%e136597136638%_))
                                  (_%tl136599136643%_
                                   (##cdr _%e136597136638%_)))
                              (let ((_%hd-bind136646%_ _%hd136598136641%_))
                                (if (gx#stx-pair? _%tl136599136643%_)
                                    (let ((_%e136600136648%_
                                           (gx#syntax-e _%tl136599136643%_)))
                                      (let ((_%hd136601136651%_
                                             (##car _%e136600136648%_))
                                            (_%tl136602136653%_
                                             (##cdr _%e136600136648%_)))
                                        (let ((_%expr136656%_
                                               _%hd136601136651%_))
                                          (if (gx#stx-null? _%tl136602136653%_)
                                              (_%lp136514%_
                                               _%rest136590%_
                                               _%decls136517%_
                                               (cons (cons (gx#core-quote-bind-values
                                                            _%hd-bind136646%_)
                                                           (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%expr136656%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind136518%_)
                                               _%body136519%_)
                                              (_%E136593136626%_)))))
                                    (_%E136593136626%_)))))
                          (_%E136593136626%_))
                      (_%E136593136626%_))))
              (_%E136593136626%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%E136592136658%_))))
                                    (_%E136522136576%_)))))
                        (_%E136521136662%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body136505%_)
            (gx#stx-source _%stx136504%_))
           _%expand-special136507%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx136442%_)
        (let* ((_%e136443136450%_ _%stx136442%_)
               (_%E136445136454%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136443136450%_)))
               (_%E136444136500%_
                (lambda ()
                  (if (gx#stx-pair? _%e136443136450%_)
                      (let ((_%e136446136458%_
                             (gx#syntax-e _%e136443136450%_)))
                        (let ((_%hd136447136461%_ (##car _%e136446136458%_))
                              (_%tl136448136463%_ (##cdr _%e136446136458%_)))
                          (let ((_%body136466%_ _%tl136448136463%_))
                            (if (gx#stx-list? _%body136466%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl136468%_)
                                     (let* ((_%e136469136476%_ _%decl136468%_)
                                            (_%E136471136480%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e136469136476%_)))
                                            (_%E136470136496%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e136469136476%_)
                                                   (let ((_%e136472136484%_
                                                          (gx#syntax-e
                                                           _%e136469136476%_)))
                                                     (let ((_%hd136473136487%_
                                                            (##car _%e136472136484%_))
                                                           (_%tl136474136489%_
                                                            (##cdr _%e136472136484%_)))
                                                       (let* ((_%head136492%_
                                                               _%hd136473136487%_)
                                                              (_%args136494%_
                                                               _%tl136474136489%_))
                                                         (if (gx#stx-list?
                                                              _%args136494%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl136468%_)
                                                             (_%E136471136480%_)))))
                                                   (_%E136471136480%_)))))
                                       (_%E136470136496%_)))
                                   _%body136466%_))
                                 (gx#stx-source _%stx136442%_))
                                (_%E136445136454%_)))))
                      (_%E136445136454%_)))))
          (_%E136444136500%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx136346%_)
        (let* ((_%e136347136354%_ _%stx136346%_)
               (_%E136349136358%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136347136354%_)))
               (_%E136348136438%_
                (lambda ()
                  (if (gx#stx-pair? _%e136347136354%_)
                      (let ((_%e136350136362%_
                             (gx#syntax-e _%e136347136354%_)))
                        (let ((_%hd136351136365%_ (##car _%e136350136362%_))
                              (_%tl136352136367%_ (##cdr _%e136350136362%_)))
                          (let ((_%body136370%_ _%tl136352136367%_))
                            (let _%lp136372%_ ((_%rest136374%_ _%body136370%_)
                                               (_%r136375%_ '()))
                              (let* ((_%e136376136390%_ _%rest136374%_)
                                     (_%E136388136394%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx136346%_)))
                                     (_%E136378136398%_
                                      (lambda ()
                                        (if (gx#stx-null? _%e136376136390%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r136375%_))
                                             (gx#stx-source _%stx136346%_))
                                            (_%E136388136394%_))))
                                     (_%E136377136434%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e136376136390%_)
                                            (let ((_%e136379136402%_
                                                   (gx#syntax-e
                                                    _%e136376136390%_)))
                                              (let ((_%hd136380136405%_
                                                     (##car _%e136379136402%_))
                                                    (_%tl136381136407%_
                                                     (##cdr _%e136379136402%_)))
                                                (if (gx#stx-pair?
                                                     _%hd136380136405%_)
                                                    (let ((_%e136382136410%_
                                                           (gx#syntax-e
                                                            _%hd136380136405%_)))
                                                      (let ((_%hd136383136413%_
                                                             (##car _%e136382136410%_))
                                                            (_%tl136384136415%_
                                                             (##cdr _%e136382136410%_)))
                                                        (let ((_%id136418%_
                                                               _%hd136383136413%_))
                                                          (if (gx#stx-pair?
                                                               _%tl136384136415%_)
                                                              (let ((_%e136385136420%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl136384136415%_)))
                        (let ((_%hd136386136423%_ (##car _%e136385136420%_))
                              (_%tl136387136425%_ (##cdr _%e136385136420%_)))
                          (let ((_%eid136428%_ _%hd136386136423%_))
                            (if (gx#stx-null? _%tl136387136425%_)
                                (let ((_%rest136430%_ _%tl136381136407%_))
                                  (if (and (gx#identifier? _%id136418%_)
                                           (gx#identifier? _%eid136428%_))
                                      (let ((_%eid136432%_
                                             (gx#stx-e _%eid136428%_)))
                                        (gx#core-bind-extern!__0
                                         _%id136418%_
                                         _%eid136432%_)
                                        (_%lp136372%_
                                         _%rest136430%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id136418%_)
                                                     (cons _%eid136432%_ '()))
                                               _%r136375%_)))
                                      (_%E136378136398%_)))
                                (_%E136378136398%_)))))
                      (_%E136378136398%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E136378136398%_))))
                                            (_%E136378136398%_)))))
                                (_%E136377136434%_))))))
                      (_%E136349136358%_)))))
          (_%E136348136438%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx136292%_)
        (let* ((_%e136293136306%_ _%stx136292%_)
               (_%E136295136310%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136293136306%_)))
               (_%E136294136342%_
                (lambda ()
                  (if (gx#stx-pair? _%e136293136306%_)
                      (let ((_%e136296136314%_
                             (gx#syntax-e _%e136293136306%_)))
                        (let ((_%hd136297136317%_ (##car _%e136296136314%_))
                              (_%tl136298136319%_ (##cdr _%e136296136314%_)))
                          (if (gx#stx-pair? _%tl136298136319%_)
                              (let ((_%e136299136322%_
                                     (gx#syntax-e _%tl136298136319%_)))
                                (let ((_%hd136300136325%_
                                       (##car _%e136299136322%_))
                                      (_%tl136301136327%_
                                       (##cdr _%e136299136322%_)))
                                  (let ((_%hd136330%_ _%hd136300136325%_))
                                    (if (gx#stx-pair? _%tl136301136327%_)
                                        (let ((_%e136302136332%_
                                               (gx#syntax-e
                                                _%tl136301136327%_)))
                                          (let ((_%hd136303136335%_
                                                 (##car _%e136302136332%_))
                                                (_%tl136304136337%_
                                                 (##cdr _%e136302136332%_)))
                                            (let ((_%expr136340%_
                                                   _%hd136303136335%_))
                                              (if (gx#stx-null?
                                                   _%tl136304136337%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd136330%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd136330%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd136330%_)
                             (cons (gx#core-expand-expression _%expr136340%_)
                                   '())))
                 (gx#stx-source _%stx136292%_)))
              (_%E136295136310%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E136295136310%_)))))
                                        (_%E136295136310%_)))))
                              (_%E136295136310%_))))
                      (_%E136295136310%_)))))
          (_%E136294136342%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx136236%_)
        (let* ((_%e136237136250%_ _%stx136236%_)
               (_%E136239136254%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136237136250%_)))
               (_%E136238136288%_
                (lambda ()
                  (if (gx#stx-pair? _%e136237136250%_)
                      (let ((_%e136240136258%_
                             (gx#syntax-e _%e136237136250%_)))
                        (let ((_%hd136241136261%_ (##car _%e136240136258%_))
                              (_%tl136242136263%_ (##cdr _%e136240136258%_)))
                          (if (gx#stx-pair? _%tl136242136263%_)
                              (let ((_%e136243136266%_
                                     (gx#syntax-e _%tl136242136263%_)))
                                (let ((_%hd136244136269%_
                                       (##car _%e136243136266%_))
                                      (_%tl136245136271%_
                                       (##cdr _%e136243136266%_)))
                                  (let ((_%id136274%_ _%hd136244136269%_))
                                    (if (gx#stx-pair? _%tl136245136271%_)
                                        (let ((_%e136246136276%_
                                               (gx#syntax-e
                                                _%tl136245136271%_)))
                                          (let ((_%hd136247136279%_
                                                 (##car _%e136246136276%_))
                                                (_%tl136248136281%_
                                                 (##cdr _%e136246136276%_)))
                                            (let ((_%binding-id136284%_
                                                   _%hd136247136279%_))
                                              (if (gx#stx-null?
                                                   _%tl136248136281%_)
                                                  (if (and (gx#identifier?
                                                            _%id136274%_)
                                                           (gx#identifier?
                                                            _%binding-id136284%_))
                                                      (let ((_%eid136286%_
                                                             (gx#stx-e
                                                              _%binding-id136284%_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _%id136274%_
                                                         _%eid136286%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id136274%_)
                             (cons _%eid136286%_ '())))))
              (_%E136239136254%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E136239136254%_)))))
                                        (_%E136239136254%_)))))
                              (_%E136239136254%_))))
                      (_%E136239136254%_)))))
          (_%E136238136288%_))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx136179%_)
        (let* ((_%e136180136193%_ _%stx136179%_)
               (_%E136182136197%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136180136193%_)))
               (_%E136181136232%_
                (lambda ()
                  (if (gx#stx-pair? _%e136180136193%_)
                      (let ((_%e136183136201%_
                             (gx#syntax-e _%e136180136193%_)))
                        (let ((_%hd136184136204%_ (##car _%e136183136201%_))
                              (_%tl136185136206%_ (##cdr _%e136183136201%_)))
                          (if (gx#stx-pair? _%tl136185136206%_)
                              (let ((_%e136186136209%_
                                     (gx#syntax-e _%tl136185136206%_)))
                                (let ((_%hd136187136212%_
                                       (##car _%e136186136209%_))
                                      (_%tl136188136214%_
                                       (##cdr _%e136186136209%_)))
                                  (let ((_%id136217%_ _%hd136187136212%_))
                                    (if (gx#stx-pair? _%tl136188136214%_)
                                        (let ((_%e136189136219%_
                                               (gx#syntax-e
                                                _%tl136188136214%_)))
                                          (let ((_%hd136190136222%_
                                                 (##car _%e136189136219%_))
                                                (_%tl136191136224%_
                                                 (##cdr _%e136189136219%_)))
                                            (let ((_%expr136227%_
                                                   _%hd136190136222%_))
                                              (if (gx#stx-null?
                                                   _%tl136191136224%_)
                                                  (if (gx#identifier?
                                                       _%id136217%_)
                                                      (let ((_g137138_
                                                             (gx#core-expand-expression+1
                                                              _%expr136227%_)))
                                                        (begin
                                                          (let ((_g137139_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g137138_)
                             (##values-length _g137138_)
                             1)))
                    (if (not (##fx= _g137139_ 2))
                        (error "Context expects 2 values" _g137139_)))
                  (let ((_%e-stx136229%_ (##values-ref _g137138_ 0))
                        (_%e136230%_ (##values-ref _g137138_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id136217%_ _%e136230%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id136217%_)
                                   (cons _%e-stx136229%_ '())))
                       (gx#stx-source _%stx136179%_))))))
              (_%E136182136197%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E136182136197%_)))))
                                        (_%E136182136197%_)))))
                              (_%E136182136197%_))))
                      (_%E136182136197%_)))))
          (_%E136181136232%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx136123%_)
        (let* ((_%e136124136137%_ _%stx136123%_)
               (_%E136126136141%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136124136137%_)))
               (_%E136125136175%_
                (lambda ()
                  (if (gx#stx-pair? _%e136124136137%_)
                      (let ((_%e136127136145%_
                             (gx#syntax-e _%e136124136137%_)))
                        (let ((_%hd136128136148%_ (##car _%e136127136145%_))
                              (_%tl136129136150%_ (##cdr _%e136127136145%_)))
                          (if (gx#stx-pair? _%tl136129136150%_)
                              (let ((_%e136130136153%_
                                     (gx#syntax-e _%tl136129136150%_)))
                                (let ((_%hd136131136156%_
                                       (##car _%e136130136153%_))
                                      (_%tl136132136158%_
                                       (##cdr _%e136130136153%_)))
                                  (let ((_%id136161%_ _%hd136131136156%_))
                                    (if (gx#stx-pair? _%tl136132136158%_)
                                        (let ((_%e136133136163%_
                                               (gx#syntax-e
                                                _%tl136132136158%_)))
                                          (let ((_%hd136134136166%_
                                                 (##car _%e136133136163%_))
                                                (_%tl136135136168%_
                                                 (##cdr _%e136133136163%_)))
                                            (let ((_%alias-id136171%_
                                                   _%hd136134136166%_))
                                              (if (gx#stx-null?
                                                   _%tl136135136168%_)
                                                  (if (and (gx#identifier?
                                                            _%id136161%_)
                                                           (gx#identifier?
                                                            _%alias-id136171%_))
                                                      (let ((_%alias-id136173%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id136171%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id136161%_
                                                         _%alias-id136173%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id136161%_)
                             (cons _%alias-id136173%_ '())))))
              (_%E136126136141%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E136126136141%_)))))
                                        (_%E136126136141%_)))))
                              (_%E136126136141%_))))
                      (_%E136126136141%_)))))
          (_%E136125136175%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx136066%_ _%wrap?136067%_)
        (let* ((_%e136068136078%_ _%stx136066%_)
               (_%E136070136082%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136068136078%_)))
               (_%E136069136109%_
                (lambda ()
                  (if (gx#stx-pair? _%e136068136078%_)
                      (let ((_%e136071136086%_
                             (gx#syntax-e _%e136068136078%_)))
                        (let ((_%hd136072136089%_ (##car _%e136071136086%_))
                              (_%tl136073136091%_ (##cdr _%e136071136086%_)))
                          (if (gx#stx-pair? _%tl136073136091%_)
                              (let ((_%e136074136094%_
                                     (gx#syntax-e _%tl136073136091%_)))
                                (let ((_%hd136075136097%_
                                       (##car _%e136074136094%_))
                                      (_%tl136076136099%_
                                       (##cdr _%e136074136094%_)))
                                  (let* ((_%hd136102%_ _%hd136075136097%_)
                                         (_%body136104%_ _%tl136076136099%_))
                                    (if (gx#core-bind-values? _%hd136102%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd136102%_)
                                           (let ((_%body136107%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd136102%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx136066%_
                                                               _%body136104%_)
                                                              '()))))
                                             (if _%wrap?136067%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body136107%_)
                                                  (gx#stx-source
                                                   _%stx136066%_))
                                                 _%body136107%_)))
                                         gx#current-expander-context
                                         (let ((__obj137131
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj137131)
                                           __obj137131))
                                        (_%E136070136082%_)))))
                              (_%E136070136082%_))))
                      (_%E136070136082%_)))))
          (_%E136069136109%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx136116%_)
        (let ((_%wrap?136118%_ '#t))
          (gx#core-expand-lambda%__% _%stx136116%_ _%wrap?136118%_))))
    (define gx#core-expand-lambda%
      (lambda _g137140_
        (let ((_g137141_ (##length _g137140_)))
          (cond ((##fx= _g137141_ 1)
                 (apply gx#core-expand-lambda%__0 _g137140_))
                ((##fx= _g137141_ 2)
                 (apply gx#core-expand-lambda%__% _g137140_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g137140_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx136030%_)
        (let* ((_%e136031136038%_ _%stx136030%_)
               (_%E136033136042%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136031136038%_)))
               (_%E136032136061%_
                (lambda ()
                  (if (gx#stx-pair? _%e136031136038%_)
                      (let ((_%e136034136046%_
                             (gx#syntax-e _%e136031136038%_)))
                        (let ((_%hd136035136049%_ (##car _%e136034136046%_))
                              (_%tl136036136051%_ (##cdr _%e136034136046%_)))
                          (let ((_%clauses136054%_ _%tl136036136051%_))
                            (if (gx#stx-list? _%clauses136054%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause136056%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause136056%_)
                                       (let ((_%$e136058%_
                                              (gx#stx-source
                                               _%clause136056%_)))
                                         (if _%$e136058%_
                                             _%$e136058%_
                                             (gx#stx-source _%stx136030%_))))
                                      '#f))
                                   _%clauses136054%_))
                                 (gx#stx-source _%stx136030%_))
                                (_%E136033136042%_)))))
                      (_%E136033136042%_)))))
          (_%E136032136061%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx135984%_)
        (let* ((_%e135985135995%_ _%stx135984%_)
               (_%E135987135999%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135985135995%_)))
               (_%E135986136026%_
                (lambda ()
                  (if (gx#stx-pair? _%e135985135995%_)
                      (let ((_%e135988136003%_
                             (gx#syntax-e _%e135985135995%_)))
                        (let ((_%hd135989136006%_ (##car _%e135988136003%_))
                              (_%tl135990136008%_ (##cdr _%e135988136003%_)))
                          (if (gx#stx-pair? _%tl135990136008%_)
                              (let ((_%e135991136011%_
                                     (gx#syntax-e _%tl135990136008%_)))
                                (let ((_%hd135992136014%_
                                       (##car _%e135991136011%_))
                                      (_%tl135993136016%_
                                       (##cdr _%e135991136011%_)))
                                  (let* ((_%hd136019%_ _%hd135992136014%_)
                                         (_%body136021%_ _%tl135993136016%_))
                                    (if (gx#core-expand-let-bind? _%hd136019%_)
                                        (let ((_%expressions136023%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd136019%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd136019%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd136019%_
                                                           _%expressions136023%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx135984%_
                         _%body136021%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx135984%_)))
                                           gx#current-expander-context
                                           (let ((__obj137132
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj137132)
                                             __obj137132)))
                                        (_%E135987135999%_)))))
                              (_%E135987135999%_))))
                      (_%E135987135999%_)))))
          (_%E135986136026%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx135929%_ _%form135930%_)
        (let* ((_%e135931135941%_ _%stx135929%_)
               (_%E135933135945%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135931135941%_)))
               (_%E135932135970%_
                (lambda ()
                  (if (gx#stx-pair? _%e135931135941%_)
                      (let ((_%e135934135949%_
                             (gx#syntax-e _%e135931135941%_)))
                        (let ((_%hd135935135952%_ (##car _%e135934135949%_))
                              (_%tl135936135954%_ (##cdr _%e135934135949%_)))
                          (if (gx#stx-pair? _%tl135936135954%_)
                              (let ((_%e135937135957%_
                                     (gx#syntax-e _%tl135936135954%_)))
                                (let ((_%hd135938135960%_
                                       (##car _%e135937135957%_))
                                      (_%tl135939135962%_
                                       (##cdr _%e135937135957%_)))
                                  (let* ((_%hd135965%_ _%hd135938135960%_)
                                         (_%body135967%_ _%tl135939135962%_))
                                    (if (gx#core-expand-let-bind? _%hd135965%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd135965%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form135930%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd135965%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd135965%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx135929%_
                                                               _%body135967%_)
                                                              '())))
                                            (gx#stx-source _%stx135929%_)))
                                         gx#current-expander-context
                                         (let ((__obj137133
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj137133)
                                           __obj137133))
                                        (_%E135933135945%_)))))
                              (_%E135933135945%_))))
                      (_%E135933135945%_)))))
          (_%E135932135970%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx135977%_)
        (let ((_%form135979%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx135977%_ _%form135979%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g137142_
        (let ((_g137143_ (##length _g137142_)))
          (cond ((##fx= _g137143_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g137142_))
                ((##fx= _g137143_ 2)
                 (apply gx#core-expand-letrec-values%__% _g137142_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g137142_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx135926%_)
        (gx#core-expand-letrec-values%__% _%stx135926%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx135883%_)
        (if (gx#stx-list? _%stx135883%_)
            (gx#stx-andmap
             (lambda (_%bind135885%_)
               (let* ((_%e135886135896%_ _%bind135885%_)
                      (_%E135888135900%_ (lambda () '#f))
                      (_%E135887135922%_
                       (lambda ()
                         (if (gx#stx-pair? _%e135886135896%_)
                             (let ((_%e135889135904%_
                                    (gx#syntax-e _%e135886135896%_)))
                               (let ((_%hd135890135907%_
                                      (##car _%e135889135904%_))
                                     (_%tl135891135909%_
                                      (##cdr _%e135889135904%_)))
                                 (let ((_%hd135912%_ _%hd135890135907%_))
                                   (if (gx#stx-pair? _%tl135891135909%_)
                                       (let ((_%e135892135914%_
                                              (gx#syntax-e
                                               _%tl135891135909%_)))
                                         (let ((_%hd135893135917%_
                                                (##car _%e135892135914%_))
                                               (_%tl135894135919%_
                                                (##cdr _%e135892135914%_)))
                                           (if (gx#stx-null?
                                                _%tl135894135919%_)
                                               (gx#core-bind-values?
                                                _%hd135912%_)
                                               (_%E135888135900%_))))
                                       (_%E135888135900%_)))))
                             (_%E135888135900%_)))))
                 (_%E135887135922%_)))
             _%stx135883%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind135842%_)
        (let* ((_%e135843135853%_ _%bind135842%_)
               (_%E135845135857%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135843135853%_)))
               (_%E135844135879%_
                (lambda ()
                  (if (gx#stx-pair? _%e135843135853%_)
                      (let ((_%e135846135861%_
                             (gx#syntax-e _%e135843135853%_)))
                        (let ((_%hd135847135864%_ (##car _%e135846135861%_))
                              (_%tl135848135866%_ (##cdr _%e135846135861%_)))
                          (if (gx#stx-pair? _%tl135848135866%_)
                              (let ((_%e135849135869%_
                                     (gx#syntax-e _%tl135848135866%_)))
                                (let ((_%hd135850135872%_
                                       (##car _%e135849135869%_))
                                      (_%tl135851135874%_
                                       (##cdr _%e135849135869%_)))
                                  (let ((_%expr135877%_ _%hd135850135872%_))
                                    (if (gx#stx-null? _%tl135851135874%_)
                                        (gx#core-expand-expression
                                         _%expr135877%_)
                                        (_%E135845135857%_)))))
                              (_%E135845135857%_))))
                      (_%E135845135857%_)))))
          (_%E135844135879%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind135801%_)
        (let* ((_%e135802135812%_ _%bind135801%_)
               (_%E135804135816%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135802135812%_)))
               (_%E135803135838%_
                (lambda ()
                  (if (gx#stx-pair? _%e135802135812%_)
                      (let ((_%e135805135820%_
                             (gx#syntax-e _%e135802135812%_)))
                        (let ((_%hd135806135823%_ (##car _%e135805135820%_))
                              (_%tl135807135825%_ (##cdr _%e135805135820%_)))
                          (let ((_%hd135828%_ _%hd135806135823%_))
                            (if (gx#stx-pair? _%tl135807135825%_)
                                (let ((_%e135808135830%_
                                       (gx#syntax-e _%tl135807135825%_)))
                                  (let ((_%hd135809135833%_
                                         (##car _%e135808135830%_))
                                        (_%tl135810135835%_
                                         (##cdr _%e135808135830%_)))
                                    (if (gx#stx-null? _%tl135810135835%_)
                                        (gx#core-bind-values!__0 _%hd135828%_)
                                        (_%E135804135816%_))))
                                (_%E135804135816%_)))))
                      (_%E135804135816%_)))))
          (_%E135803135838%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind135759%_ _%expr135760%_)
        (let* ((_%e135761135771%_ _%bind135759%_)
               (_%E135763135775%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135761135771%_)))
               (_%E135762135797%_
                (lambda ()
                  (if (gx#stx-pair? _%e135761135771%_)
                      (let ((_%e135764135779%_
                             (gx#syntax-e _%e135761135771%_)))
                        (let ((_%hd135765135782%_ (##car _%e135764135779%_))
                              (_%tl135766135784%_ (##cdr _%e135764135779%_)))
                          (let ((_%hd135787%_ _%hd135765135782%_))
                            (if (gx#stx-pair? _%tl135766135784%_)
                                (let ((_%e135767135789%_
                                       (gx#syntax-e _%tl135766135784%_)))
                                  (let ((_%hd135768135792%_
                                         (##car _%e135767135789%_))
                                        (_%tl135769135794%_
                                         (##cdr _%e135767135789%_)))
                                    (if (gx#stx-null? _%tl135769135794%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd135787%_)
                                              (cons _%expr135760%_ '()))
                                        (_%E135763135775%_))))
                                (_%E135763135775%_)))))
                      (_%E135763135775%_)))))
          (_%E135762135797%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx135713%_)
        (let* ((_%e135714135724%_ _%stx135713%_)
               (_%E135716135728%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135714135724%_)))
               (_%E135715135755%_
                (lambda ()
                  (if (gx#stx-pair? _%e135714135724%_)
                      (let ((_%e135717135732%_
                             (gx#syntax-e _%e135714135724%_)))
                        (let ((_%hd135718135735%_ (##car _%e135717135732%_))
                              (_%tl135719135737%_ (##cdr _%e135717135732%_)))
                          (if (gx#stx-pair? _%tl135719135737%_)
                              (let ((_%e135720135740%_
                                     (gx#syntax-e _%tl135719135737%_)))
                                (let ((_%hd135721135743%_
                                       (##car _%e135720135740%_))
                                      (_%tl135722135745%_
                                       (##cdr _%e135720135740%_)))
                                  (let* ((_%hd135748%_ _%hd135721135743%_)
                                         (_%body135750%_ _%tl135722135745%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd135748%_)
                                        (let ((_%expanders135752%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd135748%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd135748%_
                                              _%expanders135752%_)
                                             (gx#core-expand-local-block
                                              _%stx135713%_
                                              _%body135750%_))
                                           gx#current-expander-context
                                           (let ((__obj137134
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj137134)
                                             __obj137134)))
                                        (_%E135716135728%_)))))
                              (_%E135716135728%_))))
                      (_%E135716135728%_)))))
          (_%E135715135755%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx135662%_)
        (let* ((_%e135663135673%_ _%stx135662%_)
               (_%E135665135677%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135663135673%_)))
               (_%E135664135709%_
                (lambda ()
                  (if (gx#stx-pair? _%e135663135673%_)
                      (let ((_%e135666135681%_
                             (gx#syntax-e _%e135663135673%_)))
                        (let ((_%hd135667135684%_ (##car _%e135666135681%_))
                              (_%tl135668135686%_ (##cdr _%e135666135681%_)))
                          (if (gx#stx-pair? _%tl135668135686%_)
                              (let ((_%e135669135689%_
                                     (gx#syntax-e _%tl135668135686%_)))
                                (let ((_%hd135670135692%_
                                       (##car _%e135669135689%_))
                                      (_%tl135671135694%_
                                       (##cdr _%e135669135689%_)))
                                  (let* ((_%hd135697%_ _%hd135670135692%_)
                                         (_%body135699%_ _%tl135671135694%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd135697%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd135697%_
                                            (make-list
                                             (gx#stx-length _%hd135697%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g135701135704%_
                                                     _%g135702135706%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g135701135704%_
                                               _%g135702135706%_
                                               '#t))
                                            _%hd135697%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd135697%_))
                                           (gx#core-expand-local-block
                                            _%stx135662%_
                                            _%body135699%_))
                                         gx#current-expander-context
                                         (let ((__obj137135
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj137135)
                                           __obj137135))
                                        (_%E135665135677%_)))))
                              (_%E135665135677%_))))
                      (_%E135665135677%_)))))
          (_%E135664135709%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx135619%_)
        (if (gx#stx-list? _%stx135619%_)
            (gx#stx-andmap
             (lambda (_%bind135621%_)
               (let* ((_%e135622135632%_ _%bind135621%_)
                      (_%E135624135636%_ (lambda () '#f))
                      (_%E135623135658%_
                       (lambda ()
                         (if (gx#stx-pair? _%e135622135632%_)
                             (let ((_%e135625135640%_
                                    (gx#syntax-e _%e135622135632%_)))
                               (let ((_%hd135626135643%_
                                      (##car _%e135625135640%_))
                                     (_%tl135627135645%_
                                      (##cdr _%e135625135640%_)))
                                 (let ((_%hd135648%_ _%hd135626135643%_))
                                   (if (gx#stx-pair? _%tl135627135645%_)
                                       (let ((_%e135628135650%_
                                              (gx#syntax-e
                                               _%tl135627135645%_)))
                                         (let ((_%hd135629135653%_
                                                (##car _%e135628135650%_))
                                               (_%tl135630135655%_
                                                (##cdr _%e135628135650%_)))
                                           (if (gx#stx-null?
                                                _%tl135630135655%_)
                                               (gx#identifier? _%hd135648%_)
                                               (_%E135624135636%_))))
                                       (_%E135624135636%_)))))
                             (_%E135624135636%_)))))
                 (_%E135623135658%_)))
             _%stx135619%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind135575%_)
        (let* ((_%e135576135586%_ _%bind135575%_)
               (_%E135578135590%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135576135586%_)))
               (_%E135577135615%_
                (lambda ()
                  (if (gx#stx-pair? _%e135576135586%_)
                      (let ((_%e135579135594%_
                             (gx#syntax-e _%e135576135586%_)))
                        (let ((_%hd135580135597%_ (##car _%e135579135594%_))
                              (_%tl135581135599%_ (##cdr _%e135579135594%_)))
                          (if (gx#stx-pair? _%tl135581135599%_)
                              (let ((_%e135582135602%_
                                     (gx#syntax-e _%tl135581135599%_)))
                                (let ((_%hd135583135605%_
                                       (##car _%e135582135602%_))
                                      (_%tl135584135607%_
                                       (##cdr _%e135582135602%_)))
                                  (let ((_%expr135610%_ _%hd135583135605%_))
                                    (if (gx#stx-null? _%tl135584135607%_)
                                        (let ((_g137144_
                                               (gx#core-expand-expression+1
                                                _%expr135610%_)))
                                          (begin
                                            (let ((_g137145_
                                                   (if (##values? _g137144_)
                                                       (##values-length
                                                        _g137144_)
                                                       1)))
                                              (if (not (##fx= _g137145_ 2))
                                                  (error "Context expects 2 values"
                                                         _g137145_)))
                                            (let ((_%_135612%_
                                                   (##values-ref _g137144_ 0))
                                                  (_%e135613%_
                                                   (##values-ref _g137144_ 1)))
                                              _%e135613%_)))
                                        (_%E135578135590%_)))))
                              (_%E135578135590%_))))
                      (_%E135578135590%_)))))
          (_%E135577135615%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind135520%_ _%e135521%_ _%rebind?135522%_)
        (let* ((_%e135523135533%_ _%bind135520%_)
               (_%E135525135537%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135523135533%_)))
               (_%E135524135559%_
                (lambda ()
                  (if (gx#stx-pair? _%e135523135533%_)
                      (let ((_%e135526135541%_
                             (gx#syntax-e _%e135523135533%_)))
                        (let ((_%hd135527135544%_ (##car _%e135526135541%_))
                              (_%tl135528135546%_ (##cdr _%e135526135541%_)))
                          (let ((_%id135549%_ _%hd135527135544%_))
                            (if (gx#stx-pair? _%tl135528135546%_)
                                (let ((_%e135529135551%_
                                       (gx#syntax-e _%tl135528135546%_)))
                                  (let ((_%hd135530135554%_
                                         (##car _%e135529135551%_))
                                        (_%tl135531135556%_
                                         (##cdr _%e135529135551%_)))
                                    (if (gx#stx-null? _%tl135531135556%_)
                                        (gx#core-bind-syntax!__1
                                         _%id135549%_
                                         _%e135521%_
                                         _%rebind?135522%_)
                                        (_%E135525135537%_))))
                                (_%E135525135537%_)))))
                      (_%E135525135537%_)))))
          (_%E135524135559%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind135566%_ _%e135567%_)
        (let ((_%rebind?135569%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind135566%_
           _%e135567%_
           _%rebind?135569%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g137146_
        (let ((_g137147_ (##length _g137146_)))
          (cond ((##fx= _g137147_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g137146_))
                ((##fx= _g137147_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g137146_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g137146_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx135478%_)
        (let* ((_%e135479135489%_ _%stx135478%_)
               (_%E135481135493%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135479135489%_)))
               (_%E135480135515%_
                (lambda ()
                  (if (gx#stx-pair? _%e135479135489%_)
                      (let ((_%e135482135497%_
                             (gx#syntax-e _%e135479135489%_)))
                        (let ((_%hd135483135500%_ (##car _%e135482135497%_))
                              (_%tl135484135502%_ (##cdr _%e135482135497%_)))
                          (if (gx#stx-pair? _%tl135484135502%_)
                              (let ((_%e135485135505%_
                                     (gx#syntax-e _%tl135484135502%_)))
                                (let ((_%hd135486135508%_
                                       (##car _%e135485135505%_))
                                      (_%tl135487135510%_
                                       (##cdr _%e135485135505%_)))
                                  (let ((_%expr135513%_ _%hd135486135508%_))
                                    (if (gx#stx-null? _%tl135487135510%_)
                                        (gx#core-expand-expression
                                         _%expr135513%_)
                                        (_%E135481135493%_)))))
                              (_%E135481135493%_))))
                      (_%E135481135493%_)))))
          (_%E135480135515%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx135437%_)
        (let* ((_%e135438135448%_ _%stx135437%_)
               (_%E135440135452%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135438135448%_)))
               (_%E135439135474%_
                (lambda ()
                  (if (gx#stx-pair? _%e135438135448%_)
                      (let ((_%e135441135456%_
                             (gx#syntax-e _%e135438135448%_)))
                        (let ((_%hd135442135459%_ (##car _%e135441135456%_))
                              (_%tl135443135461%_ (##cdr _%e135441135456%_)))
                          (if (gx#stx-pair? _%tl135443135461%_)
                              (let ((_%e135444135464%_
                                     (gx#syntax-e _%tl135443135461%_)))
                                (let ((_%hd135445135467%_
                                       (##car _%e135444135464%_))
                                      (_%tl135446135469%_
                                       (##cdr _%e135444135464%_)))
                                  (let ((_%e135472%_ _%hd135445135467%_))
                                    (if (gx#stx-null? _%tl135446135469%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e135472%_)
                                                     '()))
                                         (gx#stx-source _%stx135437%_))
                                        (_%E135440135452%_)))))
                              (_%E135440135452%_))))
                      (_%E135440135452%_)))))
          (_%E135439135474%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx135396%_)
        (let* ((_%e135397135407%_ _%stx135396%_)
               (_%E135399135411%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135397135407%_)))
               (_%E135398135433%_
                (lambda ()
                  (if (gx#stx-pair? _%e135397135407%_)
                      (let ((_%e135400135415%_
                             (gx#syntax-e _%e135397135407%_)))
                        (let ((_%hd135401135418%_ (##car _%e135400135415%_))
                              (_%tl135402135420%_ (##cdr _%e135400135415%_)))
                          (if (gx#stx-pair? _%tl135402135420%_)
                              (let ((_%e135403135423%_
                                     (gx#syntax-e _%tl135402135420%_)))
                                (let ((_%hd135404135426%_
                                       (##car _%e135403135423%_))
                                      (_%tl135405135428%_
                                       (##cdr _%e135403135423%_)))
                                  (let ((_%e135431%_ _%hd135404135426%_))
                                    (if (gx#stx-null? _%tl135405135428%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e135431%_)
                                                     '()))
                                         (gx#stx-source _%stx135396%_))
                                        (_%E135399135411%_)))))
                              (_%E135399135411%_))))
                      (_%E135399135411%_)))))
          (_%E135398135433%_))))
    (define gx#core-expand-call%
      (lambda (_%stx135353%_)
        (let* ((_%e135354135364%_ _%stx135353%_)
               (_%E135356135368%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135354135364%_)))
               (_%E135355135392%_
                (lambda ()
                  (if (gx#stx-pair? _%e135354135364%_)
                      (let ((_%e135357135372%_
                             (gx#syntax-e _%e135354135364%_)))
                        (let ((_%hd135358135375%_ (##car _%e135357135372%_))
                              (_%tl135359135377%_ (##cdr _%e135357135372%_)))
                          (if (gx#stx-pair? _%tl135359135377%_)
                              (let ((_%e135360135380%_
                                     (gx#syntax-e _%tl135359135377%_)))
                                (let ((_%hd135361135383%_
                                       (##car _%e135360135380%_))
                                      (_%tl135362135385%_
                                       (##cdr _%e135360135380%_)))
                                  (let* ((_%rator135388%_ _%hd135361135383%_)
                                         (_%args135390%_ _%tl135362135385%_))
                                    (if (gx#stx-list? _%args135390%_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _%rator135388%_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _%args135390%_))
                                         (gx#stx-source _%stx135353%_))
                                        (_%E135356135368%_)))))
                              (_%E135356135368%_))))
                      (_%E135356135368%_)))))
          (_%E135355135392%_))))
    (define gx#core-expand-if%
      (lambda (_%stx135286%_)
        (let* ((_%e135287135303%_ _%stx135286%_)
               (_%E135289135307%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135287135303%_)))
               (_%E135288135349%_
                (lambda ()
                  (if (gx#stx-pair? _%e135287135303%_)
                      (let ((_%e135290135311%_
                             (gx#syntax-e _%e135287135303%_)))
                        (let ((_%hd135291135314%_ (##car _%e135290135311%_))
                              (_%tl135292135316%_ (##cdr _%e135290135311%_)))
                          (if (gx#stx-pair? _%tl135292135316%_)
                              (let ((_%e135293135319%_
                                     (gx#syntax-e _%tl135292135316%_)))
                                (let ((_%hd135294135322%_
                                       (##car _%e135293135319%_))
                                      (_%tl135295135324%_
                                       (##cdr _%e135293135319%_)))
                                  (let ((_%test135327%_ _%hd135294135322%_))
                                    (if (gx#stx-pair? _%tl135295135324%_)
                                        (let ((_%e135296135329%_
                                               (gx#syntax-e
                                                _%tl135295135324%_)))
                                          (let ((_%hd135297135332%_
                                                 (##car _%e135296135329%_))
                                                (_%tl135298135334%_
                                                 (##cdr _%e135296135329%_)))
                                            (let ((_%K135337%_
                                                   _%hd135297135332%_))
                                              (if (gx#stx-pair?
                                                   _%tl135298135334%_)
                                                  (let ((_%e135299135339%_
                                                         (gx#syntax-e
                                                          _%tl135298135334%_)))
                                                    (let ((_%hd135300135342%_
                                                           (##car _%e135299135339%_))
                                                          (_%tl135301135344%_
                                                           (##cdr _%e135299135339%_)))
                                                      (let ((_%E135347%_
                                                             _%hd135300135342%_))
                                                        (if (gx#stx-null?
                                                             _%tl135301135344%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test135327%_)
                                 (cons (gx#core-expand-expression _%K135337%_)
                                       (cons (gx#core-expand-expression
                                              _%E135347%_)
                                             '()))))
                     (gx#stx-source _%stx135286%_))
                    (_%E135289135307%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E135289135307%_)))))
                                        (_%E135289135307%_)))))
                              (_%E135289135307%_))))
                      (_%E135289135307%_)))))
          (_%E135288135349%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx135245%_)
        (let* ((_%e135246135256%_ _%stx135245%_)
               (_%E135248135260%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135246135256%_)))
               (_%E135247135282%_
                (lambda ()
                  (if (gx#stx-pair? _%e135246135256%_)
                      (let ((_%e135249135264%_
                             (gx#syntax-e _%e135246135256%_)))
                        (let ((_%hd135250135267%_ (##car _%e135249135264%_))
                              (_%tl135251135269%_ (##cdr _%e135249135264%_)))
                          (if (gx#stx-pair? _%tl135251135269%_)
                              (let ((_%e135252135272%_
                                     (gx#syntax-e _%tl135251135269%_)))
                                (let ((_%hd135253135275%_
                                       (##car _%e135252135272%_))
                                      (_%tl135254135277%_
                                       (##cdr _%e135252135272%_)))
                                  (let ((_%id135280%_ _%hd135253135275%_))
                                    (if (gx#stx-null? _%tl135254135277%_)
                                        (if (gx#identifier? _%id135280%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id135280%_
                                                          _%stx135245%_)
                                                         '()))
                                             (gx#stx-source _%stx135245%_))
                                            (_%E135248135260%_))
                                        (_%E135248135260%_)))))
                              (_%E135248135260%_))))
                      (_%E135248135260%_)))))
          (_%E135247135282%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx135191%_)
        (let* ((_%e135192135205%_ _%stx135191%_)
               (_%E135194135209%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135192135205%_)))
               (_%E135193135241%_
                (lambda ()
                  (if (gx#stx-pair? _%e135192135205%_)
                      (let ((_%e135195135213%_
                             (gx#syntax-e _%e135192135205%_)))
                        (let ((_%hd135196135216%_ (##car _%e135195135213%_))
                              (_%tl135197135218%_ (##cdr _%e135195135213%_)))
                          (if (gx#stx-pair? _%tl135197135218%_)
                              (let ((_%e135198135221%_
                                     (gx#syntax-e _%tl135197135218%_)))
                                (let ((_%hd135199135224%_
                                       (##car _%e135198135221%_))
                                      (_%tl135200135226%_
                                       (##cdr _%e135198135221%_)))
                                  (let ((_%id135229%_ _%hd135199135224%_))
                                    (if (gx#stx-pair? _%tl135200135226%_)
                                        (let ((_%e135201135231%_
                                               (gx#syntax-e
                                                _%tl135200135226%_)))
                                          (let ((_%hd135202135234%_
                                                 (##car _%e135201135231%_))
                                                (_%tl135203135236%_
                                                 (##cdr _%e135201135231%_)))
                                            (let ((_%expr135239%_
                                                   _%hd135202135234%_))
                                              (if (gx#stx-null?
                                                   _%tl135203135236%_)
                                                  (if (gx#identifier?
                                                       _%id135229%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id135229%_
                            _%stx135191%_)
                           (cons (gx#core-expand-expression _%expr135239%_)
                                 '())))
               (gx#stx-source _%stx135191%_))
              (_%E135194135209%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E135194135209%_)))))
                                        (_%E135194135209%_)))))
                              (_%E135194135209%_))))
                      (_%E135194135209%_)))))
          (_%E135193135241%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx135036%_)
        (letrec ((_%generate135038%_
                  (lambda (_%body135068%_)
                    (let _%lp135070%_ ((_%rest135072%_ _%body135068%_)
                                       (_%ns135073%_
                                        (gx#core-context-namespace__0))
                                       (_%r135074%_ '()))
                      (let* ((_%e135075135090%_ _%rest135072%_)
                             (_%E135088135094%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e135075135090%_)))
                             (_%E135084135098%_
                              (lambda ()
                                (if (gx#stx-null? _%e135075135090%_)
                                    (reverse _%r135074%_)
                                    (_%E135088135094%_))))
                             (_%E135077135155%_
                              (lambda ()
                                (if (gx#stx-pair? _%e135075135090%_)
                                    (let ((_%e135085135102%_
                                           (gx#syntax-e _%e135075135090%_)))
                                      (let ((_%hd135086135105%_
                                             (##car _%e135085135102%_))
                                            (_%tl135087135107%_
                                             (##cdr _%e135085135102%_)))
                                        (let* ((_%hd135110%_
                                                _%hd135086135105%_)
                                               (_%rest135112%_
                                                _%tl135087135107%_))
                                          (if (gx#identifier? _%hd135110%_)
                                              (_%lp135070%_
                                               _%rest135112%_
                                               _%ns135073%_
                                               (cons (cons _%hd135110%_
                                                           (cons (if _%ns135073%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd135110%_
                              _%ns135073%_
                              '"#"
                              _%hd135110%_)
                             _%hd135110%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r135074%_))
                                              (let* ((_%e135113135123%_
                                                      _%hd135110%_)
                                                     (_%E135115135127%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%e135113135123%_)))
                                                     (_%E135114135151%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e135113135123%_)
                                                            (let ((_%e135116135131%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e135113135123%_)))
                      (let ((_%hd135117135134%_ (##car _%e135116135131%_))
                            (_%tl135118135136%_ (##cdr _%e135116135131%_)))
                        (let ((_%id135139%_ _%hd135117135134%_))
                          (if (gx#stx-pair? _%tl135118135136%_)
                              (let ((_%e135119135141%_
                                     (gx#syntax-e _%tl135118135136%_)))
                                (let ((_%hd135120135144%_
                                       (##car _%e135119135141%_))
                                      (_%tl135121135146%_
                                       (##cdr _%e135119135141%_)))
                                  (let ((_%eid135149%_ _%hd135120135144%_))
                                    (if (gx#stx-null? _%tl135121135146%_)
                                        (if (and (gx#identifier? _%id135139%_)
                                                 (gx#identifier?
                                                  _%eid135149%_))
                                            (_%lp135070%_
                                             _%rest135112%_
                                             _%ns135073%_
                                             (cons (cons _%id135139%_
                                                         (cons _%eid135149%_
                                                               '()))
                                                   _%r135074%_))
                                            (_%E135115135127%_))
                                        (_%E135115135127%_)))))
                              (_%E135115135127%_)))))
                    (_%E135115135127%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E135114135151%_))))))
                                    (_%E135084135098%_))))
                             (_%E135076135187%_
                              (lambda ()
                                (if (gx#stx-pair? _%e135075135090%_)
                                    (let ((_%e135078135159%_
                                           (gx#syntax-e _%e135075135090%_)))
                                      (let ((_%hd135079135162%_
                                             (##car _%e135078135159%_))
                                            (_%tl135080135164%_
                                             (##cdr _%e135078135159%_)))
                                        (if (eq? (gx#stx-e _%hd135079135162%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl135080135164%_)
                                                (let ((_%e135081135167%_
                                                       (gx#syntax-e
                                                        _%tl135080135164%_)))
                                                  (let ((_%hd135082135170%_
                                                         (##car _%e135081135167%_))
                                                        (_%tl135083135172%_
                                                         (##cdr _%e135081135167%_)))
                                                    (let* ((_%ns135175%_
                                                            _%hd135082135170%_)
                                                           (_%rest135177%_
                                                            _%tl135083135172%_)
                                                           (_%ns135185%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns135175%_)
                        (symbol->string (gx#stx-e _%ns135175%_))
                        (if (or (gx#stx-string? _%ns135175%_)
                                (gx#stx-false? _%ns135175%_))
                            (gx#stx-e _%ns135175%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx135036%_
                             _%ns135175%_)))))
              (_%lp135070%_ _%rest135177%_ _%ns135185%_ _%r135074%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E135077135155%_))
                                            (_%E135077135155%_))))
                                    (_%E135077135155%_)))))
                        (_%E135076135187%_))))))
          (let* ((_%e135039135046%_ _%stx135036%_)
                 (_%E135041135050%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e135039135046%_)))
                 (_%E135040135064%_
                  (lambda ()
                    (if (gx#stx-pair? _%e135039135046%_)
                        (let ((_%e135042135054%_
                               (gx#syntax-e _%e135039135046%_)))
                          (let ((_%hd135043135057%_ (##car _%e135042135054%_))
                                (_%tl135044135059%_ (##cdr _%e135042135054%_)))
                            (let ((_%body135062%_ _%tl135044135059%_))
                              (if (gx#stx-list? _%body135062%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate135038%_ _%body135062%_))
                                  (_%E135041135050%_)))))
                        (_%E135041135050%_)))))
            (_%E135040135064%_)))))
    (define gx#macro-expand-define-values
      (lambda (_%stx134982%_)
        (let* ((_%e134983134996%_ _%stx134982%_)
               (_%E134985135000%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e134983134996%_)))
               (_%E134984135032%_
                (lambda ()
                  (if (gx#stx-pair? _%e134983134996%_)
                      (let ((_%e134986135004%_
                             (gx#syntax-e _%e134983134996%_)))
                        (let ((_%hd134987135007%_ (##car _%e134986135004%_))
                              (_%tl134988135009%_ (##cdr _%e134986135004%_)))
                          (if (gx#stx-pair? _%tl134988135009%_)
                              (let ((_%e134989135012%_
                                     (gx#syntax-e _%tl134988135009%_)))
                                (let ((_%hd134990135015%_
                                       (##car _%e134989135012%_))
                                      (_%tl134991135017%_
                                       (##cdr _%e134989135012%_)))
                                  (let ((_%hd135020%_ _%hd134990135015%_))
                                    (if (gx#stx-pair? _%tl134991135017%_)
                                        (let ((_%e134992135022%_
                                               (gx#syntax-e
                                                _%tl134991135017%_)))
                                          (let ((_%hd134993135025%_
                                                 (##car _%e134992135022%_))
                                                (_%tl134994135027%_
                                                 (##cdr _%e134992135022%_)))
                                            (let ((_%expr135030%_
                                                   _%hd134993135025%_))
                                              (if (gx#stx-null?
                                                   _%tl134994135027%_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _%hd135020%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           identity
                           _%hd135020%_)
                          (cons _%expr135030%_ '())))
              (_%E134985135000%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E134985135000%_)))))
                                        (_%E134985135000%_)))))
                              (_%E134985135000%_))))
                      (_%E134985135000%_)))))
          (_%E134984135032%_))))
    (define gx#macro-expand-define-syntax
      (lambda (_%stx134928%_)
        (let* ((_%e134929134942%_ _%stx134928%_)
               (_%E134931134946%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e134929134942%_)))
               (_%E134930134978%_
                (lambda ()
                  (if (gx#stx-pair? _%e134929134942%_)
                      (let ((_%e134932134950%_
                             (gx#syntax-e _%e134929134942%_)))
                        (let ((_%hd134933134953%_ (##car _%e134932134950%_))
                              (_%tl134934134955%_ (##cdr _%e134932134950%_)))
                          (if (gx#stx-pair? _%tl134934134955%_)
                              (let ((_%e134935134958%_
                                     (gx#syntax-e _%tl134934134955%_)))
                                (let ((_%hd134936134961%_
                                       (##car _%e134935134958%_))
                                      (_%tl134937134963%_
                                       (##cdr _%e134935134958%_)))
                                  (let ((_%hd134966%_ _%hd134936134961%_))
                                    (if (gx#stx-pair? _%tl134937134963%_)
                                        (let ((_%e134938134968%_
                                               (gx#syntax-e
                                                _%tl134937134963%_)))
                                          (let ((_%hd134939134971%_
                                                 (##car _%e134938134968%_))
                                                (_%tl134940134973%_
                                                 (##cdr _%e134938134968%_)))
                                            (let ((_%expr134976%_
                                                   _%hd134939134971%_))
                                              (if (gx#stx-null?
                                                   _%tl134940134973%_)
                                                  (if (gx#identifier?
                                                       _%hd134966%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _%hd134966%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr134976%_ '())))
              (_%E134931134946%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E134931134946%_)))))
                                        (_%E134931134946%_)))))
                              (_%E134931134946%_))))
                      (_%E134931134946%_)))))
          (_%E134930134978%_))))
    (define gx#macro-expand-define-alias
      (lambda (_%stx134874%_)
        (let* ((_%e134875134888%_ _%stx134874%_)
               (_%E134877134892%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e134875134888%_)))
               (_%E134876134924%_
                (lambda ()
                  (if (gx#stx-pair? _%e134875134888%_)
                      (let ((_%e134878134896%_
                             (gx#syntax-e _%e134875134888%_)))
                        (let ((_%hd134879134899%_ (##car _%e134878134896%_))
                              (_%tl134880134901%_ (##cdr _%e134878134896%_)))
                          (if (gx#stx-pair? _%tl134880134901%_)
                              (let ((_%e134881134904%_
                                     (gx#syntax-e _%tl134880134901%_)))
                                (let ((_%hd134882134907%_
                                       (##car _%e134881134904%_))
                                      (_%tl134883134909%_
                                       (##cdr _%e134881134904%_)))
                                  (let ((_%id134912%_ _%hd134882134907%_))
                                    (if (gx#stx-pair? _%tl134883134909%_)
                                        (let ((_%e134884134914%_
                                               (gx#syntax-e
                                                _%tl134883134909%_)))
                                          (let ((_%hd134885134917%_
                                                 (##car _%e134884134914%_))
                                                (_%tl134886134919%_
                                                 (##cdr _%e134884134914%_)))
                                            (let ((_%alias-id134922%_
                                                   _%hd134885134917%_))
                                              (if (gx#stx-null?
                                                   _%tl134886134919%_)
                                                  (if (and (gx#identifier?
                                                            _%id134912%_)
                                                           (gx#identifier?
                                                            _%alias-id134922%_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _%id134912%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%alias-id134922%_ '())))
              (_%E134877134892%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E134877134892%_)))))
                                        (_%E134877134892%_)))))
                              (_%E134877134892%_))))
                      (_%E134877134892%_)))))
          (_%E134876134924%_))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx134831%_)
        (let* ((_%e134832134842%_ _%stx134831%_)
               (_%E134834134846%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e134832134842%_)))
               (_%E134833134870%_
                (lambda ()
                  (if (gx#stx-pair? _%e134832134842%_)
                      (let ((_%e134835134850%_
                             (gx#syntax-e _%e134832134842%_)))
                        (let ((_%hd134836134853%_ (##car _%e134835134850%_))
                              (_%tl134837134855%_ (##cdr _%e134835134850%_)))
                          (if (gx#stx-pair? _%tl134837134855%_)
                              (let ((_%e134838134858%_
                                     (gx#syntax-e _%tl134837134855%_)))
                                (let ((_%hd134839134861%_
                                       (##car _%e134838134858%_))
                                      (_%tl134840134863%_
                                       (##cdr _%e134838134858%_)))
                                  (let* ((_%hd134866%_ _%hd134839134861%_)
                                         (_%body134868%_ _%tl134840134863%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd134866%_)
                                             (gx#stx-list? _%body134868%_)
                                             (not (gx#stx-null?
                                                   _%body134868%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd134866%_)
                                         _%body134868%_)
                                        (_%E134834134846%_)))))
                              (_%E134834134846%_))))
                      (_%E134834134846%_)))))
          (_%E134833134870%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx134767%_)
        (letrec ((_%generate134769%_
                  (lambda (_%clause134799%_)
                    (let* ((_%e134800134807%_ _%clause134799%_)
                           (_%E134802134811%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx134767%_
                               _%clause134799%_)))
                           (_%E134801134827%_
                            (lambda ()
                              (if (gx#stx-pair? _%e134800134807%_)
                                  (let ((_%e134803134815%_
                                         (gx#syntax-e _%e134800134807%_)))
                                    (let ((_%hd134804134818%_
                                           (##car _%e134803134815%_))
                                          (_%tl134805134820%_
                                           (##cdr _%e134803134815%_)))
                                      (let* ((_%hd134823%_ _%hd134804134818%_)
                                             (_%body134825%_
                                              _%tl134805134820%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd134823%_)
                                                 (gx#stx-list? _%body134825%_)
                                                 (not (gx#stx-null?
                                                       _%body134825%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd134823%_)
                                                   _%body134825%_)
                                             (gx#stx-source _%clause134799%_))
                                            (_%E134802134811%_)))))
                                  (_%E134802134811%_)))))
                      (_%E134801134827%_)))))
          (let* ((_%e134770134777%_ _%stx134767%_)
                 (_%E134772134781%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e134770134777%_)))
                 (_%E134771134795%_
                  (lambda ()
                    (if (gx#stx-pair? _%e134770134777%_)
                        (let ((_%e134773134785%_
                               (gx#syntax-e _%e134770134777%_)))
                          (let ((_%hd134774134788%_ (##car _%e134773134785%_))
                                (_%tl134775134790%_ (##cdr _%e134773134785%_)))
                            (let ((_%clauses134793%_ _%tl134775134790%_))
                              (if (gx#stx-list? _%clauses134793%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate134769%_
                                    _%clauses134793%_))
                                  (_%E134772134781%_)))))
                        (_%E134772134781%_)))))
            (_%E134771134795%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx134668%_ _%form134669%_)
        (letrec ((_%generate134671%_
                  (lambda (_%bind134714%_)
                    (let* ((_%e134715134725%_ _%bind134714%_)
                           (_%E134717134729%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx134668%_
                               _%bind134714%_)))
                           (_%E134716134753%_
                            (lambda ()
                              (if (gx#stx-pair? _%e134715134725%_)
                                  (let ((_%e134718134733%_
                                         (gx#syntax-e _%e134715134725%_)))
                                    (let ((_%hd134719134736%_
                                           (##car _%e134718134733%_))
                                          (_%tl134720134738%_
                                           (##cdr _%e134718134733%_)))
                                      (let ((_%ids134741%_ _%hd134719134736%_))
                                        (if (gx#stx-pair? _%tl134720134738%_)
                                            (let ((_%e134721134743%_
                                                   (gx#syntax-e
                                                    _%tl134720134738%_)))
                                              (let ((_%hd134722134746%_
                                                     (##car _%e134721134743%_))
                                                    (_%tl134723134748%_
                                                     (##cdr _%e134721134743%_)))
                                                (let ((_%expr134751%_
                                                       _%hd134722134746%_))
                                                  (if (gx#stx-null?
                                                       _%tl134723134748%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids134741%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids134741%_)
                        (cons _%expr134751%_ '()))
                  (_%E134717134729%_))
              (_%E134717134729%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E134717134729%_)))))
                                  (_%E134717134729%_)))))
                      (_%E134716134753%_)))))
          (let* ((_%e134672134682%_ _%stx134668%_)
                 (_%E134674134686%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e134672134682%_)))
                 (_%E134673134710%_
                  (lambda ()
                    (if (gx#stx-pair? _%e134672134682%_)
                        (let ((_%e134675134690%_
                               (gx#syntax-e _%e134672134682%_)))
                          (let ((_%hd134676134693%_ (##car _%e134675134690%_))
                                (_%tl134677134695%_ (##cdr _%e134675134690%_)))
                            (if (gx#stx-pair? _%tl134677134695%_)
                                (let ((_%e134678134698%_
                                       (gx#syntax-e _%tl134677134695%_)))
                                  (let ((_%hd134679134701%_
                                         (##car _%e134678134698%_))
                                        (_%tl134680134703%_
                                         (##cdr _%e134678134698%_)))
                                    (let* ((_%hd134706%_ _%hd134679134701%_)
                                           (_%body134708%_ _%tl134680134703%_))
                                      (if (and (gx#stx-list? _%hd134706%_)
                                               (gx#stx-list? _%body134708%_)
                                               (not (gx#stx-null?
                                                     _%body134708%_)))
                                          (gx#core-cons*
                                           _%form134669%_
                                           (gx#stx-map1
                                            _%generate134671%_
                                            _%hd134706%_)
                                           _%body134708%_)
                                          (_%E134674134686%_)))))
                                (_%E134674134686%_))))
                        (_%E134674134686%_)))))
            (_%E134673134710%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx134760%_)
        (let ((_%form134762%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx134760%_ _%form134762%_))))
    (define gx#macro-expand-let-values
      (lambda _g137148_
        (let ((_g137149_ (##length _g137148_)))
          (cond ((##fx= _g137149_ 1)
                 (apply gx#macro-expand-let-values__0 _g137148_))
                ((##fx= _g137149_ 2)
                 (apply gx#macro-expand-let-values__% _g137148_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g137148_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx134665%_)
        (gx#macro-expand-let-values__% _%stx134665%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx134663%_)
        (gx#macro-expand-let-values__% _%stx134663%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx134554%_)
        (let* ((_%e134555134581%_ _%stx134554%_)
               (_%E134567134585%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e134555134581%_)))
               (_%E134557134627%_
                (lambda ()
                  (if (gx#stx-pair? _%e134555134581%_)
                      (let ((_%e134568134589%_
                             (gx#syntax-e _%e134555134581%_)))
                        (let ((_%hd134569134592%_ (##car _%e134568134589%_))
                              (_%tl134570134594%_ (##cdr _%e134568134589%_)))
                          (if (gx#stx-pair? _%tl134570134594%_)
                              (let ((_%e134571134597%_
                                     (gx#syntax-e _%tl134570134594%_)))
                                (let ((_%hd134572134600%_
                                       (##car _%e134571134597%_))
                                      (_%tl134573134602%_
                                       (##cdr _%e134571134597%_)))
                                  (let ((_%test134605%_ _%hd134572134600%_))
                                    (if (gx#stx-pair? _%tl134573134602%_)
                                        (let ((_%e134574134607%_
                                               (gx#syntax-e
                                                _%tl134573134602%_)))
                                          (let ((_%hd134575134610%_
                                                 (##car _%e134574134607%_))
                                                (_%tl134576134612%_
                                                 (##cdr _%e134574134607%_)))
                                            (let ((_%K134615%_
                                                   _%hd134575134610%_))
                                              (if (gx#stx-pair?
                                                   _%tl134576134612%_)
                                                  (let ((_%e134577134617%_
                                                         (gx#syntax-e
                                                          _%tl134576134612%_)))
                                                    (let ((_%hd134578134620%_
                                                           (##car _%e134577134617%_))
                                                          (_%tl134579134622%_
                                                           (##cdr _%e134577134617%_)))
                                                      (let ((_%E134625%_
                                                             _%hd134578134620%_))
                                                        (if (gx#stx-null?
                                                             _%tl134579134622%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test134605%_
                                                             _%K134615%_
                                                             _%E134625%_)
                                                            (_%E134567134585%_)))))
                                                  (_%E134567134585%_)))))
                                        (_%E134567134585%_)))))
                              (_%E134567134585%_))))
                      (_%E134567134585%_))))
               (_%E134556134659%_
                (lambda ()
                  (if (gx#stx-pair? _%e134555134581%_)
                      (let ((_%e134558134631%_
                             (gx#syntax-e _%e134555134581%_)))
                        (let ((_%hd134559134634%_ (##car _%e134558134631%_))
                              (_%tl134560134636%_ (##cdr _%e134558134631%_)))
                          (if (gx#stx-pair? _%tl134560134636%_)
                              (let ((_%e134561134639%_
                                     (gx#syntax-e _%tl134560134636%_)))
                                (let ((_%hd134562134642%_
                                       (##car _%e134561134639%_))
                                      (_%tl134563134644%_
                                       (##cdr _%e134561134639%_)))
                                  (let ((_%test134647%_ _%hd134562134642%_))
                                    (if (gx#stx-pair? _%tl134563134644%_)
                                        (let ((_%e134564134649%_
                                               (gx#syntax-e
                                                _%tl134563134644%_)))
                                          (let ((_%hd134565134652%_
                                                 (##car _%e134564134649%_))
                                                (_%tl134566134654%_
                                                 (##cdr _%e134564134649%_)))
                                            (let ((_%K134657%_
                                                   _%hd134565134652%_))
                                              (if (gx#stx-null?
                                                   _%tl134566134654%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test134647%_
                                                   _%K134657%_
                                                   '#!void)
                                                  (_%E134557134627%_)))))
                                        (_%E134557134627%_)))))
                              (_%E134557134627%_))))
                      (_%E134557134627%_)))))
          (_%E134556134659%_))))
    (define gx#free-identifier=?
      (lambda (_%xid134539%_ _%yid134540%_)
        (let ((_%xe134542%_ (gx#resolve-identifier__0 _%xid134539%_))
              (_%ye134543%_ (gx#resolve-identifier__0 _%yid134540%_)))
          (if (and _%xe134542%_ _%ye134543%_)
              (let ((_%$e134546%_ (eq? _%xe134542%_ _%ye134543%_)))
                (if _%$e134546%_
                    _%$e134546%_
                    (if (##structure-instance-of? _%xe134542%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye134543%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe134542%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye134543%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe134542%_ _%ye134543%_)
                  '#f
                  (gx#stx-eq? _%xid134539%_ _%yid134540%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid134520%_ _%yid134521%_)
        (letrec ((_%context134523%_
                  (lambda (_%e134537%_)
                    (if (##structure-direct-instance-of?
                         _%e134537%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e134537%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks134524%_
                  (lambda (_%e134532%_)
                    (if (symbol? _%e134532%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e134532%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e134532%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e134532%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap134525%_
                  (lambda (_%e134530%_)
                    (if (symbol? _%e134530%_)
                        _%e134530%_
                        (gx#syntax-local-unwrap _%e134530%_)))))
          (let ((_%x134527%_ (_%unwrap134525%_ _%xid134520%_))
                (_%y134528%_ (_%unwrap134525%_ _%yid134521%_)))
            (if (gx#stx-eq? _%x134527%_ _%y134528%_)
                (if (eq? (_%context134523%_ _%x134527%_)
                         (_%context134523%_ _%y134528%_))
                    (equal? (_%marks134524%_ _%x134527%_)
                            (_%marks134524%_ _%y134528%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx134518%_)
        (if (gx#identifier? _%stx134518%_)
            (gx#core-identifier=? _%stx134518%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx134516%_)
        (if (gx#identifier? _%stx134516%_)
            (gx#core-identifier=? _%stx134516%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx134459%_ _%where134460%_)
        (let _%lp134462%_ ((_%rest134464%_ (gx#syntax->list _%stx134459%_)))
          (let* ((_%rest134465134473%_ _%rest134464%_)
                 (_%else134467134481%_ (lambda () '#t))
                 (_%K134469134494%_
                  (lambda (_%rest134484%_ _%hd134485%_)
                    (if (gx#identifier? _%hd134485%_)
                        (if (__find (lambda (_%g134487134489%_)
                                      (gx#bound-identifier=?
                                       _%g134487134489%_
                                       _%hd134485%_))
                                    _%rest134484%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where134460%_
                             _%hd134485%_)
                            (_%lp134462%_ _%rest134484%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where134460%_
                         _%hd134485%_)))))
            (if (pair? _%rest134465134473%_)
                (let ((_%hd134470134497%_ (##car _%rest134465134473%_))
                      (_%tl134471134499%_ (##cdr _%rest134465134473%_)))
                  (let* ((_%hd134502%_ _%hd134470134497%_)
                         (_%rest134504%_ _%tl134471134499%_))
                    (_%K134469134494%_ _%rest134504%_ _%hd134502%_)))
                (_%else134467134481%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx134509%_)
        (let ((_%where134511%_ _%stx134509%_))
          (gx#check-duplicate-identifiers__% _%stx134509%_ _%where134511%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g137150_
        (let ((_g137151_ (##length _g137150_)))
          (cond ((##fx= _g137151_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g137150_))
                ((##fx= _g137151_ 2)
                 (apply gx#check-duplicate-identifiers__% _g137150_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g137150_))))))
    (define gx#core-bind-values?
      (lambda (_%stx134451%_)
        (gx#stx-andmap
         (lambda (_%x134453%_)
           (let ((_%$e134455%_ (gx#identifier? _%x134453%_)))
             (if _%$e134455%_ _%$e134455%_ (gx#stx-false? _%x134453%_))))
         _%stx134451%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx134415%_ _%rebind?134416%_ _%phi134417%_ _%ctx134418%_)
        (gx#stx-for-each1
         (lambda (_%id134420%_)
           (if (gx#identifier? _%id134420%_)
               (gx#core-bind-runtime!__%
                _%id134420%_
                _%rebind?134416%_
                _%phi134417%_
                _%ctx134418%_)
               '#!void))
         _%stx134415%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx134425%_)
        (let* ((_%rebind?134427%_ '#f)
               (_%phi134429%_ (gx#current-expander-phi))
               (_%ctx134431%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx134425%_
           _%rebind?134427%_
           _%phi134429%_
           _%ctx134431%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx134433%_ _%rebind?134434%_)
        (let* ((_%phi134436%_ (gx#current-expander-phi))
               (_%ctx134438%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx134433%_
           _%rebind?134434%_
           _%phi134436%_
           _%ctx134438%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx134440%_ _%rebind?134441%_ _%phi134442%_)
        (let ((_%ctx134444%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx134440%_
           _%rebind?134441%_
           _%phi134442%_
           _%ctx134444%_))))
    (define gx#core-bind-values!
      (lambda _g137152_
        (let ((_g137153_ (##length _g137152_)))
          (cond ((##fx= _g137153_ 1) (apply gx#core-bind-values!__0 _g137152_))
                ((##fx= _g137153_ 2) (apply gx#core-bind-values!__1 _g137152_))
                ((##fx= _g137153_ 3) (apply gx#core-bind-values!__2 _g137152_))
                ((##fx= _g137153_ 4) (apply gx#core-bind-values!__% _g137152_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g137152_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx134410%_)
        (gx#stx-map1
         (lambda (_%x134412%_)
           (if (gx#identifier? _%x134412%_)
               (gx#core-quote-syntax__0 _%x134412%_)
               '#f))
         _%stx134410%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx134403%_)
        (if (gx#identifier? _%stx134403%_)
            (let* ((_%bind134405%_ (gx#resolve-identifier__0 _%stx134403%_))
                   (_%$e134407%_ (not _%bind134405%_)))
              (if _%$e134407%_
                  _%$e134407%_
                  (##structure-instance-of?
                   _%bind134405%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id134392%_ _%form134393%_)
        (let ((_%bind134395%_ (gx#resolve-identifier__0 _%id134392%_)))
          (if (##structure-instance-of? _%bind134395%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id134392%_)
              (if (not _%bind134395%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id134392%_)))
                      (gx#core-quote-syntax__0 _%id134392%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form134393%_
                       _%id134392%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form134393%_
                   _%id134392%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id134347%_ _%rebind?134348%_ _%phi134349%_ _%ctx134350%_)
        (let* ((_%key134352%_ (gx#core-identifier-key _%id134347%_))
               (_%eid134354%_
                (gx#make-binding-id__%
                 _%key134352%_
                 '#f
                 _%phi134349%_
                 _%ctx134350%_))
               (_%bind134360%_
                (if (##structure-instance-of?
                     _%ctx134350%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid134354%_
                     _%key134352%_
                     _%phi134349%_
                     _%ctx134350%_)
                    (if (##structure-instance-of?
                         _%ctx134350%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid134354%_
                         _%key134352%_
                         _%phi134349%_)
                        (if (##structure-instance-of?
                             _%ctx134350%_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _%eid134354%_
                             _%key134352%_
                             _%phi134349%_)
                            (##structure
                             gx#runtime-binding::t
                             _%eid134354%_
                             _%key134352%_
                             _%phi134349%_))))))
          (gx#bind-identifier!__%
           _%id134347%_
           _%bind134360%_
           _%rebind?134348%_
           _%phi134349%_
           _%ctx134350%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id134366%_)
        (let* ((_%rebind?134368%_ '#f)
               (_%phi134370%_ (gx#current-expander-phi))
               (_%ctx134372%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id134366%_
           _%rebind?134368%_
           _%phi134370%_
           _%ctx134372%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id134374%_ _%rebind?134375%_)
        (let* ((_%phi134377%_ (gx#current-expander-phi))
               (_%ctx134379%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id134374%_
           _%rebind?134375%_
           _%phi134377%_
           _%ctx134379%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id134381%_ _%rebind?134382%_ _%phi134383%_)
        (let ((_%ctx134385%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id134381%_
           _%rebind?134382%_
           _%phi134383%_
           _%ctx134385%_))))
    (define gx#core-bind-runtime!
      (lambda _g137154_
        (let ((_g137155_ (##length _g137154_)))
          (cond ((##fx= _g137155_ 1)
                 (apply gx#core-bind-runtime!__0 _g137154_))
                ((##fx= _g137155_ 2)
                 (apply gx#core-bind-runtime!__1 _g137154_))
                ((##fx= _g137155_ 3)
                 (apply gx#core-bind-runtime!__2 _g137154_))
                ((##fx= _g137155_ 4)
                 (apply gx#core-bind-runtime!__% _g137154_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g137154_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id134299%_
               _%eid134300%_
               _%rebind?134301%_
               _%phi134302%_
               _%ctx134303%_)
        (let* ((_%key134305%_ (gx#core-identifier-key _%id134299%_))
               (_%bind134310%_
                (if (##structure-instance-of?
                     _%ctx134303%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid134300%_
                     _%key134305%_
                     _%phi134302%_
                     _%ctx134303%_)
                    (if (##structure-instance-of?
                         _%ctx134303%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid134300%_
                         _%key134305%_
                         _%phi134302%_)
                        (##structure
                         gx#runtime-binding::t
                         _%eid134300%_
                         _%key134305%_
                         _%phi134302%_)))))
          (gx#bind-identifier!__%
           _%id134299%_
           _%bind134310%_
           _%rebind?134301%_
           _%phi134302%_
           _%ctx134303%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id134316%_ _%eid134317%_)
        (let* ((_%rebind?134319%_ '#f)
               (_%phi134321%_ (gx#current-expander-phi))
               (_%ctx134323%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id134316%_
           _%eid134317%_
           _%rebind?134319%_
           _%phi134321%_
           _%ctx134323%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id134325%_ _%eid134326%_ _%rebind?134327%_)
        (let* ((_%phi134329%_ (gx#current-expander-phi))
               (_%ctx134331%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id134325%_
           _%eid134326%_
           _%rebind?134327%_
           _%phi134329%_
           _%ctx134331%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id134333%_ _%eid134334%_ _%rebind?134335%_ _%phi134336%_)
        (let ((_%ctx134338%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id134333%_
           _%eid134334%_
           _%rebind?134335%_
           _%phi134336%_
           _%ctx134338%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g137156_
        (let ((_g137157_ (##length _g137156_)))
          (cond ((##fx= _g137157_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g137156_))
                ((##fx= _g137157_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g137156_))
                ((##fx= _g137157_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g137156_))
                ((##fx= _g137157_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g137156_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g137156_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id134259%_
               _%eid134260%_
               _%rebind?134261%_
               _%phi134262%_
               _%ctx134263%_)
        (gx#bind-identifier!__%
         _%id134259%_
         (##structure
          gx#extern-binding::t
          _%eid134260%_
          (gx#core-identifier-key _%id134259%_)
          _%phi134262%_)
         _%rebind?134261%_
         _%phi134262%_
         _%ctx134263%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id134268%_ _%eid134269%_)
        (let* ((_%rebind?134271%_ '#f)
               (_%phi134273%_ (gx#current-expander-phi))
               (_%ctx134275%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id134268%_
           _%eid134269%_
           _%rebind?134271%_
           _%phi134273%_
           _%ctx134275%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id134277%_ _%eid134278%_ _%rebind?134279%_)
        (let* ((_%phi134281%_ (gx#current-expander-phi))
               (_%ctx134283%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id134277%_
           _%eid134278%_
           _%rebind?134279%_
           _%phi134281%_
           _%ctx134283%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id134285%_ _%eid134286%_ _%rebind?134287%_ _%phi134288%_)
        (let ((_%ctx134290%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id134285%_
           _%eid134286%_
           _%rebind?134287%_
           _%phi134288%_
           _%ctx134290%_))))
    (define gx#core-bind-extern!
      (lambda _g137158_
        (let ((_g137159_ (##length _g137158_)))
          (cond ((##fx= _g137159_ 2) (apply gx#core-bind-extern!__0 _g137158_))
                ((##fx= _g137159_ 3) (apply gx#core-bind-extern!__1 _g137158_))
                ((##fx= _g137159_ 4) (apply gx#core-bind-extern!__2 _g137158_))
                ((##fx= _g137159_ 5) (apply gx#core-bind-extern!__% _g137158_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g137158_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id134213%_
               _%e134214%_
               _%rebind?134215%_
               _%phi134216%_
               _%ctx134217%_)
        (gx#bind-identifier!__%
         _%id134213%_
         (let ((_%key134222%_ (gx#core-identifier-key _%id134213%_))
               (_%e134223%_
                (if (or (##structure-instance-of? _%e134214%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e134214%_
                         'gx#expander-context::t))
                    _%e134214%_
                    (##structure
                     gx#user-expander::t
                     _%e134214%_
                     _%ctx134217%_
                     _%phi134216%_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__%
             _%key134222%_
             '#t
             _%phi134216%_
             _%ctx134217%_)
            _%key134222%_
            _%phi134216%_
            _%e134223%_))
         _%rebind?134215%_
         _%phi134216%_
         _%ctx134217%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id134228%_ _%e134229%_)
        (let* ((_%rebind?134231%_ '#f)
               (_%phi134233%_ (gx#current-expander-phi))
               (_%ctx134235%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id134228%_
           _%e134229%_
           _%rebind?134231%_
           _%phi134233%_
           _%ctx134235%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id134237%_ _%e134238%_ _%rebind?134239%_)
        (let* ((_%phi134241%_ (gx#current-expander-phi))
               (_%ctx134243%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id134237%_
           _%e134238%_
           _%rebind?134239%_
           _%phi134241%_
           _%ctx134243%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id134245%_ _%e134246%_ _%rebind?134247%_ _%phi134248%_)
        (let ((_%ctx134250%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id134245%_
           _%e134246%_
           _%rebind?134247%_
           _%phi134248%_
           _%ctx134250%_))))
    (define gx#core-bind-syntax!
      (lambda _g137160_
        (let ((_g137161_ (##length _g137160_)))
          (cond ((##fx= _g137161_ 2) (apply gx#core-bind-syntax!__0 _g137160_))
                ((##fx= _g137161_ 3) (apply gx#core-bind-syntax!__1 _g137160_))
                ((##fx= _g137161_ 4) (apply gx#core-bind-syntax!__2 _g137160_))
                ((##fx= _g137161_ 5) (apply gx#core-bind-syntax!__% _g137160_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g137160_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id134196%_ _%e134197%_ _%rebind?134198%_)
        (gx#core-bind-syntax!__%
         _%id134196%_
         _%e134197%_
         _%rebind?134198%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id134203%_ _%e134204%_)
        (let ((_%rebind?134206%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id134203%_
           _%e134204%_
           _%rebind?134206%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g137162_
        (let ((_g137163_ (##length _g137162_)))
          (cond ((##fx= _g137163_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g137162_))
                ((##fx= _g137163_ 3)
                 (apply gx#core-bind-root-syntax!__% _g137162_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g137162_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id134154%_
               _%alias-id134155%_
               _%rebind?134156%_
               _%phi134157%_
               _%ctx134158%_)
        (gx#bind-identifier!__%
         _%id134154%_
         (let ((_%key134160%_ (gx#core-identifier-key _%id134154%_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__%
             _%key134160%_
             '#t
             _%phi134157%_
             _%ctx134158%_)
            _%key134160%_
            _%phi134157%_
            _%alias-id134155%_))
         _%rebind?134156%_
         _%phi134157%_
         _%ctx134158%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id134165%_ _%alias-id134166%_)
        (let* ((_%rebind?134168%_ '#f)
               (_%phi134170%_ (gx#current-expander-phi))
               (_%ctx134172%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id134165%_
           _%alias-id134166%_
           _%rebind?134168%_
           _%phi134170%_
           _%ctx134172%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id134174%_ _%alias-id134175%_ _%rebind?134176%_)
        (let* ((_%phi134178%_ (gx#current-expander-phi))
               (_%ctx134180%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id134174%_
           _%alias-id134175%_
           _%rebind?134176%_
           _%phi134178%_
           _%ctx134180%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id134182%_ _%alias-id134183%_ _%rebind?134184%_ _%phi134185%_)
        (let ((_%ctx134187%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id134182%_
           _%alias-id134183%_
           _%rebind?134184%_
           _%phi134185%_
           _%ctx134187%_))))
    (define gx#core-bind-alias!
      (lambda _g137164_
        (let ((_g137165_ (##length _g137164_)))
          (cond ((##fx= _g137165_ 2) (apply gx#core-bind-alias!__0 _g137164_))
                ((##fx= _g137165_ 3) (apply gx#core-bind-alias!__1 _g137164_))
                ((##fx= _g137165_ 4) (apply gx#core-bind-alias!__2 _g137164_))
                ((##fx= _g137165_ 5) (apply gx#core-bind-alias!__% _g137164_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g137164_))))))
    (define gx#make-binding-id__%
      (lambda (_%key134104%_ _%syntax?134105%_ _%phi134106%_ _%ctx134107%_)
        (if (uninterned-symbol? _%key134104%_)
            (##gensym 'L)
            (if (pair? _%key134104%_)
                (gensym (##car _%key134104%_))
                (if (##structure-instance-of? _%ctx134107%_ 'gx#top-context::t)
                    (let ((_%ns134112%_
                           (gx#core-context-namespace__% _%ctx134107%_)))
                      (if (and (fxzero? _%phi134106%_) (not _%syntax?134105%_))
                          (if _%ns134112%_
                              (make-symbol__1 _%ns134112%_ '"#" _%key134104%_)
                              _%key134104%_)
                          (if _%syntax?134105%_
                              (make-symbol__1
                               (let ((_%$e134116%_ _%ns134112%_))
                                 (if _%$e134116%_ _%$e134116%_ '""))
                               '"[:"
                               (number->string _%phi134106%_)
                               '":]#"
                               _%key134104%_)
                              (make-symbol__1
                               (let ((_%$e134120%_ _%ns134112%_))
                                 (if _%$e134120%_ _%$e134120%_ '""))
                               '"["
                               (number->string _%phi134106%_)
                               '"]#"
                               _%key134104%_))))
                    (gensym _%key134104%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key134127%_)
        (let* ((_%syntax?134129%_ '#f)
               (_%phi134131%_ (gx#current-expander-phi))
               (_%ctx134133%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key134127%_
           _%syntax?134129%_
           _%phi134131%_
           _%ctx134133%_))))
    (define gx#make-binding-id__1
      (lambda (_%key134135%_ _%syntax?134136%_)
        (let* ((_%phi134138%_ (gx#current-expander-phi))
               (_%ctx134140%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key134135%_
           _%syntax?134136%_
           _%phi134138%_
           _%ctx134140%_))))
    (define gx#make-binding-id__2
      (lambda (_%key134142%_ _%syntax?134143%_ _%phi134144%_)
        (let ((_%ctx134146%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key134142%_
           _%syntax?134143%_
           _%phi134144%_
           _%ctx134146%_))))
    (define gx#make-binding-id
      (lambda _g137166_
        (let ((_g137167_ (##length _g137166_)))
          (cond ((##fx= _g137167_ 1) (apply gx#make-binding-id__0 _g137166_))
                ((##fx= _g137167_ 2) (apply gx#make-binding-id__1 _g137166_))
                ((##fx= _g137167_ 3) (apply gx#make-binding-id__2 _g137166_))
                ((##fx= _g137167_ 4) (apply gx#make-binding-id__% _g137166_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g137166_))))))))
