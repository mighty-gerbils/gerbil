(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1769384629)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx142612%_)
        (let* ((_%e142613142620%_ _%stx142612%_)
               (_%E142615142624%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e142613142620%_)))
               (_%E142614142638%_
                (lambda ()
                  (if (gx#stx-pair? _%e142613142620%_)
                      (let ((_%e142616142628%_
                             (gx#syntax-e _%e142613142620%_)))
                        (let ((_%hd142617142631%_ (##car _%e142616142628%_))
                              (_%tl142618142633%_ (##cdr _%e142616142628%_)))
                          (let* ((_%form142636%_ _%hd142617142631%_)
                                 (__self142641
                                  (gx#syntax-local-e__0 _%form142636%_))
                                 (__method142642
                                  (__method-ref
                                   __self142641
                                   'compile-top-syntax)))
                            (if __method142642
                                (__method142642 __self142641 _%stx142612%_)
                                (begin
                                  (error '"Missing method"
                                         __self142641
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%E142615142624%_)))))
          (_%E142614142638%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self142561%_ _%stx142562%_)
        (let* ((_%self142565%_ _%self142561%_)
               (_%self142574142582%_ _%self142565%_)
               (_%E142576142585%_
                (lambda ()
                  (error '"No clause matching"
                         _%self142574142582%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K142577142598%_
                (lambda (_%K142588%_)
                  (let ((_%$e142590%_ (gx#stx-source _%stx142562%_)))
                    (if _%$e142590%_
                        ((lambda (_%g142592142594%_)
                           (gx#stx-wrap-source
                            (_%K142588%_ _%stx142562%_)
                            _%g142592142594%_))
                         _%$e142590%_)
                        (_%K142588%_ _%stx142562%_)))))
               (_%e142578142601%_
                (##unchecked-structure-ref _%self142574142582%_ '1 '#f '#f))
               (_%e142579142604%_
                (##unchecked-structure-ref _%self142574142582%_ '2 '#f '#f))
               (_%e142580142607%_
                (##unchecked-structure-ref _%self142574142582%_ '3 '#f '#f))
               (_%K142610%_ _%e142580142607%_))
          (_%K142577142598%_ _%K142610%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx142435%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx142435%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx142405%_)
        (let* ((_%e142406142413%_ _%stx142405%_)
               (_%E142408142417%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e142406142413%_)))
               (_%E142407142431%_
                (lambda ()
                  (if (gx#stx-pair? _%e142406142413%_)
                      (let ((_%e142409142421%_
                             (gx#syntax-e _%e142406142413%_)))
                        (let ((_%hd142410142424%_ (##car _%e142409142421%_))
                              (_%tl142411142426%_ (##cdr _%e142409142421%_)))
                          (let ((_%body142429%_ _%tl142411142426%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body142429%_)))))
                      (_%E142408142417%_)))))
          (_%E142407142431%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx142374%_)
        (let* ((_%e142375142382%_ _%stx142374%_)
               (_%E142377142386%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e142375142382%_)))
               (_%E142376142401%_
                (lambda ()
                  (if (gx#stx-pair? _%e142375142382%_)
                      (let ((_%e142378142390%_
                             (gx#syntax-e _%e142375142382%_)))
                        (let ((_%hd142379142393%_ (##car _%e142378142390%_))
                              (_%tl142380142395%_ (##cdr _%e142378142390%_)))
                          (let ((_%body142398%_ _%tl142380142395%_))
                            (cons '%#begin-syntax
                                  (call-with-parameters__1
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body142398%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%E142377142386%_)))))
          (_%E142376142401%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx142344%_)
        (let* ((_%e142345142352%_ _%stx142344%_)
               (_%E142347142356%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e142345142352%_)))
               (_%E142346142370%_
                (lambda ()
                  (if (gx#stx-pair? _%e142345142352%_)
                      (let ((_%e142348142360%_
                             (gx#syntax-e _%e142345142352%_)))
                        (let ((_%hd142349142363%_ (##car _%e142348142360%_))
                              (_%tl142350142365%_ (##cdr _%e142348142360%_)))
                          (let ((_%body142368%_ _%tl142350142365%_))
                            (cons '%#begin-foreign _%body142368%_))))
                      (_%E142347142356%_)))))
          (_%E142346142370%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx142290%_)
        (let* ((_%e142291142304%_ _%stx142290%_)
               (_%E142293142308%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e142291142304%_)))
               (_%E142292142340%_
                (lambda ()
                  (if (gx#stx-pair? _%e142291142304%_)
                      (let ((_%e142294142312%_
                             (gx#syntax-e _%e142291142304%_)))
                        (let ((_%hd142295142315%_ (##car _%e142294142312%_))
                              (_%tl142296142317%_ (##cdr _%e142294142312%_)))
                          (if (gx#stx-pair? _%tl142296142317%_)
                              (let ((_%e142297142320%_
                                     (gx#syntax-e _%tl142296142317%_)))
                                (let ((_%hd142298142323%_
                                       (##car _%e142297142320%_))
                                      (_%tl142299142325%_
                                       (##cdr _%e142297142320%_)))
                                  (let ((_%ann142328%_ _%hd142298142323%_))
                                    (if (gx#stx-pair? _%tl142299142325%_)
                                        (let ((_%e142300142330%_
                                               (gx#syntax-e
                                                _%tl142299142325%_)))
                                          (let ((_%hd142301142333%_
                                                 (##car _%e142300142330%_))
                                                (_%tl142302142335%_
                                                 (##cdr _%e142300142330%_)))
                                            (let ((_%expr142338%_
                                                   _%hd142301142333%_))
                                              (if (gx#stx-null?
                                                   _%tl142302142335%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr142338%_)
                                                  (_%E142293142308%_)))))
                                        (_%E142293142308%_)))))
                              (_%E142293142308%_))))
                      (_%E142293142308%_)))))
          (_%E142292142340%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx142260%_)
        (let* ((_%e142261142268%_ _%stx142260%_)
               (_%E142263142272%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e142261142268%_)))
               (_%E142262142286%_
                (lambda ()
                  (if (gx#stx-pair? _%e142261142268%_)
                      (let ((_%e142264142276%_
                             (gx#syntax-e _%e142261142268%_)))
                        (let ((_%hd142265142279%_ (##car _%e142264142276%_))
                              (_%tl142266142281%_ (##cdr _%e142264142276%_)))
                          (let ((_%body142284%_ _%tl142266142281%_))
                            (cons '%#import _%body142284%_))))
                      (_%E142263142272%_)))))
          (_%E142262142286%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx142217%_)
        (let* ((_%e142218142228%_ _%stx142217%_)
               (_%E142220142232%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e142218142228%_)))
               (_%E142219142256%_
                (lambda ()
                  (if (gx#stx-pair? _%e142218142228%_)
                      (let ((_%e142221142236%_
                             (gx#syntax-e _%e142218142228%_)))
                        (let ((_%hd142222142239%_ (##car _%e142221142236%_))
                              (_%tl142223142241%_ (##cdr _%e142221142236%_)))
                          (if (gx#stx-pair? _%tl142223142241%_)
                              (let ((_%e142224142244%_
                                     (gx#syntax-e _%tl142223142241%_)))
                                (let ((_%hd142225142247%_
                                       (##car _%e142224142244%_))
                                      (_%tl142226142249%_
                                       (##cdr _%e142224142244%_)))
                                  (let* ((_%hd142252%_ _%hd142225142247%_)
                                         (_%body142254%_ _%tl142226142249%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd142252%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body142254%_))))))
                              (_%E142220142232%_))))
                      (_%E142220142232%_)))))
          (_%E142219142256%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx142187%_)
        (let* ((_%e142188142195%_ _%stx142187%_)
               (_%E142190142199%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e142188142195%_)))
               (_%E142189142213%_
                (lambda ()
                  (if (gx#stx-pair? _%e142188142195%_)
                      (let ((_%e142191142203%_
                             (gx#syntax-e _%e142188142195%_)))
                        (let ((_%hd142192142206%_ (##car _%e142191142203%_))
                              (_%tl142193142208%_ (##cdr _%e142191142203%_)))
                          (let ((_%body142211%_ _%tl142193142208%_))
                            (cons '%#export _%body142211%_))))
                      (_%E142190142199%_)))))
          (_%E142189142213%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx142157%_)
        (let* ((_%e142158142165%_ _%stx142157%_)
               (_%E142160142169%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e142158142165%_)))
               (_%E142159142183%_
                (lambda ()
                  (if (gx#stx-pair? _%e142158142165%_)
                      (let ((_%e142161142173%_
                             (gx#syntax-e _%e142158142165%_)))
                        (let ((_%hd142162142176%_ (##car _%e142161142173%_))
                              (_%tl142163142178%_ (##cdr _%e142161142173%_)))
                          (let ((_%body142181%_ _%tl142163142178%_))
                            (cons '%#provide _%body142181%_))))
                      (_%E142160142169%_)))))
          (_%E142159142183%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx142127%_)
        (let* ((_%e142128142135%_ _%stx142127%_)
               (_%E142130142139%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e142128142135%_)))
               (_%E142129142153%_
                (lambda ()
                  (if (gx#stx-pair? _%e142128142135%_)
                      (let ((_%e142131142143%_
                             (gx#syntax-e _%e142128142135%_)))
                        (let ((_%hd142132142146%_ (##car _%e142131142143%_))
                              (_%tl142133142148%_ (##cdr _%e142131142143%_)))
                          (let ((_%body142151%_ _%tl142133142148%_))
                            (cons '%#extern _%body142151%_))))
                      (_%E142130142139%_)))))
          (_%E142129142153%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx142073%_)
        (let* ((_%e142074142087%_ _%stx142073%_)
               (_%E142076142091%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e142074142087%_)))
               (_%E142075142123%_
                (lambda ()
                  (if (gx#stx-pair? _%e142074142087%_)
                      (let ((_%e142077142095%_
                             (gx#syntax-e _%e142074142087%_)))
                        (let ((_%hd142078142098%_ (##car _%e142077142095%_))
                              (_%tl142079142100%_ (##cdr _%e142077142095%_)))
                          (if (gx#stx-pair? _%tl142079142100%_)
                              (let ((_%e142080142103%_
                                     (gx#syntax-e _%tl142079142100%_)))
                                (let ((_%hd142081142106%_
                                       (##car _%e142080142103%_))
                                      (_%tl142082142108%_
                                       (##cdr _%e142080142103%_)))
                                  (let ((_%hd142111%_ _%hd142081142106%_))
                                    (if (gx#stx-pair? _%tl142082142108%_)
                                        (let ((_%e142083142113%_
                                               (gx#syntax-e
                                                _%tl142082142108%_)))
                                          (let ((_%hd142084142116%_
                                                 (##car _%e142083142113%_))
                                                (_%tl142085142118%_
                                                 (##cdr _%e142083142113%_)))
                                            (let ((_%expr142121%_
                                                   _%hd142084142116%_))
                                              (if (gx#stx-null?
                                                   _%tl142085142118%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd142111%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr142121%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E142076142091%_)))))
                                        (_%E142076142091%_)))))
                              (_%E142076142091%_))))
                      (_%E142076142091%_)))))
          (_%E142075142123%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx142018%_)
        (let* ((_%e142019142032%_ _%stx142018%_)
               (_%E142021142036%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e142019142032%_)))
               (_%E142020142069%_
                (lambda ()
                  (if (gx#stx-pair? _%e142019142032%_)
                      (let ((_%e142022142040%_
                             (gx#syntax-e _%e142019142032%_)))
                        (let ((_%hd142023142043%_ (##car _%e142022142040%_))
                              (_%tl142024142045%_ (##cdr _%e142022142040%_)))
                          (if (gx#stx-pair? _%tl142024142045%_)
                              (let ((_%e142025142048%_
                                     (gx#syntax-e _%tl142024142045%_)))
                                (let ((_%hd142026142051%_
                                       (##car _%e142025142048%_))
                                      (_%tl142027142053%_
                                       (##cdr _%e142025142048%_)))
                                  (let ((_%hd142056%_ _%hd142026142051%_))
                                    (if (gx#stx-pair? _%tl142027142053%_)
                                        (let ((_%e142028142058%_
                                               (gx#syntax-e
                                                _%tl142027142053%_)))
                                          (let ((_%hd142029142061%_
                                                 (##car _%e142028142058%_))
                                                (_%tl142030142063%_
                                                 (##cdr _%e142028142058%_)))
                                            (let ((_%expr142066%_
                                                   _%hd142029142061%_))
                                              (if (gx#stx-null?
                                                   _%tl142030142063%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd142056%_
                                                              (cons (call-with-parameters__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr142066%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E142021142036%_)))))
                                        (_%E142021142036%_)))))
                              (_%E142021142036%_))))
                      (_%E142021142036%_)))))
          (_%E142020142069%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx141988%_)
        (let* ((_%e141989141996%_ _%stx141988%_)
               (_%E141991142000%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141989141996%_)))
               (_%E141990142014%_
                (lambda ()
                  (if (gx#stx-pair? _%e141989141996%_)
                      (let ((_%e141992142004%_
                             (gx#syntax-e _%e141989141996%_)))
                        (let ((_%hd141993142007%_ (##car _%e141992142004%_))
                              (_%tl141994142009%_ (##cdr _%e141992142004%_)))
                          (let ((_%body142012%_ _%tl141994142009%_))
                            (cons '%#define-alias _%body142012%_))))
                      (_%E141991142000%_)))))
          (_%E141990142014%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx141958%_)
        (let* ((_%e141959141966%_ _%stx141958%_)
               (_%E141961141970%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141959141966%_)))
               (_%E141960141984%_
                (lambda ()
                  (if (gx#stx-pair? _%e141959141966%_)
                      (let ((_%e141962141974%_
                             (gx#syntax-e _%e141959141966%_)))
                        (let ((_%hd141963141977%_ (##car _%e141962141974%_))
                              (_%tl141964141979%_ (##cdr _%e141962141974%_)))
                          (let ((_%body141982%_ _%tl141964141979%_))
                            (cons '%#define-runtime _%body141982%_))))
                      (_%E141961141970%_)))))
          (_%E141960141984%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx141928%_)
        (let* ((_%e141929141936%_ _%stx141928%_)
               (_%E141931141940%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141929141936%_)))
               (_%E141930141954%_
                (lambda ()
                  (if (gx#stx-pair? _%e141929141936%_)
                      (let ((_%e141932141944%_
                             (gx#syntax-e _%e141929141936%_)))
                        (let ((_%hd141933141947%_ (##car _%e141932141944%_))
                              (_%tl141934141949%_ (##cdr _%e141932141944%_)))
                          (let ((_%decls141952%_ _%tl141934141949%_))
                            (cons '%#declare _%decls141952%_))))
                      (_%E141931141940%_)))))
          (_%E141930141954%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx141898%_)
        (let* ((_%e141899141906%_ _%stx141898%_)
               (_%E141901141910%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141899141906%_)))
               (_%E141900141924%_
                (lambda ()
                  (if (gx#stx-pair? _%e141899141906%_)
                      (let ((_%e141902141914%_
                             (gx#syntax-e _%e141899141906%_)))
                        (let ((_%hd141903141917%_ (##car _%e141902141914%_))
                              (_%tl141904141919%_ (##cdr _%e141902141914%_)))
                          (let ((_%clause141922%_ _%tl141904141919%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause141922%_)))))
                      (_%E141901141910%_)))))
          (_%E141900141924%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx141855%_)
        (let* ((_%e141856141866%_ _%stx141855%_)
               (_%E141858141870%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141856141866%_)))
               (_%E141857141894%_
                (lambda ()
                  (if (gx#stx-pair? _%e141856141866%_)
                      (let ((_%e141859141874%_
                             (gx#syntax-e _%e141856141866%_)))
                        (let ((_%hd141860141877%_ (##car _%e141859141874%_))
                              (_%tl141861141879%_ (##cdr _%e141859141874%_)))
                          (let ((_%hd141882%_ _%hd141860141877%_))
                            (if (gx#stx-pair? _%tl141861141879%_)
                                (let ((_%e141862141884%_
                                       (gx#syntax-e _%tl141861141879%_)))
                                  (let ((_%hd141863141887%_
                                         (##car _%e141862141884%_))
                                        (_%tl141864141889%_
                                         (##cdr _%e141862141884%_)))
                                    (let ((_%body141892%_ _%hd141863141887%_))
                                      (if (gx#stx-null? _%tl141864141889%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd141882%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body141892%_)
                                                      '()))
                                          (_%E141858141870%_)))))
                                (_%E141858141870%_)))))
                      (_%E141858141870%_)))))
          (_%E141857141894%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx141825%_)
        (let* ((_%e141826141833%_ _%stx141825%_)
               (_%E141828141837%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141826141833%_)))
               (_%E141827141851%_
                (lambda ()
                  (if (gx#stx-pair? _%e141826141833%_)
                      (let ((_%e141829141841%_
                             (gx#syntax-e _%e141826141833%_)))
                        (let ((_%hd141830141844%_ (##car _%e141829141841%_))
                              (_%tl141831141846%_ (##cdr _%e141829141841%_)))
                          (let ((_%clauses141849%_ _%tl141831141846%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses141849%_)))))
                      (_%E141828141837%_)))))
          (_%E141827141851%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx141760%_ _%form141761%_)
        (let* ((_%e141762141775%_ _%stx141760%_)
               (_%E141764141779%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141762141775%_)))
               (_%E141763141811%_
                (lambda ()
                  (if (gx#stx-pair? _%e141762141775%_)
                      (let ((_%e141765141783%_
                             (gx#syntax-e _%e141762141775%_)))
                        (let ((_%hd141766141786%_ (##car _%e141765141783%_))
                              (_%tl141767141788%_ (##cdr _%e141765141783%_)))
                          (if (gx#stx-pair? _%tl141767141788%_)
                              (let ((_%e141768141791%_
                                     (gx#syntax-e _%tl141767141788%_)))
                                (let ((_%hd141769141794%_
                                       (##car _%e141768141791%_))
                                      (_%tl141770141796%_
                                       (##cdr _%e141768141791%_)))
                                  (let ((_%hd141799%_ _%hd141769141794%_))
                                    (if (gx#stx-pair? _%tl141770141796%_)
                                        (let ((_%e141771141801%_
                                               (gx#syntax-e
                                                _%tl141770141796%_)))
                                          (let ((_%hd141772141804%_
                                                 (##car _%e141771141801%_))
                                                (_%tl141773141806%_
                                                 (##cdr _%e141771141801%_)))
                                            (let ((_%body141809%_
                                                   _%hd141772141804%_))
                                              (if (gx#stx-null?
                                                   _%tl141773141806%_)
                                                  (cons _%form141761%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd141799%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body141809%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E141764141779%_)))))
                                        (_%E141764141779%_)))))
                              (_%E141764141779%_))))
                      (_%E141764141779%_)))))
          (_%E141763141811%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx141818%_)
        (let ((_%form141820%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx141818%_ _%form141820%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g142643_
        (let ((_g142644_ (##length _g142643_)))
          (cond ((##fx= _g142644_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g142643_))
                ((##fx= _g142644_ 2)
                 (apply gx#core-compile-top-let-values%__% _g142643_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g142643_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx141757%_)
        (gx#core-compile-top-let-values%__% _%stx141757%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx141755%_)
        (gx#core-compile-top-let-values%__% _%stx141755%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx141714%_)
        (let* ((_%e141715141725%_ _%stx141714%_)
               (_%E141717141729%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141715141725%_)))
               (_%E141716141751%_
                (lambda ()
                  (if (gx#stx-pair? _%e141715141725%_)
                      (let ((_%e141718141733%_
                             (gx#syntax-e _%e141715141725%_)))
                        (let ((_%hd141719141736%_ (##car _%e141718141733%_))
                              (_%tl141720141738%_ (##cdr _%e141718141733%_)))
                          (if (gx#stx-pair? _%tl141720141738%_)
                              (let ((_%e141721141741%_
                                     (gx#syntax-e _%tl141720141738%_)))
                                (let ((_%hd141722141744%_
                                       (##car _%e141721141741%_))
                                      (_%tl141723141746%_
                                       (##cdr _%e141721141741%_)))
                                  (let ((_%e141749%_ _%hd141722141744%_))
                                    (if (gx#stx-null? _%tl141723141746%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e141749%_)
                                                    '()))
                                        (_%E141717141729%_)))))
                              (_%E141717141729%_))))
                      (_%E141717141729%_)))))
          (_%E141716141751%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx141673%_)
        (let* ((_%e141674141684%_ _%stx141673%_)
               (_%E141676141688%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141674141684%_)))
               (_%E141675141710%_
                (lambda ()
                  (if (gx#stx-pair? _%e141674141684%_)
                      (let ((_%e141677141692%_
                             (gx#syntax-e _%e141674141684%_)))
                        (let ((_%hd141678141695%_ (##car _%e141677141692%_))
                              (_%tl141679141697%_ (##cdr _%e141677141692%_)))
                          (if (gx#stx-pair? _%tl141679141697%_)
                              (let ((_%e141680141700%_
                                     (gx#syntax-e _%tl141679141697%_)))
                                (let ((_%hd141681141703%_
                                       (##car _%e141680141700%_))
                                      (_%tl141682141705%_
                                       (##cdr _%e141680141700%_)))
                                  (let ((_%e141708%_ _%hd141681141703%_))
                                    (if (gx#stx-null? _%tl141682141705%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e141708%_)
                                                    '()))
                                        (_%E141676141688%_)))))
                              (_%E141676141688%_))))
                      (_%E141676141688%_)))))
          (_%E141675141710%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx141630%_)
        (let* ((_%e141631141641%_ _%stx141630%_)
               (_%E141633141645%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141631141641%_)))
               (_%E141632141669%_
                (lambda ()
                  (if (gx#stx-pair? _%e141631141641%_)
                      (let ((_%e141634141649%_
                             (gx#syntax-e _%e141631141641%_)))
                        (let ((_%hd141635141652%_ (##car _%e141634141649%_))
                              (_%tl141636141654%_ (##cdr _%e141634141649%_)))
                          (if (gx#stx-pair? _%tl141636141654%_)
                              (let ((_%e141637141657%_
                                     (gx#syntax-e _%tl141636141654%_)))
                                (let ((_%hd141638141660%_
                                       (##car _%e141637141657%_))
                                      (_%tl141639141662%_
                                       (##cdr _%e141637141657%_)))
                                  (let* ((_%rator141665%_ _%hd141638141660%_)
                                         (_%args141667%_ _%tl141639141662%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator141665%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args141667%_))))))
                              (_%E141633141645%_))))
                      (_%E141633141645%_)))))
          (_%E141632141669%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx141563%_)
        (let* ((_%e141564141580%_ _%stx141563%_)
               (_%E141566141584%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141564141580%_)))
               (_%E141565141626%_
                (lambda ()
                  (if (gx#stx-pair? _%e141564141580%_)
                      (let ((_%e141567141588%_
                             (gx#syntax-e _%e141564141580%_)))
                        (let ((_%hd141568141591%_ (##car _%e141567141588%_))
                              (_%tl141569141593%_ (##cdr _%e141567141588%_)))
                          (if (gx#stx-pair? _%tl141569141593%_)
                              (let ((_%e141570141596%_
                                     (gx#syntax-e _%tl141569141593%_)))
                                (let ((_%hd141571141599%_
                                       (##car _%e141570141596%_))
                                      (_%tl141572141601%_
                                       (##cdr _%e141570141596%_)))
                                  (let ((_%test141604%_ _%hd141571141599%_))
                                    (if (gx#stx-pair? _%tl141572141601%_)
                                        (let ((_%e141573141606%_
                                               (gx#syntax-e
                                                _%tl141572141601%_)))
                                          (let ((_%hd141574141609%_
                                                 (##car _%e141573141606%_))
                                                (_%tl141575141611%_
                                                 (##cdr _%e141573141606%_)))
                                            (let ((_%K141614%_
                                                   _%hd141574141609%_))
                                              (if (gx#stx-pair?
                                                   _%tl141575141611%_)
                                                  (let ((_%e141576141616%_
                                                         (gx#syntax-e
                                                          _%tl141575141611%_)))
                                                    (let ((_%hd141577141619%_
                                                           (##car _%e141576141616%_))
                                                          (_%tl141578141621%_
                                                           (##cdr _%e141576141616%_)))
                                                      (let ((_%E141624%_
                                                             _%hd141577141619%_))
                                                        (if (gx#stx-null?
                                                             _%tl141578141621%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test141604%_)
                                (cons (gx#core-compile-top-syntax _%K141614%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E141624%_)
                                            '()))))
                    (_%E141566141584%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E141566141584%_)))))
                                        (_%E141566141584%_)))))
                              (_%E141566141584%_))))
                      (_%E141566141584%_)))))
          (_%E141565141626%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx141522%_)
        (let* ((_%e141523141533%_ _%stx141522%_)
               (_%E141525141537%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141523141533%_)))
               (_%E141524141559%_
                (lambda ()
                  (if (gx#stx-pair? _%e141523141533%_)
                      (let ((_%e141526141541%_
                             (gx#syntax-e _%e141523141533%_)))
                        (let ((_%hd141527141544%_ (##car _%e141526141541%_))
                              (_%tl141528141546%_ (##cdr _%e141526141541%_)))
                          (if (gx#stx-pair? _%tl141528141546%_)
                              (let ((_%e141529141549%_
                                     (gx#syntax-e _%tl141528141546%_)))
                                (let ((_%hd141530141552%_
                                       (##car _%e141529141549%_))
                                      (_%tl141531141554%_
                                       (##cdr _%e141529141549%_)))
                                  (let ((_%id141557%_ _%hd141530141552%_))
                                    (if (gx#stx-null? _%tl141531141554%_)
                                        (if (gx#identifier? _%id141557%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id141557%_)
                                                        '()))
                                            (_%E141525141537%_))
                                        (_%E141525141537%_)))))
                              (_%E141525141537%_))))
                      (_%E141525141537%_)))))
          (_%E141524141559%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx141468%_)
        (let* ((_%e141469141482%_ _%stx141468%_)
               (_%E141471141486%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141469141482%_)))
               (_%E141470141518%_
                (lambda ()
                  (if (gx#stx-pair? _%e141469141482%_)
                      (let ((_%e141472141490%_
                             (gx#syntax-e _%e141469141482%_)))
                        (let ((_%hd141473141493%_ (##car _%e141472141490%_))
                              (_%tl141474141495%_ (##cdr _%e141472141490%_)))
                          (if (gx#stx-pair? _%tl141474141495%_)
                              (let ((_%e141475141498%_
                                     (gx#syntax-e _%tl141474141495%_)))
                                (let ((_%hd141476141501%_
                                       (##car _%e141475141498%_))
                                      (_%tl141477141503%_
                                       (##cdr _%e141475141498%_)))
                                  (let ((_%id141506%_ _%hd141476141501%_))
                                    (if (gx#stx-pair? _%tl141477141503%_)
                                        (let ((_%e141478141508%_
                                               (gx#syntax-e
                                                _%tl141477141503%_)))
                                          (let ((_%hd141479141511%_
                                                 (##car _%e141478141508%_))
                                                (_%tl141480141513%_
                                                 (##cdr _%e141478141508%_)))
                                            (let ((_%expr141516%_
                                                   _%hd141479141511%_))
                                              (if (gx#stx-null?
                                                   _%tl141480141513%_)
                                                  (if (gx#identifier?
                                                       _%id141506%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id141506%_)
                          (cons (gx#core-compile-top-syntax _%expr141516%_)
                                '())))
              (_%E141471141486%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E141471141486%_)))))
                                        (_%E141471141486%_)))))
                              (_%E141471141486%_))))
                      (_%E141471141486%_)))))
          (_%E141470141518%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id141462%_)
        (let ((_%$e141464%_ (gx#resolve-identifier__0 _%id141462%_)))
          (if _%$e141464%_
              (##unchecked-structure-ref _%$e141464%_ '1 '#f '#f)
              _%id141462%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd141460%_)
        (if (gx#identifier? _%hd141460%_)
            (gx#core-compile-top-runtime-ref _%hd141460%_)
            '#f)))))
