(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1756142016)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx137458%_)
        (let* ((_%e137459137466%_ _%stx137458%_)
               (_%E137461137470%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137459137466%_)))
               (_%E137460137484%_
                (lambda ()
                  (if (gx#stx-pair? _%e137459137466%_)
                      (let ((_%e137462137474%_
                             (gx#syntax-e _%e137459137466%_)))
                        (let ((_%hd137463137477%_ (##car _%e137462137474%_))
                              (_%tl137464137479%_ (##cdr _%e137462137474%_)))
                          (let* ((_%form137482%_ _%hd137463137477%_)
                                 (__self137487
                                  (gx#syntax-local-e__0 _%form137482%_))
                                 (__method137488
                                  (__method-ref
                                   __self137487
                                   'compile-top-syntax)))
                            (if __method137488
                                (__method137488 __self137487 _%stx137458%_)
                                (begin
                                  (error '"Missing method"
                                         __self137487
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%E137461137470%_)))))
          (_%E137460137484%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self137406%_ _%stx137407%_)
        (let* ((_%self137410%_ _%self137406%_)
               (_%self137419137427%_ _%self137410%_)
               (_%E137421137431%_
                (lambda ()
                  (error '"No clause matching"
                         _%self137419137427%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K137422137444%_
                (lambda (_%K137434%_)
                  (let ((_%$e137436%_ (gx#stx-source _%stx137407%_)))
                    (if _%$e137436%_
                        ((lambda (_%g137438137440%_)
                           (gx#stx-wrap-source
                            (_%K137434%_ _%stx137407%_)
                            _%g137438137440%_))
                         _%$e137436%_)
                        (_%K137434%_ _%stx137407%_)))))
               (_%e137423137447%_
                (##unchecked-structure-ref _%self137419137427%_ '1 '#f '#f))
               (_%e137424137450%_
                (##unchecked-structure-ref _%self137419137427%_ '2 '#f '#f))
               (_%e137425137453%_
                (##unchecked-structure-ref _%self137419137427%_ '3 '#f '#f))
               (_%K137456%_ _%e137425137453%_))
          (_%K137422137444%_ _%K137456%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx137280%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx137280%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx137250%_)
        (let* ((_%e137251137258%_ _%stx137250%_)
               (_%E137253137262%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137251137258%_)))
               (_%E137252137276%_
                (lambda ()
                  (if (gx#stx-pair? _%e137251137258%_)
                      (let ((_%e137254137266%_
                             (gx#syntax-e _%e137251137258%_)))
                        (let ((_%hd137255137269%_ (##car _%e137254137266%_))
                              (_%tl137256137271%_ (##cdr _%e137254137266%_)))
                          (let ((_%body137274%_ _%tl137256137271%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body137274%_)))))
                      (_%E137253137262%_)))))
          (_%E137252137276%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx137219%_)
        (let* ((_%e137220137227%_ _%stx137219%_)
               (_%E137222137231%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137220137227%_)))
               (_%E137221137246%_
                (lambda ()
                  (if (gx#stx-pair? _%e137220137227%_)
                      (let ((_%e137223137235%_
                             (gx#syntax-e _%e137220137227%_)))
                        (let ((_%hd137224137238%_ (##car _%e137223137235%_))
                              (_%tl137225137240%_ (##cdr _%e137223137235%_)))
                          (let ((_%body137243%_ _%tl137225137240%_))
                            (cons '%#begin-syntax
                                  (call-with-parameters__1
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body137243%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%E137222137231%_)))))
          (_%E137221137246%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx137189%_)
        (let* ((_%e137190137197%_ _%stx137189%_)
               (_%E137192137201%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137190137197%_)))
               (_%E137191137215%_
                (lambda ()
                  (if (gx#stx-pair? _%e137190137197%_)
                      (let ((_%e137193137205%_
                             (gx#syntax-e _%e137190137197%_)))
                        (let ((_%hd137194137208%_ (##car _%e137193137205%_))
                              (_%tl137195137210%_ (##cdr _%e137193137205%_)))
                          (let ((_%body137213%_ _%tl137195137210%_))
                            (cons '%#begin-foreign _%body137213%_))))
                      (_%E137192137201%_)))))
          (_%E137191137215%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx137135%_)
        (let* ((_%e137136137149%_ _%stx137135%_)
               (_%E137138137153%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137136137149%_)))
               (_%E137137137185%_
                (lambda ()
                  (if (gx#stx-pair? _%e137136137149%_)
                      (let ((_%e137139137157%_
                             (gx#syntax-e _%e137136137149%_)))
                        (let ((_%hd137140137160%_ (##car _%e137139137157%_))
                              (_%tl137141137162%_ (##cdr _%e137139137157%_)))
                          (if (gx#stx-pair? _%tl137141137162%_)
                              (let ((_%e137142137165%_
                                     (gx#syntax-e _%tl137141137162%_)))
                                (let ((_%hd137143137168%_
                                       (##car _%e137142137165%_))
                                      (_%tl137144137170%_
                                       (##cdr _%e137142137165%_)))
                                  (let ((_%ann137173%_ _%hd137143137168%_))
                                    (if (gx#stx-pair? _%tl137144137170%_)
                                        (let ((_%e137145137175%_
                                               (gx#syntax-e
                                                _%tl137144137170%_)))
                                          (let ((_%hd137146137178%_
                                                 (##car _%e137145137175%_))
                                                (_%tl137147137180%_
                                                 (##cdr _%e137145137175%_)))
                                            (let ((_%expr137183%_
                                                   _%hd137146137178%_))
                                              (if (gx#stx-null?
                                                   _%tl137147137180%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr137183%_)
                                                  (_%E137138137153%_)))))
                                        (_%E137138137153%_)))))
                              (_%E137138137153%_))))
                      (_%E137138137153%_)))))
          (_%E137137137185%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx137105%_)
        (let* ((_%e137106137113%_ _%stx137105%_)
               (_%E137108137117%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137106137113%_)))
               (_%E137107137131%_
                (lambda ()
                  (if (gx#stx-pair? _%e137106137113%_)
                      (let ((_%e137109137121%_
                             (gx#syntax-e _%e137106137113%_)))
                        (let ((_%hd137110137124%_ (##car _%e137109137121%_))
                              (_%tl137111137126%_ (##cdr _%e137109137121%_)))
                          (let ((_%body137129%_ _%tl137111137126%_))
                            (cons '%#import _%body137129%_))))
                      (_%E137108137117%_)))))
          (_%E137107137131%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx137062%_)
        (let* ((_%e137063137073%_ _%stx137062%_)
               (_%E137065137077%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137063137073%_)))
               (_%E137064137101%_
                (lambda ()
                  (if (gx#stx-pair? _%e137063137073%_)
                      (let ((_%e137066137081%_
                             (gx#syntax-e _%e137063137073%_)))
                        (let ((_%hd137067137084%_ (##car _%e137066137081%_))
                              (_%tl137068137086%_ (##cdr _%e137066137081%_)))
                          (if (gx#stx-pair? _%tl137068137086%_)
                              (let ((_%e137069137089%_
                                     (gx#syntax-e _%tl137068137086%_)))
                                (let ((_%hd137070137092%_
                                       (##car _%e137069137089%_))
                                      (_%tl137071137094%_
                                       (##cdr _%e137069137089%_)))
                                  (let* ((_%hd137097%_ _%hd137070137092%_)
                                         (_%body137099%_ _%tl137071137094%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd137097%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body137099%_))))))
                              (_%E137065137077%_))))
                      (_%E137065137077%_)))))
          (_%E137064137101%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx137032%_)
        (let* ((_%e137033137040%_ _%stx137032%_)
               (_%E137035137044%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137033137040%_)))
               (_%E137034137058%_
                (lambda ()
                  (if (gx#stx-pair? _%e137033137040%_)
                      (let ((_%e137036137048%_
                             (gx#syntax-e _%e137033137040%_)))
                        (let ((_%hd137037137051%_ (##car _%e137036137048%_))
                              (_%tl137038137053%_ (##cdr _%e137036137048%_)))
                          (let ((_%body137056%_ _%tl137038137053%_))
                            (cons '%#export _%body137056%_))))
                      (_%E137035137044%_)))))
          (_%E137034137058%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx137002%_)
        (let* ((_%e137003137010%_ _%stx137002%_)
               (_%E137005137014%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137003137010%_)))
               (_%E137004137028%_
                (lambda ()
                  (if (gx#stx-pair? _%e137003137010%_)
                      (let ((_%e137006137018%_
                             (gx#syntax-e _%e137003137010%_)))
                        (let ((_%hd137007137021%_ (##car _%e137006137018%_))
                              (_%tl137008137023%_ (##cdr _%e137006137018%_)))
                          (let ((_%body137026%_ _%tl137008137023%_))
                            (cons '%#provide _%body137026%_))))
                      (_%E137005137014%_)))))
          (_%E137004137028%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx136972%_)
        (let* ((_%e136973136980%_ _%stx136972%_)
               (_%E136975136984%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136973136980%_)))
               (_%E136974136998%_
                (lambda ()
                  (if (gx#stx-pair? _%e136973136980%_)
                      (let ((_%e136976136988%_
                             (gx#syntax-e _%e136973136980%_)))
                        (let ((_%hd136977136991%_ (##car _%e136976136988%_))
                              (_%tl136978136993%_ (##cdr _%e136976136988%_)))
                          (let ((_%body136996%_ _%tl136978136993%_))
                            (cons '%#extern _%body136996%_))))
                      (_%E136975136984%_)))))
          (_%E136974136998%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx136918%_)
        (let* ((_%e136919136932%_ _%stx136918%_)
               (_%E136921136936%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136919136932%_)))
               (_%E136920136968%_
                (lambda ()
                  (if (gx#stx-pair? _%e136919136932%_)
                      (let ((_%e136922136940%_
                             (gx#syntax-e _%e136919136932%_)))
                        (let ((_%hd136923136943%_ (##car _%e136922136940%_))
                              (_%tl136924136945%_ (##cdr _%e136922136940%_)))
                          (if (gx#stx-pair? _%tl136924136945%_)
                              (let ((_%e136925136948%_
                                     (gx#syntax-e _%tl136924136945%_)))
                                (let ((_%hd136926136951%_
                                       (##car _%e136925136948%_))
                                      (_%tl136927136953%_
                                       (##cdr _%e136925136948%_)))
                                  (let ((_%hd136956%_ _%hd136926136951%_))
                                    (if (gx#stx-pair? _%tl136927136953%_)
                                        (let ((_%e136928136958%_
                                               (gx#syntax-e
                                                _%tl136927136953%_)))
                                          (let ((_%hd136929136961%_
                                                 (##car _%e136928136958%_))
                                                (_%tl136930136963%_
                                                 (##cdr _%e136928136958%_)))
                                            (let ((_%expr136966%_
                                                   _%hd136929136961%_))
                                              (if (gx#stx-null?
                                                   _%tl136930136963%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd136956%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr136966%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E136921136936%_)))))
                                        (_%E136921136936%_)))))
                              (_%E136921136936%_))))
                      (_%E136921136936%_)))))
          (_%E136920136968%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx136863%_)
        (let* ((_%e136864136877%_ _%stx136863%_)
               (_%E136866136881%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136864136877%_)))
               (_%E136865136914%_
                (lambda ()
                  (if (gx#stx-pair? _%e136864136877%_)
                      (let ((_%e136867136885%_
                             (gx#syntax-e _%e136864136877%_)))
                        (let ((_%hd136868136888%_ (##car _%e136867136885%_))
                              (_%tl136869136890%_ (##cdr _%e136867136885%_)))
                          (if (gx#stx-pair? _%tl136869136890%_)
                              (let ((_%e136870136893%_
                                     (gx#syntax-e _%tl136869136890%_)))
                                (let ((_%hd136871136896%_
                                       (##car _%e136870136893%_))
                                      (_%tl136872136898%_
                                       (##cdr _%e136870136893%_)))
                                  (let ((_%hd136901%_ _%hd136871136896%_))
                                    (if (gx#stx-pair? _%tl136872136898%_)
                                        (let ((_%e136873136903%_
                                               (gx#syntax-e
                                                _%tl136872136898%_)))
                                          (let ((_%hd136874136906%_
                                                 (##car _%e136873136903%_))
                                                (_%tl136875136908%_
                                                 (##cdr _%e136873136903%_)))
                                            (let ((_%expr136911%_
                                                   _%hd136874136906%_))
                                              (if (gx#stx-null?
                                                   _%tl136875136908%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd136901%_
                                                              (cons (call-with-parameters__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr136911%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E136866136881%_)))))
                                        (_%E136866136881%_)))))
                              (_%E136866136881%_))))
                      (_%E136866136881%_)))))
          (_%E136865136914%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx136833%_)
        (let* ((_%e136834136841%_ _%stx136833%_)
               (_%E136836136845%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136834136841%_)))
               (_%E136835136859%_
                (lambda ()
                  (if (gx#stx-pair? _%e136834136841%_)
                      (let ((_%e136837136849%_
                             (gx#syntax-e _%e136834136841%_)))
                        (let ((_%hd136838136852%_ (##car _%e136837136849%_))
                              (_%tl136839136854%_ (##cdr _%e136837136849%_)))
                          (let ((_%body136857%_ _%tl136839136854%_))
                            (cons '%#define-alias _%body136857%_))))
                      (_%E136836136845%_)))))
          (_%E136835136859%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx136803%_)
        (let* ((_%e136804136811%_ _%stx136803%_)
               (_%E136806136815%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136804136811%_)))
               (_%E136805136829%_
                (lambda ()
                  (if (gx#stx-pair? _%e136804136811%_)
                      (let ((_%e136807136819%_
                             (gx#syntax-e _%e136804136811%_)))
                        (let ((_%hd136808136822%_ (##car _%e136807136819%_))
                              (_%tl136809136824%_ (##cdr _%e136807136819%_)))
                          (let ((_%body136827%_ _%tl136809136824%_))
                            (cons '%#define-runtime _%body136827%_))))
                      (_%E136806136815%_)))))
          (_%E136805136829%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx136773%_)
        (let* ((_%e136774136781%_ _%stx136773%_)
               (_%E136776136785%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136774136781%_)))
               (_%E136775136799%_
                (lambda ()
                  (if (gx#stx-pair? _%e136774136781%_)
                      (let ((_%e136777136789%_
                             (gx#syntax-e _%e136774136781%_)))
                        (let ((_%hd136778136792%_ (##car _%e136777136789%_))
                              (_%tl136779136794%_ (##cdr _%e136777136789%_)))
                          (let ((_%decls136797%_ _%tl136779136794%_))
                            (cons '%#declare _%decls136797%_))))
                      (_%E136776136785%_)))))
          (_%E136775136799%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx136743%_)
        (let* ((_%e136744136751%_ _%stx136743%_)
               (_%E136746136755%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136744136751%_)))
               (_%E136745136769%_
                (lambda ()
                  (if (gx#stx-pair? _%e136744136751%_)
                      (let ((_%e136747136759%_
                             (gx#syntax-e _%e136744136751%_)))
                        (let ((_%hd136748136762%_ (##car _%e136747136759%_))
                              (_%tl136749136764%_ (##cdr _%e136747136759%_)))
                          (let ((_%clause136767%_ _%tl136749136764%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause136767%_)))))
                      (_%E136746136755%_)))))
          (_%E136745136769%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx136700%_)
        (let* ((_%e136701136711%_ _%stx136700%_)
               (_%E136703136715%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136701136711%_)))
               (_%E136702136739%_
                (lambda ()
                  (if (gx#stx-pair? _%e136701136711%_)
                      (let ((_%e136704136719%_
                             (gx#syntax-e _%e136701136711%_)))
                        (let ((_%hd136705136722%_ (##car _%e136704136719%_))
                              (_%tl136706136724%_ (##cdr _%e136704136719%_)))
                          (let ((_%hd136727%_ _%hd136705136722%_))
                            (if (gx#stx-pair? _%tl136706136724%_)
                                (let ((_%e136707136729%_
                                       (gx#syntax-e _%tl136706136724%_)))
                                  (let ((_%hd136708136732%_
                                         (##car _%e136707136729%_))
                                        (_%tl136709136734%_
                                         (##cdr _%e136707136729%_)))
                                    (let ((_%body136737%_ _%hd136708136732%_))
                                      (if (gx#stx-null? _%tl136709136734%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd136727%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body136737%_)
                                                      '()))
                                          (_%E136703136715%_)))))
                                (_%E136703136715%_)))))
                      (_%E136703136715%_)))))
          (_%E136702136739%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx136670%_)
        (let* ((_%e136671136678%_ _%stx136670%_)
               (_%E136673136682%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136671136678%_)))
               (_%E136672136696%_
                (lambda ()
                  (if (gx#stx-pair? _%e136671136678%_)
                      (let ((_%e136674136686%_
                             (gx#syntax-e _%e136671136678%_)))
                        (let ((_%hd136675136689%_ (##car _%e136674136686%_))
                              (_%tl136676136691%_ (##cdr _%e136674136686%_)))
                          (let ((_%clauses136694%_ _%tl136676136691%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses136694%_)))))
                      (_%E136673136682%_)))))
          (_%E136672136696%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx136605%_ _%form136606%_)
        (let* ((_%e136607136620%_ _%stx136605%_)
               (_%E136609136624%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136607136620%_)))
               (_%E136608136656%_
                (lambda ()
                  (if (gx#stx-pair? _%e136607136620%_)
                      (let ((_%e136610136628%_
                             (gx#syntax-e _%e136607136620%_)))
                        (let ((_%hd136611136631%_ (##car _%e136610136628%_))
                              (_%tl136612136633%_ (##cdr _%e136610136628%_)))
                          (if (gx#stx-pair? _%tl136612136633%_)
                              (let ((_%e136613136636%_
                                     (gx#syntax-e _%tl136612136633%_)))
                                (let ((_%hd136614136639%_
                                       (##car _%e136613136636%_))
                                      (_%tl136615136641%_
                                       (##cdr _%e136613136636%_)))
                                  (let ((_%hd136644%_ _%hd136614136639%_))
                                    (if (gx#stx-pair? _%tl136615136641%_)
                                        (let ((_%e136616136646%_
                                               (gx#syntax-e
                                                _%tl136615136641%_)))
                                          (let ((_%hd136617136649%_
                                                 (##car _%e136616136646%_))
                                                (_%tl136618136651%_
                                                 (##cdr _%e136616136646%_)))
                                            (let ((_%body136654%_
                                                   _%hd136617136649%_))
                                              (if (gx#stx-null?
                                                   _%tl136618136651%_)
                                                  (cons _%form136606%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd136644%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body136654%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E136609136624%_)))))
                                        (_%E136609136624%_)))))
                              (_%E136609136624%_))))
                      (_%E136609136624%_)))))
          (_%E136608136656%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx136663%_)
        (let ((_%form136665%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx136663%_ _%form136665%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g137489_
        (let ((_g137490_ (##length _g137489_)))
          (cond ((##fx= _g137490_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g137489_))
                ((##fx= _g137490_ 2)
                 (apply gx#core-compile-top-let-values%__% _g137489_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g137489_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx136602%_)
        (gx#core-compile-top-let-values%__% _%stx136602%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx136600%_)
        (gx#core-compile-top-let-values%__% _%stx136600%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx136559%_)
        (let* ((_%e136560136570%_ _%stx136559%_)
               (_%E136562136574%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136560136570%_)))
               (_%E136561136596%_
                (lambda ()
                  (if (gx#stx-pair? _%e136560136570%_)
                      (let ((_%e136563136578%_
                             (gx#syntax-e _%e136560136570%_)))
                        (let ((_%hd136564136581%_ (##car _%e136563136578%_))
                              (_%tl136565136583%_ (##cdr _%e136563136578%_)))
                          (if (gx#stx-pair? _%tl136565136583%_)
                              (let ((_%e136566136586%_
                                     (gx#syntax-e _%tl136565136583%_)))
                                (let ((_%hd136567136589%_
                                       (##car _%e136566136586%_))
                                      (_%tl136568136591%_
                                       (##cdr _%e136566136586%_)))
                                  (let ((_%e136594%_ _%hd136567136589%_))
                                    (if (gx#stx-null? _%tl136568136591%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e136594%_)
                                                    '()))
                                        (_%E136562136574%_)))))
                              (_%E136562136574%_))))
                      (_%E136562136574%_)))))
          (_%E136561136596%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx136518%_)
        (let* ((_%e136519136529%_ _%stx136518%_)
               (_%E136521136533%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136519136529%_)))
               (_%E136520136555%_
                (lambda ()
                  (if (gx#stx-pair? _%e136519136529%_)
                      (let ((_%e136522136537%_
                             (gx#syntax-e _%e136519136529%_)))
                        (let ((_%hd136523136540%_ (##car _%e136522136537%_))
                              (_%tl136524136542%_ (##cdr _%e136522136537%_)))
                          (if (gx#stx-pair? _%tl136524136542%_)
                              (let ((_%e136525136545%_
                                     (gx#syntax-e _%tl136524136542%_)))
                                (let ((_%hd136526136548%_
                                       (##car _%e136525136545%_))
                                      (_%tl136527136550%_
                                       (##cdr _%e136525136545%_)))
                                  (let ((_%e136553%_ _%hd136526136548%_))
                                    (if (gx#stx-null? _%tl136527136550%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e136553%_)
                                                    '()))
                                        (_%E136521136533%_)))))
                              (_%E136521136533%_))))
                      (_%E136521136533%_)))))
          (_%E136520136555%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx136475%_)
        (let* ((_%e136476136486%_ _%stx136475%_)
               (_%E136478136490%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136476136486%_)))
               (_%E136477136514%_
                (lambda ()
                  (if (gx#stx-pair? _%e136476136486%_)
                      (let ((_%e136479136494%_
                             (gx#syntax-e _%e136476136486%_)))
                        (let ((_%hd136480136497%_ (##car _%e136479136494%_))
                              (_%tl136481136499%_ (##cdr _%e136479136494%_)))
                          (if (gx#stx-pair? _%tl136481136499%_)
                              (let ((_%e136482136502%_
                                     (gx#syntax-e _%tl136481136499%_)))
                                (let ((_%hd136483136505%_
                                       (##car _%e136482136502%_))
                                      (_%tl136484136507%_
                                       (##cdr _%e136482136502%_)))
                                  (let* ((_%rator136510%_ _%hd136483136505%_)
                                         (_%args136512%_ _%tl136484136507%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator136510%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args136512%_))))))
                              (_%E136478136490%_))))
                      (_%E136478136490%_)))))
          (_%E136477136514%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx136408%_)
        (let* ((_%e136409136425%_ _%stx136408%_)
               (_%E136411136429%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136409136425%_)))
               (_%E136410136471%_
                (lambda ()
                  (if (gx#stx-pair? _%e136409136425%_)
                      (let ((_%e136412136433%_
                             (gx#syntax-e _%e136409136425%_)))
                        (let ((_%hd136413136436%_ (##car _%e136412136433%_))
                              (_%tl136414136438%_ (##cdr _%e136412136433%_)))
                          (if (gx#stx-pair? _%tl136414136438%_)
                              (let ((_%e136415136441%_
                                     (gx#syntax-e _%tl136414136438%_)))
                                (let ((_%hd136416136444%_
                                       (##car _%e136415136441%_))
                                      (_%tl136417136446%_
                                       (##cdr _%e136415136441%_)))
                                  (let ((_%test136449%_ _%hd136416136444%_))
                                    (if (gx#stx-pair? _%tl136417136446%_)
                                        (let ((_%e136418136451%_
                                               (gx#syntax-e
                                                _%tl136417136446%_)))
                                          (let ((_%hd136419136454%_
                                                 (##car _%e136418136451%_))
                                                (_%tl136420136456%_
                                                 (##cdr _%e136418136451%_)))
                                            (let ((_%K136459%_
                                                   _%hd136419136454%_))
                                              (if (gx#stx-pair?
                                                   _%tl136420136456%_)
                                                  (let ((_%e136421136461%_
                                                         (gx#syntax-e
                                                          _%tl136420136456%_)))
                                                    (let ((_%hd136422136464%_
                                                           (##car _%e136421136461%_))
                                                          (_%tl136423136466%_
                                                           (##cdr _%e136421136461%_)))
                                                      (let ((_%E136469%_
                                                             _%hd136422136464%_))
                                                        (if (gx#stx-null?
                                                             _%tl136423136466%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test136449%_)
                                (cons (gx#core-compile-top-syntax _%K136459%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E136469%_)
                                            '()))))
                    (_%E136411136429%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E136411136429%_)))))
                                        (_%E136411136429%_)))))
                              (_%E136411136429%_))))
                      (_%E136411136429%_)))))
          (_%E136410136471%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx136367%_)
        (let* ((_%e136368136378%_ _%stx136367%_)
               (_%E136370136382%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136368136378%_)))
               (_%E136369136404%_
                (lambda ()
                  (if (gx#stx-pair? _%e136368136378%_)
                      (let ((_%e136371136386%_
                             (gx#syntax-e _%e136368136378%_)))
                        (let ((_%hd136372136389%_ (##car _%e136371136386%_))
                              (_%tl136373136391%_ (##cdr _%e136371136386%_)))
                          (if (gx#stx-pair? _%tl136373136391%_)
                              (let ((_%e136374136394%_
                                     (gx#syntax-e _%tl136373136391%_)))
                                (let ((_%hd136375136397%_
                                       (##car _%e136374136394%_))
                                      (_%tl136376136399%_
                                       (##cdr _%e136374136394%_)))
                                  (let ((_%id136402%_ _%hd136375136397%_))
                                    (if (gx#stx-null? _%tl136376136399%_)
                                        (if (gx#identifier? _%id136402%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id136402%_)
                                                        '()))
                                            (_%E136370136382%_))
                                        (_%E136370136382%_)))))
                              (_%E136370136382%_))))
                      (_%E136370136382%_)))))
          (_%E136369136404%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx136313%_)
        (let* ((_%e136314136327%_ _%stx136313%_)
               (_%E136316136331%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136314136327%_)))
               (_%E136315136363%_
                (lambda ()
                  (if (gx#stx-pair? _%e136314136327%_)
                      (let ((_%e136317136335%_
                             (gx#syntax-e _%e136314136327%_)))
                        (let ((_%hd136318136338%_ (##car _%e136317136335%_))
                              (_%tl136319136340%_ (##cdr _%e136317136335%_)))
                          (if (gx#stx-pair? _%tl136319136340%_)
                              (let ((_%e136320136343%_
                                     (gx#syntax-e _%tl136319136340%_)))
                                (let ((_%hd136321136346%_
                                       (##car _%e136320136343%_))
                                      (_%tl136322136348%_
                                       (##cdr _%e136320136343%_)))
                                  (let ((_%id136351%_ _%hd136321136346%_))
                                    (if (gx#stx-pair? _%tl136322136348%_)
                                        (let ((_%e136323136353%_
                                               (gx#syntax-e
                                                _%tl136322136348%_)))
                                          (let ((_%hd136324136356%_
                                                 (##car _%e136323136353%_))
                                                (_%tl136325136358%_
                                                 (##cdr _%e136323136353%_)))
                                            (let ((_%expr136361%_
                                                   _%hd136324136356%_))
                                              (if (gx#stx-null?
                                                   _%tl136325136358%_)
                                                  (if (gx#identifier?
                                                       _%id136351%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id136351%_)
                          (cons (gx#core-compile-top-syntax _%expr136361%_)
                                '())))
              (_%E136316136331%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E136316136331%_)))))
                                        (_%E136316136331%_)))))
                              (_%E136316136331%_))))
                      (_%E136316136331%_)))))
          (_%E136315136363%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id136307%_)
        (let ((_%$e136309%_ (gx#resolve-identifier__0 _%id136307%_)))
          (if _%$e136309%_
              (##unchecked-structure-ref _%$e136309%_ '1 '#f '#f)
              _%id136307%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd136305%_)
        (if (gx#identifier? _%hd136305%_)
            (gx#core-compile-top-runtime-ref _%hd136305%_)
            '#f)))))
