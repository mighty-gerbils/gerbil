(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1779274772)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx188193%_)
        (let* ((_%e188194188201%_ _%stx188193%_)
               (_%E188196188205%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e188194188201%_)))
               (_%E188195188219%_
                (lambda ()
                  (if (gx#stx-pair? _%e188194188201%_)
                      (let ((_%e188197188209%_
                             (gx#syntax-e _%e188194188201%_)))
                        (let ((_%hd188198188212%_ (##car _%e188197188209%_))
                              (_%tl188199188214%_ (##cdr _%e188197188209%_)))
                          (let* ((_%form188217%_ _%hd188198188212%_)
                                 (__self188222
                                  (gx#syntax-local-e__0 _%form188217%_))
                                 (__method188223
                                  (__method-ref
                                   __self188222
                                   'compile-top-syntax)))
                            (if __method188223
                                (__method188223 __self188222 _%stx188193%_)
                                (begin
                                  (error '"Missing method"
                                         __self188222
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%E188196188205%_)))))
          (_%E188195188219%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self188142%_ _%stx188143%_)
        (let* ((_%self188146%_ _%self188142%_)
               (_%self188155188163%_ _%self188146%_)
               (_%E188157188166%_
                (lambda ()
                  (error '"No clause matching"
                         _%self188155188163%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K188158188179%_
                (lambda (_%K188169%_)
                  (let ((_%$e188171%_ (gx#stx-source _%stx188143%_)))
                    (if _%$e188171%_
                        ((lambda (_%g188173188175%_)
                           (gx#stx-wrap-source
                            (_%K188169%_ _%stx188143%_)
                            _%g188173188175%_))
                         _%$e188171%_)
                        (_%K188169%_ _%stx188143%_)))))
               (_%e188159188182%_
                (##unchecked-structure-ref _%self188155188163%_ '1 '#f '#f))
               (_%e188160188185%_
                (##unchecked-structure-ref _%self188155188163%_ '2 '#f '#f))
               (_%e188161188188%_
                (##unchecked-structure-ref _%self188155188163%_ '3 '#f '#f))
               (_%K188191%_ _%e188161188188%_))
          (_%K188158188179%_ _%K188191%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx188016%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx188016%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx187986%_)
        (let* ((_%e187987187994%_ _%stx187986%_)
               (_%E187989187998%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187987187994%_)))
               (_%E187988188012%_
                (lambda ()
                  (if (gx#stx-pair? _%e187987187994%_)
                      (let ((_%e187990188002%_
                             (gx#syntax-e _%e187987187994%_)))
                        (let ((_%hd187991188005%_ (##car _%e187990188002%_))
                              (_%tl187992188007%_ (##cdr _%e187990188002%_)))
                          (let ((_%body188010%_ _%tl187992188007%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body188010%_)))))
                      (_%E187989187998%_)))))
          (_%E187988188012%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx187955%_)
        (let* ((_%e187956187963%_ _%stx187955%_)
               (_%E187958187967%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187956187963%_)))
               (_%E187957187982%_
                (lambda ()
                  (if (gx#stx-pair? _%e187956187963%_)
                      (let ((_%e187959187971%_
                             (gx#syntax-e _%e187956187963%_)))
                        (let ((_%hd187960187974%_ (##car _%e187959187971%_))
                              (_%tl187961187976%_ (##cdr _%e187959187971%_)))
                          (let ((_%body187979%_ _%tl187961187976%_))
                            (cons '%#begin-syntax
                                  (call-with-parameters__1
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body187979%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%E187958187967%_)))))
          (_%E187957187982%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx187925%_)
        (let* ((_%e187926187933%_ _%stx187925%_)
               (_%E187928187937%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187926187933%_)))
               (_%E187927187951%_
                (lambda ()
                  (if (gx#stx-pair? _%e187926187933%_)
                      (let ((_%e187929187941%_
                             (gx#syntax-e _%e187926187933%_)))
                        (let ((_%hd187930187944%_ (##car _%e187929187941%_))
                              (_%tl187931187946%_ (##cdr _%e187929187941%_)))
                          (let ((_%body187949%_ _%tl187931187946%_))
                            (cons '%#begin-foreign _%body187949%_))))
                      (_%E187928187937%_)))))
          (_%E187927187951%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx187871%_)
        (let* ((_%e187872187885%_ _%stx187871%_)
               (_%E187874187889%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187872187885%_)))
               (_%E187873187921%_
                (lambda ()
                  (if (gx#stx-pair? _%e187872187885%_)
                      (let ((_%e187875187893%_
                             (gx#syntax-e _%e187872187885%_)))
                        (let ((_%hd187876187896%_ (##car _%e187875187893%_))
                              (_%tl187877187898%_ (##cdr _%e187875187893%_)))
                          (if (gx#stx-pair? _%tl187877187898%_)
                              (let ((_%e187878187901%_
                                     (gx#syntax-e _%tl187877187898%_)))
                                (let ((_%hd187879187904%_
                                       (##car _%e187878187901%_))
                                      (_%tl187880187906%_
                                       (##cdr _%e187878187901%_)))
                                  (let ((_%ann187909%_ _%hd187879187904%_))
                                    (if (gx#stx-pair? _%tl187880187906%_)
                                        (let ((_%e187881187911%_
                                               (gx#syntax-e
                                                _%tl187880187906%_)))
                                          (let ((_%hd187882187914%_
                                                 (##car _%e187881187911%_))
                                                (_%tl187883187916%_
                                                 (##cdr _%e187881187911%_)))
                                            (let ((_%expr187919%_
                                                   _%hd187882187914%_))
                                              (if (gx#stx-null?
                                                   _%tl187883187916%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr187919%_)
                                                  (_%E187874187889%_)))))
                                        (_%E187874187889%_)))))
                              (_%E187874187889%_))))
                      (_%E187874187889%_)))))
          (_%E187873187921%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx187841%_)
        (let* ((_%e187842187849%_ _%stx187841%_)
               (_%E187844187853%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187842187849%_)))
               (_%E187843187867%_
                (lambda ()
                  (if (gx#stx-pair? _%e187842187849%_)
                      (let ((_%e187845187857%_
                             (gx#syntax-e _%e187842187849%_)))
                        (let ((_%hd187846187860%_ (##car _%e187845187857%_))
                              (_%tl187847187862%_ (##cdr _%e187845187857%_)))
                          (let ((_%body187865%_ _%tl187847187862%_))
                            (cons '%#import _%body187865%_))))
                      (_%E187844187853%_)))))
          (_%E187843187867%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx187798%_)
        (let* ((_%e187799187809%_ _%stx187798%_)
               (_%E187801187813%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187799187809%_)))
               (_%E187800187837%_
                (lambda ()
                  (if (gx#stx-pair? _%e187799187809%_)
                      (let ((_%e187802187817%_
                             (gx#syntax-e _%e187799187809%_)))
                        (let ((_%hd187803187820%_ (##car _%e187802187817%_))
                              (_%tl187804187822%_ (##cdr _%e187802187817%_)))
                          (if (gx#stx-pair? _%tl187804187822%_)
                              (let ((_%e187805187825%_
                                     (gx#syntax-e _%tl187804187822%_)))
                                (let ((_%hd187806187828%_
                                       (##car _%e187805187825%_))
                                      (_%tl187807187830%_
                                       (##cdr _%e187805187825%_)))
                                  (let* ((_%hd187833%_ _%hd187806187828%_)
                                         (_%body187835%_ _%tl187807187830%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd187833%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body187835%_))))))
                              (_%E187801187813%_))))
                      (_%E187801187813%_)))))
          (_%E187800187837%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx187768%_)
        (let* ((_%e187769187776%_ _%stx187768%_)
               (_%E187771187780%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187769187776%_)))
               (_%E187770187794%_
                (lambda ()
                  (if (gx#stx-pair? _%e187769187776%_)
                      (let ((_%e187772187784%_
                             (gx#syntax-e _%e187769187776%_)))
                        (let ((_%hd187773187787%_ (##car _%e187772187784%_))
                              (_%tl187774187789%_ (##cdr _%e187772187784%_)))
                          (let ((_%body187792%_ _%tl187774187789%_))
                            (cons '%#export _%body187792%_))))
                      (_%E187771187780%_)))))
          (_%E187770187794%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx187738%_)
        (let* ((_%e187739187746%_ _%stx187738%_)
               (_%E187741187750%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187739187746%_)))
               (_%E187740187764%_
                (lambda ()
                  (if (gx#stx-pair? _%e187739187746%_)
                      (let ((_%e187742187754%_
                             (gx#syntax-e _%e187739187746%_)))
                        (let ((_%hd187743187757%_ (##car _%e187742187754%_))
                              (_%tl187744187759%_ (##cdr _%e187742187754%_)))
                          (let ((_%body187762%_ _%tl187744187759%_))
                            (cons '%#provide _%body187762%_))))
                      (_%E187741187750%_)))))
          (_%E187740187764%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx187708%_)
        (let* ((_%e187709187716%_ _%stx187708%_)
               (_%E187711187720%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187709187716%_)))
               (_%E187710187734%_
                (lambda ()
                  (if (gx#stx-pair? _%e187709187716%_)
                      (let ((_%e187712187724%_
                             (gx#syntax-e _%e187709187716%_)))
                        (let ((_%hd187713187727%_ (##car _%e187712187724%_))
                              (_%tl187714187729%_ (##cdr _%e187712187724%_)))
                          (let ((_%body187732%_ _%tl187714187729%_))
                            (cons '%#extern _%body187732%_))))
                      (_%E187711187720%_)))))
          (_%E187710187734%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx187654%_)
        (let* ((_%e187655187668%_ _%stx187654%_)
               (_%E187657187672%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187655187668%_)))
               (_%E187656187704%_
                (lambda ()
                  (if (gx#stx-pair? _%e187655187668%_)
                      (let ((_%e187658187676%_
                             (gx#syntax-e _%e187655187668%_)))
                        (let ((_%hd187659187679%_ (##car _%e187658187676%_))
                              (_%tl187660187681%_ (##cdr _%e187658187676%_)))
                          (if (gx#stx-pair? _%tl187660187681%_)
                              (let ((_%e187661187684%_
                                     (gx#syntax-e _%tl187660187681%_)))
                                (let ((_%hd187662187687%_
                                       (##car _%e187661187684%_))
                                      (_%tl187663187689%_
                                       (##cdr _%e187661187684%_)))
                                  (let ((_%hd187692%_ _%hd187662187687%_))
                                    (if (gx#stx-pair? _%tl187663187689%_)
                                        (let ((_%e187664187694%_
                                               (gx#syntax-e
                                                _%tl187663187689%_)))
                                          (let ((_%hd187665187697%_
                                                 (##car _%e187664187694%_))
                                                (_%tl187666187699%_
                                                 (##cdr _%e187664187694%_)))
                                            (let ((_%expr187702%_
                                                   _%hd187665187697%_))
                                              (if (gx#stx-null?
                                                   _%tl187666187699%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd187692%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr187702%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E187657187672%_)))))
                                        (_%E187657187672%_)))))
                              (_%E187657187672%_))))
                      (_%E187657187672%_)))))
          (_%E187656187704%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx187599%_)
        (let* ((_%e187600187613%_ _%stx187599%_)
               (_%E187602187617%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187600187613%_)))
               (_%E187601187650%_
                (lambda ()
                  (if (gx#stx-pair? _%e187600187613%_)
                      (let ((_%e187603187621%_
                             (gx#syntax-e _%e187600187613%_)))
                        (let ((_%hd187604187624%_ (##car _%e187603187621%_))
                              (_%tl187605187626%_ (##cdr _%e187603187621%_)))
                          (if (gx#stx-pair? _%tl187605187626%_)
                              (let ((_%e187606187629%_
                                     (gx#syntax-e _%tl187605187626%_)))
                                (let ((_%hd187607187632%_
                                       (##car _%e187606187629%_))
                                      (_%tl187608187634%_
                                       (##cdr _%e187606187629%_)))
                                  (let ((_%hd187637%_ _%hd187607187632%_))
                                    (if (gx#stx-pair? _%tl187608187634%_)
                                        (let ((_%e187609187639%_
                                               (gx#syntax-e
                                                _%tl187608187634%_)))
                                          (let ((_%hd187610187642%_
                                                 (##car _%e187609187639%_))
                                                (_%tl187611187644%_
                                                 (##cdr _%e187609187639%_)))
                                            (let ((_%expr187647%_
                                                   _%hd187610187642%_))
                                              (if (gx#stx-null?
                                                   _%tl187611187644%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd187637%_
                                                              (cons (call-with-parameters__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr187647%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E187602187617%_)))))
                                        (_%E187602187617%_)))))
                              (_%E187602187617%_))))
                      (_%E187602187617%_)))))
          (_%E187601187650%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx187569%_)
        (let* ((_%e187570187577%_ _%stx187569%_)
               (_%E187572187581%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187570187577%_)))
               (_%E187571187595%_
                (lambda ()
                  (if (gx#stx-pair? _%e187570187577%_)
                      (let ((_%e187573187585%_
                             (gx#syntax-e _%e187570187577%_)))
                        (let ((_%hd187574187588%_ (##car _%e187573187585%_))
                              (_%tl187575187590%_ (##cdr _%e187573187585%_)))
                          (let ((_%body187593%_ _%tl187575187590%_))
                            (cons '%#define-alias _%body187593%_))))
                      (_%E187572187581%_)))))
          (_%E187571187595%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx187539%_)
        (let* ((_%e187540187547%_ _%stx187539%_)
               (_%E187542187551%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187540187547%_)))
               (_%E187541187565%_
                (lambda ()
                  (if (gx#stx-pair? _%e187540187547%_)
                      (let ((_%e187543187555%_
                             (gx#syntax-e _%e187540187547%_)))
                        (let ((_%hd187544187558%_ (##car _%e187543187555%_))
                              (_%tl187545187560%_ (##cdr _%e187543187555%_)))
                          (let ((_%body187563%_ _%tl187545187560%_))
                            (cons '%#define-runtime _%body187563%_))))
                      (_%E187542187551%_)))))
          (_%E187541187565%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx187509%_)
        (let* ((_%e187510187517%_ _%stx187509%_)
               (_%E187512187521%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187510187517%_)))
               (_%E187511187535%_
                (lambda ()
                  (if (gx#stx-pair? _%e187510187517%_)
                      (let ((_%e187513187525%_
                             (gx#syntax-e _%e187510187517%_)))
                        (let ((_%hd187514187528%_ (##car _%e187513187525%_))
                              (_%tl187515187530%_ (##cdr _%e187513187525%_)))
                          (let ((_%decls187533%_ _%tl187515187530%_))
                            (cons '%#declare _%decls187533%_))))
                      (_%E187512187521%_)))))
          (_%E187511187535%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx187479%_)
        (let* ((_%e187480187487%_ _%stx187479%_)
               (_%E187482187491%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187480187487%_)))
               (_%E187481187505%_
                (lambda ()
                  (if (gx#stx-pair? _%e187480187487%_)
                      (let ((_%e187483187495%_
                             (gx#syntax-e _%e187480187487%_)))
                        (let ((_%hd187484187498%_ (##car _%e187483187495%_))
                              (_%tl187485187500%_ (##cdr _%e187483187495%_)))
                          (let ((_%clause187503%_ _%tl187485187500%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause187503%_)))))
                      (_%E187482187491%_)))))
          (_%E187481187505%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx187436%_)
        (let* ((_%e187437187447%_ _%stx187436%_)
               (_%E187439187451%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187437187447%_)))
               (_%E187438187475%_
                (lambda ()
                  (if (gx#stx-pair? _%e187437187447%_)
                      (let ((_%e187440187455%_
                             (gx#syntax-e _%e187437187447%_)))
                        (let ((_%hd187441187458%_ (##car _%e187440187455%_))
                              (_%tl187442187460%_ (##cdr _%e187440187455%_)))
                          (let ((_%hd187463%_ _%hd187441187458%_))
                            (if (gx#stx-pair? _%tl187442187460%_)
                                (let ((_%e187443187465%_
                                       (gx#syntax-e _%tl187442187460%_)))
                                  (let ((_%hd187444187468%_
                                         (##car _%e187443187465%_))
                                        (_%tl187445187470%_
                                         (##cdr _%e187443187465%_)))
                                    (let ((_%body187473%_ _%hd187444187468%_))
                                      (if (gx#stx-null? _%tl187445187470%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd187463%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body187473%_)
                                                      '()))
                                          (_%E187439187451%_)))))
                                (_%E187439187451%_)))))
                      (_%E187439187451%_)))))
          (_%E187438187475%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx187406%_)
        (let* ((_%e187407187414%_ _%stx187406%_)
               (_%E187409187418%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187407187414%_)))
               (_%E187408187432%_
                (lambda ()
                  (if (gx#stx-pair? _%e187407187414%_)
                      (let ((_%e187410187422%_
                             (gx#syntax-e _%e187407187414%_)))
                        (let ((_%hd187411187425%_ (##car _%e187410187422%_))
                              (_%tl187412187427%_ (##cdr _%e187410187422%_)))
                          (let ((_%clauses187430%_ _%tl187412187427%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses187430%_)))))
                      (_%E187409187418%_)))))
          (_%E187408187432%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx187341%_ _%form187342%_)
        (let* ((_%e187343187356%_ _%stx187341%_)
               (_%E187345187360%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187343187356%_)))
               (_%E187344187392%_
                (lambda ()
                  (if (gx#stx-pair? _%e187343187356%_)
                      (let ((_%e187346187364%_
                             (gx#syntax-e _%e187343187356%_)))
                        (let ((_%hd187347187367%_ (##car _%e187346187364%_))
                              (_%tl187348187369%_ (##cdr _%e187346187364%_)))
                          (if (gx#stx-pair? _%tl187348187369%_)
                              (let ((_%e187349187372%_
                                     (gx#syntax-e _%tl187348187369%_)))
                                (let ((_%hd187350187375%_
                                       (##car _%e187349187372%_))
                                      (_%tl187351187377%_
                                       (##cdr _%e187349187372%_)))
                                  (let ((_%hd187380%_ _%hd187350187375%_))
                                    (if (gx#stx-pair? _%tl187351187377%_)
                                        (let ((_%e187352187382%_
                                               (gx#syntax-e
                                                _%tl187351187377%_)))
                                          (let ((_%hd187353187385%_
                                                 (##car _%e187352187382%_))
                                                (_%tl187354187387%_
                                                 (##cdr _%e187352187382%_)))
                                            (let ((_%body187390%_
                                                   _%hd187353187385%_))
                                              (if (gx#stx-null?
                                                   _%tl187354187387%_)
                                                  (cons _%form187342%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd187380%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body187390%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E187345187360%_)))))
                                        (_%E187345187360%_)))))
                              (_%E187345187360%_))))
                      (_%E187345187360%_)))))
          (_%E187344187392%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx187399%_)
        (let ((_%form187401%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx187399%_ _%form187401%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g188224_
        (let ((_g188225_ (##length _g188224_)))
          (cond ((##fx= _g188225_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g188224_))
                ((##fx= _g188225_ 2)
                 (apply gx#core-compile-top-let-values%__% _g188224_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g188224_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx187338%_)
        (gx#core-compile-top-let-values%__% _%stx187338%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx187336%_)
        (gx#core-compile-top-let-values%__% _%stx187336%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx187295%_)
        (let* ((_%e187296187306%_ _%stx187295%_)
               (_%E187298187310%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187296187306%_)))
               (_%E187297187332%_
                (lambda ()
                  (if (gx#stx-pair? _%e187296187306%_)
                      (let ((_%e187299187314%_
                             (gx#syntax-e _%e187296187306%_)))
                        (let ((_%hd187300187317%_ (##car _%e187299187314%_))
                              (_%tl187301187319%_ (##cdr _%e187299187314%_)))
                          (if (gx#stx-pair? _%tl187301187319%_)
                              (let ((_%e187302187322%_
                                     (gx#syntax-e _%tl187301187319%_)))
                                (let ((_%hd187303187325%_
                                       (##car _%e187302187322%_))
                                      (_%tl187304187327%_
                                       (##cdr _%e187302187322%_)))
                                  (let ((_%e187330%_ _%hd187303187325%_))
                                    (if (gx#stx-null? _%tl187304187327%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e187330%_)
                                                    '()))
                                        (_%E187298187310%_)))))
                              (_%E187298187310%_))))
                      (_%E187298187310%_)))))
          (_%E187297187332%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx187254%_)
        (let* ((_%e187255187265%_ _%stx187254%_)
               (_%E187257187269%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187255187265%_)))
               (_%E187256187291%_
                (lambda ()
                  (if (gx#stx-pair? _%e187255187265%_)
                      (let ((_%e187258187273%_
                             (gx#syntax-e _%e187255187265%_)))
                        (let ((_%hd187259187276%_ (##car _%e187258187273%_))
                              (_%tl187260187278%_ (##cdr _%e187258187273%_)))
                          (if (gx#stx-pair? _%tl187260187278%_)
                              (let ((_%e187261187281%_
                                     (gx#syntax-e _%tl187260187278%_)))
                                (let ((_%hd187262187284%_
                                       (##car _%e187261187281%_))
                                      (_%tl187263187286%_
                                       (##cdr _%e187261187281%_)))
                                  (let ((_%e187289%_ _%hd187262187284%_))
                                    (if (gx#stx-null? _%tl187263187286%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e187289%_)
                                                    '()))
                                        (_%E187257187269%_)))))
                              (_%E187257187269%_))))
                      (_%E187257187269%_)))))
          (_%E187256187291%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx187211%_)
        (let* ((_%e187212187222%_ _%stx187211%_)
               (_%E187214187226%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187212187222%_)))
               (_%E187213187250%_
                (lambda ()
                  (if (gx#stx-pair? _%e187212187222%_)
                      (let ((_%e187215187230%_
                             (gx#syntax-e _%e187212187222%_)))
                        (let ((_%hd187216187233%_ (##car _%e187215187230%_))
                              (_%tl187217187235%_ (##cdr _%e187215187230%_)))
                          (if (gx#stx-pair? _%tl187217187235%_)
                              (let ((_%e187218187238%_
                                     (gx#syntax-e _%tl187217187235%_)))
                                (let ((_%hd187219187241%_
                                       (##car _%e187218187238%_))
                                      (_%tl187220187243%_
                                       (##cdr _%e187218187238%_)))
                                  (let* ((_%rator187246%_ _%hd187219187241%_)
                                         (_%args187248%_ _%tl187220187243%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator187246%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args187248%_))))))
                              (_%E187214187226%_))))
                      (_%E187214187226%_)))))
          (_%E187213187250%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx187144%_)
        (let* ((_%e187145187161%_ _%stx187144%_)
               (_%E187147187165%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187145187161%_)))
               (_%E187146187207%_
                (lambda ()
                  (if (gx#stx-pair? _%e187145187161%_)
                      (let ((_%e187148187169%_
                             (gx#syntax-e _%e187145187161%_)))
                        (let ((_%hd187149187172%_ (##car _%e187148187169%_))
                              (_%tl187150187174%_ (##cdr _%e187148187169%_)))
                          (if (gx#stx-pair? _%tl187150187174%_)
                              (let ((_%e187151187177%_
                                     (gx#syntax-e _%tl187150187174%_)))
                                (let ((_%hd187152187180%_
                                       (##car _%e187151187177%_))
                                      (_%tl187153187182%_
                                       (##cdr _%e187151187177%_)))
                                  (let ((_%test187185%_ _%hd187152187180%_))
                                    (if (gx#stx-pair? _%tl187153187182%_)
                                        (let ((_%e187154187187%_
                                               (gx#syntax-e
                                                _%tl187153187182%_)))
                                          (let ((_%hd187155187190%_
                                                 (##car _%e187154187187%_))
                                                (_%tl187156187192%_
                                                 (##cdr _%e187154187187%_)))
                                            (let ((_%K187195%_
                                                   _%hd187155187190%_))
                                              (if (gx#stx-pair?
                                                   _%tl187156187192%_)
                                                  (let ((_%e187157187197%_
                                                         (gx#syntax-e
                                                          _%tl187156187192%_)))
                                                    (let ((_%hd187158187200%_
                                                           (##car _%e187157187197%_))
                                                          (_%tl187159187202%_
                                                           (##cdr _%e187157187197%_)))
                                                      (let ((_%E187205%_
                                                             _%hd187158187200%_))
                                                        (if (gx#stx-null?
                                                             _%tl187159187202%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test187185%_)
                                (cons (gx#core-compile-top-syntax _%K187195%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E187205%_)
                                            '()))))
                    (_%E187147187165%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E187147187165%_)))))
                                        (_%E187147187165%_)))))
                              (_%E187147187165%_))))
                      (_%E187147187165%_)))))
          (_%E187146187207%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx187103%_)
        (let* ((_%e187104187114%_ _%stx187103%_)
               (_%E187106187118%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187104187114%_)))
               (_%E187105187140%_
                (lambda ()
                  (if (gx#stx-pair? _%e187104187114%_)
                      (let ((_%e187107187122%_
                             (gx#syntax-e _%e187104187114%_)))
                        (let ((_%hd187108187125%_ (##car _%e187107187122%_))
                              (_%tl187109187127%_ (##cdr _%e187107187122%_)))
                          (if (gx#stx-pair? _%tl187109187127%_)
                              (let ((_%e187110187130%_
                                     (gx#syntax-e _%tl187109187127%_)))
                                (let ((_%hd187111187133%_
                                       (##car _%e187110187130%_))
                                      (_%tl187112187135%_
                                       (##cdr _%e187110187130%_)))
                                  (let ((_%id187138%_ _%hd187111187133%_))
                                    (if (gx#stx-null? _%tl187112187135%_)
                                        (if (gx#identifier? _%id187138%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id187138%_)
                                                        '()))
                                            (_%E187106187118%_))
                                        (_%E187106187118%_)))))
                              (_%E187106187118%_))))
                      (_%E187106187118%_)))))
          (_%E187105187140%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx187049%_)
        (let* ((_%e187050187063%_ _%stx187049%_)
               (_%E187052187067%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187050187063%_)))
               (_%E187051187099%_
                (lambda ()
                  (if (gx#stx-pair? _%e187050187063%_)
                      (let ((_%e187053187071%_
                             (gx#syntax-e _%e187050187063%_)))
                        (let ((_%hd187054187074%_ (##car _%e187053187071%_))
                              (_%tl187055187076%_ (##cdr _%e187053187071%_)))
                          (if (gx#stx-pair? _%tl187055187076%_)
                              (let ((_%e187056187079%_
                                     (gx#syntax-e _%tl187055187076%_)))
                                (let ((_%hd187057187082%_
                                       (##car _%e187056187079%_))
                                      (_%tl187058187084%_
                                       (##cdr _%e187056187079%_)))
                                  (let ((_%id187087%_ _%hd187057187082%_))
                                    (if (gx#stx-pair? _%tl187058187084%_)
                                        (let ((_%e187059187089%_
                                               (gx#syntax-e
                                                _%tl187058187084%_)))
                                          (let ((_%hd187060187092%_
                                                 (##car _%e187059187089%_))
                                                (_%tl187061187094%_
                                                 (##cdr _%e187059187089%_)))
                                            (let ((_%expr187097%_
                                                   _%hd187060187092%_))
                                              (if (gx#stx-null?
                                                   _%tl187061187094%_)
                                                  (if (gx#identifier?
                                                       _%id187087%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id187087%_)
                          (cons (gx#core-compile-top-syntax _%expr187097%_)
                                '())))
              (_%E187052187067%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E187052187067%_)))))
                                        (_%E187052187067%_)))))
                              (_%E187052187067%_))))
                      (_%E187052187067%_)))))
          (_%E187051187099%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id187043%_)
        (let ((_%$e187045%_ (gx#resolve-identifier__0 _%id187043%_)))
          (if _%$e187045%_
              (##unchecked-structure-ref _%$e187045%_ '1 '#f '#f)
              _%id187043%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd187041%_)
        (if (gx#identifier? _%hd187041%_)
            (gx#core-compile-top-runtime-ref _%hd187041%_)
            '#f)))))
