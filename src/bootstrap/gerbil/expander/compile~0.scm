(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1770243151)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx152599%_)
        (let* ((_%e152600152607%_ _%stx152599%_)
               (_%E152602152611%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e152600152607%_)))
               (_%E152601152625%_
                (lambda ()
                  (if (gx#stx-pair? _%e152600152607%_)
                      (let ((_%e152603152615%_
                             (gx#syntax-e _%e152600152607%_)))
                        (let ((_%hd152604152618%_ (##car _%e152603152615%_))
                              (_%tl152605152620%_ (##cdr _%e152603152615%_)))
                          (let* ((_%form152623%_ _%hd152604152618%_)
                                 (__self152628
                                  (gx#syntax-local-e__0 _%form152623%_))
                                 (__method152629
                                  (__method-ref
                                   __self152628
                                   'compile-top-syntax)))
                            (if __method152629
                                (__method152629 __self152628 _%stx152599%_)
                                (begin
                                  (error '"Missing method"
                                         __self152628
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%E152602152611%_)))))
          (_%E152601152625%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self152548%_ _%stx152549%_)
        (let* ((_%self152552%_ _%self152548%_)
               (_%self152561152569%_ _%self152552%_)
               (_%E152563152572%_
                (lambda ()
                  (error '"No clause matching"
                         _%self152561152569%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K152564152585%_
                (lambda (_%K152575%_)
                  (let ((_%$e152577%_ (gx#stx-source _%stx152549%_)))
                    (if _%$e152577%_
                        ((lambda (_%g152579152581%_)
                           (gx#stx-wrap-source
                            (_%K152575%_ _%stx152549%_)
                            _%g152579152581%_))
                         _%$e152577%_)
                        (_%K152575%_ _%stx152549%_)))))
               (_%e152565152588%_
                (##unchecked-structure-ref _%self152561152569%_ '1 '#f '#f))
               (_%e152566152591%_
                (##unchecked-structure-ref _%self152561152569%_ '2 '#f '#f))
               (_%e152567152594%_
                (##unchecked-structure-ref _%self152561152569%_ '3 '#f '#f))
               (_%K152597%_ _%e152567152594%_))
          (_%K152564152585%_ _%K152597%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx152422%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx152422%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx152392%_)
        (let* ((_%e152393152400%_ _%stx152392%_)
               (_%E152395152404%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e152393152400%_)))
               (_%E152394152418%_
                (lambda ()
                  (if (gx#stx-pair? _%e152393152400%_)
                      (let ((_%e152396152408%_
                             (gx#syntax-e _%e152393152400%_)))
                        (let ((_%hd152397152411%_ (##car _%e152396152408%_))
                              (_%tl152398152413%_ (##cdr _%e152396152408%_)))
                          (let ((_%body152416%_ _%tl152398152413%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body152416%_)))))
                      (_%E152395152404%_)))))
          (_%E152394152418%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx152361%_)
        (let* ((_%e152362152369%_ _%stx152361%_)
               (_%E152364152373%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e152362152369%_)))
               (_%E152363152388%_
                (lambda ()
                  (if (gx#stx-pair? _%e152362152369%_)
                      (let ((_%e152365152377%_
                             (gx#syntax-e _%e152362152369%_)))
                        (let ((_%hd152366152380%_ (##car _%e152365152377%_))
                              (_%tl152367152382%_ (##cdr _%e152365152377%_)))
                          (let ((_%body152385%_ _%tl152367152382%_))
                            (cons '%#begin-syntax
                                  (call-with-parameters__1
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body152385%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%E152364152373%_)))))
          (_%E152363152388%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx152331%_)
        (let* ((_%e152332152339%_ _%stx152331%_)
               (_%E152334152343%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e152332152339%_)))
               (_%E152333152357%_
                (lambda ()
                  (if (gx#stx-pair? _%e152332152339%_)
                      (let ((_%e152335152347%_
                             (gx#syntax-e _%e152332152339%_)))
                        (let ((_%hd152336152350%_ (##car _%e152335152347%_))
                              (_%tl152337152352%_ (##cdr _%e152335152347%_)))
                          (let ((_%body152355%_ _%tl152337152352%_))
                            (cons '%#begin-foreign _%body152355%_))))
                      (_%E152334152343%_)))))
          (_%E152333152357%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx152277%_)
        (let* ((_%e152278152291%_ _%stx152277%_)
               (_%E152280152295%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e152278152291%_)))
               (_%E152279152327%_
                (lambda ()
                  (if (gx#stx-pair? _%e152278152291%_)
                      (let ((_%e152281152299%_
                             (gx#syntax-e _%e152278152291%_)))
                        (let ((_%hd152282152302%_ (##car _%e152281152299%_))
                              (_%tl152283152304%_ (##cdr _%e152281152299%_)))
                          (if (gx#stx-pair? _%tl152283152304%_)
                              (let ((_%e152284152307%_
                                     (gx#syntax-e _%tl152283152304%_)))
                                (let ((_%hd152285152310%_
                                       (##car _%e152284152307%_))
                                      (_%tl152286152312%_
                                       (##cdr _%e152284152307%_)))
                                  (let ((_%ann152315%_ _%hd152285152310%_))
                                    (if (gx#stx-pair? _%tl152286152312%_)
                                        (let ((_%e152287152317%_
                                               (gx#syntax-e
                                                _%tl152286152312%_)))
                                          (let ((_%hd152288152320%_
                                                 (##car _%e152287152317%_))
                                                (_%tl152289152322%_
                                                 (##cdr _%e152287152317%_)))
                                            (let ((_%expr152325%_
                                                   _%hd152288152320%_))
                                              (if (gx#stx-null?
                                                   _%tl152289152322%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr152325%_)
                                                  (_%E152280152295%_)))))
                                        (_%E152280152295%_)))))
                              (_%E152280152295%_))))
                      (_%E152280152295%_)))))
          (_%E152279152327%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx152247%_)
        (let* ((_%e152248152255%_ _%stx152247%_)
               (_%E152250152259%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e152248152255%_)))
               (_%E152249152273%_
                (lambda ()
                  (if (gx#stx-pair? _%e152248152255%_)
                      (let ((_%e152251152263%_
                             (gx#syntax-e _%e152248152255%_)))
                        (let ((_%hd152252152266%_ (##car _%e152251152263%_))
                              (_%tl152253152268%_ (##cdr _%e152251152263%_)))
                          (let ((_%body152271%_ _%tl152253152268%_))
                            (cons '%#import _%body152271%_))))
                      (_%E152250152259%_)))))
          (_%E152249152273%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx152204%_)
        (let* ((_%e152205152215%_ _%stx152204%_)
               (_%E152207152219%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e152205152215%_)))
               (_%E152206152243%_
                (lambda ()
                  (if (gx#stx-pair? _%e152205152215%_)
                      (let ((_%e152208152223%_
                             (gx#syntax-e _%e152205152215%_)))
                        (let ((_%hd152209152226%_ (##car _%e152208152223%_))
                              (_%tl152210152228%_ (##cdr _%e152208152223%_)))
                          (if (gx#stx-pair? _%tl152210152228%_)
                              (let ((_%e152211152231%_
                                     (gx#syntax-e _%tl152210152228%_)))
                                (let ((_%hd152212152234%_
                                       (##car _%e152211152231%_))
                                      (_%tl152213152236%_
                                       (##cdr _%e152211152231%_)))
                                  (let* ((_%hd152239%_ _%hd152212152234%_)
                                         (_%body152241%_ _%tl152213152236%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd152239%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body152241%_))))))
                              (_%E152207152219%_))))
                      (_%E152207152219%_)))))
          (_%E152206152243%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx152174%_)
        (let* ((_%e152175152182%_ _%stx152174%_)
               (_%E152177152186%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e152175152182%_)))
               (_%E152176152200%_
                (lambda ()
                  (if (gx#stx-pair? _%e152175152182%_)
                      (let ((_%e152178152190%_
                             (gx#syntax-e _%e152175152182%_)))
                        (let ((_%hd152179152193%_ (##car _%e152178152190%_))
                              (_%tl152180152195%_ (##cdr _%e152178152190%_)))
                          (let ((_%body152198%_ _%tl152180152195%_))
                            (cons '%#export _%body152198%_))))
                      (_%E152177152186%_)))))
          (_%E152176152200%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx152144%_)
        (let* ((_%e152145152152%_ _%stx152144%_)
               (_%E152147152156%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e152145152152%_)))
               (_%E152146152170%_
                (lambda ()
                  (if (gx#stx-pair? _%e152145152152%_)
                      (let ((_%e152148152160%_
                             (gx#syntax-e _%e152145152152%_)))
                        (let ((_%hd152149152163%_ (##car _%e152148152160%_))
                              (_%tl152150152165%_ (##cdr _%e152148152160%_)))
                          (let ((_%body152168%_ _%tl152150152165%_))
                            (cons '%#provide _%body152168%_))))
                      (_%E152147152156%_)))))
          (_%E152146152170%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx152114%_)
        (let* ((_%e152115152122%_ _%stx152114%_)
               (_%E152117152126%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e152115152122%_)))
               (_%E152116152140%_
                (lambda ()
                  (if (gx#stx-pair? _%e152115152122%_)
                      (let ((_%e152118152130%_
                             (gx#syntax-e _%e152115152122%_)))
                        (let ((_%hd152119152133%_ (##car _%e152118152130%_))
                              (_%tl152120152135%_ (##cdr _%e152118152130%_)))
                          (let ((_%body152138%_ _%tl152120152135%_))
                            (cons '%#extern _%body152138%_))))
                      (_%E152117152126%_)))))
          (_%E152116152140%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx152060%_)
        (let* ((_%e152061152074%_ _%stx152060%_)
               (_%E152063152078%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e152061152074%_)))
               (_%E152062152110%_
                (lambda ()
                  (if (gx#stx-pair? _%e152061152074%_)
                      (let ((_%e152064152082%_
                             (gx#syntax-e _%e152061152074%_)))
                        (let ((_%hd152065152085%_ (##car _%e152064152082%_))
                              (_%tl152066152087%_ (##cdr _%e152064152082%_)))
                          (if (gx#stx-pair? _%tl152066152087%_)
                              (let ((_%e152067152090%_
                                     (gx#syntax-e _%tl152066152087%_)))
                                (let ((_%hd152068152093%_
                                       (##car _%e152067152090%_))
                                      (_%tl152069152095%_
                                       (##cdr _%e152067152090%_)))
                                  (let ((_%hd152098%_ _%hd152068152093%_))
                                    (if (gx#stx-pair? _%tl152069152095%_)
                                        (let ((_%e152070152100%_
                                               (gx#syntax-e
                                                _%tl152069152095%_)))
                                          (let ((_%hd152071152103%_
                                                 (##car _%e152070152100%_))
                                                (_%tl152072152105%_
                                                 (##cdr _%e152070152100%_)))
                                            (let ((_%expr152108%_
                                                   _%hd152071152103%_))
                                              (if (gx#stx-null?
                                                   _%tl152072152105%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd152098%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr152108%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E152063152078%_)))))
                                        (_%E152063152078%_)))))
                              (_%E152063152078%_))))
                      (_%E152063152078%_)))))
          (_%E152062152110%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx152005%_)
        (let* ((_%e152006152019%_ _%stx152005%_)
               (_%E152008152023%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e152006152019%_)))
               (_%E152007152056%_
                (lambda ()
                  (if (gx#stx-pair? _%e152006152019%_)
                      (let ((_%e152009152027%_
                             (gx#syntax-e _%e152006152019%_)))
                        (let ((_%hd152010152030%_ (##car _%e152009152027%_))
                              (_%tl152011152032%_ (##cdr _%e152009152027%_)))
                          (if (gx#stx-pair? _%tl152011152032%_)
                              (let ((_%e152012152035%_
                                     (gx#syntax-e _%tl152011152032%_)))
                                (let ((_%hd152013152038%_
                                       (##car _%e152012152035%_))
                                      (_%tl152014152040%_
                                       (##cdr _%e152012152035%_)))
                                  (let ((_%hd152043%_ _%hd152013152038%_))
                                    (if (gx#stx-pair? _%tl152014152040%_)
                                        (let ((_%e152015152045%_
                                               (gx#syntax-e
                                                _%tl152014152040%_)))
                                          (let ((_%hd152016152048%_
                                                 (##car _%e152015152045%_))
                                                (_%tl152017152050%_
                                                 (##cdr _%e152015152045%_)))
                                            (let ((_%expr152053%_
                                                   _%hd152016152048%_))
                                              (if (gx#stx-null?
                                                   _%tl152017152050%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd152043%_
                                                              (cons (call-with-parameters__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr152053%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E152008152023%_)))))
                                        (_%E152008152023%_)))))
                              (_%E152008152023%_))))
                      (_%E152008152023%_)))))
          (_%E152007152056%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx151975%_)
        (let* ((_%e151976151983%_ _%stx151975%_)
               (_%E151978151987%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e151976151983%_)))
               (_%E151977152001%_
                (lambda ()
                  (if (gx#stx-pair? _%e151976151983%_)
                      (let ((_%e151979151991%_
                             (gx#syntax-e _%e151976151983%_)))
                        (let ((_%hd151980151994%_ (##car _%e151979151991%_))
                              (_%tl151981151996%_ (##cdr _%e151979151991%_)))
                          (let ((_%body151999%_ _%tl151981151996%_))
                            (cons '%#define-alias _%body151999%_))))
                      (_%E151978151987%_)))))
          (_%E151977152001%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx151945%_)
        (let* ((_%e151946151953%_ _%stx151945%_)
               (_%E151948151957%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e151946151953%_)))
               (_%E151947151971%_
                (lambda ()
                  (if (gx#stx-pair? _%e151946151953%_)
                      (let ((_%e151949151961%_
                             (gx#syntax-e _%e151946151953%_)))
                        (let ((_%hd151950151964%_ (##car _%e151949151961%_))
                              (_%tl151951151966%_ (##cdr _%e151949151961%_)))
                          (let ((_%body151969%_ _%tl151951151966%_))
                            (cons '%#define-runtime _%body151969%_))))
                      (_%E151948151957%_)))))
          (_%E151947151971%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx151915%_)
        (let* ((_%e151916151923%_ _%stx151915%_)
               (_%E151918151927%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e151916151923%_)))
               (_%E151917151941%_
                (lambda ()
                  (if (gx#stx-pair? _%e151916151923%_)
                      (let ((_%e151919151931%_
                             (gx#syntax-e _%e151916151923%_)))
                        (let ((_%hd151920151934%_ (##car _%e151919151931%_))
                              (_%tl151921151936%_ (##cdr _%e151919151931%_)))
                          (let ((_%decls151939%_ _%tl151921151936%_))
                            (cons '%#declare _%decls151939%_))))
                      (_%E151918151927%_)))))
          (_%E151917151941%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx151885%_)
        (let* ((_%e151886151893%_ _%stx151885%_)
               (_%E151888151897%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e151886151893%_)))
               (_%E151887151911%_
                (lambda ()
                  (if (gx#stx-pair? _%e151886151893%_)
                      (let ((_%e151889151901%_
                             (gx#syntax-e _%e151886151893%_)))
                        (let ((_%hd151890151904%_ (##car _%e151889151901%_))
                              (_%tl151891151906%_ (##cdr _%e151889151901%_)))
                          (let ((_%clause151909%_ _%tl151891151906%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause151909%_)))))
                      (_%E151888151897%_)))))
          (_%E151887151911%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx151842%_)
        (let* ((_%e151843151853%_ _%stx151842%_)
               (_%E151845151857%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e151843151853%_)))
               (_%E151844151881%_
                (lambda ()
                  (if (gx#stx-pair? _%e151843151853%_)
                      (let ((_%e151846151861%_
                             (gx#syntax-e _%e151843151853%_)))
                        (let ((_%hd151847151864%_ (##car _%e151846151861%_))
                              (_%tl151848151866%_ (##cdr _%e151846151861%_)))
                          (let ((_%hd151869%_ _%hd151847151864%_))
                            (if (gx#stx-pair? _%tl151848151866%_)
                                (let ((_%e151849151871%_
                                       (gx#syntax-e _%tl151848151866%_)))
                                  (let ((_%hd151850151874%_
                                         (##car _%e151849151871%_))
                                        (_%tl151851151876%_
                                         (##cdr _%e151849151871%_)))
                                    (let ((_%body151879%_ _%hd151850151874%_))
                                      (if (gx#stx-null? _%tl151851151876%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd151869%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body151879%_)
                                                      '()))
                                          (_%E151845151857%_)))))
                                (_%E151845151857%_)))))
                      (_%E151845151857%_)))))
          (_%E151844151881%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx151812%_)
        (let* ((_%e151813151820%_ _%stx151812%_)
               (_%E151815151824%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e151813151820%_)))
               (_%E151814151838%_
                (lambda ()
                  (if (gx#stx-pair? _%e151813151820%_)
                      (let ((_%e151816151828%_
                             (gx#syntax-e _%e151813151820%_)))
                        (let ((_%hd151817151831%_ (##car _%e151816151828%_))
                              (_%tl151818151833%_ (##cdr _%e151816151828%_)))
                          (let ((_%clauses151836%_ _%tl151818151833%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses151836%_)))))
                      (_%E151815151824%_)))))
          (_%E151814151838%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx151747%_ _%form151748%_)
        (let* ((_%e151749151762%_ _%stx151747%_)
               (_%E151751151766%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e151749151762%_)))
               (_%E151750151798%_
                (lambda ()
                  (if (gx#stx-pair? _%e151749151762%_)
                      (let ((_%e151752151770%_
                             (gx#syntax-e _%e151749151762%_)))
                        (let ((_%hd151753151773%_ (##car _%e151752151770%_))
                              (_%tl151754151775%_ (##cdr _%e151752151770%_)))
                          (if (gx#stx-pair? _%tl151754151775%_)
                              (let ((_%e151755151778%_
                                     (gx#syntax-e _%tl151754151775%_)))
                                (let ((_%hd151756151781%_
                                       (##car _%e151755151778%_))
                                      (_%tl151757151783%_
                                       (##cdr _%e151755151778%_)))
                                  (let ((_%hd151786%_ _%hd151756151781%_))
                                    (if (gx#stx-pair? _%tl151757151783%_)
                                        (let ((_%e151758151788%_
                                               (gx#syntax-e
                                                _%tl151757151783%_)))
                                          (let ((_%hd151759151791%_
                                                 (##car _%e151758151788%_))
                                                (_%tl151760151793%_
                                                 (##cdr _%e151758151788%_)))
                                            (let ((_%body151796%_
                                                   _%hd151759151791%_))
                                              (if (gx#stx-null?
                                                   _%tl151760151793%_)
                                                  (cons _%form151748%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd151786%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body151796%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E151751151766%_)))))
                                        (_%E151751151766%_)))))
                              (_%E151751151766%_))))
                      (_%E151751151766%_)))))
          (_%E151750151798%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx151805%_)
        (let ((_%form151807%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx151805%_ _%form151807%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g152630_
        (let ((_g152631_ (##length _g152630_)))
          (cond ((##fx= _g152631_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g152630_))
                ((##fx= _g152631_ 2)
                 (apply gx#core-compile-top-let-values%__% _g152630_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g152630_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx151744%_)
        (gx#core-compile-top-let-values%__% _%stx151744%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx151742%_)
        (gx#core-compile-top-let-values%__% _%stx151742%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx151701%_)
        (let* ((_%e151702151712%_ _%stx151701%_)
               (_%E151704151716%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e151702151712%_)))
               (_%E151703151738%_
                (lambda ()
                  (if (gx#stx-pair? _%e151702151712%_)
                      (let ((_%e151705151720%_
                             (gx#syntax-e _%e151702151712%_)))
                        (let ((_%hd151706151723%_ (##car _%e151705151720%_))
                              (_%tl151707151725%_ (##cdr _%e151705151720%_)))
                          (if (gx#stx-pair? _%tl151707151725%_)
                              (let ((_%e151708151728%_
                                     (gx#syntax-e _%tl151707151725%_)))
                                (let ((_%hd151709151731%_
                                       (##car _%e151708151728%_))
                                      (_%tl151710151733%_
                                       (##cdr _%e151708151728%_)))
                                  (let ((_%e151736%_ _%hd151709151731%_))
                                    (if (gx#stx-null? _%tl151710151733%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e151736%_)
                                                    '()))
                                        (_%E151704151716%_)))))
                              (_%E151704151716%_))))
                      (_%E151704151716%_)))))
          (_%E151703151738%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx151660%_)
        (let* ((_%e151661151671%_ _%stx151660%_)
               (_%E151663151675%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e151661151671%_)))
               (_%E151662151697%_
                (lambda ()
                  (if (gx#stx-pair? _%e151661151671%_)
                      (let ((_%e151664151679%_
                             (gx#syntax-e _%e151661151671%_)))
                        (let ((_%hd151665151682%_ (##car _%e151664151679%_))
                              (_%tl151666151684%_ (##cdr _%e151664151679%_)))
                          (if (gx#stx-pair? _%tl151666151684%_)
                              (let ((_%e151667151687%_
                                     (gx#syntax-e _%tl151666151684%_)))
                                (let ((_%hd151668151690%_
                                       (##car _%e151667151687%_))
                                      (_%tl151669151692%_
                                       (##cdr _%e151667151687%_)))
                                  (let ((_%e151695%_ _%hd151668151690%_))
                                    (if (gx#stx-null? _%tl151669151692%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e151695%_)
                                                    '()))
                                        (_%E151663151675%_)))))
                              (_%E151663151675%_))))
                      (_%E151663151675%_)))))
          (_%E151662151697%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx151617%_)
        (let* ((_%e151618151628%_ _%stx151617%_)
               (_%E151620151632%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e151618151628%_)))
               (_%E151619151656%_
                (lambda ()
                  (if (gx#stx-pair? _%e151618151628%_)
                      (let ((_%e151621151636%_
                             (gx#syntax-e _%e151618151628%_)))
                        (let ((_%hd151622151639%_ (##car _%e151621151636%_))
                              (_%tl151623151641%_ (##cdr _%e151621151636%_)))
                          (if (gx#stx-pair? _%tl151623151641%_)
                              (let ((_%e151624151644%_
                                     (gx#syntax-e _%tl151623151641%_)))
                                (let ((_%hd151625151647%_
                                       (##car _%e151624151644%_))
                                      (_%tl151626151649%_
                                       (##cdr _%e151624151644%_)))
                                  (let* ((_%rator151652%_ _%hd151625151647%_)
                                         (_%args151654%_ _%tl151626151649%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator151652%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args151654%_))))))
                              (_%E151620151632%_))))
                      (_%E151620151632%_)))))
          (_%E151619151656%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx151550%_)
        (let* ((_%e151551151567%_ _%stx151550%_)
               (_%E151553151571%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e151551151567%_)))
               (_%E151552151613%_
                (lambda ()
                  (if (gx#stx-pair? _%e151551151567%_)
                      (let ((_%e151554151575%_
                             (gx#syntax-e _%e151551151567%_)))
                        (let ((_%hd151555151578%_ (##car _%e151554151575%_))
                              (_%tl151556151580%_ (##cdr _%e151554151575%_)))
                          (if (gx#stx-pair? _%tl151556151580%_)
                              (let ((_%e151557151583%_
                                     (gx#syntax-e _%tl151556151580%_)))
                                (let ((_%hd151558151586%_
                                       (##car _%e151557151583%_))
                                      (_%tl151559151588%_
                                       (##cdr _%e151557151583%_)))
                                  (let ((_%test151591%_ _%hd151558151586%_))
                                    (if (gx#stx-pair? _%tl151559151588%_)
                                        (let ((_%e151560151593%_
                                               (gx#syntax-e
                                                _%tl151559151588%_)))
                                          (let ((_%hd151561151596%_
                                                 (##car _%e151560151593%_))
                                                (_%tl151562151598%_
                                                 (##cdr _%e151560151593%_)))
                                            (let ((_%K151601%_
                                                   _%hd151561151596%_))
                                              (if (gx#stx-pair?
                                                   _%tl151562151598%_)
                                                  (let ((_%e151563151603%_
                                                         (gx#syntax-e
                                                          _%tl151562151598%_)))
                                                    (let ((_%hd151564151606%_
                                                           (##car _%e151563151603%_))
                                                          (_%tl151565151608%_
                                                           (##cdr _%e151563151603%_)))
                                                      (let ((_%E151611%_
                                                             _%hd151564151606%_))
                                                        (if (gx#stx-null?
                                                             _%tl151565151608%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test151591%_)
                                (cons (gx#core-compile-top-syntax _%K151601%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E151611%_)
                                            '()))))
                    (_%E151553151571%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E151553151571%_)))))
                                        (_%E151553151571%_)))))
                              (_%E151553151571%_))))
                      (_%E151553151571%_)))))
          (_%E151552151613%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx151509%_)
        (let* ((_%e151510151520%_ _%stx151509%_)
               (_%E151512151524%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e151510151520%_)))
               (_%E151511151546%_
                (lambda ()
                  (if (gx#stx-pair? _%e151510151520%_)
                      (let ((_%e151513151528%_
                             (gx#syntax-e _%e151510151520%_)))
                        (let ((_%hd151514151531%_ (##car _%e151513151528%_))
                              (_%tl151515151533%_ (##cdr _%e151513151528%_)))
                          (if (gx#stx-pair? _%tl151515151533%_)
                              (let ((_%e151516151536%_
                                     (gx#syntax-e _%tl151515151533%_)))
                                (let ((_%hd151517151539%_
                                       (##car _%e151516151536%_))
                                      (_%tl151518151541%_
                                       (##cdr _%e151516151536%_)))
                                  (let ((_%id151544%_ _%hd151517151539%_))
                                    (if (gx#stx-null? _%tl151518151541%_)
                                        (if (gx#identifier? _%id151544%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id151544%_)
                                                        '()))
                                            (_%E151512151524%_))
                                        (_%E151512151524%_)))))
                              (_%E151512151524%_))))
                      (_%E151512151524%_)))))
          (_%E151511151546%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx151455%_)
        (let* ((_%e151456151469%_ _%stx151455%_)
               (_%E151458151473%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e151456151469%_)))
               (_%E151457151505%_
                (lambda ()
                  (if (gx#stx-pair? _%e151456151469%_)
                      (let ((_%e151459151477%_
                             (gx#syntax-e _%e151456151469%_)))
                        (let ((_%hd151460151480%_ (##car _%e151459151477%_))
                              (_%tl151461151482%_ (##cdr _%e151459151477%_)))
                          (if (gx#stx-pair? _%tl151461151482%_)
                              (let ((_%e151462151485%_
                                     (gx#syntax-e _%tl151461151482%_)))
                                (let ((_%hd151463151488%_
                                       (##car _%e151462151485%_))
                                      (_%tl151464151490%_
                                       (##cdr _%e151462151485%_)))
                                  (let ((_%id151493%_ _%hd151463151488%_))
                                    (if (gx#stx-pair? _%tl151464151490%_)
                                        (let ((_%e151465151495%_
                                               (gx#syntax-e
                                                _%tl151464151490%_)))
                                          (let ((_%hd151466151498%_
                                                 (##car _%e151465151495%_))
                                                (_%tl151467151500%_
                                                 (##cdr _%e151465151495%_)))
                                            (let ((_%expr151503%_
                                                   _%hd151466151498%_))
                                              (if (gx#stx-null?
                                                   _%tl151467151500%_)
                                                  (if (gx#identifier?
                                                       _%id151493%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id151493%_)
                          (cons (gx#core-compile-top-syntax _%expr151503%_)
                                '())))
              (_%E151458151473%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E151458151473%_)))))
                                        (_%E151458151473%_)))))
                              (_%E151458151473%_))))
                      (_%E151458151473%_)))))
          (_%E151457151505%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id151449%_)
        (let ((_%$e151451%_ (gx#resolve-identifier__0 _%id151449%_)))
          (if _%$e151451%_
              (##unchecked-structure-ref _%$e151451%_ '1 '#f '#f)
              _%id151449%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd151447%_)
        (if (gx#identifier? _%hd151447%_)
            (gx#core-compile-top-runtime-ref _%hd151447%_)
            '#f)))))
