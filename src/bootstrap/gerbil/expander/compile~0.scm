(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1712846034)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx128365%_)
        (let* ((_%e128366128373%_ _%stx128365%_)
               (_%E128368128377%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128366128373%_)))
               (_%E128367128391%_
                (lambda ()
                  (if (gx#stx-pair? _%e128366128373%_)
                      (let ((_%e128369128381%_
                             (gx#syntax-e _%e128366128373%_)))
                        (let ((_%hd128370128384%_ (##car _%e128369128381%_))
                              (_%tl128371128386%_ (##cdr _%e128369128381%_)))
                          (let* ((_%form128389%_ _%hd128370128384%_)
                                 (__self128394
                                  (gx#syntax-local-e__0 _%form128389%_))
                                 (__method128395
                                  (__method-ref
                                   __self128394
                                   'compile-top-syntax)))
                            (if __method128395
                                (__method128395 __self128394 _%stx128365%_)
                                (begin
                                  (error '"Missing method"
                                         __self128394
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%E128368128377%_)))))
          (_%E128367128391%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self127208128311%_ _%stx128313%_)
        (let* ((_%self128315%_ _%self127208128311%_)
               (_%self128317%_ _%self128315%_)
               (_%self128326128334%_ _%self128317%_)
               (_%E128328128338%_
                (lambda ()
                  (error '"No clause matching"
                         _%self128326128334%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K128329128351%_
                (lambda (_%K128341%_)
                  (let ((_%$e128343%_ (gx#stx-source _%stx128313%_)))
                    (if _%$e128343%_
                        ((lambda (_%g128345128347%_)
                           (gx#stx-wrap-source
                            (_%K128341%_ _%stx128313%_)
                            _%g128345128347%_))
                         _%$e128343%_)
                        (_%K128341%_ _%stx128313%_)))))
               (_%e128330128354%_
                (##unchecked-structure-ref _%self128326128334%_ '1 '#f '#f))
               (_%e128331128357%_
                (##unchecked-structure-ref _%self128326128334%_ '2 '#f '#f))
               (_%e128332128360%_
                (##unchecked-structure-ref _%self128326128334%_ '3 '#f '#f))
               (_%K128363%_ _%e128332128360%_))
          (_%K128329128351%_ _%K128363%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx128185%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx128185%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx128155%_)
        (let* ((_%e128156128163%_ _%stx128155%_)
               (_%E128158128167%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128156128163%_)))
               (_%E128157128181%_
                (lambda ()
                  (if (gx#stx-pair? _%e128156128163%_)
                      (let ((_%e128159128171%_
                             (gx#syntax-e _%e128156128163%_)))
                        (let ((_%hd128160128174%_ (##car _%e128159128171%_))
                              (_%tl128161128176%_ (##cdr _%e128159128171%_)))
                          (let ((_%body128179%_ _%tl128161128176%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body128179%_)))))
                      (_%E128158128167%_)))))
          (_%E128157128181%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx128124%_)
        (let* ((_%e128125128132%_ _%stx128124%_)
               (_%E128127128136%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128125128132%_)))
               (_%E128126128151%_
                (lambda ()
                  (if (gx#stx-pair? _%e128125128132%_)
                      (let ((_%e128128128140%_
                             (gx#syntax-e _%e128125128132%_)))
                        (let ((_%hd128129128143%_ (##car _%e128128128140%_))
                              (_%tl128130128145%_ (##cdr _%e128128128140%_)))
                          (let ((_%body128148%_ _%tl128130128145%_))
                            (cons '%#begin-syntax
                                  (__call-with-parameters
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body128148%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%E128127128136%_)))))
          (_%E128126128151%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx128094%_)
        (let* ((_%e128095128102%_ _%stx128094%_)
               (_%E128097128106%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128095128102%_)))
               (_%E128096128120%_
                (lambda ()
                  (if (gx#stx-pair? _%e128095128102%_)
                      (let ((_%e128098128110%_
                             (gx#syntax-e _%e128095128102%_)))
                        (let ((_%hd128099128113%_ (##car _%e128098128110%_))
                              (_%tl128100128115%_ (##cdr _%e128098128110%_)))
                          (let ((_%body128118%_ _%tl128100128115%_))
                            (cons '%#begin-foreign _%body128118%_))))
                      (_%E128097128106%_)))))
          (_%E128096128120%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx128040%_)
        (let* ((_%e128041128054%_ _%stx128040%_)
               (_%E128043128058%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128041128054%_)))
               (_%E128042128090%_
                (lambda ()
                  (if (gx#stx-pair? _%e128041128054%_)
                      (let ((_%e128044128062%_
                             (gx#syntax-e _%e128041128054%_)))
                        (let ((_%hd128045128065%_ (##car _%e128044128062%_))
                              (_%tl128046128067%_ (##cdr _%e128044128062%_)))
                          (if (gx#stx-pair? _%tl128046128067%_)
                              (let ((_%e128047128070%_
                                     (gx#syntax-e _%tl128046128067%_)))
                                (let ((_%hd128048128073%_
                                       (##car _%e128047128070%_))
                                      (_%tl128049128075%_
                                       (##cdr _%e128047128070%_)))
                                  (let ((_%ann128078%_ _%hd128048128073%_))
                                    (if (gx#stx-pair? _%tl128049128075%_)
                                        (let ((_%e128050128080%_
                                               (gx#syntax-e
                                                _%tl128049128075%_)))
                                          (let ((_%hd128051128083%_
                                                 (##car _%e128050128080%_))
                                                (_%tl128052128085%_
                                                 (##cdr _%e128050128080%_)))
                                            (let ((_%expr128088%_
                                                   _%hd128051128083%_))
                                              (if (gx#stx-null?
                                                   _%tl128052128085%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr128088%_)
                                                  (_%E128043128058%_)))))
                                        (_%E128043128058%_)))))
                              (_%E128043128058%_))))
                      (_%E128043128058%_)))))
          (_%E128042128090%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx128010%_)
        (let* ((_%e128011128018%_ _%stx128010%_)
               (_%E128013128022%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128011128018%_)))
               (_%E128012128036%_
                (lambda ()
                  (if (gx#stx-pair? _%e128011128018%_)
                      (let ((_%e128014128026%_
                             (gx#syntax-e _%e128011128018%_)))
                        (let ((_%hd128015128029%_ (##car _%e128014128026%_))
                              (_%tl128016128031%_ (##cdr _%e128014128026%_)))
                          (let ((_%body128034%_ _%tl128016128031%_))
                            (cons '%#import _%body128034%_))))
                      (_%E128013128022%_)))))
          (_%E128012128036%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx127967%_)
        (let* ((_%e127968127978%_ _%stx127967%_)
               (_%E127970127982%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127968127978%_)))
               (_%E127969128006%_
                (lambda ()
                  (if (gx#stx-pair? _%e127968127978%_)
                      (let ((_%e127971127986%_
                             (gx#syntax-e _%e127968127978%_)))
                        (let ((_%hd127972127989%_ (##car _%e127971127986%_))
                              (_%tl127973127991%_ (##cdr _%e127971127986%_)))
                          (if (gx#stx-pair? _%tl127973127991%_)
                              (let ((_%e127974127994%_
                                     (gx#syntax-e _%tl127973127991%_)))
                                (let ((_%hd127975127997%_
                                       (##car _%e127974127994%_))
                                      (_%tl127976127999%_
                                       (##cdr _%e127974127994%_)))
                                  (let* ((_%hd128002%_ _%hd127975127997%_)
                                         (_%body128004%_ _%tl127976127999%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd128002%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body128004%_))))))
                              (_%E127970127982%_))))
                      (_%E127970127982%_)))))
          (_%E127969128006%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx127937%_)
        (let* ((_%e127938127945%_ _%stx127937%_)
               (_%E127940127949%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127938127945%_)))
               (_%E127939127963%_
                (lambda ()
                  (if (gx#stx-pair? _%e127938127945%_)
                      (let ((_%e127941127953%_
                             (gx#syntax-e _%e127938127945%_)))
                        (let ((_%hd127942127956%_ (##car _%e127941127953%_))
                              (_%tl127943127958%_ (##cdr _%e127941127953%_)))
                          (let ((_%body127961%_ _%tl127943127958%_))
                            (cons '%#export _%body127961%_))))
                      (_%E127940127949%_)))))
          (_%E127939127963%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx127907%_)
        (let* ((_%e127908127915%_ _%stx127907%_)
               (_%E127910127919%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127908127915%_)))
               (_%E127909127933%_
                (lambda ()
                  (if (gx#stx-pair? _%e127908127915%_)
                      (let ((_%e127911127923%_
                             (gx#syntax-e _%e127908127915%_)))
                        (let ((_%hd127912127926%_ (##car _%e127911127923%_))
                              (_%tl127913127928%_ (##cdr _%e127911127923%_)))
                          (let ((_%body127931%_ _%tl127913127928%_))
                            (cons '%#provide _%body127931%_))))
                      (_%E127910127919%_)))))
          (_%E127909127933%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx127877%_)
        (let* ((_%e127878127885%_ _%stx127877%_)
               (_%E127880127889%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127878127885%_)))
               (_%E127879127903%_
                (lambda ()
                  (if (gx#stx-pair? _%e127878127885%_)
                      (let ((_%e127881127893%_
                             (gx#syntax-e _%e127878127885%_)))
                        (let ((_%hd127882127896%_ (##car _%e127881127893%_))
                              (_%tl127883127898%_ (##cdr _%e127881127893%_)))
                          (let ((_%body127901%_ _%tl127883127898%_))
                            (cons '%#extern _%body127901%_))))
                      (_%E127880127889%_)))))
          (_%E127879127903%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx127823%_)
        (let* ((_%e127824127837%_ _%stx127823%_)
               (_%E127826127841%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127824127837%_)))
               (_%E127825127873%_
                (lambda ()
                  (if (gx#stx-pair? _%e127824127837%_)
                      (let ((_%e127827127845%_
                             (gx#syntax-e _%e127824127837%_)))
                        (let ((_%hd127828127848%_ (##car _%e127827127845%_))
                              (_%tl127829127850%_ (##cdr _%e127827127845%_)))
                          (if (gx#stx-pair? _%tl127829127850%_)
                              (let ((_%e127830127853%_
                                     (gx#syntax-e _%tl127829127850%_)))
                                (let ((_%hd127831127856%_
                                       (##car _%e127830127853%_))
                                      (_%tl127832127858%_
                                       (##cdr _%e127830127853%_)))
                                  (let ((_%hd127861%_ _%hd127831127856%_))
                                    (if (gx#stx-pair? _%tl127832127858%_)
                                        (let ((_%e127833127863%_
                                               (gx#syntax-e
                                                _%tl127832127858%_)))
                                          (let ((_%hd127834127866%_
                                                 (##car _%e127833127863%_))
                                                (_%tl127835127868%_
                                                 (##cdr _%e127833127863%_)))
                                            (let ((_%expr127871%_
                                                   _%hd127834127866%_))
                                              (if (gx#stx-null?
                                                   _%tl127835127868%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd127861%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr127871%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E127826127841%_)))))
                                        (_%E127826127841%_)))))
                              (_%E127826127841%_))))
                      (_%E127826127841%_)))))
          (_%E127825127873%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx127768%_)
        (let* ((_%e127769127782%_ _%stx127768%_)
               (_%E127771127786%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127769127782%_)))
               (_%E127770127819%_
                (lambda ()
                  (if (gx#stx-pair? _%e127769127782%_)
                      (let ((_%e127772127790%_
                             (gx#syntax-e _%e127769127782%_)))
                        (let ((_%hd127773127793%_ (##car _%e127772127790%_))
                              (_%tl127774127795%_ (##cdr _%e127772127790%_)))
                          (if (gx#stx-pair? _%tl127774127795%_)
                              (let ((_%e127775127798%_
                                     (gx#syntax-e _%tl127774127795%_)))
                                (let ((_%hd127776127801%_
                                       (##car _%e127775127798%_))
                                      (_%tl127777127803%_
                                       (##cdr _%e127775127798%_)))
                                  (let ((_%hd127806%_ _%hd127776127801%_))
                                    (if (gx#stx-pair? _%tl127777127803%_)
                                        (let ((_%e127778127808%_
                                               (gx#syntax-e
                                                _%tl127777127803%_)))
                                          (let ((_%hd127779127811%_
                                                 (##car _%e127778127808%_))
                                                (_%tl127780127813%_
                                                 (##cdr _%e127778127808%_)))
                                            (let ((_%expr127816%_
                                                   _%hd127779127811%_))
                                              (if (gx#stx-null?
                                                   _%tl127780127813%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd127806%_
                                                              (cons (__call-with-parameters
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr127816%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E127771127786%_)))))
                                        (_%E127771127786%_)))))
                              (_%E127771127786%_))))
                      (_%E127771127786%_)))))
          (_%E127770127819%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx127738%_)
        (let* ((_%e127739127746%_ _%stx127738%_)
               (_%E127741127750%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127739127746%_)))
               (_%E127740127764%_
                (lambda ()
                  (if (gx#stx-pair? _%e127739127746%_)
                      (let ((_%e127742127754%_
                             (gx#syntax-e _%e127739127746%_)))
                        (let ((_%hd127743127757%_ (##car _%e127742127754%_))
                              (_%tl127744127759%_ (##cdr _%e127742127754%_)))
                          (let ((_%body127762%_ _%tl127744127759%_))
                            (cons '%#define-alias _%body127762%_))))
                      (_%E127741127750%_)))))
          (_%E127740127764%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx127708%_)
        (let* ((_%e127709127716%_ _%stx127708%_)
               (_%E127711127720%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127709127716%_)))
               (_%E127710127734%_
                (lambda ()
                  (if (gx#stx-pair? _%e127709127716%_)
                      (let ((_%e127712127724%_
                             (gx#syntax-e _%e127709127716%_)))
                        (let ((_%hd127713127727%_ (##car _%e127712127724%_))
                              (_%tl127714127729%_ (##cdr _%e127712127724%_)))
                          (let ((_%body127732%_ _%tl127714127729%_))
                            (cons '%#define-runtime _%body127732%_))))
                      (_%E127711127720%_)))))
          (_%E127710127734%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx127678%_)
        (let* ((_%e127679127686%_ _%stx127678%_)
               (_%E127681127690%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127679127686%_)))
               (_%E127680127704%_
                (lambda ()
                  (if (gx#stx-pair? _%e127679127686%_)
                      (let ((_%e127682127694%_
                             (gx#syntax-e _%e127679127686%_)))
                        (let ((_%hd127683127697%_ (##car _%e127682127694%_))
                              (_%tl127684127699%_ (##cdr _%e127682127694%_)))
                          (let ((_%decls127702%_ _%tl127684127699%_))
                            (cons '%#declare _%decls127702%_))))
                      (_%E127681127690%_)))))
          (_%E127680127704%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx127648%_)
        (let* ((_%e127649127656%_ _%stx127648%_)
               (_%E127651127660%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127649127656%_)))
               (_%E127650127674%_
                (lambda ()
                  (if (gx#stx-pair? _%e127649127656%_)
                      (let ((_%e127652127664%_
                             (gx#syntax-e _%e127649127656%_)))
                        (let ((_%hd127653127667%_ (##car _%e127652127664%_))
                              (_%tl127654127669%_ (##cdr _%e127652127664%_)))
                          (let ((_%clause127672%_ _%tl127654127669%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause127672%_)))))
                      (_%E127651127660%_)))))
          (_%E127650127674%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx127605%_)
        (let* ((_%e127606127616%_ _%stx127605%_)
               (_%E127608127620%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127606127616%_)))
               (_%E127607127644%_
                (lambda ()
                  (if (gx#stx-pair? _%e127606127616%_)
                      (let ((_%e127609127624%_
                             (gx#syntax-e _%e127606127616%_)))
                        (let ((_%hd127610127627%_ (##car _%e127609127624%_))
                              (_%tl127611127629%_ (##cdr _%e127609127624%_)))
                          (let ((_%hd127632%_ _%hd127610127627%_))
                            (if (gx#stx-pair? _%tl127611127629%_)
                                (let ((_%e127612127634%_
                                       (gx#syntax-e _%tl127611127629%_)))
                                  (let ((_%hd127613127637%_
                                         (##car _%e127612127634%_))
                                        (_%tl127614127639%_
                                         (##cdr _%e127612127634%_)))
                                    (let ((_%body127642%_ _%hd127613127637%_))
                                      (if (gx#stx-null? _%tl127614127639%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd127632%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body127642%_)
                                                      '()))
                                          (_%E127608127620%_)))))
                                (_%E127608127620%_)))))
                      (_%E127608127620%_)))))
          (_%E127607127644%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx127575%_)
        (let* ((_%e127576127583%_ _%stx127575%_)
               (_%E127578127587%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127576127583%_)))
               (_%E127577127601%_
                (lambda ()
                  (if (gx#stx-pair? _%e127576127583%_)
                      (let ((_%e127579127591%_
                             (gx#syntax-e _%e127576127583%_)))
                        (let ((_%hd127580127594%_ (##car _%e127579127591%_))
                              (_%tl127581127596%_ (##cdr _%e127579127591%_)))
                          (let ((_%clauses127599%_ _%tl127581127596%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses127599%_)))))
                      (_%E127578127587%_)))))
          (_%E127577127601%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx127510%_ _%form127511%_)
        (let* ((_%e127512127525%_ _%stx127510%_)
               (_%E127514127529%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127512127525%_)))
               (_%E127513127561%_
                (lambda ()
                  (if (gx#stx-pair? _%e127512127525%_)
                      (let ((_%e127515127533%_
                             (gx#syntax-e _%e127512127525%_)))
                        (let ((_%hd127516127536%_ (##car _%e127515127533%_))
                              (_%tl127517127538%_ (##cdr _%e127515127533%_)))
                          (if (gx#stx-pair? _%tl127517127538%_)
                              (let ((_%e127518127541%_
                                     (gx#syntax-e _%tl127517127538%_)))
                                (let ((_%hd127519127544%_
                                       (##car _%e127518127541%_))
                                      (_%tl127520127546%_
                                       (##cdr _%e127518127541%_)))
                                  (let ((_%hd127549%_ _%hd127519127544%_))
                                    (if (gx#stx-pair? _%tl127520127546%_)
                                        (let ((_%e127521127551%_
                                               (gx#syntax-e
                                                _%tl127520127546%_)))
                                          (let ((_%hd127522127554%_
                                                 (##car _%e127521127551%_))
                                                (_%tl127523127556%_
                                                 (##cdr _%e127521127551%_)))
                                            (let ((_%body127559%_
                                                   _%hd127522127554%_))
                                              (if (gx#stx-null?
                                                   _%tl127523127556%_)
                                                  (cons _%form127511%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd127549%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body127559%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E127514127529%_)))))
                                        (_%E127514127529%_)))))
                              (_%E127514127529%_))))
                      (_%E127514127529%_)))))
          (_%E127513127561%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx127568%_)
        (let ((_%form127570%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx127568%_ _%form127570%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g128397_
        (let ((_g128396_ (##length _g128397_)))
          (cond ((##fx= _g128396_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g128397_))
                ((##fx= _g128396_ 2)
                 (apply gx#core-compile-top-let-values%__% _g128397_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g128397_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx127507%_)
        (gx#core-compile-top-let-values%__% _%stx127507%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx127505%_)
        (gx#core-compile-top-let-values%__% _%stx127505%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx127464%_)
        (let* ((_%e127465127475%_ _%stx127464%_)
               (_%E127467127479%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127465127475%_)))
               (_%E127466127501%_
                (lambda ()
                  (if (gx#stx-pair? _%e127465127475%_)
                      (let ((_%e127468127483%_
                             (gx#syntax-e _%e127465127475%_)))
                        (let ((_%hd127469127486%_ (##car _%e127468127483%_))
                              (_%tl127470127488%_ (##cdr _%e127468127483%_)))
                          (if (gx#stx-pair? _%tl127470127488%_)
                              (let ((_%e127471127491%_
                                     (gx#syntax-e _%tl127470127488%_)))
                                (let ((_%hd127472127494%_
                                       (##car _%e127471127491%_))
                                      (_%tl127473127496%_
                                       (##cdr _%e127471127491%_)))
                                  (let ((_%e127499%_ _%hd127472127494%_))
                                    (if (gx#stx-null? _%tl127473127496%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e127499%_)
                                                    '()))
                                        (_%E127467127479%_)))))
                              (_%E127467127479%_))))
                      (_%E127467127479%_)))))
          (_%E127466127501%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx127423%_)
        (let* ((_%e127424127434%_ _%stx127423%_)
               (_%E127426127438%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127424127434%_)))
               (_%E127425127460%_
                (lambda ()
                  (if (gx#stx-pair? _%e127424127434%_)
                      (let ((_%e127427127442%_
                             (gx#syntax-e _%e127424127434%_)))
                        (let ((_%hd127428127445%_ (##car _%e127427127442%_))
                              (_%tl127429127447%_ (##cdr _%e127427127442%_)))
                          (if (gx#stx-pair? _%tl127429127447%_)
                              (let ((_%e127430127450%_
                                     (gx#syntax-e _%tl127429127447%_)))
                                (let ((_%hd127431127453%_
                                       (##car _%e127430127450%_))
                                      (_%tl127432127455%_
                                       (##cdr _%e127430127450%_)))
                                  (let ((_%e127458%_ _%hd127431127453%_))
                                    (if (gx#stx-null? _%tl127432127455%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e127458%_)
                                                    '()))
                                        (_%E127426127438%_)))))
                              (_%E127426127438%_))))
                      (_%E127426127438%_)))))
          (_%E127425127460%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx127380%_)
        (let* ((_%e127381127391%_ _%stx127380%_)
               (_%E127383127395%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127381127391%_)))
               (_%E127382127419%_
                (lambda ()
                  (if (gx#stx-pair? _%e127381127391%_)
                      (let ((_%e127384127399%_
                             (gx#syntax-e _%e127381127391%_)))
                        (let ((_%hd127385127402%_ (##car _%e127384127399%_))
                              (_%tl127386127404%_ (##cdr _%e127384127399%_)))
                          (if (gx#stx-pair? _%tl127386127404%_)
                              (let ((_%e127387127407%_
                                     (gx#syntax-e _%tl127386127404%_)))
                                (let ((_%hd127388127410%_
                                       (##car _%e127387127407%_))
                                      (_%tl127389127412%_
                                       (##cdr _%e127387127407%_)))
                                  (let* ((_%rator127415%_ _%hd127388127410%_)
                                         (_%args127417%_ _%tl127389127412%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator127415%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args127417%_))))))
                              (_%E127383127395%_))))
                      (_%E127383127395%_)))))
          (_%E127382127419%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx127313%_)
        (let* ((_%e127314127330%_ _%stx127313%_)
               (_%E127316127334%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127314127330%_)))
               (_%E127315127376%_
                (lambda ()
                  (if (gx#stx-pair? _%e127314127330%_)
                      (let ((_%e127317127338%_
                             (gx#syntax-e _%e127314127330%_)))
                        (let ((_%hd127318127341%_ (##car _%e127317127338%_))
                              (_%tl127319127343%_ (##cdr _%e127317127338%_)))
                          (if (gx#stx-pair? _%tl127319127343%_)
                              (let ((_%e127320127346%_
                                     (gx#syntax-e _%tl127319127343%_)))
                                (let ((_%hd127321127349%_
                                       (##car _%e127320127346%_))
                                      (_%tl127322127351%_
                                       (##cdr _%e127320127346%_)))
                                  (let ((_%test127354%_ _%hd127321127349%_))
                                    (if (gx#stx-pair? _%tl127322127351%_)
                                        (let ((_%e127323127356%_
                                               (gx#syntax-e
                                                _%tl127322127351%_)))
                                          (let ((_%hd127324127359%_
                                                 (##car _%e127323127356%_))
                                                (_%tl127325127361%_
                                                 (##cdr _%e127323127356%_)))
                                            (let ((_%K127364%_
                                                   _%hd127324127359%_))
                                              (if (gx#stx-pair?
                                                   _%tl127325127361%_)
                                                  (let ((_%e127326127366%_
                                                         (gx#syntax-e
                                                          _%tl127325127361%_)))
                                                    (let ((_%hd127327127369%_
                                                           (##car _%e127326127366%_))
                                                          (_%tl127328127371%_
                                                           (##cdr _%e127326127366%_)))
                                                      (let ((_%E127374%_
                                                             _%hd127327127369%_))
                                                        (if (gx#stx-null?
                                                             _%tl127328127371%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test127354%_)
                                (cons (gx#core-compile-top-syntax _%K127364%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E127374%_)
                                            '()))))
                    (_%E127316127334%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E127316127334%_)))))
                                        (_%E127316127334%_)))))
                              (_%E127316127334%_))))
                      (_%E127316127334%_)))))
          (_%E127315127376%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx127272%_)
        (let* ((_%e127273127283%_ _%stx127272%_)
               (_%E127275127287%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127273127283%_)))
               (_%E127274127309%_
                (lambda ()
                  (if (gx#stx-pair? _%e127273127283%_)
                      (let ((_%e127276127291%_
                             (gx#syntax-e _%e127273127283%_)))
                        (let ((_%hd127277127294%_ (##car _%e127276127291%_))
                              (_%tl127278127296%_ (##cdr _%e127276127291%_)))
                          (if (gx#stx-pair? _%tl127278127296%_)
                              (let ((_%e127279127299%_
                                     (gx#syntax-e _%tl127278127296%_)))
                                (let ((_%hd127280127302%_
                                       (##car _%e127279127299%_))
                                      (_%tl127281127304%_
                                       (##cdr _%e127279127299%_)))
                                  (let ((_%id127307%_ _%hd127280127302%_))
                                    (if (gx#stx-null? _%tl127281127304%_)
                                        (if (gx#identifier? _%id127307%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id127307%_)
                                                        '()))
                                            (_%E127275127287%_))
                                        (_%E127275127287%_)))))
                              (_%E127275127287%_))))
                      (_%E127275127287%_)))))
          (_%E127274127309%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx127218%_)
        (let* ((_%e127219127232%_ _%stx127218%_)
               (_%E127221127236%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127219127232%_)))
               (_%E127220127268%_
                (lambda ()
                  (if (gx#stx-pair? _%e127219127232%_)
                      (let ((_%e127222127240%_
                             (gx#syntax-e _%e127219127232%_)))
                        (let ((_%hd127223127243%_ (##car _%e127222127240%_))
                              (_%tl127224127245%_ (##cdr _%e127222127240%_)))
                          (if (gx#stx-pair? _%tl127224127245%_)
                              (let ((_%e127225127248%_
                                     (gx#syntax-e _%tl127224127245%_)))
                                (let ((_%hd127226127251%_
                                       (##car _%e127225127248%_))
                                      (_%tl127227127253%_
                                       (##cdr _%e127225127248%_)))
                                  (let ((_%id127256%_ _%hd127226127251%_))
                                    (if (gx#stx-pair? _%tl127227127253%_)
                                        (let ((_%e127228127258%_
                                               (gx#syntax-e
                                                _%tl127227127253%_)))
                                          (let ((_%hd127229127261%_
                                                 (##car _%e127228127258%_))
                                                (_%tl127230127263%_
                                                 (##cdr _%e127228127258%_)))
                                            (let ((_%expr127266%_
                                                   _%hd127229127261%_))
                                              (if (gx#stx-null?
                                                   _%tl127230127263%_)
                                                  (if (gx#identifier?
                                                       _%id127256%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id127256%_)
                          (cons (gx#core-compile-top-syntax _%expr127266%_)
                                '())))
              (_%E127221127236%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E127221127236%_)))))
                                        (_%E127221127236%_)))))
                              (_%E127221127236%_))))
                      (_%E127221127236%_)))))
          (_%E127220127268%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id127212%_)
        (let ((_%$e127214%_ (gx#resolve-identifier__0 _%id127212%_)))
          (if _%$e127214%_
              (##unchecked-structure-ref _%$e127214%_ '1 '#f '#f)
              _%id127212%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd127210%_)
        (if (gx#identifier? _%hd127210%_)
            (gx#core-compile-top-runtime-ref _%hd127210%_)
            '#f)))))
