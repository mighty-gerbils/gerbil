(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1712702631)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx126361%_)
        (let* ((_%e126362126369%_ _%stx126361%_)
               (_%E126364126373%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126362126369%_)))
               (_%E126363126387%_
                (lambda ()
                  (if (gx#stx-pair? _%e126362126369%_)
                      (let ((_%e126365126377%_
                             (gx#syntax-e _%e126362126369%_)))
                        (let ((_%hd126366126380%_ (##car _%e126365126377%_))
                              (_%tl126367126382%_ (##cdr _%e126365126377%_)))
                          (let ((_%form126385%_ _%hd126366126380%_))
                            (if '#t
                                (let* ((__self126390
                                        (gx#syntax-local-e__0 _%form126385%_))
                                       (__method126391
                                        (__method-ref
                                         __self126390
                                         'compile-top-syntax)))
                                  (if __method126391
                                      (__method126391
                                       __self126390
                                       _%stx126361%_)
                                      (error '"Missing method"
                                             __self126390
                                             'compile-top-syntax)))
                                (_%E126364126373%_)))))
                      (_%E126364126373%_)))))
          (_%E126363126387%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self126309%_ _%stx126310%_)
        (let* ((_%self126313%_ _%self126309%_)
               (_%self126322126330%_ _%self126313%_)
               (_%E126324126334%_
                (lambda ()
                  (error '"No clause matching"
                         _%self126322126330%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K126325126347%_
                (lambda (_%K126337%_)
                  (let ((_%$e126339%_ (gx#stx-source _%stx126310%_)))
                    (if _%$e126339%_
                        ((lambda (_%g126341126343%_)
                           (gx#stx-wrap-source
                            (_%K126337%_ _%stx126310%_)
                            _%g126341126343%_))
                         _%$e126339%_)
                        (_%K126337%_ _%stx126310%_))))))
          (if '#t
              (let* ((_%e126326126350%_
                      (##unchecked-structure-ref
                       _%self126322126330%_
                       '1
                       '#f
                       '#f))
                     (_%e126327126353%_
                      (##unchecked-structure-ref
                       _%self126322126330%_
                       '2
                       '#f
                       '#f))
                     (_%e126328126356%_
                      (##unchecked-structure-ref
                       _%self126322126330%_
                       '3
                       '#f
                       '#f))
                     (_%K126359%_ _%e126328126356%_))
                (_%K126325126347%_ _%K126359%_))
              (_%E126324126334%_)))))
    (__bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx126183%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx126183%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx126153%_)
        (let* ((_%e126154126161%_ _%stx126153%_)
               (_%E126156126165%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126154126161%_)))
               (_%E126155126179%_
                (lambda ()
                  (if (gx#stx-pair? _%e126154126161%_)
                      (let ((_%e126157126169%_
                             (gx#syntax-e _%e126154126161%_)))
                        (let ((_%hd126158126172%_ (##car _%e126157126169%_))
                              (_%tl126159126174%_ (##cdr _%e126157126169%_)))
                          (let ((_%body126177%_ _%tl126159126174%_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _%body126177%_))
                                (_%E126156126165%_)))))
                      (_%E126156126165%_)))))
          (_%E126155126179%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx126122%_)
        (let* ((_%e126123126130%_ _%stx126122%_)
               (_%E126125126134%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126123126130%_)))
               (_%E126124126149%_
                (lambda ()
                  (if (gx#stx-pair? _%e126123126130%_)
                      (let ((_%e126126126138%_
                             (gx#syntax-e _%e126123126130%_)))
                        (let ((_%hd126127126141%_ (##car _%e126126126138%_))
                              (_%tl126128126143%_ (##cdr _%e126126126138%_)))
                          (let ((_%body126146%_ _%tl126128126143%_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (__call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _%body126146%_))
                                       gx#current-expander-phi
                                       (##fx+ (gx#current-expander-phi) '1)))
                                (_%E126125126134%_)))))
                      (_%E126125126134%_)))))
          (_%E126124126149%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx126092%_)
        (let* ((_%e126093126100%_ _%stx126092%_)
               (_%E126095126104%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126093126100%_)))
               (_%E126094126118%_
                (lambda ()
                  (if (gx#stx-pair? _%e126093126100%_)
                      (let ((_%e126096126108%_
                             (gx#syntax-e _%e126093126100%_)))
                        (let ((_%hd126097126111%_ (##car _%e126096126108%_))
                              (_%tl126098126113%_ (##cdr _%e126096126108%_)))
                          (let ((_%body126116%_ _%tl126098126113%_))
                            (if '#t
                                (cons '%#begin-foreign _%body126116%_)
                                (_%E126095126104%_)))))
                      (_%E126095126104%_)))))
          (_%E126094126118%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx126038%_)
        (let* ((_%e126039126052%_ _%stx126038%_)
               (_%E126041126056%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126039126052%_)))
               (_%E126040126088%_
                (lambda ()
                  (if (gx#stx-pair? _%e126039126052%_)
                      (let ((_%e126042126060%_
                             (gx#syntax-e _%e126039126052%_)))
                        (let ((_%hd126043126063%_ (##car _%e126042126060%_))
                              (_%tl126044126065%_ (##cdr _%e126042126060%_)))
                          (if (gx#stx-pair? _%tl126044126065%_)
                              (let ((_%e126045126068%_
                                     (gx#syntax-e _%tl126044126065%_)))
                                (let ((_%hd126046126071%_
                                       (##car _%e126045126068%_))
                                      (_%tl126047126073%_
                                       (##cdr _%e126045126068%_)))
                                  (let ((_%ann126076%_ _%hd126046126071%_))
                                    (if (gx#stx-pair? _%tl126047126073%_)
                                        (let ((_%e126048126078%_
                                               (gx#syntax-e
                                                _%tl126047126073%_)))
                                          (let ((_%hd126049126081%_
                                                 (##car _%e126048126078%_))
                                                (_%tl126050126083%_
                                                 (##cdr _%e126048126078%_)))
                                            (let ((_%expr126086%_
                                                   _%hd126049126081%_))
                                              (if (gx#stx-null?
                                                   _%tl126050126083%_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _%expr126086%_)
                                                      (_%E126041126056%_))
                                                  (_%E126041126056%_)))))
                                        (_%E126041126056%_)))))
                              (_%E126041126056%_))))
                      (_%E126041126056%_)))))
          (_%E126040126088%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx126008%_)
        (let* ((_%e126009126016%_ _%stx126008%_)
               (_%E126011126020%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126009126016%_)))
               (_%E126010126034%_
                (lambda ()
                  (if (gx#stx-pair? _%e126009126016%_)
                      (let ((_%e126012126024%_
                             (gx#syntax-e _%e126009126016%_)))
                        (let ((_%hd126013126027%_ (##car _%e126012126024%_))
                              (_%tl126014126029%_ (##cdr _%e126012126024%_)))
                          (let ((_%body126032%_ _%tl126014126029%_))
                            (if '#t
                                (cons '%#import _%body126032%_)
                                (_%E126011126020%_)))))
                      (_%E126011126020%_)))))
          (_%E126010126034%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx125965%_)
        (let* ((_%e125966125976%_ _%stx125965%_)
               (_%E125968125980%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125966125976%_)))
               (_%E125967126004%_
                (lambda ()
                  (if (gx#stx-pair? _%e125966125976%_)
                      (let ((_%e125969125984%_
                             (gx#syntax-e _%e125966125976%_)))
                        (let ((_%hd125970125987%_ (##car _%e125969125984%_))
                              (_%tl125971125989%_ (##cdr _%e125969125984%_)))
                          (if (gx#stx-pair? _%tl125971125989%_)
                              (let ((_%e125972125992%_
                                     (gx#syntax-e _%tl125971125989%_)))
                                (let ((_%hd125973125995%_
                                       (##car _%e125972125992%_))
                                      (_%tl125974125997%_
                                       (##cdr _%e125972125992%_)))
                                  (let* ((_%hd126000%_ _%hd125973125995%_)
                                         (_%body126002%_ _%tl125974125997%_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _%hd126000%_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _%body126002%_)))
                                        (_%E125968125980%_)))))
                              (_%E125968125980%_))))
                      (_%E125968125980%_)))))
          (_%E125967126004%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx125935%_)
        (let* ((_%e125936125943%_ _%stx125935%_)
               (_%E125938125947%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125936125943%_)))
               (_%E125937125961%_
                (lambda ()
                  (if (gx#stx-pair? _%e125936125943%_)
                      (let ((_%e125939125951%_
                             (gx#syntax-e _%e125936125943%_)))
                        (let ((_%hd125940125954%_ (##car _%e125939125951%_))
                              (_%tl125941125956%_ (##cdr _%e125939125951%_)))
                          (let ((_%body125959%_ _%tl125941125956%_))
                            (if '#t
                                (cons '%#export _%body125959%_)
                                (_%E125938125947%_)))))
                      (_%E125938125947%_)))))
          (_%E125937125961%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx125905%_)
        (let* ((_%e125906125913%_ _%stx125905%_)
               (_%E125908125917%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125906125913%_)))
               (_%E125907125931%_
                (lambda ()
                  (if (gx#stx-pair? _%e125906125913%_)
                      (let ((_%e125909125921%_
                             (gx#syntax-e _%e125906125913%_)))
                        (let ((_%hd125910125924%_ (##car _%e125909125921%_))
                              (_%tl125911125926%_ (##cdr _%e125909125921%_)))
                          (let ((_%body125929%_ _%tl125911125926%_))
                            (if '#t
                                (cons '%#provide _%body125929%_)
                                (_%E125908125917%_)))))
                      (_%E125908125917%_)))))
          (_%E125907125931%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx125875%_)
        (let* ((_%e125876125883%_ _%stx125875%_)
               (_%E125878125887%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125876125883%_)))
               (_%E125877125901%_
                (lambda ()
                  (if (gx#stx-pair? _%e125876125883%_)
                      (let ((_%e125879125891%_
                             (gx#syntax-e _%e125876125883%_)))
                        (let ((_%hd125880125894%_ (##car _%e125879125891%_))
                              (_%tl125881125896%_ (##cdr _%e125879125891%_)))
                          (let ((_%body125899%_ _%tl125881125896%_))
                            (if '#t
                                (cons '%#extern _%body125899%_)
                                (_%E125878125887%_)))))
                      (_%E125878125887%_)))))
          (_%E125877125901%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx125821%_)
        (let* ((_%e125822125835%_ _%stx125821%_)
               (_%E125824125839%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125822125835%_)))
               (_%E125823125871%_
                (lambda ()
                  (if (gx#stx-pair? _%e125822125835%_)
                      (let ((_%e125825125843%_
                             (gx#syntax-e _%e125822125835%_)))
                        (let ((_%hd125826125846%_ (##car _%e125825125843%_))
                              (_%tl125827125848%_ (##cdr _%e125825125843%_)))
                          (if (gx#stx-pair? _%tl125827125848%_)
                              (let ((_%e125828125851%_
                                     (gx#syntax-e _%tl125827125848%_)))
                                (let ((_%hd125829125854%_
                                       (##car _%e125828125851%_))
                                      (_%tl125830125856%_
                                       (##cdr _%e125828125851%_)))
                                  (let ((_%hd125859%_ _%hd125829125854%_))
                                    (if (gx#stx-pair? _%tl125830125856%_)
                                        (let ((_%e125831125861%_
                                               (gx#syntax-e
                                                _%tl125830125856%_)))
                                          (let ((_%hd125832125864%_
                                                 (##car _%e125831125861%_))
                                                (_%tl125833125866%_
                                                 (##cdr _%e125831125861%_)))
                                            (let ((_%expr125869%_
                                                   _%hd125832125864%_))
                                              (if (gx#stx-null?
                                                   _%tl125833125866%_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _%hd125859%_)
                          (cons (gx#core-compile-top-syntax _%expr125869%_)
                                '())))
              (_%E125824125839%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125824125839%_)))))
                                        (_%E125824125839%_)))))
                              (_%E125824125839%_))))
                      (_%E125824125839%_)))))
          (_%E125823125871%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx125766%_)
        (let* ((_%e125767125780%_ _%stx125766%_)
               (_%E125769125784%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125767125780%_)))
               (_%E125768125817%_
                (lambda ()
                  (if (gx#stx-pair? _%e125767125780%_)
                      (let ((_%e125770125788%_
                             (gx#syntax-e _%e125767125780%_)))
                        (let ((_%hd125771125791%_ (##car _%e125770125788%_))
                              (_%tl125772125793%_ (##cdr _%e125770125788%_)))
                          (if (gx#stx-pair? _%tl125772125793%_)
                              (let ((_%e125773125796%_
                                     (gx#syntax-e _%tl125772125793%_)))
                                (let ((_%hd125774125799%_
                                       (##car _%e125773125796%_))
                                      (_%tl125775125801%_
                                       (##cdr _%e125773125796%_)))
                                  (let ((_%hd125804%_ _%hd125774125799%_))
                                    (if (gx#stx-pair? _%tl125775125801%_)
                                        (let ((_%e125776125806%_
                                               (gx#syntax-e
                                                _%tl125775125801%_)))
                                          (let ((_%hd125777125809%_
                                                 (##car _%e125776125806%_))
                                                (_%tl125778125811%_
                                                 (##cdr _%e125776125806%_)))
                                            (let ((_%expr125814%_
                                                   _%hd125777125809%_))
                                              (if (gx#stx-null?
                                                   _%tl125778125811%_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _%hd125804%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (__call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _%expr125814%_))
                                 gx#current-expander-phi
                                 (##fx+ (gx#current-expander-phi) '1))
                                '())))
              (_%E125769125784%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125769125784%_)))))
                                        (_%E125769125784%_)))))
                              (_%E125769125784%_))))
                      (_%E125769125784%_)))))
          (_%E125768125817%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx125736%_)
        (let* ((_%e125737125744%_ _%stx125736%_)
               (_%E125739125748%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125737125744%_)))
               (_%E125738125762%_
                (lambda ()
                  (if (gx#stx-pair? _%e125737125744%_)
                      (let ((_%e125740125752%_
                             (gx#syntax-e _%e125737125744%_)))
                        (let ((_%hd125741125755%_ (##car _%e125740125752%_))
                              (_%tl125742125757%_ (##cdr _%e125740125752%_)))
                          (let ((_%body125760%_ _%tl125742125757%_))
                            (if '#t
                                (cons '%#define-alias _%body125760%_)
                                (_%E125739125748%_)))))
                      (_%E125739125748%_)))))
          (_%E125738125762%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx125706%_)
        (let* ((_%e125707125714%_ _%stx125706%_)
               (_%E125709125718%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125707125714%_)))
               (_%E125708125732%_
                (lambda ()
                  (if (gx#stx-pair? _%e125707125714%_)
                      (let ((_%e125710125722%_
                             (gx#syntax-e _%e125707125714%_)))
                        (let ((_%hd125711125725%_ (##car _%e125710125722%_))
                              (_%tl125712125727%_ (##cdr _%e125710125722%_)))
                          (let ((_%body125730%_ _%tl125712125727%_))
                            (if '#t
                                (cons '%#define-runtime _%body125730%_)
                                (_%E125709125718%_)))))
                      (_%E125709125718%_)))))
          (_%E125708125732%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx125676%_)
        (let* ((_%e125677125684%_ _%stx125676%_)
               (_%E125679125688%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125677125684%_)))
               (_%E125678125702%_
                (lambda ()
                  (if (gx#stx-pair? _%e125677125684%_)
                      (let ((_%e125680125692%_
                             (gx#syntax-e _%e125677125684%_)))
                        (let ((_%hd125681125695%_ (##car _%e125680125692%_))
                              (_%tl125682125697%_ (##cdr _%e125680125692%_)))
                          (let ((_%decls125700%_ _%tl125682125697%_))
                            (if '#t
                                (cons '%#declare _%decls125700%_)
                                (_%E125679125688%_)))))
                      (_%E125679125688%_)))))
          (_%E125678125702%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx125646%_)
        (let* ((_%e125647125654%_ _%stx125646%_)
               (_%E125649125658%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125647125654%_)))
               (_%E125648125672%_
                (lambda ()
                  (if (gx#stx-pair? _%e125647125654%_)
                      (let ((_%e125650125662%_
                             (gx#syntax-e _%e125647125654%_)))
                        (let ((_%hd125651125665%_ (##car _%e125650125662%_))
                              (_%tl125652125667%_ (##cdr _%e125650125662%_)))
                          (let ((_%clause125670%_ _%tl125652125667%_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _%clause125670%_))
                                (_%E125649125658%_)))))
                      (_%E125649125658%_)))))
          (_%E125648125672%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx125603%_)
        (let* ((_%e125604125614%_ _%stx125603%_)
               (_%E125606125618%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125604125614%_)))
               (_%E125605125642%_
                (lambda ()
                  (if (gx#stx-pair? _%e125604125614%_)
                      (let ((_%e125607125622%_
                             (gx#syntax-e _%e125604125614%_)))
                        (let ((_%hd125608125625%_ (##car _%e125607125622%_))
                              (_%tl125609125627%_ (##cdr _%e125607125622%_)))
                          (let ((_%hd125630%_ _%hd125608125625%_))
                            (if (gx#stx-pair? _%tl125609125627%_)
                                (let ((_%e125610125632%_
                                       (gx#syntax-e _%tl125609125627%_)))
                                  (let ((_%hd125611125635%_
                                         (##car _%e125610125632%_))
                                        (_%tl125612125637%_
                                         (##cdr _%e125610125632%_)))
                                    (let ((_%body125640%_ _%hd125611125635%_))
                                      (if (gx#stx-null? _%tl125612125637%_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _%hd125630%_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _%body125640%_)
                                                          '()))
                                              (_%E125606125618%_))
                                          (_%E125606125618%_)))))
                                (_%E125606125618%_)))))
                      (_%E125606125618%_)))))
          (_%E125605125642%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx125573%_)
        (let* ((_%e125574125581%_ _%stx125573%_)
               (_%E125576125585%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125574125581%_)))
               (_%E125575125599%_
                (lambda ()
                  (if (gx#stx-pair? _%e125574125581%_)
                      (let ((_%e125577125589%_
                             (gx#syntax-e _%e125574125581%_)))
                        (let ((_%hd125578125592%_ (##car _%e125577125589%_))
                              (_%tl125579125594%_ (##cdr _%e125577125589%_)))
                          (let ((_%clauses125597%_ _%tl125579125594%_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _%clauses125597%_))
                                (_%E125576125585%_)))))
                      (_%E125576125585%_)))))
          (_%E125575125599%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx125508%_ _%form125509%_)
        (let* ((_%e125510125523%_ _%stx125508%_)
               (_%E125512125527%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125510125523%_)))
               (_%E125511125559%_
                (lambda ()
                  (if (gx#stx-pair? _%e125510125523%_)
                      (let ((_%e125513125531%_
                             (gx#syntax-e _%e125510125523%_)))
                        (let ((_%hd125514125534%_ (##car _%e125513125531%_))
                              (_%tl125515125536%_ (##cdr _%e125513125531%_)))
                          (if (gx#stx-pair? _%tl125515125536%_)
                              (let ((_%e125516125539%_
                                     (gx#syntax-e _%tl125515125536%_)))
                                (let ((_%hd125517125542%_
                                       (##car _%e125516125539%_))
                                      (_%tl125518125544%_
                                       (##cdr _%e125516125539%_)))
                                  (let ((_%hd125547%_ _%hd125517125542%_))
                                    (if (gx#stx-pair? _%tl125518125544%_)
                                        (let ((_%e125519125549%_
                                               (gx#syntax-e
                                                _%tl125518125544%_)))
                                          (let ((_%hd125520125552%_
                                                 (##car _%e125519125549%_))
                                                (_%tl125521125554%_
                                                 (##cdr _%e125519125549%_)))
                                            (let ((_%body125557%_
                                                   _%hd125520125552%_))
                                              (if (gx#stx-null?
                                                   _%tl125521125554%_)
                                                  (if '#t
                                                      (cons _%form125509%_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _%hd125547%_)
                          (cons (gx#core-compile-top-syntax _%body125557%_)
                                '())))
              (_%E125512125527%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125512125527%_)))))
                                        (_%E125512125527%_)))))
                              (_%E125512125527%_))))
                      (_%E125512125527%_)))))
          (_%E125511125559%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx125566%_)
        (let ((_%form125568%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx125566%_ _%form125568%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g126393_
        (let ((_g126392_ (##length _g126393_)))
          (cond ((##fx= _g126392_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g126393_))
                ((##fx= _g126392_ 2)
                 (apply gx#core-compile-top-let-values%__% _g126393_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g126393_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx125505%_)
        (gx#core-compile-top-let-values%__% _%stx125505%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx125503%_)
        (gx#core-compile-top-let-values%__% _%stx125503%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx125462%_)
        (let* ((_%e125463125473%_ _%stx125462%_)
               (_%E125465125477%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125463125473%_)))
               (_%E125464125499%_
                (lambda ()
                  (if (gx#stx-pair? _%e125463125473%_)
                      (let ((_%e125466125481%_
                             (gx#syntax-e _%e125463125473%_)))
                        (let ((_%hd125467125484%_ (##car _%e125466125481%_))
                              (_%tl125468125486%_ (##cdr _%e125466125481%_)))
                          (if (gx#stx-pair? _%tl125468125486%_)
                              (let ((_%e125469125489%_
                                     (gx#syntax-e _%tl125468125486%_)))
                                (let ((_%hd125470125492%_
                                       (##car _%e125469125489%_))
                                      (_%tl125471125494%_
                                       (##cdr _%e125469125489%_)))
                                  (let ((_%e125497%_ _%hd125470125492%_))
                                    (if (gx#stx-null? _%tl125471125494%_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _%e125497%_)
                                                        '()))
                                            (_%E125465125477%_))
                                        (_%E125465125477%_)))))
                              (_%E125465125477%_))))
                      (_%E125465125477%_)))))
          (_%E125464125499%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx125421%_)
        (let* ((_%e125422125432%_ _%stx125421%_)
               (_%E125424125436%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125422125432%_)))
               (_%E125423125458%_
                (lambda ()
                  (if (gx#stx-pair? _%e125422125432%_)
                      (let ((_%e125425125440%_
                             (gx#syntax-e _%e125422125432%_)))
                        (let ((_%hd125426125443%_ (##car _%e125425125440%_))
                              (_%tl125427125445%_ (##cdr _%e125425125440%_)))
                          (if (gx#stx-pair? _%tl125427125445%_)
                              (let ((_%e125428125448%_
                                     (gx#syntax-e _%tl125427125445%_)))
                                (let ((_%hd125429125451%_
                                       (##car _%e125428125448%_))
                                      (_%tl125430125453%_
                                       (##cdr _%e125428125448%_)))
                                  (let ((_%e125456%_ _%hd125429125451%_))
                                    (if (gx#stx-null? _%tl125430125453%_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _%e125456%_)
                                                        '()))
                                            (_%E125424125436%_))
                                        (_%E125424125436%_)))))
                              (_%E125424125436%_))))
                      (_%E125424125436%_)))))
          (_%E125423125458%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx125378%_)
        (let* ((_%e125379125389%_ _%stx125378%_)
               (_%E125381125393%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125379125389%_)))
               (_%E125380125417%_
                (lambda ()
                  (if (gx#stx-pair? _%e125379125389%_)
                      (let ((_%e125382125397%_
                             (gx#syntax-e _%e125379125389%_)))
                        (let ((_%hd125383125400%_ (##car _%e125382125397%_))
                              (_%tl125384125402%_ (##cdr _%e125382125397%_)))
                          (if (gx#stx-pair? _%tl125384125402%_)
                              (let ((_%e125385125405%_
                                     (gx#syntax-e _%tl125384125402%_)))
                                (let ((_%hd125386125408%_
                                       (##car _%e125385125405%_))
                                      (_%tl125387125410%_
                                       (##cdr _%e125385125405%_)))
                                  (let* ((_%rator125413%_ _%hd125386125408%_)
                                         (_%args125415%_ _%tl125387125410%_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _%rator125413%_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _%args125415%_)))
                                        (_%E125381125393%_)))))
                              (_%E125381125393%_))))
                      (_%E125381125393%_)))))
          (_%E125380125417%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx125311%_)
        (let* ((_%e125312125328%_ _%stx125311%_)
               (_%E125314125332%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125312125328%_)))
               (_%E125313125374%_
                (lambda ()
                  (if (gx#stx-pair? _%e125312125328%_)
                      (let ((_%e125315125336%_
                             (gx#syntax-e _%e125312125328%_)))
                        (let ((_%hd125316125339%_ (##car _%e125315125336%_))
                              (_%tl125317125341%_ (##cdr _%e125315125336%_)))
                          (if (gx#stx-pair? _%tl125317125341%_)
                              (let ((_%e125318125344%_
                                     (gx#syntax-e _%tl125317125341%_)))
                                (let ((_%hd125319125347%_
                                       (##car _%e125318125344%_))
                                      (_%tl125320125349%_
                                       (##cdr _%e125318125344%_)))
                                  (let ((_%test125352%_ _%hd125319125347%_))
                                    (if (gx#stx-pair? _%tl125320125349%_)
                                        (let ((_%e125321125354%_
                                               (gx#syntax-e
                                                _%tl125320125349%_)))
                                          (let ((_%hd125322125357%_
                                                 (##car _%e125321125354%_))
                                                (_%tl125323125359%_
                                                 (##cdr _%e125321125354%_)))
                                            (let ((_%K125362%_
                                                   _%hd125322125357%_))
                                              (if (gx#stx-pair?
                                                   _%tl125323125359%_)
                                                  (let ((_%e125324125364%_
                                                         (gx#syntax-e
                                                          _%tl125323125359%_)))
                                                    (let ((_%hd125325125367%_
                                                           (##car _%e125324125364%_))
                                                          (_%tl125326125369%_
                                                           (##cdr _%e125324125364%_)))
                                                      (let ((_%E125372%_
                                                             _%hd125325125367%_))
                                                        (if (gx#stx-null?
                                                             _%tl125326125369%_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _%test125352%_)
                                    (cons (gx#core-compile-top-syntax
                                           _%K125362%_)
                                          (cons (gx#core-compile-top-syntax
                                                 _%E125372%_)
                                                '()))))
                        (_%E125314125332%_))
                    (_%E125314125332%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125314125332%_)))))
                                        (_%E125314125332%_)))))
                              (_%E125314125332%_))))
                      (_%E125314125332%_)))))
          (_%E125313125374%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx125270%_)
        (let* ((_%e125271125281%_ _%stx125270%_)
               (_%E125273125285%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125271125281%_)))
               (_%E125272125307%_
                (lambda ()
                  (if (gx#stx-pair? _%e125271125281%_)
                      (let ((_%e125274125289%_
                             (gx#syntax-e _%e125271125281%_)))
                        (let ((_%hd125275125292%_ (##car _%e125274125289%_))
                              (_%tl125276125294%_ (##cdr _%e125274125289%_)))
                          (if (gx#stx-pair? _%tl125276125294%_)
                              (let ((_%e125277125297%_
                                     (gx#syntax-e _%tl125276125294%_)))
                                (let ((_%hd125278125300%_
                                       (##car _%e125277125297%_))
                                      (_%tl125279125302%_
                                       (##cdr _%e125277125297%_)))
                                  (let ((_%id125305%_ _%hd125278125300%_))
                                    (if (gx#stx-null? _%tl125279125302%_)
                                        (if (gx#identifier? _%id125305%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id125305%_)
                                                        '()))
                                            (_%E125273125285%_))
                                        (_%E125273125285%_)))))
                              (_%E125273125285%_))))
                      (_%E125273125285%_)))))
          (_%E125272125307%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx125216%_)
        (let* ((_%e125217125230%_ _%stx125216%_)
               (_%E125219125234%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125217125230%_)))
               (_%E125218125266%_
                (lambda ()
                  (if (gx#stx-pair? _%e125217125230%_)
                      (let ((_%e125220125238%_
                             (gx#syntax-e _%e125217125230%_)))
                        (let ((_%hd125221125241%_ (##car _%e125220125238%_))
                              (_%tl125222125243%_ (##cdr _%e125220125238%_)))
                          (if (gx#stx-pair? _%tl125222125243%_)
                              (let ((_%e125223125246%_
                                     (gx#syntax-e _%tl125222125243%_)))
                                (let ((_%hd125224125249%_
                                       (##car _%e125223125246%_))
                                      (_%tl125225125251%_
                                       (##cdr _%e125223125246%_)))
                                  (let ((_%id125254%_ _%hd125224125249%_))
                                    (if (gx#stx-pair? _%tl125225125251%_)
                                        (let ((_%e125226125256%_
                                               (gx#syntax-e
                                                _%tl125225125251%_)))
                                          (let ((_%hd125227125259%_
                                                 (##car _%e125226125256%_))
                                                (_%tl125228125261%_
                                                 (##cdr _%e125226125256%_)))
                                            (let ((_%expr125264%_
                                                   _%hd125227125259%_))
                                              (if (gx#stx-null?
                                                   _%tl125228125261%_)
                                                  (if (gx#identifier?
                                                       _%id125254%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id125254%_)
                          (cons (gx#core-compile-top-syntax _%expr125264%_)
                                '())))
              (_%E125219125234%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125219125234%_)))))
                                        (_%E125219125234%_)))))
                              (_%E125219125234%_))))
                      (_%E125219125234%_)))))
          (_%E125218125266%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id125210%_)
        (let ((_%$e125212%_ (gx#resolve-identifier__0 _%id125210%_)))
          (if _%$e125212%_
              (##unchecked-structure-ref _%$e125212%_ '1 '#f '#f)
              _%id125210%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd125208%_)
        (if (gx#identifier? _%hd125208%_)
            (gx#core-compile-top-runtime-ref _%hd125208%_)
            '#f)))))
