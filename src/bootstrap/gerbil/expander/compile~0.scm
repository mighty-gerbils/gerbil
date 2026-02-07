(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1770505719)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx183780%_)
        (let* ((_%e183781183788%_ _%stx183780%_)
               (_%E183783183792%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183781183788%_)))
               (_%E183782183806%_
                (lambda ()
                  (if (gx#stx-pair? _%e183781183788%_)
                      (let ((_%e183784183796%_
                             (gx#syntax-e _%e183781183788%_)))
                        (let ((_%hd183785183799%_ (##car _%e183784183796%_))
                              (_%tl183786183801%_ (##cdr _%e183784183796%_)))
                          (let* ((_%form183804%_ _%hd183785183799%_)
                                 (__self183809
                                  (gx#syntax-local-e__0 _%form183804%_))
                                 (__method183810
                                  (__method-ref
                                   __self183809
                                   'compile-top-syntax)))
                            (if __method183810
                                (__method183810 __self183809 _%stx183780%_)
                                (begin
                                  (error '"Missing method"
                                         __self183809
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%E183783183792%_)))))
          (_%E183782183806%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self183729%_ _%stx183730%_)
        (let* ((_%self183733%_ _%self183729%_)
               (_%self183742183750%_ _%self183733%_)
               (_%E183744183753%_
                (lambda ()
                  (error '"No clause matching"
                         _%self183742183750%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K183745183766%_
                (lambda (_%K183756%_)
                  (let ((_%$e183758%_ (gx#stx-source _%stx183730%_)))
                    (if _%$e183758%_
                        ((lambda (_%g183760183762%_)
                           (gx#stx-wrap-source
                            (_%K183756%_ _%stx183730%_)
                            _%g183760183762%_))
                         _%$e183758%_)
                        (_%K183756%_ _%stx183730%_)))))
               (_%e183746183769%_
                (##unchecked-structure-ref _%self183742183750%_ '1 '#f '#f))
               (_%e183747183772%_
                (##unchecked-structure-ref _%self183742183750%_ '2 '#f '#f))
               (_%e183748183775%_
                (##unchecked-structure-ref _%self183742183750%_ '3 '#f '#f))
               (_%K183778%_ _%e183748183775%_))
          (_%K183745183766%_ _%K183778%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx183603%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx183603%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx183573%_)
        (let* ((_%e183574183581%_ _%stx183573%_)
               (_%E183576183585%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183574183581%_)))
               (_%E183575183599%_
                (lambda ()
                  (if (gx#stx-pair? _%e183574183581%_)
                      (let ((_%e183577183589%_
                             (gx#syntax-e _%e183574183581%_)))
                        (let ((_%hd183578183592%_ (##car _%e183577183589%_))
                              (_%tl183579183594%_ (##cdr _%e183577183589%_)))
                          (let ((_%body183597%_ _%tl183579183594%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body183597%_)))))
                      (_%E183576183585%_)))))
          (_%E183575183599%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx183542%_)
        (let* ((_%e183543183550%_ _%stx183542%_)
               (_%E183545183554%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183543183550%_)))
               (_%E183544183569%_
                (lambda ()
                  (if (gx#stx-pair? _%e183543183550%_)
                      (let ((_%e183546183558%_
                             (gx#syntax-e _%e183543183550%_)))
                        (let ((_%hd183547183561%_ (##car _%e183546183558%_))
                              (_%tl183548183563%_ (##cdr _%e183546183558%_)))
                          (let ((_%body183566%_ _%tl183548183563%_))
                            (cons '%#begin-syntax
                                  (call-with-parameters__1
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body183566%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%E183545183554%_)))))
          (_%E183544183569%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx183512%_)
        (let* ((_%e183513183520%_ _%stx183512%_)
               (_%E183515183524%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183513183520%_)))
               (_%E183514183538%_
                (lambda ()
                  (if (gx#stx-pair? _%e183513183520%_)
                      (let ((_%e183516183528%_
                             (gx#syntax-e _%e183513183520%_)))
                        (let ((_%hd183517183531%_ (##car _%e183516183528%_))
                              (_%tl183518183533%_ (##cdr _%e183516183528%_)))
                          (let ((_%body183536%_ _%tl183518183533%_))
                            (cons '%#begin-foreign _%body183536%_))))
                      (_%E183515183524%_)))))
          (_%E183514183538%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx183458%_)
        (let* ((_%e183459183472%_ _%stx183458%_)
               (_%E183461183476%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183459183472%_)))
               (_%E183460183508%_
                (lambda ()
                  (if (gx#stx-pair? _%e183459183472%_)
                      (let ((_%e183462183480%_
                             (gx#syntax-e _%e183459183472%_)))
                        (let ((_%hd183463183483%_ (##car _%e183462183480%_))
                              (_%tl183464183485%_ (##cdr _%e183462183480%_)))
                          (if (gx#stx-pair? _%tl183464183485%_)
                              (let ((_%e183465183488%_
                                     (gx#syntax-e _%tl183464183485%_)))
                                (let ((_%hd183466183491%_
                                       (##car _%e183465183488%_))
                                      (_%tl183467183493%_
                                       (##cdr _%e183465183488%_)))
                                  (let ((_%ann183496%_ _%hd183466183491%_))
                                    (if (gx#stx-pair? _%tl183467183493%_)
                                        (let ((_%e183468183498%_
                                               (gx#syntax-e
                                                _%tl183467183493%_)))
                                          (let ((_%hd183469183501%_
                                                 (##car _%e183468183498%_))
                                                (_%tl183470183503%_
                                                 (##cdr _%e183468183498%_)))
                                            (let ((_%expr183506%_
                                                   _%hd183469183501%_))
                                              (if (gx#stx-null?
                                                   _%tl183470183503%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr183506%_)
                                                  (_%E183461183476%_)))))
                                        (_%E183461183476%_)))))
                              (_%E183461183476%_))))
                      (_%E183461183476%_)))))
          (_%E183460183508%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx183428%_)
        (let* ((_%e183429183436%_ _%stx183428%_)
               (_%E183431183440%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183429183436%_)))
               (_%E183430183454%_
                (lambda ()
                  (if (gx#stx-pair? _%e183429183436%_)
                      (let ((_%e183432183444%_
                             (gx#syntax-e _%e183429183436%_)))
                        (let ((_%hd183433183447%_ (##car _%e183432183444%_))
                              (_%tl183434183449%_ (##cdr _%e183432183444%_)))
                          (let ((_%body183452%_ _%tl183434183449%_))
                            (cons '%#import _%body183452%_))))
                      (_%E183431183440%_)))))
          (_%E183430183454%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx183385%_)
        (let* ((_%e183386183396%_ _%stx183385%_)
               (_%E183388183400%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183386183396%_)))
               (_%E183387183424%_
                (lambda ()
                  (if (gx#stx-pair? _%e183386183396%_)
                      (let ((_%e183389183404%_
                             (gx#syntax-e _%e183386183396%_)))
                        (let ((_%hd183390183407%_ (##car _%e183389183404%_))
                              (_%tl183391183409%_ (##cdr _%e183389183404%_)))
                          (if (gx#stx-pair? _%tl183391183409%_)
                              (let ((_%e183392183412%_
                                     (gx#syntax-e _%tl183391183409%_)))
                                (let ((_%hd183393183415%_
                                       (##car _%e183392183412%_))
                                      (_%tl183394183417%_
                                       (##cdr _%e183392183412%_)))
                                  (let* ((_%hd183420%_ _%hd183393183415%_)
                                         (_%body183422%_ _%tl183394183417%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd183420%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body183422%_))))))
                              (_%E183388183400%_))))
                      (_%E183388183400%_)))))
          (_%E183387183424%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx183355%_)
        (let* ((_%e183356183363%_ _%stx183355%_)
               (_%E183358183367%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183356183363%_)))
               (_%E183357183381%_
                (lambda ()
                  (if (gx#stx-pair? _%e183356183363%_)
                      (let ((_%e183359183371%_
                             (gx#syntax-e _%e183356183363%_)))
                        (let ((_%hd183360183374%_ (##car _%e183359183371%_))
                              (_%tl183361183376%_ (##cdr _%e183359183371%_)))
                          (let ((_%body183379%_ _%tl183361183376%_))
                            (cons '%#export _%body183379%_))))
                      (_%E183358183367%_)))))
          (_%E183357183381%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx183325%_)
        (let* ((_%e183326183333%_ _%stx183325%_)
               (_%E183328183337%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183326183333%_)))
               (_%E183327183351%_
                (lambda ()
                  (if (gx#stx-pair? _%e183326183333%_)
                      (let ((_%e183329183341%_
                             (gx#syntax-e _%e183326183333%_)))
                        (let ((_%hd183330183344%_ (##car _%e183329183341%_))
                              (_%tl183331183346%_ (##cdr _%e183329183341%_)))
                          (let ((_%body183349%_ _%tl183331183346%_))
                            (cons '%#provide _%body183349%_))))
                      (_%E183328183337%_)))))
          (_%E183327183351%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx183295%_)
        (let* ((_%e183296183303%_ _%stx183295%_)
               (_%E183298183307%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183296183303%_)))
               (_%E183297183321%_
                (lambda ()
                  (if (gx#stx-pair? _%e183296183303%_)
                      (let ((_%e183299183311%_
                             (gx#syntax-e _%e183296183303%_)))
                        (let ((_%hd183300183314%_ (##car _%e183299183311%_))
                              (_%tl183301183316%_ (##cdr _%e183299183311%_)))
                          (let ((_%body183319%_ _%tl183301183316%_))
                            (cons '%#extern _%body183319%_))))
                      (_%E183298183307%_)))))
          (_%E183297183321%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx183241%_)
        (let* ((_%e183242183255%_ _%stx183241%_)
               (_%E183244183259%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183242183255%_)))
               (_%E183243183291%_
                (lambda ()
                  (if (gx#stx-pair? _%e183242183255%_)
                      (let ((_%e183245183263%_
                             (gx#syntax-e _%e183242183255%_)))
                        (let ((_%hd183246183266%_ (##car _%e183245183263%_))
                              (_%tl183247183268%_ (##cdr _%e183245183263%_)))
                          (if (gx#stx-pair? _%tl183247183268%_)
                              (let ((_%e183248183271%_
                                     (gx#syntax-e _%tl183247183268%_)))
                                (let ((_%hd183249183274%_
                                       (##car _%e183248183271%_))
                                      (_%tl183250183276%_
                                       (##cdr _%e183248183271%_)))
                                  (let ((_%hd183279%_ _%hd183249183274%_))
                                    (if (gx#stx-pair? _%tl183250183276%_)
                                        (let ((_%e183251183281%_
                                               (gx#syntax-e
                                                _%tl183250183276%_)))
                                          (let ((_%hd183252183284%_
                                                 (##car _%e183251183281%_))
                                                (_%tl183253183286%_
                                                 (##cdr _%e183251183281%_)))
                                            (let ((_%expr183289%_
                                                   _%hd183252183284%_))
                                              (if (gx#stx-null?
                                                   _%tl183253183286%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd183279%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr183289%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E183244183259%_)))))
                                        (_%E183244183259%_)))))
                              (_%E183244183259%_))))
                      (_%E183244183259%_)))))
          (_%E183243183291%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx183186%_)
        (let* ((_%e183187183200%_ _%stx183186%_)
               (_%E183189183204%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183187183200%_)))
               (_%E183188183237%_
                (lambda ()
                  (if (gx#stx-pair? _%e183187183200%_)
                      (let ((_%e183190183208%_
                             (gx#syntax-e _%e183187183200%_)))
                        (let ((_%hd183191183211%_ (##car _%e183190183208%_))
                              (_%tl183192183213%_ (##cdr _%e183190183208%_)))
                          (if (gx#stx-pair? _%tl183192183213%_)
                              (let ((_%e183193183216%_
                                     (gx#syntax-e _%tl183192183213%_)))
                                (let ((_%hd183194183219%_
                                       (##car _%e183193183216%_))
                                      (_%tl183195183221%_
                                       (##cdr _%e183193183216%_)))
                                  (let ((_%hd183224%_ _%hd183194183219%_))
                                    (if (gx#stx-pair? _%tl183195183221%_)
                                        (let ((_%e183196183226%_
                                               (gx#syntax-e
                                                _%tl183195183221%_)))
                                          (let ((_%hd183197183229%_
                                                 (##car _%e183196183226%_))
                                                (_%tl183198183231%_
                                                 (##cdr _%e183196183226%_)))
                                            (let ((_%expr183234%_
                                                   _%hd183197183229%_))
                                              (if (gx#stx-null?
                                                   _%tl183198183231%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd183224%_
                                                              (cons (call-with-parameters__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr183234%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E183189183204%_)))))
                                        (_%E183189183204%_)))))
                              (_%E183189183204%_))))
                      (_%E183189183204%_)))))
          (_%E183188183237%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx183156%_)
        (let* ((_%e183157183164%_ _%stx183156%_)
               (_%E183159183168%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183157183164%_)))
               (_%E183158183182%_
                (lambda ()
                  (if (gx#stx-pair? _%e183157183164%_)
                      (let ((_%e183160183172%_
                             (gx#syntax-e _%e183157183164%_)))
                        (let ((_%hd183161183175%_ (##car _%e183160183172%_))
                              (_%tl183162183177%_ (##cdr _%e183160183172%_)))
                          (let ((_%body183180%_ _%tl183162183177%_))
                            (cons '%#define-alias _%body183180%_))))
                      (_%E183159183168%_)))))
          (_%E183158183182%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx183126%_)
        (let* ((_%e183127183134%_ _%stx183126%_)
               (_%E183129183138%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183127183134%_)))
               (_%E183128183152%_
                (lambda ()
                  (if (gx#stx-pair? _%e183127183134%_)
                      (let ((_%e183130183142%_
                             (gx#syntax-e _%e183127183134%_)))
                        (let ((_%hd183131183145%_ (##car _%e183130183142%_))
                              (_%tl183132183147%_ (##cdr _%e183130183142%_)))
                          (let ((_%body183150%_ _%tl183132183147%_))
                            (cons '%#define-runtime _%body183150%_))))
                      (_%E183129183138%_)))))
          (_%E183128183152%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx183096%_)
        (let* ((_%e183097183104%_ _%stx183096%_)
               (_%E183099183108%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183097183104%_)))
               (_%E183098183122%_
                (lambda ()
                  (if (gx#stx-pair? _%e183097183104%_)
                      (let ((_%e183100183112%_
                             (gx#syntax-e _%e183097183104%_)))
                        (let ((_%hd183101183115%_ (##car _%e183100183112%_))
                              (_%tl183102183117%_ (##cdr _%e183100183112%_)))
                          (let ((_%decls183120%_ _%tl183102183117%_))
                            (cons '%#declare _%decls183120%_))))
                      (_%E183099183108%_)))))
          (_%E183098183122%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx183066%_)
        (let* ((_%e183067183074%_ _%stx183066%_)
               (_%E183069183078%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183067183074%_)))
               (_%E183068183092%_
                (lambda ()
                  (if (gx#stx-pair? _%e183067183074%_)
                      (let ((_%e183070183082%_
                             (gx#syntax-e _%e183067183074%_)))
                        (let ((_%hd183071183085%_ (##car _%e183070183082%_))
                              (_%tl183072183087%_ (##cdr _%e183070183082%_)))
                          (let ((_%clause183090%_ _%tl183072183087%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause183090%_)))))
                      (_%E183069183078%_)))))
          (_%E183068183092%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx183023%_)
        (let* ((_%e183024183034%_ _%stx183023%_)
               (_%E183026183038%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183024183034%_)))
               (_%E183025183062%_
                (lambda ()
                  (if (gx#stx-pair? _%e183024183034%_)
                      (let ((_%e183027183042%_
                             (gx#syntax-e _%e183024183034%_)))
                        (let ((_%hd183028183045%_ (##car _%e183027183042%_))
                              (_%tl183029183047%_ (##cdr _%e183027183042%_)))
                          (let ((_%hd183050%_ _%hd183028183045%_))
                            (if (gx#stx-pair? _%tl183029183047%_)
                                (let ((_%e183030183052%_
                                       (gx#syntax-e _%tl183029183047%_)))
                                  (let ((_%hd183031183055%_
                                         (##car _%e183030183052%_))
                                        (_%tl183032183057%_
                                         (##cdr _%e183030183052%_)))
                                    (let ((_%body183060%_ _%hd183031183055%_))
                                      (if (gx#stx-null? _%tl183032183057%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd183050%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body183060%_)
                                                      '()))
                                          (_%E183026183038%_)))))
                                (_%E183026183038%_)))))
                      (_%E183026183038%_)))))
          (_%E183025183062%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx182993%_)
        (let* ((_%e182994183001%_ _%stx182993%_)
               (_%E182996183005%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182994183001%_)))
               (_%E182995183019%_
                (lambda ()
                  (if (gx#stx-pair? _%e182994183001%_)
                      (let ((_%e182997183009%_
                             (gx#syntax-e _%e182994183001%_)))
                        (let ((_%hd182998183012%_ (##car _%e182997183009%_))
                              (_%tl182999183014%_ (##cdr _%e182997183009%_)))
                          (let ((_%clauses183017%_ _%tl182999183014%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses183017%_)))))
                      (_%E182996183005%_)))))
          (_%E182995183019%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx182928%_ _%form182929%_)
        (let* ((_%e182930182943%_ _%stx182928%_)
               (_%E182932182947%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182930182943%_)))
               (_%E182931182979%_
                (lambda ()
                  (if (gx#stx-pair? _%e182930182943%_)
                      (let ((_%e182933182951%_
                             (gx#syntax-e _%e182930182943%_)))
                        (let ((_%hd182934182954%_ (##car _%e182933182951%_))
                              (_%tl182935182956%_ (##cdr _%e182933182951%_)))
                          (if (gx#stx-pair? _%tl182935182956%_)
                              (let ((_%e182936182959%_
                                     (gx#syntax-e _%tl182935182956%_)))
                                (let ((_%hd182937182962%_
                                       (##car _%e182936182959%_))
                                      (_%tl182938182964%_
                                       (##cdr _%e182936182959%_)))
                                  (let ((_%hd182967%_ _%hd182937182962%_))
                                    (if (gx#stx-pair? _%tl182938182964%_)
                                        (let ((_%e182939182969%_
                                               (gx#syntax-e
                                                _%tl182938182964%_)))
                                          (let ((_%hd182940182972%_
                                                 (##car _%e182939182969%_))
                                                (_%tl182941182974%_
                                                 (##cdr _%e182939182969%_)))
                                            (let ((_%body182977%_
                                                   _%hd182940182972%_))
                                              (if (gx#stx-null?
                                                   _%tl182941182974%_)
                                                  (cons _%form182929%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd182967%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body182977%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E182932182947%_)))))
                                        (_%E182932182947%_)))))
                              (_%E182932182947%_))))
                      (_%E182932182947%_)))))
          (_%E182931182979%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx182986%_)
        (let ((_%form182988%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx182986%_ _%form182988%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g183811_
        (let ((_g183812_ (##length _g183811_)))
          (cond ((##fx= _g183812_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g183811_))
                ((##fx= _g183812_ 2)
                 (apply gx#core-compile-top-let-values%__% _g183811_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g183811_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx182925%_)
        (gx#core-compile-top-let-values%__% _%stx182925%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx182923%_)
        (gx#core-compile-top-let-values%__% _%stx182923%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx182882%_)
        (let* ((_%e182883182893%_ _%stx182882%_)
               (_%E182885182897%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182883182893%_)))
               (_%E182884182919%_
                (lambda ()
                  (if (gx#stx-pair? _%e182883182893%_)
                      (let ((_%e182886182901%_
                             (gx#syntax-e _%e182883182893%_)))
                        (let ((_%hd182887182904%_ (##car _%e182886182901%_))
                              (_%tl182888182906%_ (##cdr _%e182886182901%_)))
                          (if (gx#stx-pair? _%tl182888182906%_)
                              (let ((_%e182889182909%_
                                     (gx#syntax-e _%tl182888182906%_)))
                                (let ((_%hd182890182912%_
                                       (##car _%e182889182909%_))
                                      (_%tl182891182914%_
                                       (##cdr _%e182889182909%_)))
                                  (let ((_%e182917%_ _%hd182890182912%_))
                                    (if (gx#stx-null? _%tl182891182914%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e182917%_)
                                                    '()))
                                        (_%E182885182897%_)))))
                              (_%E182885182897%_))))
                      (_%E182885182897%_)))))
          (_%E182884182919%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx182841%_)
        (let* ((_%e182842182852%_ _%stx182841%_)
               (_%E182844182856%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182842182852%_)))
               (_%E182843182878%_
                (lambda ()
                  (if (gx#stx-pair? _%e182842182852%_)
                      (let ((_%e182845182860%_
                             (gx#syntax-e _%e182842182852%_)))
                        (let ((_%hd182846182863%_ (##car _%e182845182860%_))
                              (_%tl182847182865%_ (##cdr _%e182845182860%_)))
                          (if (gx#stx-pair? _%tl182847182865%_)
                              (let ((_%e182848182868%_
                                     (gx#syntax-e _%tl182847182865%_)))
                                (let ((_%hd182849182871%_
                                       (##car _%e182848182868%_))
                                      (_%tl182850182873%_
                                       (##cdr _%e182848182868%_)))
                                  (let ((_%e182876%_ _%hd182849182871%_))
                                    (if (gx#stx-null? _%tl182850182873%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e182876%_)
                                                    '()))
                                        (_%E182844182856%_)))))
                              (_%E182844182856%_))))
                      (_%E182844182856%_)))))
          (_%E182843182878%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx182798%_)
        (let* ((_%e182799182809%_ _%stx182798%_)
               (_%E182801182813%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182799182809%_)))
               (_%E182800182837%_
                (lambda ()
                  (if (gx#stx-pair? _%e182799182809%_)
                      (let ((_%e182802182817%_
                             (gx#syntax-e _%e182799182809%_)))
                        (let ((_%hd182803182820%_ (##car _%e182802182817%_))
                              (_%tl182804182822%_ (##cdr _%e182802182817%_)))
                          (if (gx#stx-pair? _%tl182804182822%_)
                              (let ((_%e182805182825%_
                                     (gx#syntax-e _%tl182804182822%_)))
                                (let ((_%hd182806182828%_
                                       (##car _%e182805182825%_))
                                      (_%tl182807182830%_
                                       (##cdr _%e182805182825%_)))
                                  (let* ((_%rator182833%_ _%hd182806182828%_)
                                         (_%args182835%_ _%tl182807182830%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator182833%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args182835%_))))))
                              (_%E182801182813%_))))
                      (_%E182801182813%_)))))
          (_%E182800182837%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx182731%_)
        (let* ((_%e182732182748%_ _%stx182731%_)
               (_%E182734182752%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182732182748%_)))
               (_%E182733182794%_
                (lambda ()
                  (if (gx#stx-pair? _%e182732182748%_)
                      (let ((_%e182735182756%_
                             (gx#syntax-e _%e182732182748%_)))
                        (let ((_%hd182736182759%_ (##car _%e182735182756%_))
                              (_%tl182737182761%_ (##cdr _%e182735182756%_)))
                          (if (gx#stx-pair? _%tl182737182761%_)
                              (let ((_%e182738182764%_
                                     (gx#syntax-e _%tl182737182761%_)))
                                (let ((_%hd182739182767%_
                                       (##car _%e182738182764%_))
                                      (_%tl182740182769%_
                                       (##cdr _%e182738182764%_)))
                                  (let ((_%test182772%_ _%hd182739182767%_))
                                    (if (gx#stx-pair? _%tl182740182769%_)
                                        (let ((_%e182741182774%_
                                               (gx#syntax-e
                                                _%tl182740182769%_)))
                                          (let ((_%hd182742182777%_
                                                 (##car _%e182741182774%_))
                                                (_%tl182743182779%_
                                                 (##cdr _%e182741182774%_)))
                                            (let ((_%K182782%_
                                                   _%hd182742182777%_))
                                              (if (gx#stx-pair?
                                                   _%tl182743182779%_)
                                                  (let ((_%e182744182784%_
                                                         (gx#syntax-e
                                                          _%tl182743182779%_)))
                                                    (let ((_%hd182745182787%_
                                                           (##car _%e182744182784%_))
                                                          (_%tl182746182789%_
                                                           (##cdr _%e182744182784%_)))
                                                      (let ((_%E182792%_
                                                             _%hd182745182787%_))
                                                        (if (gx#stx-null?
                                                             _%tl182746182789%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test182772%_)
                                (cons (gx#core-compile-top-syntax _%K182782%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E182792%_)
                                            '()))))
                    (_%E182734182752%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E182734182752%_)))))
                                        (_%E182734182752%_)))))
                              (_%E182734182752%_))))
                      (_%E182734182752%_)))))
          (_%E182733182794%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx182690%_)
        (let* ((_%e182691182701%_ _%stx182690%_)
               (_%E182693182705%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182691182701%_)))
               (_%E182692182727%_
                (lambda ()
                  (if (gx#stx-pair? _%e182691182701%_)
                      (let ((_%e182694182709%_
                             (gx#syntax-e _%e182691182701%_)))
                        (let ((_%hd182695182712%_ (##car _%e182694182709%_))
                              (_%tl182696182714%_ (##cdr _%e182694182709%_)))
                          (if (gx#stx-pair? _%tl182696182714%_)
                              (let ((_%e182697182717%_
                                     (gx#syntax-e _%tl182696182714%_)))
                                (let ((_%hd182698182720%_
                                       (##car _%e182697182717%_))
                                      (_%tl182699182722%_
                                       (##cdr _%e182697182717%_)))
                                  (let ((_%id182725%_ _%hd182698182720%_))
                                    (if (gx#stx-null? _%tl182699182722%_)
                                        (if (gx#identifier? _%id182725%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id182725%_)
                                                        '()))
                                            (_%E182693182705%_))
                                        (_%E182693182705%_)))))
                              (_%E182693182705%_))))
                      (_%E182693182705%_)))))
          (_%E182692182727%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx182636%_)
        (let* ((_%e182637182650%_ _%stx182636%_)
               (_%E182639182654%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182637182650%_)))
               (_%E182638182686%_
                (lambda ()
                  (if (gx#stx-pair? _%e182637182650%_)
                      (let ((_%e182640182658%_
                             (gx#syntax-e _%e182637182650%_)))
                        (let ((_%hd182641182661%_ (##car _%e182640182658%_))
                              (_%tl182642182663%_ (##cdr _%e182640182658%_)))
                          (if (gx#stx-pair? _%tl182642182663%_)
                              (let ((_%e182643182666%_
                                     (gx#syntax-e _%tl182642182663%_)))
                                (let ((_%hd182644182669%_
                                       (##car _%e182643182666%_))
                                      (_%tl182645182671%_
                                       (##cdr _%e182643182666%_)))
                                  (let ((_%id182674%_ _%hd182644182669%_))
                                    (if (gx#stx-pair? _%tl182645182671%_)
                                        (let ((_%e182646182676%_
                                               (gx#syntax-e
                                                _%tl182645182671%_)))
                                          (let ((_%hd182647182679%_
                                                 (##car _%e182646182676%_))
                                                (_%tl182648182681%_
                                                 (##cdr _%e182646182676%_)))
                                            (let ((_%expr182684%_
                                                   _%hd182647182679%_))
                                              (if (gx#stx-null?
                                                   _%tl182648182681%_)
                                                  (if (gx#identifier?
                                                       _%id182674%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id182674%_)
                          (cons (gx#core-compile-top-syntax _%expr182684%_)
                                '())))
              (_%E182639182654%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E182639182654%_)))))
                                        (_%E182639182654%_)))))
                              (_%E182639182654%_))))
                      (_%E182639182654%_)))))
          (_%E182638182686%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id182630%_)
        (let ((_%$e182632%_ (gx#resolve-identifier__0 _%id182630%_)))
          (if _%$e182632%_
              (##unchecked-structure-ref _%$e182632%_ '1 '#f '#f)
              _%id182630%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd182628%_)
        (if (gx#identifier? _%hd182628%_)
            (gx#core-compile-top-runtime-ref _%hd182628%_)
            '#f)))))
