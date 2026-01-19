(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1768865823)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx137128%_)
        (letrec ((_%expand-special137130%_
                  (lambda (_%hd137132%_ _%K137133%_ _%rest137134%_ _%r137135%_)
                    (_%K137133%_
                     _%rest137134%_
                     (cons (gx#core-expand-top _%hd137132%_) _%r137135%_)))))
          (gx#core-expand-block__0 _%stx137128%_ _%expand-special137130%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx136881%_)
        (letrec ((_%expand-special136883%_
                  (lambda (_%hd137003%_ _%K137004%_ _%rest137005%_ _%r137006%_)
                    (let* ((_%K137010%_
                            (lambda (_%e137008%_)
                              (_%K137004%_
                               _%rest137005%_
                               (cons _%e137008%_ _%r137006%_))))
                           (_%e137011137040%_ _%hd137003%_)
                           (_%E137035137044%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e137011137040%_)))
                           (_%E137031137056%_
                            (lambda ()
                              (if (gx#stx-pair? _%e137011137040%_)
                                  (let ((_%e137036137048%_
                                         (gx#syntax-e _%e137011137040%_)))
                                    (let ((_%hd137037137051%_
                                           (##car _%e137036137048%_))
                                          (_%tl137038137053%_
                                           (##cdr _%e137036137048%_)))
                                      (if (and (gx#identifier?
                                                _%hd137037137051%_)
                                               (gx#core-identifier=?
                                                _%hd137037137051%_
                                                '%#define-runtime))
                                          (_%K137010%_
                                           (gx#core-expand-define-runtime%
                                            _%hd137003%_))
                                          (_%E137035137044%_))))
                                  (_%E137035137044%_))))
                           (_%E137027137068%_
                            (lambda ()
                              (if (gx#stx-pair? _%e137011137040%_)
                                  (let ((_%e137032137060%_
                                         (gx#syntax-e _%e137011137040%_)))
                                    (let ((_%hd137033137063%_
                                           (##car _%e137032137060%_))
                                          (_%tl137034137065%_
                                           (##cdr _%e137032137060%_)))
                                      (if (and (gx#identifier?
                                                _%hd137033137063%_)
                                               (gx#core-identifier=?
                                                _%hd137033137063%_
                                                '%#define-alias))
                                          (_%K137010%_
                                           (gx#core-expand-define-alias%
                                            _%hd137003%_))
                                          (_%E137031137056%_))))
                                  (_%E137031137056%_))))
                           (_%E137017137080%_
                            (lambda ()
                              (if (gx#stx-pair? _%e137011137040%_)
                                  (let ((_%e137028137072%_
                                         (gx#syntax-e _%e137011137040%_)))
                                    (let ((_%hd137029137075%_
                                           (##car _%e137028137072%_))
                                          (_%tl137030137077%_
                                           (##cdr _%e137028137072%_)))
                                      (if (and (gx#identifier?
                                                _%hd137029137075%_)
                                               (gx#core-identifier=?
                                                _%hd137029137075%_
                                                '%#define-syntax))
                                          (_%K137010%_
                                           (gx#core-expand-define-syntax%
                                            _%hd137003%_))
                                          (_%E137027137068%_))))
                                  (_%E137027137068%_))))
                           (_%E137013137112%_
                            (lambda ()
                              (if (gx#stx-pair? _%e137011137040%_)
                                  (let ((_%e137018137084%_
                                         (gx#syntax-e _%e137011137040%_)))
                                    (let ((_%hd137019137087%_
                                           (##car _%e137018137084%_))
                                          (_%tl137020137089%_
                                           (##cdr _%e137018137084%_)))
                                      (if (and (gx#identifier?
                                                _%hd137019137087%_)
                                               (gx#core-identifier=?
                                                _%hd137019137087%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl137020137089%_)
                                              (let ((_%e137021137092%_
                                                     (gx#syntax-e
                                                      _%tl137020137089%_)))
                                                (let ((_%hd137022137095%_
                                                       (##car _%e137021137092%_))
                                                      (_%tl137023137097%_
                                                       (##cdr _%e137021137092%_)))
                                                  (let ((_%hd-bind137100%_
                                                         _%hd137022137095%_))
                                                    (if (gx#stx-pair?
                                                         _%tl137023137097%_)
                                                        (let ((_%e137024137102%_
                                                               (gx#syntax-e
                                                                _%tl137023137097%_)))
                                                          (let ((_%hd137025137105%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e137024137102%_))
                        (_%tl137026137107%_ (##cdr _%e137024137102%_)))
                    (let ((_%expr137110%_ _%hd137025137105%_))
                      (if (gx#stx-null? _%tl137026137107%_)
                          (if (gx#core-bind-values? _%hd-bind137100%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind137100%_)
                                (_%K137010%_ _%hd137003%_))
                              (_%E137017137080%_))
                          (_%E137017137080%_)))))
                (_%E137017137080%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E137017137080%_))
                                          (_%E137017137080%_))))
                                  (_%E137017137080%_))))
                           (_%E137012137124%_
                            (lambda ()
                              (if (gx#stx-pair? _%e137011137040%_)
                                  (let ((_%e137014137116%_
                                         (gx#syntax-e _%e137011137040%_)))
                                    (let ((_%hd137015137119%_
                                           (##car _%e137014137116%_))
                                          (_%tl137016137121%_
                                           (##cdr _%e137014137116%_)))
                                      (if (and (gx#identifier?
                                                _%hd137015137119%_)
                                               (gx#core-identifier=?
                                                _%hd137015137119%_
                                                '%#begin-syntax))
                                          (_%K137010%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd137003%_))
                                          (_%E137013137112%_))))
                                  (_%E137013137112%_)))))
                      (_%E137012137124%_))))
                 (_%eval-body136884%_
                  (lambda (_%rbody136892%_)
                    (let _%lp136894%_ ((_%rest136896%_ _%rbody136892%_)
                                       (_%body136897%_ '())
                                       (_%ebody136898%_ '()))
                      (let* ((_%rest136899136907%_ _%rest136896%_)
                             (_%else136901136915%_
                              (lambda ()
                                (values _%body136897%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody136898%_)
                                          (gx#stx-source _%stx136881%_))))))
                             (_%K136903136991%_
                              (lambda (_%rest136918%_ _%hd136919%_)
                                (let* ((_%e136920136937%_ _%hd136919%_)
                                       (_%E136932136941%_
                                        (lambda ()
                                          (_%lp136894%_
                                           _%rest136918%_
                                           (cons _%hd136919%_ _%body136897%_)
                                           (cons _%hd136919%_
                                                 _%ebody136898%_))))
                                       (_%E136922136953%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e136920136937%_)
                                              (let ((_%e136933136945%_
                                                     (gx#syntax-e
                                                      _%e136920136937%_)))
                                                (let ((_%hd136934136948%_
                                                       (##car _%e136933136945%_))
                                                      (_%tl136935136950%_
                                                       (##cdr _%e136933136945%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd136934136948%_)
                                                           (gx#core-identifier=?
                                                            _%hd136934136948%_
                                                            '%#begin-syntax))
                                                      (_%lp136894%_
                                                       _%rest136918%_
                                                       (cons _%hd136919%_
                                                             _%body136897%_)
                                                       _%ebody136898%_)
                                                      (_%E136932136941%_))))
                                              (_%E136932136941%_))))
                                       (_%E136921136987%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e136920136937%_)
                                              (let ((_%e136923136957%_
                                                     (gx#syntax-e
                                                      _%e136920136937%_)))
                                                (let ((_%hd136924136960%_
                                                       (##car _%e136923136957%_))
                                                      (_%tl136925136962%_
                                                       (##cdr _%e136923136957%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd136924136960%_)
                                                           (gx#core-identifier=?
                                                            _%hd136924136960%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl136925136962%_)
                                                          (let ((_%e136926136965%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl136925136962%_)))
                    (let ((_%hd136927136968%_ (##car _%e136926136965%_))
                          (_%tl136928136970%_ (##cdr _%e136926136965%_)))
                      (let ((_%hd-bind136973%_ _%hd136927136968%_))
                        (if (gx#stx-pair? _%tl136928136970%_)
                            (let ((_%e136929136975%_
                                   (gx#syntax-e _%tl136928136970%_)))
                              (let ((_%hd136930136978%_
                                     (##car _%e136929136975%_))
                                    (_%tl136931136980%_
                                     (##cdr _%e136929136975%_)))
                                (let ((_%expr136983%_ _%hd136930136978%_))
                                  (if (gx#stx-null? _%tl136931136980%_)
                                      (let ((_%ehd136985%_
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#define-values)
                                                    (cons (gx#core-quote-bind-values
                                                           _%hd-bind136973%_)
                                                          (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%expr136983%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%hd136919%_))))
                                        (_%lp136894%_
                                         _%rest136918%_
                                         (cons _%ehd136985%_ _%body136897%_)
                                         (cons _%ehd136985%_ _%ebody136898%_)))
                                      (_%E136922136953%_)))))
                            (_%E136922136953%_)))))
                  (_%E136922136953%_))
              (_%E136922136953%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E136922136953%_)))))
                                  (_%E136921136987%_)))))
                        (if (pair? _%rest136899136907%_)
                            (let ((_%hd136904136994%_
                                   (##car _%rest136899136907%_))
                                  (_%tl136905136996%_
                                   (##cdr _%rest136899136907%_)))
                              (let* ((_%hd136999%_ _%hd136904136994%_)
                                     (_%rest137001%_ _%tl136905136996%_))
                                (_%K136903136991%_
                                 _%rest137001%_
                                 _%hd136999%_)))
                            (_%else136901136915%_)))))))
          (call-with-parameters__1
           (lambda ()
             (let* ((_%rbody136887%_
                     (gx#core-expand-block__1
                      _%stx136881%_
                      _%expand-special136883%_
                      '#f))
                    (_g137151_ (_%eval-body136884%_ _%rbody136887%_)))
               (begin
                 (let ((_g137152_
                        (if (##values? _g137151_)
                            (##values-length _g137151_)
                            1)))
                   (if (not (##fx= _g137152_ 2))
                       (error "Context expects 2 values" _g137152_)))
                 (let ((_%expanded-body136889%_ (##values-ref _g137151_ 0))
                       (_%value136890%_ (##values-ref _g137151_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body136889%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value136890%_ '())))
                    (gx#stx-source _%stx136881%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx136851%_)
        (let* ((_%e136852136859%_ _%stx136851%_)
               (_%E136854136863%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136852136859%_)))
               (_%E136853136877%_
                (lambda ()
                  (if (gx#stx-pair? _%e136852136859%_)
                      (let ((_%e136855136867%_
                             (gx#syntax-e _%e136852136859%_)))
                        (let ((_%hd136856136870%_ (##car _%e136855136867%_))
                              (_%tl136857136872%_ (##cdr _%e136855136867%_)))
                          (let ((_%body136875%_ _%tl136857136872%_))
                            (if (gx#stx-list? _%body136875%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body136875%_)
                                 (gx#stx-source _%stx136851%_))
                                (_%E136854136863%_)))))
                      (_%E136854136863%_)))))
          (_%E136853136877%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx136849%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx136849%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx136795%_)
        (let* ((_%e136796136809%_ _%stx136795%_)
               (_%E136798136813%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136796136809%_)))
               (_%E136797136845%_
                (lambda ()
                  (if (gx#stx-pair? _%e136796136809%_)
                      (let ((_%e136799136817%_
                             (gx#syntax-e _%e136796136809%_)))
                        (let ((_%hd136800136820%_ (##car _%e136799136817%_))
                              (_%tl136801136822%_ (##cdr _%e136799136817%_)))
                          (if (gx#stx-pair? _%tl136801136822%_)
                              (let ((_%e136802136825%_
                                     (gx#syntax-e _%tl136801136822%_)))
                                (let ((_%hd136803136828%_
                                       (##car _%e136802136825%_))
                                      (_%tl136804136830%_
                                       (##cdr _%e136802136825%_)))
                                  (let ((_%ann136833%_ _%hd136803136828%_))
                                    (if (gx#stx-pair? _%tl136804136830%_)
                                        (let ((_%e136805136835%_
                                               (gx#syntax-e
                                                _%tl136804136830%_)))
                                          (let ((_%hd136806136838%_
                                                 (##car _%e136805136835%_))
                                                (_%tl136807136840%_
                                                 (##cdr _%e136805136835%_)))
                                            (let ((_%expr136843%_
                                                   _%hd136806136838%_))
                                              (if (gx#stx-null?
                                                   _%tl136807136840%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann136833%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr136843%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx136795%_))
                                                  (_%E136798136813%_)))))
                                        (_%E136798136813%_)))))
                              (_%E136798136813%_))))
                      (_%E136798136813%_)))))
          (_%E136797136845%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx136519%_ _%body136520%_)
        (letrec ((_%expand-special136522%_
                  (lambda (_%hd136790%_ _%K136791%_ _%rest136792%_ _%r136793%_)
                    (_%K136791%_
                     '()
                     (cons (_%expand-internal136523%_
                            _%hd136790%_
                            _%rest136792%_)
                           _%r136793%_))))
                 (_%expand-internal136523%_
                  (lambda (_%hd136786%_ _%rest136787%_)
                    (call-with-parameters__1
                     (lambda ()
                       (_%wrap-internal136525%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd136786%_ _%rest136787%_))
                          (gx#stx-source _%stx136519%_))
                         _%expand-internal-special136524%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj137145
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj137145)
                       __obj137145))))
                 (_%expand-internal-special136524%_
                  (lambda (_%hd136681%_ _%K136682%_ _%rest136683%_ _%r136684%_)
                    (let* ((_%e136685136710%_ _%hd136681%_)
                           (_%E136705136714%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e136685136710%_)))
                           (_%E136701136726%_
                            (lambda ()
                              (if (gx#stx-pair? _%e136685136710%_)
                                  (let ((_%e136706136718%_
                                         (gx#syntax-e _%e136685136710%_)))
                                    (let ((_%hd136707136721%_
                                           (##car _%e136706136718%_))
                                          (_%tl136708136723%_
                                           (##cdr _%e136706136718%_)))
                                      (if (and (gx#identifier?
                                                _%hd136707136721%_)
                                               (gx#core-identifier=?
                                                _%hd136707136721%_
                                                '%#declare))
                                          (_%K136682%_
                                           _%rest136683%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd136681%_)
                                                 _%r136684%_))
                                          (_%E136705136714%_))))
                                  (_%E136705136714%_))))
                           (_%E136697136738%_
                            (lambda ()
                              (if (gx#stx-pair? _%e136685136710%_)
                                  (let ((_%e136702136730%_
                                         (gx#syntax-e _%e136685136710%_)))
                                    (let ((_%hd136703136733%_
                                           (##car _%e136702136730%_))
                                          (_%tl136704136735%_
                                           (##cdr _%e136702136730%_)))
                                      (if (and (gx#identifier?
                                                _%hd136703136733%_)
                                               (gx#core-identifier=?
                                                _%hd136703136733%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd136681%_)
                                            (_%K136682%_
                                             _%rest136683%_
                                             _%r136684%_))
                                          (_%E136701136726%_))))
                                  (_%E136701136726%_))))
                           (_%E136687136750%_
                            (lambda ()
                              (if (gx#stx-pair? _%e136685136710%_)
                                  (let ((_%e136698136742%_
                                         (gx#syntax-e _%e136685136710%_)))
                                    (let ((_%hd136699136745%_
                                           (##car _%e136698136742%_))
                                          (_%tl136700136747%_
                                           (##cdr _%e136698136742%_)))
                                      (if (and (gx#identifier?
                                                _%hd136699136745%_)
                                               (gx#core-identifier=?
                                                _%hd136699136745%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd136681%_)
                                            (_%K136682%_
                                             _%rest136683%_
                                             _%r136684%_))
                                          (_%E136697136738%_))))
                                  (_%E136697136738%_))))
                           (_%E136686136782%_
                            (lambda ()
                              (if (gx#stx-pair? _%e136685136710%_)
                                  (let ((_%e136688136754%_
                                         (gx#syntax-e _%e136685136710%_)))
                                    (let ((_%hd136689136757%_
                                           (##car _%e136688136754%_))
                                          (_%tl136690136759%_
                                           (##cdr _%e136688136754%_)))
                                      (if (and (gx#identifier?
                                                _%hd136689136757%_)
                                               (gx#core-identifier=?
                                                _%hd136689136757%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl136690136759%_)
                                              (let ((_%e136691136762%_
                                                     (gx#syntax-e
                                                      _%tl136690136759%_)))
                                                (let ((_%hd136692136765%_
                                                       (##car _%e136691136762%_))
                                                      (_%tl136693136767%_
                                                       (##cdr _%e136691136762%_)))
                                                  (let ((_%hd-bind136770%_
                                                         _%hd136692136765%_))
                                                    (if (gx#stx-pair?
                                                         _%tl136693136767%_)
                                                        (let ((_%e136694136772%_
                                                               (gx#syntax-e
                                                                _%tl136693136767%_)))
                                                          (let ((_%hd136695136775%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e136694136772%_))
                        (_%tl136696136777%_ (##cdr _%e136694136772%_)))
                    (let ((_%expr136780%_ _%hd136695136775%_))
                      (if (gx#stx-null? _%tl136696136777%_)
                          (if (gx#core-bind-values? _%hd-bind136770%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind136770%_)
                                (_%K136682%_
                                 _%rest136683%_
                                 (cons _%hd136681%_ _%r136684%_)))
                              (_%E136687136750%_))
                          (_%E136687136750%_)))))
                (_%E136687136750%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E136687136750%_))
                                          (_%E136687136750%_))))
                                  (_%E136687136750%_)))))
                      (_%E136686136782%_))))
                 (_%wrap-internal136525%_
                  (lambda (_%rbody136527%_)
                    (let _%lp136529%_ ((_%rest136531%_ _%rbody136527%_)
                                       (_%decls136532%_ '())
                                       (_%bind136533%_ '())
                                       (_%body136534%_ '()))
                      (let* ((_%e136535136542%_ _%rest136531%_)
                             (_%E136537136591%_
                              (lambda ()
                                (let* ((_%body136586%_
                                        (let* ((_%body136545136555%_
                                                _%body136534%_)
                                               (_%else136548136563%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body136534%_)
                                                   (gx#stx-source
                                                    _%stx136519%_)))))
                                          (let ((_%K136553136583%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx136519%_)))
                                                (_%K136550136569%_
                                                 (lambda (_%expr136567%_)
                                                   _%expr136567%_)))
                                            (let ((_%try-match136547136579%_
                                                   (lambda ()
                                                     (if (pair? _%body136545136555%_)
                                                         (let ((_%tl136552136574%_
                                                                (##cdr _%body136545136555%_))
                                                               (_%hd136551136572%_
                                                                (##car _%body136545136555%_)))
                                                           (if (null? _%tl136552136574%_)
                                                               (let ((_%expr136577%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd136551136572%_))
                         (_%K136550136569%_ _%expr136577%_))
                       (_%else136548136563%_)))
                 (_%else136548136563%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%body136545136555%_)
                                                  (_%K136553136583%_)
                                                  (_%try-match136547136579%_))))))
                                       (_%body136588%_
                                        (if (null? _%bind136533%_)
                                            _%body136586%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind136533%_
                                                         (cons _%body136586%_
                                                               '())))
                                             (gx#stx-source _%stx136519%_)))))
                                  (if (null? _%decls136532%_)
                                      _%body136588%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls136532%_
                                                   (cons _%body136588%_ '())))
                                       (gx#stx-source _%stx136519%_))))))
                             (_%E136536136677%_
                              (lambda ()
                                (if (gx#stx-pair? _%e136535136542%_)
                                    (let ((_%e136538136595%_
                                           (gx#syntax-e _%e136535136542%_)))
                                      (let ((_%hd136539136598%_
                                             (##car _%e136538136595%_))
                                            (_%tl136540136600%_
                                             (##cdr _%e136538136595%_)))
                                        (let* ((_%hd136603%_
                                                _%hd136539136598%_)
                                               (_%rest136605%_
                                                _%tl136540136600%_)
                                               (_%e136606136623%_ _%hd136603%_)
                                               (_%E136618136627%_
                                                (lambda ()
                                                  (if (null? _%bind136533%_)
                                                      (_%lp136529%_
                                                       _%rest136605%_
                                                       _%decls136532%_
                                                       _%bind136533%_
                                                       (cons _%hd136603%_
                                                             _%body136534%_))
                                                      (_%lp136529%_
                                                       _%rest136605%_
                                                       _%decls136532%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd136603%_ '()))
                     _%bind136533%_)
               _%body136534%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E136608136641%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e136606136623%_)
                                                      (let ((_%e136619136631%_
                                                             (gx#syntax-e
                                                              _%e136606136623%_)))
                                                        (let ((_%hd136620136634%_
                                                               (##car _%e136619136631%_))
                                                              (_%tl136621136636%_
                                                               (##cdr _%e136619136631%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd136620136634%_)
                           (gx#core-identifier=?
                            _%hd136620136634%_
                            '%#declare))
                      (let ((_%xdecls136639%_ _%tl136621136636%_))
                        (_%lp136529%_
                         _%rest136605%_
                         (gx#stx-foldr cons _%decls136532%_ _%xdecls136639%_)
                         _%bind136533%_
                         _%body136534%_))
                      (_%E136618136627%_))))
              (_%E136618136627%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E136607136673%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e136606136623%_)
                                                      (let ((_%e136609136645%_
                                                             (gx#syntax-e
                                                              _%e136606136623%_)))
                                                        (let ((_%hd136610136648%_
                                                               (##car _%e136609136645%_))
                                                              (_%tl136611136650%_
                                                               (##cdr _%e136609136645%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd136610136648%_)
                           (gx#core-identifier=?
                            _%hd136610136648%_
                            '%#define-values))
                      (if (gx#stx-pair? _%tl136611136650%_)
                          (let ((_%e136612136653%_
                                 (gx#syntax-e _%tl136611136650%_)))
                            (let ((_%hd136613136656%_
                                   (##car _%e136612136653%_))
                                  (_%tl136614136658%_
                                   (##cdr _%e136612136653%_)))
                              (let ((_%hd-bind136661%_ _%hd136613136656%_))
                                (if (gx#stx-pair? _%tl136614136658%_)
                                    (let ((_%e136615136663%_
                                           (gx#syntax-e _%tl136614136658%_)))
                                      (let ((_%hd136616136666%_
                                             (##car _%e136615136663%_))
                                            (_%tl136617136668%_
                                             (##cdr _%e136615136663%_)))
                                        (let ((_%expr136671%_
                                               _%hd136616136666%_))
                                          (if (gx#stx-null? _%tl136617136668%_)
                                              (_%lp136529%_
                                               _%rest136605%_
                                               _%decls136532%_
                                               (cons (cons (gx#core-quote-bind-values
                                                            _%hd-bind136661%_)
                                                           (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%expr136671%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind136533%_)
                                               _%body136534%_)
                                              (_%E136608136641%_)))))
                                    (_%E136608136641%_)))))
                          (_%E136608136641%_))
                      (_%E136608136641%_))))
              (_%E136608136641%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%E136607136673%_))))
                                    (_%E136537136591%_)))))
                        (_%E136536136677%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body136520%_)
            (gx#stx-source _%stx136519%_))
           _%expand-special136522%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx136457%_)
        (let* ((_%e136458136465%_ _%stx136457%_)
               (_%E136460136469%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136458136465%_)))
               (_%E136459136515%_
                (lambda ()
                  (if (gx#stx-pair? _%e136458136465%_)
                      (let ((_%e136461136473%_
                             (gx#syntax-e _%e136458136465%_)))
                        (let ((_%hd136462136476%_ (##car _%e136461136473%_))
                              (_%tl136463136478%_ (##cdr _%e136461136473%_)))
                          (let ((_%body136481%_ _%tl136463136478%_))
                            (if (gx#stx-list? _%body136481%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl136483%_)
                                     (let* ((_%e136484136491%_ _%decl136483%_)
                                            (_%E136486136495%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e136484136491%_)))
                                            (_%E136485136511%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e136484136491%_)
                                                   (let ((_%e136487136499%_
                                                          (gx#syntax-e
                                                           _%e136484136491%_)))
                                                     (let ((_%hd136488136502%_
                                                            (##car _%e136487136499%_))
                                                           (_%tl136489136504%_
                                                            (##cdr _%e136487136499%_)))
                                                       (let* ((_%head136507%_
                                                               _%hd136488136502%_)
                                                              (_%args136509%_
                                                               _%tl136489136504%_))
                                                         (if (gx#stx-list?
                                                              _%args136509%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl136483%_)
                                                             (_%E136486136495%_)))))
                                                   (_%E136486136495%_)))))
                                       (_%E136485136511%_)))
                                   _%body136481%_))
                                 (gx#stx-source _%stx136457%_))
                                (_%E136460136469%_)))))
                      (_%E136460136469%_)))))
          (_%E136459136515%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx136361%_)
        (let* ((_%e136362136369%_ _%stx136361%_)
               (_%E136364136373%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136362136369%_)))
               (_%E136363136453%_
                (lambda ()
                  (if (gx#stx-pair? _%e136362136369%_)
                      (let ((_%e136365136377%_
                             (gx#syntax-e _%e136362136369%_)))
                        (let ((_%hd136366136380%_ (##car _%e136365136377%_))
                              (_%tl136367136382%_ (##cdr _%e136365136377%_)))
                          (let ((_%body136385%_ _%tl136367136382%_))
                            (let _%lp136387%_ ((_%rest136389%_ _%body136385%_)
                                               (_%r136390%_ '()))
                              (let* ((_%e136391136405%_ _%rest136389%_)
                                     (_%E136403136409%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx136361%_)))
                                     (_%E136393136413%_
                                      (lambda ()
                                        (if (gx#stx-null? _%e136391136405%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r136390%_))
                                             (gx#stx-source _%stx136361%_))
                                            (_%E136403136409%_))))
                                     (_%E136392136449%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e136391136405%_)
                                            (let ((_%e136394136417%_
                                                   (gx#syntax-e
                                                    _%e136391136405%_)))
                                              (let ((_%hd136395136420%_
                                                     (##car _%e136394136417%_))
                                                    (_%tl136396136422%_
                                                     (##cdr _%e136394136417%_)))
                                                (if (gx#stx-pair?
                                                     _%hd136395136420%_)
                                                    (let ((_%e136397136425%_
                                                           (gx#syntax-e
                                                            _%hd136395136420%_)))
                                                      (let ((_%hd136398136428%_
                                                             (##car _%e136397136425%_))
                                                            (_%tl136399136430%_
                                                             (##cdr _%e136397136425%_)))
                                                        (let ((_%id136433%_
                                                               _%hd136398136428%_))
                                                          (if (gx#stx-pair?
                                                               _%tl136399136430%_)
                                                              (let ((_%e136400136435%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl136399136430%_)))
                        (let ((_%hd136401136438%_ (##car _%e136400136435%_))
                              (_%tl136402136440%_ (##cdr _%e136400136435%_)))
                          (let ((_%eid136443%_ _%hd136401136438%_))
                            (if (gx#stx-null? _%tl136402136440%_)
                                (let ((_%rest136445%_ _%tl136396136422%_))
                                  (if (and (gx#identifier? _%id136433%_)
                                           (gx#identifier? _%eid136443%_))
                                      (let ((_%eid136447%_
                                             (gx#stx-e _%eid136443%_)))
                                        (gx#core-bind-extern!__0
                                         _%id136433%_
                                         _%eid136447%_)
                                        (_%lp136387%_
                                         _%rest136445%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id136433%_)
                                                     (cons _%eid136447%_ '()))
                                               _%r136390%_)))
                                      (_%E136393136413%_)))
                                (_%E136393136413%_)))))
                      (_%E136393136413%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E136393136413%_))))
                                            (_%E136393136413%_)))))
                                (_%E136392136449%_))))))
                      (_%E136364136373%_)))))
          (_%E136363136453%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx136307%_)
        (let* ((_%e136308136321%_ _%stx136307%_)
               (_%E136310136325%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136308136321%_)))
               (_%E136309136357%_
                (lambda ()
                  (if (gx#stx-pair? _%e136308136321%_)
                      (let ((_%e136311136329%_
                             (gx#syntax-e _%e136308136321%_)))
                        (let ((_%hd136312136332%_ (##car _%e136311136329%_))
                              (_%tl136313136334%_ (##cdr _%e136311136329%_)))
                          (if (gx#stx-pair? _%tl136313136334%_)
                              (let ((_%e136314136337%_
                                     (gx#syntax-e _%tl136313136334%_)))
                                (let ((_%hd136315136340%_
                                       (##car _%e136314136337%_))
                                      (_%tl136316136342%_
                                       (##cdr _%e136314136337%_)))
                                  (let ((_%hd136345%_ _%hd136315136340%_))
                                    (if (gx#stx-pair? _%tl136316136342%_)
                                        (let ((_%e136317136347%_
                                               (gx#syntax-e
                                                _%tl136316136342%_)))
                                          (let ((_%hd136318136350%_
                                                 (##car _%e136317136347%_))
                                                (_%tl136319136352%_
                                                 (##cdr _%e136317136347%_)))
                                            (let ((_%expr136355%_
                                                   _%hd136318136350%_))
                                              (if (gx#stx-null?
                                                   _%tl136319136352%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd136345%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd136345%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd136345%_)
                             (cons (gx#core-expand-expression _%expr136355%_)
                                   '())))
                 (gx#stx-source _%stx136307%_)))
              (_%E136310136325%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E136310136325%_)))))
                                        (_%E136310136325%_)))))
                              (_%E136310136325%_))))
                      (_%E136310136325%_)))))
          (_%E136309136357%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx136251%_)
        (let* ((_%e136252136265%_ _%stx136251%_)
               (_%E136254136269%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136252136265%_)))
               (_%E136253136303%_
                (lambda ()
                  (if (gx#stx-pair? _%e136252136265%_)
                      (let ((_%e136255136273%_
                             (gx#syntax-e _%e136252136265%_)))
                        (let ((_%hd136256136276%_ (##car _%e136255136273%_))
                              (_%tl136257136278%_ (##cdr _%e136255136273%_)))
                          (if (gx#stx-pair? _%tl136257136278%_)
                              (let ((_%e136258136281%_
                                     (gx#syntax-e _%tl136257136278%_)))
                                (let ((_%hd136259136284%_
                                       (##car _%e136258136281%_))
                                      (_%tl136260136286%_
                                       (##cdr _%e136258136281%_)))
                                  (let ((_%id136289%_ _%hd136259136284%_))
                                    (if (gx#stx-pair? _%tl136260136286%_)
                                        (let ((_%e136261136291%_
                                               (gx#syntax-e
                                                _%tl136260136286%_)))
                                          (let ((_%hd136262136294%_
                                                 (##car _%e136261136291%_))
                                                (_%tl136263136296%_
                                                 (##cdr _%e136261136291%_)))
                                            (let ((_%binding-id136299%_
                                                   _%hd136262136294%_))
                                              (if (gx#stx-null?
                                                   _%tl136263136296%_)
                                                  (if (and (gx#identifier?
                                                            _%id136289%_)
                                                           (gx#identifier?
                                                            _%binding-id136299%_))
                                                      (let ((_%eid136301%_
                                                             (gx#stx-e
                                                              _%binding-id136299%_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _%id136289%_
                                                         _%eid136301%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id136289%_)
                             (cons _%eid136301%_ '())))))
              (_%E136254136269%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E136254136269%_)))))
                                        (_%E136254136269%_)))))
                              (_%E136254136269%_))))
                      (_%E136254136269%_)))))
          (_%E136253136303%_))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx136194%_)
        (let* ((_%e136195136208%_ _%stx136194%_)
               (_%E136197136212%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136195136208%_)))
               (_%E136196136247%_
                (lambda ()
                  (if (gx#stx-pair? _%e136195136208%_)
                      (let ((_%e136198136216%_
                             (gx#syntax-e _%e136195136208%_)))
                        (let ((_%hd136199136219%_ (##car _%e136198136216%_))
                              (_%tl136200136221%_ (##cdr _%e136198136216%_)))
                          (if (gx#stx-pair? _%tl136200136221%_)
                              (let ((_%e136201136224%_
                                     (gx#syntax-e _%tl136200136221%_)))
                                (let ((_%hd136202136227%_
                                       (##car _%e136201136224%_))
                                      (_%tl136203136229%_
                                       (##cdr _%e136201136224%_)))
                                  (let ((_%id136232%_ _%hd136202136227%_))
                                    (if (gx#stx-pair? _%tl136203136229%_)
                                        (let ((_%e136204136234%_
                                               (gx#syntax-e
                                                _%tl136203136229%_)))
                                          (let ((_%hd136205136237%_
                                                 (##car _%e136204136234%_))
                                                (_%tl136206136239%_
                                                 (##cdr _%e136204136234%_)))
                                            (let ((_%expr136242%_
                                                   _%hd136205136237%_))
                                              (if (gx#stx-null?
                                                   _%tl136206136239%_)
                                                  (if (gx#identifier?
                                                       _%id136232%_)
                                                      (let ((_g137153_
                                                             (gx#core-expand-expression+1
                                                              _%expr136242%_)))
                                                        (begin
                                                          (let ((_g137154_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g137153_)
                             (##values-length _g137153_)
                             1)))
                    (if (not (##fx= _g137154_ 2))
                        (error "Context expects 2 values" _g137154_)))
                  (let ((_%e-stx136244%_ (##values-ref _g137153_ 0))
                        (_%e136245%_ (##values-ref _g137153_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id136232%_ _%e136245%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id136232%_)
                                   (cons _%e-stx136244%_ '())))
                       (gx#stx-source _%stx136194%_))))))
              (_%E136197136212%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E136197136212%_)))))
                                        (_%E136197136212%_)))))
                              (_%E136197136212%_))))
                      (_%E136197136212%_)))))
          (_%E136196136247%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx136138%_)
        (let* ((_%e136139136152%_ _%stx136138%_)
               (_%E136141136156%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136139136152%_)))
               (_%E136140136190%_
                (lambda ()
                  (if (gx#stx-pair? _%e136139136152%_)
                      (let ((_%e136142136160%_
                             (gx#syntax-e _%e136139136152%_)))
                        (let ((_%hd136143136163%_ (##car _%e136142136160%_))
                              (_%tl136144136165%_ (##cdr _%e136142136160%_)))
                          (if (gx#stx-pair? _%tl136144136165%_)
                              (let ((_%e136145136168%_
                                     (gx#syntax-e _%tl136144136165%_)))
                                (let ((_%hd136146136171%_
                                       (##car _%e136145136168%_))
                                      (_%tl136147136173%_
                                       (##cdr _%e136145136168%_)))
                                  (let ((_%id136176%_ _%hd136146136171%_))
                                    (if (gx#stx-pair? _%tl136147136173%_)
                                        (let ((_%e136148136178%_
                                               (gx#syntax-e
                                                _%tl136147136173%_)))
                                          (let ((_%hd136149136181%_
                                                 (##car _%e136148136178%_))
                                                (_%tl136150136183%_
                                                 (##cdr _%e136148136178%_)))
                                            (let ((_%alias-id136186%_
                                                   _%hd136149136181%_))
                                              (if (gx#stx-null?
                                                   _%tl136150136183%_)
                                                  (if (and (gx#identifier?
                                                            _%id136176%_)
                                                           (gx#identifier?
                                                            _%alias-id136186%_))
                                                      (let ((_%alias-id136188%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id136186%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id136176%_
                                                         _%alias-id136188%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id136176%_)
                             (cons _%alias-id136188%_ '())))))
              (_%E136141136156%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E136141136156%_)))))
                                        (_%E136141136156%_)))))
                              (_%E136141136156%_))))
                      (_%E136141136156%_)))))
          (_%E136140136190%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx136081%_ _%wrap?136082%_)
        (let* ((_%e136083136093%_ _%stx136081%_)
               (_%E136085136097%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136083136093%_)))
               (_%E136084136124%_
                (lambda ()
                  (if (gx#stx-pair? _%e136083136093%_)
                      (let ((_%e136086136101%_
                             (gx#syntax-e _%e136083136093%_)))
                        (let ((_%hd136087136104%_ (##car _%e136086136101%_))
                              (_%tl136088136106%_ (##cdr _%e136086136101%_)))
                          (if (gx#stx-pair? _%tl136088136106%_)
                              (let ((_%e136089136109%_
                                     (gx#syntax-e _%tl136088136106%_)))
                                (let ((_%hd136090136112%_
                                       (##car _%e136089136109%_))
                                      (_%tl136091136114%_
                                       (##cdr _%e136089136109%_)))
                                  (let* ((_%hd136117%_ _%hd136090136112%_)
                                         (_%body136119%_ _%tl136091136114%_))
                                    (if (gx#core-bind-values? _%hd136117%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd136117%_)
                                           (let ((_%body136122%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd136117%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx136081%_
                                                               _%body136119%_)
                                                              '()))))
                                             (if _%wrap?136082%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body136122%_)
                                                  (gx#stx-source
                                                   _%stx136081%_))
                                                 _%body136122%_)))
                                         gx#current-expander-context
                                         (let ((__obj137146
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj137146)
                                           __obj137146))
                                        (_%E136085136097%_)))))
                              (_%E136085136097%_))))
                      (_%E136085136097%_)))))
          (_%E136084136124%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx136131%_)
        (let ((_%wrap?136133%_ '#t))
          (gx#core-expand-lambda%__% _%stx136131%_ _%wrap?136133%_))))
    (define gx#core-expand-lambda%
      (lambda _g137155_
        (let ((_g137156_ (##length _g137155_)))
          (cond ((##fx= _g137156_ 1)
                 (apply gx#core-expand-lambda%__0 _g137155_))
                ((##fx= _g137156_ 2)
                 (apply gx#core-expand-lambda%__% _g137155_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g137155_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx136045%_)
        (let* ((_%e136046136053%_ _%stx136045%_)
               (_%E136048136057%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136046136053%_)))
               (_%E136047136076%_
                (lambda ()
                  (if (gx#stx-pair? _%e136046136053%_)
                      (let ((_%e136049136061%_
                             (gx#syntax-e _%e136046136053%_)))
                        (let ((_%hd136050136064%_ (##car _%e136049136061%_))
                              (_%tl136051136066%_ (##cdr _%e136049136061%_)))
                          (let ((_%clauses136069%_ _%tl136051136066%_))
                            (if (gx#stx-list? _%clauses136069%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause136071%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause136071%_)
                                       (let ((_%$e136073%_
                                              (gx#stx-source
                                               _%clause136071%_)))
                                         (if _%$e136073%_
                                             _%$e136073%_
                                             (gx#stx-source _%stx136045%_))))
                                      '#f))
                                   _%clauses136069%_))
                                 (gx#stx-source _%stx136045%_))
                                (_%E136048136057%_)))))
                      (_%E136048136057%_)))))
          (_%E136047136076%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx135999%_)
        (let* ((_%e136000136010%_ _%stx135999%_)
               (_%E136002136014%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136000136010%_)))
               (_%E136001136041%_
                (lambda ()
                  (if (gx#stx-pair? _%e136000136010%_)
                      (let ((_%e136003136018%_
                             (gx#syntax-e _%e136000136010%_)))
                        (let ((_%hd136004136021%_ (##car _%e136003136018%_))
                              (_%tl136005136023%_ (##cdr _%e136003136018%_)))
                          (if (gx#stx-pair? _%tl136005136023%_)
                              (let ((_%e136006136026%_
                                     (gx#syntax-e _%tl136005136023%_)))
                                (let ((_%hd136007136029%_
                                       (##car _%e136006136026%_))
                                      (_%tl136008136031%_
                                       (##cdr _%e136006136026%_)))
                                  (let* ((_%hd136034%_ _%hd136007136029%_)
                                         (_%body136036%_ _%tl136008136031%_))
                                    (if (gx#core-expand-let-bind? _%hd136034%_)
                                        (let ((_%expressions136038%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd136034%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd136034%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd136034%_
                                                           _%expressions136038%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx135999%_
                         _%body136036%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx135999%_)))
                                           gx#current-expander-context
                                           (let ((__obj137147
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj137147)
                                             __obj137147)))
                                        (_%E136002136014%_)))))
                              (_%E136002136014%_))))
                      (_%E136002136014%_)))))
          (_%E136001136041%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx135944%_ _%form135945%_)
        (let* ((_%e135946135956%_ _%stx135944%_)
               (_%E135948135960%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135946135956%_)))
               (_%E135947135985%_
                (lambda ()
                  (if (gx#stx-pair? _%e135946135956%_)
                      (let ((_%e135949135964%_
                             (gx#syntax-e _%e135946135956%_)))
                        (let ((_%hd135950135967%_ (##car _%e135949135964%_))
                              (_%tl135951135969%_ (##cdr _%e135949135964%_)))
                          (if (gx#stx-pair? _%tl135951135969%_)
                              (let ((_%e135952135972%_
                                     (gx#syntax-e _%tl135951135969%_)))
                                (let ((_%hd135953135975%_
                                       (##car _%e135952135972%_))
                                      (_%tl135954135977%_
                                       (##cdr _%e135952135972%_)))
                                  (let* ((_%hd135980%_ _%hd135953135975%_)
                                         (_%body135982%_ _%tl135954135977%_))
                                    (if (gx#core-expand-let-bind? _%hd135980%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd135980%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form135945%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd135980%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd135980%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx135944%_
                                                               _%body135982%_)
                                                              '())))
                                            (gx#stx-source _%stx135944%_)))
                                         gx#current-expander-context
                                         (let ((__obj137148
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj137148)
                                           __obj137148))
                                        (_%E135948135960%_)))))
                              (_%E135948135960%_))))
                      (_%E135948135960%_)))))
          (_%E135947135985%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx135992%_)
        (let ((_%form135994%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx135992%_ _%form135994%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g137157_
        (let ((_g137158_ (##length _g137157_)))
          (cond ((##fx= _g137158_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g137157_))
                ((##fx= _g137158_ 2)
                 (apply gx#core-expand-letrec-values%__% _g137157_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g137157_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx135941%_)
        (gx#core-expand-letrec-values%__% _%stx135941%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx135898%_)
        (if (gx#stx-list? _%stx135898%_)
            (gx#stx-andmap
             (lambda (_%bind135900%_)
               (let* ((_%e135901135911%_ _%bind135900%_)
                      (_%E135903135915%_ (lambda () '#f))
                      (_%E135902135937%_
                       (lambda ()
                         (if (gx#stx-pair? _%e135901135911%_)
                             (let ((_%e135904135919%_
                                    (gx#syntax-e _%e135901135911%_)))
                               (let ((_%hd135905135922%_
                                      (##car _%e135904135919%_))
                                     (_%tl135906135924%_
                                      (##cdr _%e135904135919%_)))
                                 (let ((_%hd135927%_ _%hd135905135922%_))
                                   (if (gx#stx-pair? _%tl135906135924%_)
                                       (let ((_%e135907135929%_
                                              (gx#syntax-e
                                               _%tl135906135924%_)))
                                         (let ((_%hd135908135932%_
                                                (##car _%e135907135929%_))
                                               (_%tl135909135934%_
                                                (##cdr _%e135907135929%_)))
                                           (if (gx#stx-null?
                                                _%tl135909135934%_)
                                               (gx#core-bind-values?
                                                _%hd135927%_)
                                               (_%E135903135915%_))))
                                       (_%E135903135915%_)))))
                             (_%E135903135915%_)))))
                 (_%E135902135937%_)))
             _%stx135898%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind135857%_)
        (let* ((_%e135858135868%_ _%bind135857%_)
               (_%E135860135872%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135858135868%_)))
               (_%E135859135894%_
                (lambda ()
                  (if (gx#stx-pair? _%e135858135868%_)
                      (let ((_%e135861135876%_
                             (gx#syntax-e _%e135858135868%_)))
                        (let ((_%hd135862135879%_ (##car _%e135861135876%_))
                              (_%tl135863135881%_ (##cdr _%e135861135876%_)))
                          (if (gx#stx-pair? _%tl135863135881%_)
                              (let ((_%e135864135884%_
                                     (gx#syntax-e _%tl135863135881%_)))
                                (let ((_%hd135865135887%_
                                       (##car _%e135864135884%_))
                                      (_%tl135866135889%_
                                       (##cdr _%e135864135884%_)))
                                  (let ((_%expr135892%_ _%hd135865135887%_))
                                    (if (gx#stx-null? _%tl135866135889%_)
                                        (gx#core-expand-expression
                                         _%expr135892%_)
                                        (_%E135860135872%_)))))
                              (_%E135860135872%_))))
                      (_%E135860135872%_)))))
          (_%E135859135894%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind135816%_)
        (let* ((_%e135817135827%_ _%bind135816%_)
               (_%E135819135831%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135817135827%_)))
               (_%E135818135853%_
                (lambda ()
                  (if (gx#stx-pair? _%e135817135827%_)
                      (let ((_%e135820135835%_
                             (gx#syntax-e _%e135817135827%_)))
                        (let ((_%hd135821135838%_ (##car _%e135820135835%_))
                              (_%tl135822135840%_ (##cdr _%e135820135835%_)))
                          (let ((_%hd135843%_ _%hd135821135838%_))
                            (if (gx#stx-pair? _%tl135822135840%_)
                                (let ((_%e135823135845%_
                                       (gx#syntax-e _%tl135822135840%_)))
                                  (let ((_%hd135824135848%_
                                         (##car _%e135823135845%_))
                                        (_%tl135825135850%_
                                         (##cdr _%e135823135845%_)))
                                    (if (gx#stx-null? _%tl135825135850%_)
                                        (gx#core-bind-values!__0 _%hd135843%_)
                                        (_%E135819135831%_))))
                                (_%E135819135831%_)))))
                      (_%E135819135831%_)))))
          (_%E135818135853%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind135774%_ _%expr135775%_)
        (let* ((_%e135776135786%_ _%bind135774%_)
               (_%E135778135790%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135776135786%_)))
               (_%E135777135812%_
                (lambda ()
                  (if (gx#stx-pair? _%e135776135786%_)
                      (let ((_%e135779135794%_
                             (gx#syntax-e _%e135776135786%_)))
                        (let ((_%hd135780135797%_ (##car _%e135779135794%_))
                              (_%tl135781135799%_ (##cdr _%e135779135794%_)))
                          (let ((_%hd135802%_ _%hd135780135797%_))
                            (if (gx#stx-pair? _%tl135781135799%_)
                                (let ((_%e135782135804%_
                                       (gx#syntax-e _%tl135781135799%_)))
                                  (let ((_%hd135783135807%_
                                         (##car _%e135782135804%_))
                                        (_%tl135784135809%_
                                         (##cdr _%e135782135804%_)))
                                    (if (gx#stx-null? _%tl135784135809%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd135802%_)
                                              (cons _%expr135775%_ '()))
                                        (_%E135778135790%_))))
                                (_%E135778135790%_)))))
                      (_%E135778135790%_)))))
          (_%E135777135812%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx135728%_)
        (let* ((_%e135729135739%_ _%stx135728%_)
               (_%E135731135743%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135729135739%_)))
               (_%E135730135770%_
                (lambda ()
                  (if (gx#stx-pair? _%e135729135739%_)
                      (let ((_%e135732135747%_
                             (gx#syntax-e _%e135729135739%_)))
                        (let ((_%hd135733135750%_ (##car _%e135732135747%_))
                              (_%tl135734135752%_ (##cdr _%e135732135747%_)))
                          (if (gx#stx-pair? _%tl135734135752%_)
                              (let ((_%e135735135755%_
                                     (gx#syntax-e _%tl135734135752%_)))
                                (let ((_%hd135736135758%_
                                       (##car _%e135735135755%_))
                                      (_%tl135737135760%_
                                       (##cdr _%e135735135755%_)))
                                  (let* ((_%hd135763%_ _%hd135736135758%_)
                                         (_%body135765%_ _%tl135737135760%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd135763%_)
                                        (let ((_%expanders135767%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd135763%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd135763%_
                                              _%expanders135767%_)
                                             (gx#core-expand-local-block
                                              _%stx135728%_
                                              _%body135765%_))
                                           gx#current-expander-context
                                           (let ((__obj137149
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj137149)
                                             __obj137149)))
                                        (_%E135731135743%_)))))
                              (_%E135731135743%_))))
                      (_%E135731135743%_)))))
          (_%E135730135770%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx135677%_)
        (let* ((_%e135678135688%_ _%stx135677%_)
               (_%E135680135692%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135678135688%_)))
               (_%E135679135724%_
                (lambda ()
                  (if (gx#stx-pair? _%e135678135688%_)
                      (let ((_%e135681135696%_
                             (gx#syntax-e _%e135678135688%_)))
                        (let ((_%hd135682135699%_ (##car _%e135681135696%_))
                              (_%tl135683135701%_ (##cdr _%e135681135696%_)))
                          (if (gx#stx-pair? _%tl135683135701%_)
                              (let ((_%e135684135704%_
                                     (gx#syntax-e _%tl135683135701%_)))
                                (let ((_%hd135685135707%_
                                       (##car _%e135684135704%_))
                                      (_%tl135686135709%_
                                       (##cdr _%e135684135704%_)))
                                  (let* ((_%hd135712%_ _%hd135685135707%_)
                                         (_%body135714%_ _%tl135686135709%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd135712%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd135712%_
                                            (make-list
                                             (gx#stx-length _%hd135712%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g135716135719%_
                                                     _%g135717135721%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g135716135719%_
                                               _%g135717135721%_
                                               '#t))
                                            _%hd135712%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd135712%_))
                                           (gx#core-expand-local-block
                                            _%stx135677%_
                                            _%body135714%_))
                                         gx#current-expander-context
                                         (let ((__obj137150
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj137150)
                                           __obj137150))
                                        (_%E135680135692%_)))))
                              (_%E135680135692%_))))
                      (_%E135680135692%_)))))
          (_%E135679135724%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx135634%_)
        (if (gx#stx-list? _%stx135634%_)
            (gx#stx-andmap
             (lambda (_%bind135636%_)
               (let* ((_%e135637135647%_ _%bind135636%_)
                      (_%E135639135651%_ (lambda () '#f))
                      (_%E135638135673%_
                       (lambda ()
                         (if (gx#stx-pair? _%e135637135647%_)
                             (let ((_%e135640135655%_
                                    (gx#syntax-e _%e135637135647%_)))
                               (let ((_%hd135641135658%_
                                      (##car _%e135640135655%_))
                                     (_%tl135642135660%_
                                      (##cdr _%e135640135655%_)))
                                 (let ((_%hd135663%_ _%hd135641135658%_))
                                   (if (gx#stx-pair? _%tl135642135660%_)
                                       (let ((_%e135643135665%_
                                              (gx#syntax-e
                                               _%tl135642135660%_)))
                                         (let ((_%hd135644135668%_
                                                (##car _%e135643135665%_))
                                               (_%tl135645135670%_
                                                (##cdr _%e135643135665%_)))
                                           (if (gx#stx-null?
                                                _%tl135645135670%_)
                                               (gx#identifier? _%hd135663%_)
                                               (_%E135639135651%_))))
                                       (_%E135639135651%_)))))
                             (_%E135639135651%_)))))
                 (_%E135638135673%_)))
             _%stx135634%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind135590%_)
        (let* ((_%e135591135601%_ _%bind135590%_)
               (_%E135593135605%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135591135601%_)))
               (_%E135592135630%_
                (lambda ()
                  (if (gx#stx-pair? _%e135591135601%_)
                      (let ((_%e135594135609%_
                             (gx#syntax-e _%e135591135601%_)))
                        (let ((_%hd135595135612%_ (##car _%e135594135609%_))
                              (_%tl135596135614%_ (##cdr _%e135594135609%_)))
                          (if (gx#stx-pair? _%tl135596135614%_)
                              (let ((_%e135597135617%_
                                     (gx#syntax-e _%tl135596135614%_)))
                                (let ((_%hd135598135620%_
                                       (##car _%e135597135617%_))
                                      (_%tl135599135622%_
                                       (##cdr _%e135597135617%_)))
                                  (let ((_%expr135625%_ _%hd135598135620%_))
                                    (if (gx#stx-null? _%tl135599135622%_)
                                        (let ((_g137159_
                                               (gx#core-expand-expression+1
                                                _%expr135625%_)))
                                          (begin
                                            (let ((_g137160_
                                                   (if (##values? _g137159_)
                                                       (##values-length
                                                        _g137159_)
                                                       1)))
                                              (if (not (##fx= _g137160_ 2))
                                                  (error "Context expects 2 values"
                                                         _g137160_)))
                                            (let ((_%_135627%_
                                                   (##values-ref _g137159_ 0))
                                                  (_%e135628%_
                                                   (##values-ref _g137159_ 1)))
                                              _%e135628%_)))
                                        (_%E135593135605%_)))))
                              (_%E135593135605%_))))
                      (_%E135593135605%_)))))
          (_%E135592135630%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind135535%_ _%e135536%_ _%rebind?135537%_)
        (let* ((_%e135538135548%_ _%bind135535%_)
               (_%E135540135552%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135538135548%_)))
               (_%E135539135574%_
                (lambda ()
                  (if (gx#stx-pair? _%e135538135548%_)
                      (let ((_%e135541135556%_
                             (gx#syntax-e _%e135538135548%_)))
                        (let ((_%hd135542135559%_ (##car _%e135541135556%_))
                              (_%tl135543135561%_ (##cdr _%e135541135556%_)))
                          (let ((_%id135564%_ _%hd135542135559%_))
                            (if (gx#stx-pair? _%tl135543135561%_)
                                (let ((_%e135544135566%_
                                       (gx#syntax-e _%tl135543135561%_)))
                                  (let ((_%hd135545135569%_
                                         (##car _%e135544135566%_))
                                        (_%tl135546135571%_
                                         (##cdr _%e135544135566%_)))
                                    (if (gx#stx-null? _%tl135546135571%_)
                                        (gx#core-bind-syntax!__1
                                         _%id135564%_
                                         _%e135536%_
                                         _%rebind?135537%_)
                                        (_%E135540135552%_))))
                                (_%E135540135552%_)))))
                      (_%E135540135552%_)))))
          (_%E135539135574%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind135581%_ _%e135582%_)
        (let ((_%rebind?135584%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind135581%_
           _%e135582%_
           _%rebind?135584%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g137161_
        (let ((_g137162_ (##length _g137161_)))
          (cond ((##fx= _g137162_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g137161_))
                ((##fx= _g137162_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g137161_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g137161_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx135493%_)
        (let* ((_%e135494135504%_ _%stx135493%_)
               (_%E135496135508%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135494135504%_)))
               (_%E135495135530%_
                (lambda ()
                  (if (gx#stx-pair? _%e135494135504%_)
                      (let ((_%e135497135512%_
                             (gx#syntax-e _%e135494135504%_)))
                        (let ((_%hd135498135515%_ (##car _%e135497135512%_))
                              (_%tl135499135517%_ (##cdr _%e135497135512%_)))
                          (if (gx#stx-pair? _%tl135499135517%_)
                              (let ((_%e135500135520%_
                                     (gx#syntax-e _%tl135499135517%_)))
                                (let ((_%hd135501135523%_
                                       (##car _%e135500135520%_))
                                      (_%tl135502135525%_
                                       (##cdr _%e135500135520%_)))
                                  (let ((_%expr135528%_ _%hd135501135523%_))
                                    (if (gx#stx-null? _%tl135502135525%_)
                                        (gx#core-expand-expression
                                         _%expr135528%_)
                                        (_%E135496135508%_)))))
                              (_%E135496135508%_))))
                      (_%E135496135508%_)))))
          (_%E135495135530%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx135452%_)
        (let* ((_%e135453135463%_ _%stx135452%_)
               (_%E135455135467%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135453135463%_)))
               (_%E135454135489%_
                (lambda ()
                  (if (gx#stx-pair? _%e135453135463%_)
                      (let ((_%e135456135471%_
                             (gx#syntax-e _%e135453135463%_)))
                        (let ((_%hd135457135474%_ (##car _%e135456135471%_))
                              (_%tl135458135476%_ (##cdr _%e135456135471%_)))
                          (if (gx#stx-pair? _%tl135458135476%_)
                              (let ((_%e135459135479%_
                                     (gx#syntax-e _%tl135458135476%_)))
                                (let ((_%hd135460135482%_
                                       (##car _%e135459135479%_))
                                      (_%tl135461135484%_
                                       (##cdr _%e135459135479%_)))
                                  (let ((_%e135487%_ _%hd135460135482%_))
                                    (if (gx#stx-null? _%tl135461135484%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e135487%_)
                                                     '()))
                                         (gx#stx-source _%stx135452%_))
                                        (_%E135455135467%_)))))
                              (_%E135455135467%_))))
                      (_%E135455135467%_)))))
          (_%E135454135489%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx135411%_)
        (let* ((_%e135412135422%_ _%stx135411%_)
               (_%E135414135426%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135412135422%_)))
               (_%E135413135448%_
                (lambda ()
                  (if (gx#stx-pair? _%e135412135422%_)
                      (let ((_%e135415135430%_
                             (gx#syntax-e _%e135412135422%_)))
                        (let ((_%hd135416135433%_ (##car _%e135415135430%_))
                              (_%tl135417135435%_ (##cdr _%e135415135430%_)))
                          (if (gx#stx-pair? _%tl135417135435%_)
                              (let ((_%e135418135438%_
                                     (gx#syntax-e _%tl135417135435%_)))
                                (let ((_%hd135419135441%_
                                       (##car _%e135418135438%_))
                                      (_%tl135420135443%_
                                       (##cdr _%e135418135438%_)))
                                  (let ((_%e135446%_ _%hd135419135441%_))
                                    (if (gx#stx-null? _%tl135420135443%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e135446%_)
                                                     '()))
                                         (gx#stx-source _%stx135411%_))
                                        (_%E135414135426%_)))))
                              (_%E135414135426%_))))
                      (_%E135414135426%_)))))
          (_%E135413135448%_))))
    (define gx#core-expand-call%
      (lambda (_%stx135368%_)
        (let* ((_%e135369135379%_ _%stx135368%_)
               (_%E135371135383%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135369135379%_)))
               (_%E135370135407%_
                (lambda ()
                  (if (gx#stx-pair? _%e135369135379%_)
                      (let ((_%e135372135387%_
                             (gx#syntax-e _%e135369135379%_)))
                        (let ((_%hd135373135390%_ (##car _%e135372135387%_))
                              (_%tl135374135392%_ (##cdr _%e135372135387%_)))
                          (if (gx#stx-pair? _%tl135374135392%_)
                              (let ((_%e135375135395%_
                                     (gx#syntax-e _%tl135374135392%_)))
                                (let ((_%hd135376135398%_
                                       (##car _%e135375135395%_))
                                      (_%tl135377135400%_
                                       (##cdr _%e135375135395%_)))
                                  (let* ((_%rator135403%_ _%hd135376135398%_)
                                         (_%args135405%_ _%tl135377135400%_))
                                    (if (gx#stx-list? _%args135405%_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _%rator135403%_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _%args135405%_))
                                         (gx#stx-source _%stx135368%_))
                                        (_%E135371135383%_)))))
                              (_%E135371135383%_))))
                      (_%E135371135383%_)))))
          (_%E135370135407%_))))
    (define gx#core-expand-if%
      (lambda (_%stx135301%_)
        (let* ((_%e135302135318%_ _%stx135301%_)
               (_%E135304135322%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135302135318%_)))
               (_%E135303135364%_
                (lambda ()
                  (if (gx#stx-pair? _%e135302135318%_)
                      (let ((_%e135305135326%_
                             (gx#syntax-e _%e135302135318%_)))
                        (let ((_%hd135306135329%_ (##car _%e135305135326%_))
                              (_%tl135307135331%_ (##cdr _%e135305135326%_)))
                          (if (gx#stx-pair? _%tl135307135331%_)
                              (let ((_%e135308135334%_
                                     (gx#syntax-e _%tl135307135331%_)))
                                (let ((_%hd135309135337%_
                                       (##car _%e135308135334%_))
                                      (_%tl135310135339%_
                                       (##cdr _%e135308135334%_)))
                                  (let ((_%test135342%_ _%hd135309135337%_))
                                    (if (gx#stx-pair? _%tl135310135339%_)
                                        (let ((_%e135311135344%_
                                               (gx#syntax-e
                                                _%tl135310135339%_)))
                                          (let ((_%hd135312135347%_
                                                 (##car _%e135311135344%_))
                                                (_%tl135313135349%_
                                                 (##cdr _%e135311135344%_)))
                                            (let ((_%K135352%_
                                                   _%hd135312135347%_))
                                              (if (gx#stx-pair?
                                                   _%tl135313135349%_)
                                                  (let ((_%e135314135354%_
                                                         (gx#syntax-e
                                                          _%tl135313135349%_)))
                                                    (let ((_%hd135315135357%_
                                                           (##car _%e135314135354%_))
                                                          (_%tl135316135359%_
                                                           (##cdr _%e135314135354%_)))
                                                      (let ((_%E135362%_
                                                             _%hd135315135357%_))
                                                        (if (gx#stx-null?
                                                             _%tl135316135359%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test135342%_)
                                 (cons (gx#core-expand-expression _%K135352%_)
                                       (cons (gx#core-expand-expression
                                              _%E135362%_)
                                             '()))))
                     (gx#stx-source _%stx135301%_))
                    (_%E135304135322%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E135304135322%_)))))
                                        (_%E135304135322%_)))))
                              (_%E135304135322%_))))
                      (_%E135304135322%_)))))
          (_%E135303135364%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx135260%_)
        (let* ((_%e135261135271%_ _%stx135260%_)
               (_%E135263135275%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135261135271%_)))
               (_%E135262135297%_
                (lambda ()
                  (if (gx#stx-pair? _%e135261135271%_)
                      (let ((_%e135264135279%_
                             (gx#syntax-e _%e135261135271%_)))
                        (let ((_%hd135265135282%_ (##car _%e135264135279%_))
                              (_%tl135266135284%_ (##cdr _%e135264135279%_)))
                          (if (gx#stx-pair? _%tl135266135284%_)
                              (let ((_%e135267135287%_
                                     (gx#syntax-e _%tl135266135284%_)))
                                (let ((_%hd135268135290%_
                                       (##car _%e135267135287%_))
                                      (_%tl135269135292%_
                                       (##cdr _%e135267135287%_)))
                                  (let ((_%id135295%_ _%hd135268135290%_))
                                    (if (gx#stx-null? _%tl135269135292%_)
                                        (if (gx#identifier? _%id135295%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id135295%_
                                                          _%stx135260%_)
                                                         '()))
                                             (gx#stx-source _%stx135260%_))
                                            (_%E135263135275%_))
                                        (_%E135263135275%_)))))
                              (_%E135263135275%_))))
                      (_%E135263135275%_)))))
          (_%E135262135297%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx135206%_)
        (let* ((_%e135207135220%_ _%stx135206%_)
               (_%E135209135224%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135207135220%_)))
               (_%E135208135256%_
                (lambda ()
                  (if (gx#stx-pair? _%e135207135220%_)
                      (let ((_%e135210135228%_
                             (gx#syntax-e _%e135207135220%_)))
                        (let ((_%hd135211135231%_ (##car _%e135210135228%_))
                              (_%tl135212135233%_ (##cdr _%e135210135228%_)))
                          (if (gx#stx-pair? _%tl135212135233%_)
                              (let ((_%e135213135236%_
                                     (gx#syntax-e _%tl135212135233%_)))
                                (let ((_%hd135214135239%_
                                       (##car _%e135213135236%_))
                                      (_%tl135215135241%_
                                       (##cdr _%e135213135236%_)))
                                  (let ((_%id135244%_ _%hd135214135239%_))
                                    (if (gx#stx-pair? _%tl135215135241%_)
                                        (let ((_%e135216135246%_
                                               (gx#syntax-e
                                                _%tl135215135241%_)))
                                          (let ((_%hd135217135249%_
                                                 (##car _%e135216135246%_))
                                                (_%tl135218135251%_
                                                 (##cdr _%e135216135246%_)))
                                            (let ((_%expr135254%_
                                                   _%hd135217135249%_))
                                              (if (gx#stx-null?
                                                   _%tl135218135251%_)
                                                  (if (gx#identifier?
                                                       _%id135244%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id135244%_
                            _%stx135206%_)
                           (cons (gx#core-expand-expression _%expr135254%_)
                                 '())))
               (gx#stx-source _%stx135206%_))
              (_%E135209135224%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E135209135224%_)))))
                                        (_%E135209135224%_)))))
                              (_%E135209135224%_))))
                      (_%E135209135224%_)))))
          (_%E135208135256%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx135051%_)
        (letrec ((_%generate135053%_
                  (lambda (_%body135083%_)
                    (let _%lp135085%_ ((_%rest135087%_ _%body135083%_)
                                       (_%ns135088%_
                                        (gx#core-context-namespace__0))
                                       (_%r135089%_ '()))
                      (let* ((_%e135090135105%_ _%rest135087%_)
                             (_%E135103135109%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e135090135105%_)))
                             (_%E135099135113%_
                              (lambda ()
                                (if (gx#stx-null? _%e135090135105%_)
                                    (reverse _%r135089%_)
                                    (_%E135103135109%_))))
                             (_%E135092135170%_
                              (lambda ()
                                (if (gx#stx-pair? _%e135090135105%_)
                                    (let ((_%e135100135117%_
                                           (gx#syntax-e _%e135090135105%_)))
                                      (let ((_%hd135101135120%_
                                             (##car _%e135100135117%_))
                                            (_%tl135102135122%_
                                             (##cdr _%e135100135117%_)))
                                        (let* ((_%hd135125%_
                                                _%hd135101135120%_)
                                               (_%rest135127%_
                                                _%tl135102135122%_))
                                          (if (gx#identifier? _%hd135125%_)
                                              (_%lp135085%_
                                               _%rest135127%_
                                               _%ns135088%_
                                               (cons (cons _%hd135125%_
                                                           (cons (if _%ns135088%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd135125%_
                              _%ns135088%_
                              '"#"
                              _%hd135125%_)
                             _%hd135125%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r135089%_))
                                              (let* ((_%e135128135138%_
                                                      _%hd135125%_)
                                                     (_%E135130135142%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%e135128135138%_)))
                                                     (_%E135129135166%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e135128135138%_)
                                                            (let ((_%e135131135146%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e135128135138%_)))
                      (let ((_%hd135132135149%_ (##car _%e135131135146%_))
                            (_%tl135133135151%_ (##cdr _%e135131135146%_)))
                        (let ((_%id135154%_ _%hd135132135149%_))
                          (if (gx#stx-pair? _%tl135133135151%_)
                              (let ((_%e135134135156%_
                                     (gx#syntax-e _%tl135133135151%_)))
                                (let ((_%hd135135135159%_
                                       (##car _%e135134135156%_))
                                      (_%tl135136135161%_
                                       (##cdr _%e135134135156%_)))
                                  (let ((_%eid135164%_ _%hd135135135159%_))
                                    (if (gx#stx-null? _%tl135136135161%_)
                                        (if (and (gx#identifier? _%id135154%_)
                                                 (gx#identifier?
                                                  _%eid135164%_))
                                            (_%lp135085%_
                                             _%rest135127%_
                                             _%ns135088%_
                                             (cons (cons _%id135154%_
                                                         (cons _%eid135164%_
                                                               '()))
                                                   _%r135089%_))
                                            (_%E135130135142%_))
                                        (_%E135130135142%_)))))
                              (_%E135130135142%_)))))
                    (_%E135130135142%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E135129135166%_))))))
                                    (_%E135099135113%_))))
                             (_%E135091135202%_
                              (lambda ()
                                (if (gx#stx-pair? _%e135090135105%_)
                                    (let ((_%e135093135174%_
                                           (gx#syntax-e _%e135090135105%_)))
                                      (let ((_%hd135094135177%_
                                             (##car _%e135093135174%_))
                                            (_%tl135095135179%_
                                             (##cdr _%e135093135174%_)))
                                        (if (eq? (gx#stx-e _%hd135094135177%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl135095135179%_)
                                                (let ((_%e135096135182%_
                                                       (gx#syntax-e
                                                        _%tl135095135179%_)))
                                                  (let ((_%hd135097135185%_
                                                         (##car _%e135096135182%_))
                                                        (_%tl135098135187%_
                                                         (##cdr _%e135096135182%_)))
                                                    (let* ((_%ns135190%_
                                                            _%hd135097135185%_)
                                                           (_%rest135192%_
                                                            _%tl135098135187%_)
                                                           (_%ns135200%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns135190%_)
                        (symbol->string (gx#stx-e _%ns135190%_))
                        (if (or (gx#stx-string? _%ns135190%_)
                                (gx#stx-false? _%ns135190%_))
                            (gx#stx-e _%ns135190%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx135051%_
                             _%ns135190%_)))))
              (_%lp135085%_ _%rest135192%_ _%ns135200%_ _%r135089%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E135092135170%_))
                                            (_%E135092135170%_))))
                                    (_%E135092135170%_)))))
                        (_%E135091135202%_))))))
          (let* ((_%e135054135061%_ _%stx135051%_)
                 (_%E135056135065%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e135054135061%_)))
                 (_%E135055135079%_
                  (lambda ()
                    (if (gx#stx-pair? _%e135054135061%_)
                        (let ((_%e135057135069%_
                               (gx#syntax-e _%e135054135061%_)))
                          (let ((_%hd135058135072%_ (##car _%e135057135069%_))
                                (_%tl135059135074%_ (##cdr _%e135057135069%_)))
                            (let ((_%body135077%_ _%tl135059135074%_))
                              (if (gx#stx-list? _%body135077%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate135053%_ _%body135077%_))
                                  (_%E135056135065%_)))))
                        (_%E135056135065%_)))))
            (_%E135055135079%_)))))
    (define gx#macro-expand-define-values
      (lambda (_%stx134997%_)
        (let* ((_%e134998135011%_ _%stx134997%_)
               (_%E135000135015%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e134998135011%_)))
               (_%E134999135047%_
                (lambda ()
                  (if (gx#stx-pair? _%e134998135011%_)
                      (let ((_%e135001135019%_
                             (gx#syntax-e _%e134998135011%_)))
                        (let ((_%hd135002135022%_ (##car _%e135001135019%_))
                              (_%tl135003135024%_ (##cdr _%e135001135019%_)))
                          (if (gx#stx-pair? _%tl135003135024%_)
                              (let ((_%e135004135027%_
                                     (gx#syntax-e _%tl135003135024%_)))
                                (let ((_%hd135005135030%_
                                       (##car _%e135004135027%_))
                                      (_%tl135006135032%_
                                       (##cdr _%e135004135027%_)))
                                  (let ((_%hd135035%_ _%hd135005135030%_))
                                    (if (gx#stx-pair? _%tl135006135032%_)
                                        (let ((_%e135007135037%_
                                               (gx#syntax-e
                                                _%tl135006135032%_)))
                                          (let ((_%hd135008135040%_
                                                 (##car _%e135007135037%_))
                                                (_%tl135009135042%_
                                                 (##cdr _%e135007135037%_)))
                                            (let ((_%expr135045%_
                                                   _%hd135008135040%_))
                                              (if (gx#stx-null?
                                                   _%tl135009135042%_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _%hd135035%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           identity
                           _%hd135035%_)
                          (cons _%expr135045%_ '())))
              (_%E135000135015%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E135000135015%_)))))
                                        (_%E135000135015%_)))))
                              (_%E135000135015%_))))
                      (_%E135000135015%_)))))
          (_%E134999135047%_))))
    (define gx#macro-expand-define-syntax
      (lambda (_%stx134943%_)
        (let* ((_%e134944134957%_ _%stx134943%_)
               (_%E134946134961%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e134944134957%_)))
               (_%E134945134993%_
                (lambda ()
                  (if (gx#stx-pair? _%e134944134957%_)
                      (let ((_%e134947134965%_
                             (gx#syntax-e _%e134944134957%_)))
                        (let ((_%hd134948134968%_ (##car _%e134947134965%_))
                              (_%tl134949134970%_ (##cdr _%e134947134965%_)))
                          (if (gx#stx-pair? _%tl134949134970%_)
                              (let ((_%e134950134973%_
                                     (gx#syntax-e _%tl134949134970%_)))
                                (let ((_%hd134951134976%_
                                       (##car _%e134950134973%_))
                                      (_%tl134952134978%_
                                       (##cdr _%e134950134973%_)))
                                  (let ((_%hd134981%_ _%hd134951134976%_))
                                    (if (gx#stx-pair? _%tl134952134978%_)
                                        (let ((_%e134953134983%_
                                               (gx#syntax-e
                                                _%tl134952134978%_)))
                                          (let ((_%hd134954134986%_
                                                 (##car _%e134953134983%_))
                                                (_%tl134955134988%_
                                                 (##cdr _%e134953134983%_)))
                                            (let ((_%expr134991%_
                                                   _%hd134954134986%_))
                                              (if (gx#stx-null?
                                                   _%tl134955134988%_)
                                                  (if (gx#identifier?
                                                       _%hd134981%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _%hd134981%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr134991%_ '())))
              (_%E134946134961%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E134946134961%_)))))
                                        (_%E134946134961%_)))))
                              (_%E134946134961%_))))
                      (_%E134946134961%_)))))
          (_%E134945134993%_))))
    (define gx#macro-expand-define-alias
      (lambda (_%stx134889%_)
        (let* ((_%e134890134903%_ _%stx134889%_)
               (_%E134892134907%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e134890134903%_)))
               (_%E134891134939%_
                (lambda ()
                  (if (gx#stx-pair? _%e134890134903%_)
                      (let ((_%e134893134911%_
                             (gx#syntax-e _%e134890134903%_)))
                        (let ((_%hd134894134914%_ (##car _%e134893134911%_))
                              (_%tl134895134916%_ (##cdr _%e134893134911%_)))
                          (if (gx#stx-pair? _%tl134895134916%_)
                              (let ((_%e134896134919%_
                                     (gx#syntax-e _%tl134895134916%_)))
                                (let ((_%hd134897134922%_
                                       (##car _%e134896134919%_))
                                      (_%tl134898134924%_
                                       (##cdr _%e134896134919%_)))
                                  (let ((_%id134927%_ _%hd134897134922%_))
                                    (if (gx#stx-pair? _%tl134898134924%_)
                                        (let ((_%e134899134929%_
                                               (gx#syntax-e
                                                _%tl134898134924%_)))
                                          (let ((_%hd134900134932%_
                                                 (##car _%e134899134929%_))
                                                (_%tl134901134934%_
                                                 (##cdr _%e134899134929%_)))
                                            (let ((_%alias-id134937%_
                                                   _%hd134900134932%_))
                                              (if (gx#stx-null?
                                                   _%tl134901134934%_)
                                                  (if (and (gx#identifier?
                                                            _%id134927%_)
                                                           (gx#identifier?
                                                            _%alias-id134937%_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _%id134927%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%alias-id134937%_ '())))
              (_%E134892134907%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E134892134907%_)))))
                                        (_%E134892134907%_)))))
                              (_%E134892134907%_))))
                      (_%E134892134907%_)))))
          (_%E134891134939%_))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx134846%_)
        (let* ((_%e134847134857%_ _%stx134846%_)
               (_%E134849134861%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e134847134857%_)))
               (_%E134848134885%_
                (lambda ()
                  (if (gx#stx-pair? _%e134847134857%_)
                      (let ((_%e134850134865%_
                             (gx#syntax-e _%e134847134857%_)))
                        (let ((_%hd134851134868%_ (##car _%e134850134865%_))
                              (_%tl134852134870%_ (##cdr _%e134850134865%_)))
                          (if (gx#stx-pair? _%tl134852134870%_)
                              (let ((_%e134853134873%_
                                     (gx#syntax-e _%tl134852134870%_)))
                                (let ((_%hd134854134876%_
                                       (##car _%e134853134873%_))
                                      (_%tl134855134878%_
                                       (##cdr _%e134853134873%_)))
                                  (let* ((_%hd134881%_ _%hd134854134876%_)
                                         (_%body134883%_ _%tl134855134878%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd134881%_)
                                             (gx#stx-list? _%body134883%_)
                                             (not (gx#stx-null?
                                                   _%body134883%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd134881%_)
                                         _%body134883%_)
                                        (_%E134849134861%_)))))
                              (_%E134849134861%_))))
                      (_%E134849134861%_)))))
          (_%E134848134885%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx134782%_)
        (letrec ((_%generate134784%_
                  (lambda (_%clause134814%_)
                    (let* ((_%e134815134822%_ _%clause134814%_)
                           (_%E134817134826%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx134782%_
                               _%clause134814%_)))
                           (_%E134816134842%_
                            (lambda ()
                              (if (gx#stx-pair? _%e134815134822%_)
                                  (let ((_%e134818134830%_
                                         (gx#syntax-e _%e134815134822%_)))
                                    (let ((_%hd134819134833%_
                                           (##car _%e134818134830%_))
                                          (_%tl134820134835%_
                                           (##cdr _%e134818134830%_)))
                                      (let* ((_%hd134838%_ _%hd134819134833%_)
                                             (_%body134840%_
                                              _%tl134820134835%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd134838%_)
                                                 (gx#stx-list? _%body134840%_)
                                                 (not (gx#stx-null?
                                                       _%body134840%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd134838%_)
                                                   _%body134840%_)
                                             (gx#stx-source _%clause134814%_))
                                            (_%E134817134826%_)))))
                                  (_%E134817134826%_)))))
                      (_%E134816134842%_)))))
          (let* ((_%e134785134792%_ _%stx134782%_)
                 (_%E134787134796%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e134785134792%_)))
                 (_%E134786134810%_
                  (lambda ()
                    (if (gx#stx-pair? _%e134785134792%_)
                        (let ((_%e134788134800%_
                               (gx#syntax-e _%e134785134792%_)))
                          (let ((_%hd134789134803%_ (##car _%e134788134800%_))
                                (_%tl134790134805%_ (##cdr _%e134788134800%_)))
                            (let ((_%clauses134808%_ _%tl134790134805%_))
                              (if (gx#stx-list? _%clauses134808%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate134784%_
                                    _%clauses134808%_))
                                  (_%E134787134796%_)))))
                        (_%E134787134796%_)))))
            (_%E134786134810%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx134683%_ _%form134684%_)
        (letrec ((_%generate134686%_
                  (lambda (_%bind134729%_)
                    (let* ((_%e134730134740%_ _%bind134729%_)
                           (_%E134732134744%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx134683%_
                               _%bind134729%_)))
                           (_%E134731134768%_
                            (lambda ()
                              (if (gx#stx-pair? _%e134730134740%_)
                                  (let ((_%e134733134748%_
                                         (gx#syntax-e _%e134730134740%_)))
                                    (let ((_%hd134734134751%_
                                           (##car _%e134733134748%_))
                                          (_%tl134735134753%_
                                           (##cdr _%e134733134748%_)))
                                      (let ((_%ids134756%_ _%hd134734134751%_))
                                        (if (gx#stx-pair? _%tl134735134753%_)
                                            (let ((_%e134736134758%_
                                                   (gx#syntax-e
                                                    _%tl134735134753%_)))
                                              (let ((_%hd134737134761%_
                                                     (##car _%e134736134758%_))
                                                    (_%tl134738134763%_
                                                     (##cdr _%e134736134758%_)))
                                                (let ((_%expr134766%_
                                                       _%hd134737134761%_))
                                                  (if (gx#stx-null?
                                                       _%tl134738134763%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids134756%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids134756%_)
                        (cons _%expr134766%_ '()))
                  (_%E134732134744%_))
              (_%E134732134744%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E134732134744%_)))))
                                  (_%E134732134744%_)))))
                      (_%E134731134768%_)))))
          (let* ((_%e134687134697%_ _%stx134683%_)
                 (_%E134689134701%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e134687134697%_)))
                 (_%E134688134725%_
                  (lambda ()
                    (if (gx#stx-pair? _%e134687134697%_)
                        (let ((_%e134690134705%_
                               (gx#syntax-e _%e134687134697%_)))
                          (let ((_%hd134691134708%_ (##car _%e134690134705%_))
                                (_%tl134692134710%_ (##cdr _%e134690134705%_)))
                            (if (gx#stx-pair? _%tl134692134710%_)
                                (let ((_%e134693134713%_
                                       (gx#syntax-e _%tl134692134710%_)))
                                  (let ((_%hd134694134716%_
                                         (##car _%e134693134713%_))
                                        (_%tl134695134718%_
                                         (##cdr _%e134693134713%_)))
                                    (let* ((_%hd134721%_ _%hd134694134716%_)
                                           (_%body134723%_ _%tl134695134718%_))
                                      (if (and (gx#stx-list? _%hd134721%_)
                                               (gx#stx-list? _%body134723%_)
                                               (not (gx#stx-null?
                                                     _%body134723%_)))
                                          (gx#core-cons*
                                           _%form134684%_
                                           (gx#stx-map1
                                            _%generate134686%_
                                            _%hd134721%_)
                                           _%body134723%_)
                                          (_%E134689134701%_)))))
                                (_%E134689134701%_))))
                        (_%E134689134701%_)))))
            (_%E134688134725%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx134775%_)
        (let ((_%form134777%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx134775%_ _%form134777%_))))
    (define gx#macro-expand-let-values
      (lambda _g137163_
        (let ((_g137164_ (##length _g137163_)))
          (cond ((##fx= _g137164_ 1)
                 (apply gx#macro-expand-let-values__0 _g137163_))
                ((##fx= _g137164_ 2)
                 (apply gx#macro-expand-let-values__% _g137163_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g137163_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx134680%_)
        (gx#macro-expand-let-values__% _%stx134680%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx134678%_)
        (gx#macro-expand-let-values__% _%stx134678%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx134569%_)
        (let* ((_%e134570134596%_ _%stx134569%_)
               (_%E134582134600%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e134570134596%_)))
               (_%E134572134642%_
                (lambda ()
                  (if (gx#stx-pair? _%e134570134596%_)
                      (let ((_%e134583134604%_
                             (gx#syntax-e _%e134570134596%_)))
                        (let ((_%hd134584134607%_ (##car _%e134583134604%_))
                              (_%tl134585134609%_ (##cdr _%e134583134604%_)))
                          (if (gx#stx-pair? _%tl134585134609%_)
                              (let ((_%e134586134612%_
                                     (gx#syntax-e _%tl134585134609%_)))
                                (let ((_%hd134587134615%_
                                       (##car _%e134586134612%_))
                                      (_%tl134588134617%_
                                       (##cdr _%e134586134612%_)))
                                  (let ((_%test134620%_ _%hd134587134615%_))
                                    (if (gx#stx-pair? _%tl134588134617%_)
                                        (let ((_%e134589134622%_
                                               (gx#syntax-e
                                                _%tl134588134617%_)))
                                          (let ((_%hd134590134625%_
                                                 (##car _%e134589134622%_))
                                                (_%tl134591134627%_
                                                 (##cdr _%e134589134622%_)))
                                            (let ((_%K134630%_
                                                   _%hd134590134625%_))
                                              (if (gx#stx-pair?
                                                   _%tl134591134627%_)
                                                  (let ((_%e134592134632%_
                                                         (gx#syntax-e
                                                          _%tl134591134627%_)))
                                                    (let ((_%hd134593134635%_
                                                           (##car _%e134592134632%_))
                                                          (_%tl134594134637%_
                                                           (##cdr _%e134592134632%_)))
                                                      (let ((_%E134640%_
                                                             _%hd134593134635%_))
                                                        (if (gx#stx-null?
                                                             _%tl134594134637%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test134620%_
                                                             _%K134630%_
                                                             _%E134640%_)
                                                            (_%E134582134600%_)))))
                                                  (_%E134582134600%_)))))
                                        (_%E134582134600%_)))))
                              (_%E134582134600%_))))
                      (_%E134582134600%_))))
               (_%E134571134674%_
                (lambda ()
                  (if (gx#stx-pair? _%e134570134596%_)
                      (let ((_%e134573134646%_
                             (gx#syntax-e _%e134570134596%_)))
                        (let ((_%hd134574134649%_ (##car _%e134573134646%_))
                              (_%tl134575134651%_ (##cdr _%e134573134646%_)))
                          (if (gx#stx-pair? _%tl134575134651%_)
                              (let ((_%e134576134654%_
                                     (gx#syntax-e _%tl134575134651%_)))
                                (let ((_%hd134577134657%_
                                       (##car _%e134576134654%_))
                                      (_%tl134578134659%_
                                       (##cdr _%e134576134654%_)))
                                  (let ((_%test134662%_ _%hd134577134657%_))
                                    (if (gx#stx-pair? _%tl134578134659%_)
                                        (let ((_%e134579134664%_
                                               (gx#syntax-e
                                                _%tl134578134659%_)))
                                          (let ((_%hd134580134667%_
                                                 (##car _%e134579134664%_))
                                                (_%tl134581134669%_
                                                 (##cdr _%e134579134664%_)))
                                            (let ((_%K134672%_
                                                   _%hd134580134667%_))
                                              (if (gx#stx-null?
                                                   _%tl134581134669%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test134662%_
                                                   _%K134672%_
                                                   '#!void)
                                                  (_%E134572134642%_)))))
                                        (_%E134572134642%_)))))
                              (_%E134572134642%_))))
                      (_%E134572134642%_)))))
          (_%E134571134674%_))))
    (define gx#free-identifier=?
      (lambda (_%xid134554%_ _%yid134555%_)
        (let ((_%xe134557%_ (gx#resolve-identifier__0 _%xid134554%_))
              (_%ye134558%_ (gx#resolve-identifier__0 _%yid134555%_)))
          (if (and _%xe134557%_ _%ye134558%_)
              (let ((_%$e134561%_ (eq? _%xe134557%_ _%ye134558%_)))
                (if _%$e134561%_
                    _%$e134561%_
                    (if (##structure-instance-of? _%xe134557%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye134558%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe134557%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye134558%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe134557%_ _%ye134558%_)
                  '#f
                  (gx#stx-eq? _%xid134554%_ _%yid134555%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid134535%_ _%yid134536%_)
        (letrec ((_%context134538%_
                  (lambda (_%e134552%_)
                    (if (##structure-direct-instance-of?
                         _%e134552%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e134552%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks134539%_
                  (lambda (_%e134547%_)
                    (if (symbol? _%e134547%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e134547%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e134547%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e134547%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap134540%_
                  (lambda (_%e134545%_)
                    (if (symbol? _%e134545%_)
                        _%e134545%_
                        (gx#syntax-local-unwrap _%e134545%_)))))
          (let ((_%x134542%_ (_%unwrap134540%_ _%xid134535%_))
                (_%y134543%_ (_%unwrap134540%_ _%yid134536%_)))
            (if (gx#stx-eq? _%x134542%_ _%y134543%_)
                (if (eq? (_%context134538%_ _%x134542%_)
                         (_%context134538%_ _%y134543%_))
                    (equal? (_%marks134539%_ _%x134542%_)
                            (_%marks134539%_ _%y134543%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx134533%_)
        (if (gx#identifier? _%stx134533%_)
            (gx#core-identifier=? _%stx134533%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx134531%_)
        (if (gx#identifier? _%stx134531%_)
            (gx#core-identifier=? _%stx134531%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx134474%_ _%where134475%_)
        (let _%lp134477%_ ((_%rest134479%_ (gx#syntax->list _%stx134474%_)))
          (let* ((_%rest134480134488%_ _%rest134479%_)
                 (_%else134482134496%_ (lambda () '#t))
                 (_%K134484134509%_
                  (lambda (_%rest134499%_ _%hd134500%_)
                    (if (gx#identifier? _%hd134500%_)
                        (if (__find (lambda (_%g134502134504%_)
                                      (gx#bound-identifier=?
                                       _%g134502134504%_
                                       _%hd134500%_))
                                    _%rest134499%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where134475%_
                             _%hd134500%_)
                            (_%lp134477%_ _%rest134499%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where134475%_
                         _%hd134500%_)))))
            (if (pair? _%rest134480134488%_)
                (let ((_%hd134485134512%_ (##car _%rest134480134488%_))
                      (_%tl134486134514%_ (##cdr _%rest134480134488%_)))
                  (let* ((_%hd134517%_ _%hd134485134512%_)
                         (_%rest134519%_ _%tl134486134514%_))
                    (_%K134484134509%_ _%rest134519%_ _%hd134517%_)))
                (_%else134482134496%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx134524%_)
        (let ((_%where134526%_ _%stx134524%_))
          (gx#check-duplicate-identifiers__% _%stx134524%_ _%where134526%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g137165_
        (let ((_g137166_ (##length _g137165_)))
          (cond ((##fx= _g137166_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g137165_))
                ((##fx= _g137166_ 2)
                 (apply gx#check-duplicate-identifiers__% _g137165_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g137165_))))))
    (define gx#core-bind-values?
      (lambda (_%stx134466%_)
        (gx#stx-andmap
         (lambda (_%x134468%_)
           (let ((_%$e134470%_ (gx#identifier? _%x134468%_)))
             (if _%$e134470%_ _%$e134470%_ (gx#stx-false? _%x134468%_))))
         _%stx134466%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx134430%_ _%rebind?134431%_ _%phi134432%_ _%ctx134433%_)
        (gx#stx-for-each1
         (lambda (_%id134435%_)
           (if (gx#identifier? _%id134435%_)
               (gx#core-bind-runtime!__%
                _%id134435%_
                _%rebind?134431%_
                _%phi134432%_
                _%ctx134433%_)
               '#!void))
         _%stx134430%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx134440%_)
        (let* ((_%rebind?134442%_ '#f)
               (_%phi134444%_ (gx#current-expander-phi))
               (_%ctx134446%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx134440%_
           _%rebind?134442%_
           _%phi134444%_
           _%ctx134446%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx134448%_ _%rebind?134449%_)
        (let* ((_%phi134451%_ (gx#current-expander-phi))
               (_%ctx134453%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx134448%_
           _%rebind?134449%_
           _%phi134451%_
           _%ctx134453%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx134455%_ _%rebind?134456%_ _%phi134457%_)
        (let ((_%ctx134459%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx134455%_
           _%rebind?134456%_
           _%phi134457%_
           _%ctx134459%_))))
    (define gx#core-bind-values!
      (lambda _g137167_
        (let ((_g137168_ (##length _g137167_)))
          (cond ((##fx= _g137168_ 1) (apply gx#core-bind-values!__0 _g137167_))
                ((##fx= _g137168_ 2) (apply gx#core-bind-values!__1 _g137167_))
                ((##fx= _g137168_ 3) (apply gx#core-bind-values!__2 _g137167_))
                ((##fx= _g137168_ 4) (apply gx#core-bind-values!__% _g137167_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g137167_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx134425%_)
        (gx#stx-map1
         (lambda (_%x134427%_)
           (if (gx#identifier? _%x134427%_)
               (gx#core-quote-syntax__0 _%x134427%_)
               '#f))
         _%stx134425%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx134418%_)
        (if (gx#identifier? _%stx134418%_)
            (let* ((_%bind134420%_ (gx#resolve-identifier__0 _%stx134418%_))
                   (_%$e134422%_ (not _%bind134420%_)))
              (if _%$e134422%_
                  _%$e134422%_
                  (##structure-instance-of?
                   _%bind134420%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id134407%_ _%form134408%_)
        (let ((_%bind134410%_ (gx#resolve-identifier__0 _%id134407%_)))
          (if (##structure-instance-of? _%bind134410%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id134407%_)
              (if (not _%bind134410%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id134407%_)))
                      (gx#core-quote-syntax__0 _%id134407%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form134408%_
                       _%id134407%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form134408%_
                   _%id134407%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id134362%_ _%rebind?134363%_ _%phi134364%_ _%ctx134365%_)
        (let* ((_%key134367%_ (gx#core-identifier-key _%id134362%_))
               (_%eid134369%_
                (gx#make-binding-id__%
                 _%key134367%_
                 '#f
                 _%phi134364%_
                 _%ctx134365%_))
               (_%bind134375%_
                (if (##structure-instance-of?
                     _%ctx134365%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid134369%_
                     _%key134367%_
                     _%phi134364%_
                     _%ctx134365%_)
                    (if (##structure-instance-of?
                         _%ctx134365%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid134369%_
                         _%key134367%_
                         _%phi134364%_)
                        (if (##structure-instance-of?
                             _%ctx134365%_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _%eid134369%_
                             _%key134367%_
                             _%phi134364%_)
                            (##structure
                             gx#runtime-binding::t
                             _%eid134369%_
                             _%key134367%_
                             _%phi134364%_))))))
          (gx#bind-identifier!__%
           _%id134362%_
           _%bind134375%_
           _%rebind?134363%_
           _%phi134364%_
           _%ctx134365%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id134381%_)
        (let* ((_%rebind?134383%_ '#f)
               (_%phi134385%_ (gx#current-expander-phi))
               (_%ctx134387%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id134381%_
           _%rebind?134383%_
           _%phi134385%_
           _%ctx134387%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id134389%_ _%rebind?134390%_)
        (let* ((_%phi134392%_ (gx#current-expander-phi))
               (_%ctx134394%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id134389%_
           _%rebind?134390%_
           _%phi134392%_
           _%ctx134394%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id134396%_ _%rebind?134397%_ _%phi134398%_)
        (let ((_%ctx134400%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id134396%_
           _%rebind?134397%_
           _%phi134398%_
           _%ctx134400%_))))
    (define gx#core-bind-runtime!
      (lambda _g137169_
        (let ((_g137170_ (##length _g137169_)))
          (cond ((##fx= _g137170_ 1)
                 (apply gx#core-bind-runtime!__0 _g137169_))
                ((##fx= _g137170_ 2)
                 (apply gx#core-bind-runtime!__1 _g137169_))
                ((##fx= _g137170_ 3)
                 (apply gx#core-bind-runtime!__2 _g137169_))
                ((##fx= _g137170_ 4)
                 (apply gx#core-bind-runtime!__% _g137169_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g137169_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id134314%_
               _%eid134315%_
               _%rebind?134316%_
               _%phi134317%_
               _%ctx134318%_)
        (let* ((_%key134320%_ (gx#core-identifier-key _%id134314%_))
               (_%bind134325%_
                (if (##structure-instance-of?
                     _%ctx134318%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid134315%_
                     _%key134320%_
                     _%phi134317%_
                     _%ctx134318%_)
                    (if (##structure-instance-of?
                         _%ctx134318%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid134315%_
                         _%key134320%_
                         _%phi134317%_)
                        (##structure
                         gx#runtime-binding::t
                         _%eid134315%_
                         _%key134320%_
                         _%phi134317%_)))))
          (gx#bind-identifier!__%
           _%id134314%_
           _%bind134325%_
           _%rebind?134316%_
           _%phi134317%_
           _%ctx134318%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id134331%_ _%eid134332%_)
        (let* ((_%rebind?134334%_ '#f)
               (_%phi134336%_ (gx#current-expander-phi))
               (_%ctx134338%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id134331%_
           _%eid134332%_
           _%rebind?134334%_
           _%phi134336%_
           _%ctx134338%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id134340%_ _%eid134341%_ _%rebind?134342%_)
        (let* ((_%phi134344%_ (gx#current-expander-phi))
               (_%ctx134346%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id134340%_
           _%eid134341%_
           _%rebind?134342%_
           _%phi134344%_
           _%ctx134346%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id134348%_ _%eid134349%_ _%rebind?134350%_ _%phi134351%_)
        (let ((_%ctx134353%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id134348%_
           _%eid134349%_
           _%rebind?134350%_
           _%phi134351%_
           _%ctx134353%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g137171_
        (let ((_g137172_ (##length _g137171_)))
          (cond ((##fx= _g137172_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g137171_))
                ((##fx= _g137172_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g137171_))
                ((##fx= _g137172_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g137171_))
                ((##fx= _g137172_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g137171_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g137171_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id134274%_
               _%eid134275%_
               _%rebind?134276%_
               _%phi134277%_
               _%ctx134278%_)
        (gx#bind-identifier!__%
         _%id134274%_
         (##structure
          gx#extern-binding::t
          _%eid134275%_
          (gx#core-identifier-key _%id134274%_)
          _%phi134277%_)
         _%rebind?134276%_
         _%phi134277%_
         _%ctx134278%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id134283%_ _%eid134284%_)
        (let* ((_%rebind?134286%_ '#f)
               (_%phi134288%_ (gx#current-expander-phi))
               (_%ctx134290%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id134283%_
           _%eid134284%_
           _%rebind?134286%_
           _%phi134288%_
           _%ctx134290%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id134292%_ _%eid134293%_ _%rebind?134294%_)
        (let* ((_%phi134296%_ (gx#current-expander-phi))
               (_%ctx134298%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id134292%_
           _%eid134293%_
           _%rebind?134294%_
           _%phi134296%_
           _%ctx134298%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id134300%_ _%eid134301%_ _%rebind?134302%_ _%phi134303%_)
        (let ((_%ctx134305%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id134300%_
           _%eid134301%_
           _%rebind?134302%_
           _%phi134303%_
           _%ctx134305%_))))
    (define gx#core-bind-extern!
      (lambda _g137173_
        (let ((_g137174_ (##length _g137173_)))
          (cond ((##fx= _g137174_ 2) (apply gx#core-bind-extern!__0 _g137173_))
                ((##fx= _g137174_ 3) (apply gx#core-bind-extern!__1 _g137173_))
                ((##fx= _g137174_ 4) (apply gx#core-bind-extern!__2 _g137173_))
                ((##fx= _g137174_ 5) (apply gx#core-bind-extern!__% _g137173_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g137173_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id134228%_
               _%e134229%_
               _%rebind?134230%_
               _%phi134231%_
               _%ctx134232%_)
        (gx#bind-identifier!__%
         _%id134228%_
         (let ((_%key134237%_ (gx#core-identifier-key _%id134228%_))
               (_%e134238%_
                (if (or (##structure-instance-of? _%e134229%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e134229%_
                         'gx#expander-context::t))
                    _%e134229%_
                    (##structure
                     gx#user-expander::t
                     _%e134229%_
                     _%ctx134232%_
                     _%phi134231%_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__%
             _%key134237%_
             '#t
             _%phi134231%_
             _%ctx134232%_)
            _%key134237%_
            _%phi134231%_
            _%e134238%_))
         _%rebind?134230%_
         _%phi134231%_
         _%ctx134232%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id134243%_ _%e134244%_)
        (let* ((_%rebind?134246%_ '#f)
               (_%phi134248%_ (gx#current-expander-phi))
               (_%ctx134250%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id134243%_
           _%e134244%_
           _%rebind?134246%_
           _%phi134248%_
           _%ctx134250%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id134252%_ _%e134253%_ _%rebind?134254%_)
        (let* ((_%phi134256%_ (gx#current-expander-phi))
               (_%ctx134258%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id134252%_
           _%e134253%_
           _%rebind?134254%_
           _%phi134256%_
           _%ctx134258%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id134260%_ _%e134261%_ _%rebind?134262%_ _%phi134263%_)
        (let ((_%ctx134265%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id134260%_
           _%e134261%_
           _%rebind?134262%_
           _%phi134263%_
           _%ctx134265%_))))
    (define gx#core-bind-syntax!
      (lambda _g137175_
        (let ((_g137176_ (##length _g137175_)))
          (cond ((##fx= _g137176_ 2) (apply gx#core-bind-syntax!__0 _g137175_))
                ((##fx= _g137176_ 3) (apply gx#core-bind-syntax!__1 _g137175_))
                ((##fx= _g137176_ 4) (apply gx#core-bind-syntax!__2 _g137175_))
                ((##fx= _g137176_ 5) (apply gx#core-bind-syntax!__% _g137175_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g137175_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id134211%_ _%e134212%_ _%rebind?134213%_)
        (gx#core-bind-syntax!__%
         _%id134211%_
         _%e134212%_
         _%rebind?134213%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id134218%_ _%e134219%_)
        (let ((_%rebind?134221%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id134218%_
           _%e134219%_
           _%rebind?134221%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g137177_
        (let ((_g137178_ (##length _g137177_)))
          (cond ((##fx= _g137178_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g137177_))
                ((##fx= _g137178_ 3)
                 (apply gx#core-bind-root-syntax!__% _g137177_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g137177_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id134169%_
               _%alias-id134170%_
               _%rebind?134171%_
               _%phi134172%_
               _%ctx134173%_)
        (gx#bind-identifier!__%
         _%id134169%_
         (let ((_%key134175%_ (gx#core-identifier-key _%id134169%_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__%
             _%key134175%_
             '#t
             _%phi134172%_
             _%ctx134173%_)
            _%key134175%_
            _%phi134172%_
            _%alias-id134170%_))
         _%rebind?134171%_
         _%phi134172%_
         _%ctx134173%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id134180%_ _%alias-id134181%_)
        (let* ((_%rebind?134183%_ '#f)
               (_%phi134185%_ (gx#current-expander-phi))
               (_%ctx134187%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id134180%_
           _%alias-id134181%_
           _%rebind?134183%_
           _%phi134185%_
           _%ctx134187%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id134189%_ _%alias-id134190%_ _%rebind?134191%_)
        (let* ((_%phi134193%_ (gx#current-expander-phi))
               (_%ctx134195%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id134189%_
           _%alias-id134190%_
           _%rebind?134191%_
           _%phi134193%_
           _%ctx134195%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id134197%_ _%alias-id134198%_ _%rebind?134199%_ _%phi134200%_)
        (let ((_%ctx134202%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id134197%_
           _%alias-id134198%_
           _%rebind?134199%_
           _%phi134200%_
           _%ctx134202%_))))
    (define gx#core-bind-alias!
      (lambda _g137179_
        (let ((_g137180_ (##length _g137179_)))
          (cond ((##fx= _g137180_ 2) (apply gx#core-bind-alias!__0 _g137179_))
                ((##fx= _g137180_ 3) (apply gx#core-bind-alias!__1 _g137179_))
                ((##fx= _g137180_ 4) (apply gx#core-bind-alias!__2 _g137179_))
                ((##fx= _g137180_ 5) (apply gx#core-bind-alias!__% _g137179_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g137179_))))))
    (define gx#make-binding-id__%
      (lambda (_%key134119%_ _%syntax?134120%_ _%phi134121%_ _%ctx134122%_)
        (if (uninterned-symbol? _%key134119%_)
            (##gensym 'L)
            (if (pair? _%key134119%_)
                (gensym (##car _%key134119%_))
                (if (##structure-instance-of? _%ctx134122%_ 'gx#top-context::t)
                    (let ((_%ns134127%_
                           (gx#core-context-namespace__% _%ctx134122%_)))
                      (if (and (fxzero? _%phi134121%_) (not _%syntax?134120%_))
                          (if _%ns134127%_
                              (make-symbol__1 _%ns134127%_ '"#" _%key134119%_)
                              _%key134119%_)
                          (if _%syntax?134120%_
                              (make-symbol__1
                               (let ((_%$e134131%_ _%ns134127%_))
                                 (if _%$e134131%_ _%$e134131%_ '""))
                               '"[:"
                               (number->string _%phi134121%_)
                               '":]#"
                               _%key134119%_)
                              (make-symbol__1
                               (let ((_%$e134135%_ _%ns134127%_))
                                 (if _%$e134135%_ _%$e134135%_ '""))
                               '"["
                               (number->string _%phi134121%_)
                               '"]#"
                               _%key134119%_))))
                    (gensym _%key134119%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key134142%_)
        (let* ((_%syntax?134144%_ '#f)
               (_%phi134146%_ (gx#current-expander-phi))
               (_%ctx134148%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key134142%_
           _%syntax?134144%_
           _%phi134146%_
           _%ctx134148%_))))
    (define gx#make-binding-id__1
      (lambda (_%key134150%_ _%syntax?134151%_)
        (let* ((_%phi134153%_ (gx#current-expander-phi))
               (_%ctx134155%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key134150%_
           _%syntax?134151%_
           _%phi134153%_
           _%ctx134155%_))))
    (define gx#make-binding-id__2
      (lambda (_%key134157%_ _%syntax?134158%_ _%phi134159%_)
        (let ((_%ctx134161%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key134157%_
           _%syntax?134158%_
           _%phi134159%_
           _%ctx134161%_))))
    (define gx#make-binding-id
      (lambda _g137181_
        (let ((_g137182_ (##length _g137181_)))
          (cond ((##fx= _g137182_ 1) (apply gx#make-binding-id__0 _g137181_))
                ((##fx= _g137182_ 2) (apply gx#make-binding-id__1 _g137181_))
                ((##fx= _g137182_ 3) (apply gx#make-binding-id__2 _g137181_))
                ((##fx= _g137182_ 4) (apply gx#make-binding-id__% _g137181_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g137181_))))))))
