(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1783939349)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx193605%_)
        (let* ((_%$%e193606193613%_ _%stx193605%_)
               (_%$%E193608193617%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e193606193613%_)))
               (_%$%E193607193631%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e193606193613%_)
                      (let ((_%$%e193609193621%_
                             (gx#syntax-e _%$%e193606193613%_)))
                        (let ((_%$%hd193610193624%_
                               (##car _%$%e193609193621%_))
                              (_%$%tl193611193626%_
                               (##cdr _%$%e193609193621%_)))
                          (let* ((_%form193629%_ _%$%hd193610193624%_)
                                 (__self193634
                                  (gx#syntax-local-e__0 _%form193629%_))
                                 (__method193635
                                  (__method-ref
                                   __self193634
                                   'compile-top-syntax)))
                            (if __method193635
                                (__method193635 __self193634 _%stx193605%_)
                                (begin
                                  (error '"Missing method"
                                         __self193634
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%$%E193608193617%_)))))
          (_%$%E193607193631%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self193554%_ _%stx193555%_)
        (let* ((_%self193558%_ _%self193554%_)
               (_%$%self193567193575%_ _%self193558%_)
               (_%$%E193569193578%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%self193567193575%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%$%K193570193591%_
                (lambda (_%K193581%_)
                  (let ((_%$e193583%_ (gx#stx-source _%stx193555%_)))
                    (if _%$e193583%_
                        (gx#stx-wrap-source
                         (_%K193581%_ _%stx193555%_)
                         _%$e193583%_)
                        (_%K193581%_ _%stx193555%_)))))
               (_%$%e193571193594%_
                (##unchecked-structure-ref _%$%self193567193575%_ '1 '#f '#f))
               (_%$%e193572193597%_
                (##unchecked-structure-ref _%$%self193567193575%_ '2 '#f '#f))
               (_%$%e193573193600%_
                (##unchecked-structure-ref _%$%self193567193575%_ '3 '#f '#f))
               (_%K193603%_ _%$%e193573193600%_))
          (_%$%K193570193591%_ _%K193603%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx193428%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx193428%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx193398%_)
        (let* ((_%$%e193399193406%_ _%stx193398%_)
               (_%$%E193401193410%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e193399193406%_)))
               (_%$%E193400193424%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e193399193406%_)
                      (let ((_%$%e193402193414%_
                             (gx#syntax-e _%$%e193399193406%_)))
                        (let ((_%$%hd193403193417%_
                               (##car _%$%e193402193414%_))
                              (_%$%tl193404193419%_
                               (##cdr _%$%e193402193414%_)))
                          (let ((_%body193422%_ _%$%tl193404193419%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body193422%_)))))
                      (_%$%E193401193410%_)))))
          (_%$%E193400193424%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx193367%_)
        (let* ((_%$%e193368193375%_ _%stx193367%_)
               (_%$%E193370193379%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e193368193375%_)))
               (_%$%E193369193394%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e193368193375%_)
                      (let ((_%$%e193371193383%_
                             (gx#syntax-e _%$%e193368193375%_)))
                        (let ((_%$%hd193372193386%_
                               (##car _%$%e193371193383%_))
                              (_%$%tl193373193388%_
                               (##cdr _%$%e193371193383%_)))
                          (let ((_%body193391%_ _%$%tl193373193388%_))
                            (cons '%#begin-syntax
                                  (call-with-parameters__1
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body193391%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%$%E193370193379%_)))))
          (_%$%E193369193394%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx193337%_)
        (let* ((_%$%e193338193345%_ _%stx193337%_)
               (_%$%E193340193349%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e193338193345%_)))
               (_%$%E193339193363%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e193338193345%_)
                      (let ((_%$%e193341193353%_
                             (gx#syntax-e _%$%e193338193345%_)))
                        (let ((_%$%hd193342193356%_
                               (##car _%$%e193341193353%_))
                              (_%$%tl193343193358%_
                               (##cdr _%$%e193341193353%_)))
                          (let ((_%body193361%_ _%$%tl193343193358%_))
                            (cons '%#begin-foreign _%body193361%_))))
                      (_%$%E193340193349%_)))))
          (_%$%E193339193363%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx193283%_)
        (let* ((_%$%e193284193297%_ _%stx193283%_)
               (_%$%E193286193301%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e193284193297%_)))
               (_%$%E193285193333%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e193284193297%_)
                      (let ((_%$%e193287193305%_
                             (gx#syntax-e _%$%e193284193297%_)))
                        (let ((_%$%hd193288193308%_
                               (##car _%$%e193287193305%_))
                              (_%$%tl193289193310%_
                               (##cdr _%$%e193287193305%_)))
                          (if (gx#stx-pair? _%$%tl193289193310%_)
                              (let ((_%$%e193290193313%_
                                     (gx#syntax-e _%$%tl193289193310%_)))
                                (let ((_%$%hd193291193316%_
                                       (##car _%$%e193290193313%_))
                                      (_%$%tl193292193318%_
                                       (##cdr _%$%e193290193313%_)))
                                  (let ((_%ann193321%_ _%$%hd193291193316%_))
                                    (if (gx#stx-pair? _%$%tl193292193318%_)
                                        (let ((_%$%e193293193323%_
                                               (gx#syntax-e
                                                _%$%tl193292193318%_)))
                                          (let ((_%$%hd193294193326%_
                                                 (##car _%$%e193293193323%_))
                                                (_%$%tl193295193328%_
                                                 (##cdr _%$%e193293193323%_)))
                                            (let ((_%expr193331%_
                                                   _%$%hd193294193326%_))
                                              (if (gx#stx-null?
                                                   _%$%tl193295193328%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr193331%_)
                                                  (_%$%E193286193301%_)))))
                                        (_%$%E193286193301%_)))))
                              (_%$%E193286193301%_))))
                      (_%$%E193286193301%_)))))
          (_%$%E193285193333%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx193253%_)
        (let* ((_%$%e193254193261%_ _%stx193253%_)
               (_%$%E193256193265%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e193254193261%_)))
               (_%$%E193255193279%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e193254193261%_)
                      (let ((_%$%e193257193269%_
                             (gx#syntax-e _%$%e193254193261%_)))
                        (let ((_%$%hd193258193272%_
                               (##car _%$%e193257193269%_))
                              (_%$%tl193259193274%_
                               (##cdr _%$%e193257193269%_)))
                          (let ((_%body193277%_ _%$%tl193259193274%_))
                            (cons '%#import _%body193277%_))))
                      (_%$%E193256193265%_)))))
          (_%$%E193255193279%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx193210%_)
        (let* ((_%$%e193211193221%_ _%stx193210%_)
               (_%$%E193213193225%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e193211193221%_)))
               (_%$%E193212193249%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e193211193221%_)
                      (let ((_%$%e193214193229%_
                             (gx#syntax-e _%$%e193211193221%_)))
                        (let ((_%$%hd193215193232%_
                               (##car _%$%e193214193229%_))
                              (_%$%tl193216193234%_
                               (##cdr _%$%e193214193229%_)))
                          (if (gx#stx-pair? _%$%tl193216193234%_)
                              (let ((_%$%e193217193237%_
                                     (gx#syntax-e _%$%tl193216193234%_)))
                                (let ((_%$%hd193218193240%_
                                       (##car _%$%e193217193237%_))
                                      (_%$%tl193219193242%_
                                       (##cdr _%$%e193217193237%_)))
                                  (let* ((_%hd193245%_ _%$%hd193218193240%_)
                                         (_%body193247%_ _%$%tl193219193242%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd193245%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body193247%_))))))
                              (_%$%E193213193225%_))))
                      (_%$%E193213193225%_)))))
          (_%$%E193212193249%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx193180%_)
        (let* ((_%$%e193181193188%_ _%stx193180%_)
               (_%$%E193183193192%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e193181193188%_)))
               (_%$%E193182193206%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e193181193188%_)
                      (let ((_%$%e193184193196%_
                             (gx#syntax-e _%$%e193181193188%_)))
                        (let ((_%$%hd193185193199%_
                               (##car _%$%e193184193196%_))
                              (_%$%tl193186193201%_
                               (##cdr _%$%e193184193196%_)))
                          (let ((_%body193204%_ _%$%tl193186193201%_))
                            (cons '%#export _%body193204%_))))
                      (_%$%E193183193192%_)))))
          (_%$%E193182193206%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx193150%_)
        (let* ((_%$%e193151193158%_ _%stx193150%_)
               (_%$%E193153193162%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e193151193158%_)))
               (_%$%E193152193176%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e193151193158%_)
                      (let ((_%$%e193154193166%_
                             (gx#syntax-e _%$%e193151193158%_)))
                        (let ((_%$%hd193155193169%_
                               (##car _%$%e193154193166%_))
                              (_%$%tl193156193171%_
                               (##cdr _%$%e193154193166%_)))
                          (let ((_%body193174%_ _%$%tl193156193171%_))
                            (cons '%#provide _%body193174%_))))
                      (_%$%E193153193162%_)))))
          (_%$%E193152193176%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx193120%_)
        (let* ((_%$%e193121193128%_ _%stx193120%_)
               (_%$%E193123193132%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e193121193128%_)))
               (_%$%E193122193146%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e193121193128%_)
                      (let ((_%$%e193124193136%_
                             (gx#syntax-e _%$%e193121193128%_)))
                        (let ((_%$%hd193125193139%_
                               (##car _%$%e193124193136%_))
                              (_%$%tl193126193141%_
                               (##cdr _%$%e193124193136%_)))
                          (let ((_%body193144%_ _%$%tl193126193141%_))
                            (cons '%#extern _%body193144%_))))
                      (_%$%E193123193132%_)))))
          (_%$%E193122193146%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx193066%_)
        (let* ((_%$%e193067193080%_ _%stx193066%_)
               (_%$%E193069193084%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e193067193080%_)))
               (_%$%E193068193116%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e193067193080%_)
                      (let ((_%$%e193070193088%_
                             (gx#syntax-e _%$%e193067193080%_)))
                        (let ((_%$%hd193071193091%_
                               (##car _%$%e193070193088%_))
                              (_%$%tl193072193093%_
                               (##cdr _%$%e193070193088%_)))
                          (if (gx#stx-pair? _%$%tl193072193093%_)
                              (let ((_%$%e193073193096%_
                                     (gx#syntax-e _%$%tl193072193093%_)))
                                (let ((_%$%hd193074193099%_
                                       (##car _%$%e193073193096%_))
                                      (_%$%tl193075193101%_
                                       (##cdr _%$%e193073193096%_)))
                                  (let ((_%hd193104%_ _%$%hd193074193099%_))
                                    (if (gx#stx-pair? _%$%tl193075193101%_)
                                        (let ((_%$%e193076193106%_
                                               (gx#syntax-e
                                                _%$%tl193075193101%_)))
                                          (let ((_%$%hd193077193109%_
                                                 (##car _%$%e193076193106%_))
                                                (_%$%tl193078193111%_
                                                 (##cdr _%$%e193076193106%_)))
                                            (let ((_%expr193114%_
                                                   _%$%hd193077193109%_))
                                              (if (gx#stx-null?
                                                   _%$%tl193078193111%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd193104%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr193114%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E193069193084%_)))))
                                        (_%$%E193069193084%_)))))
                              (_%$%E193069193084%_))))
                      (_%$%E193069193084%_)))))
          (_%$%E193068193116%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx193011%_)
        (let* ((_%$%e193012193025%_ _%stx193011%_)
               (_%$%E193014193029%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e193012193025%_)))
               (_%$%E193013193062%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e193012193025%_)
                      (let ((_%$%e193015193033%_
                             (gx#syntax-e _%$%e193012193025%_)))
                        (let ((_%$%hd193016193036%_
                               (##car _%$%e193015193033%_))
                              (_%$%tl193017193038%_
                               (##cdr _%$%e193015193033%_)))
                          (if (gx#stx-pair? _%$%tl193017193038%_)
                              (let ((_%$%e193018193041%_
                                     (gx#syntax-e _%$%tl193017193038%_)))
                                (let ((_%$%hd193019193044%_
                                       (##car _%$%e193018193041%_))
                                      (_%$%tl193020193046%_
                                       (##cdr _%$%e193018193041%_)))
                                  (let ((_%hd193049%_ _%$%hd193019193044%_))
                                    (if (gx#stx-pair? _%$%tl193020193046%_)
                                        (let ((_%$%e193021193051%_
                                               (gx#syntax-e
                                                _%$%tl193020193046%_)))
                                          (let ((_%$%hd193022193054%_
                                                 (##car _%$%e193021193051%_))
                                                (_%$%tl193023193056%_
                                                 (##cdr _%$%e193021193051%_)))
                                            (let ((_%expr193059%_
                                                   _%$%hd193022193054%_))
                                              (if (gx#stx-null?
                                                   _%$%tl193023193056%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd193049%_
                                                              (cons (call-with-parameters__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr193059%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E193014193029%_)))))
                                        (_%$%E193014193029%_)))))
                              (_%$%E193014193029%_))))
                      (_%$%E193014193029%_)))))
          (_%$%E193013193062%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx192981%_)
        (let* ((_%$%e192982192989%_ _%stx192981%_)
               (_%$%E192984192993%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192982192989%_)))
               (_%$%E192983193007%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192982192989%_)
                      (let ((_%$%e192985192997%_
                             (gx#syntax-e _%$%e192982192989%_)))
                        (let ((_%$%hd192986193000%_
                               (##car _%$%e192985192997%_))
                              (_%$%tl192987193002%_
                               (##cdr _%$%e192985192997%_)))
                          (let ((_%body193005%_ _%$%tl192987193002%_))
                            (cons '%#define-alias _%body193005%_))))
                      (_%$%E192984192993%_)))))
          (_%$%E192983193007%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx192951%_)
        (let* ((_%$%e192952192959%_ _%stx192951%_)
               (_%$%E192954192963%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192952192959%_)))
               (_%$%E192953192977%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192952192959%_)
                      (let ((_%$%e192955192967%_
                             (gx#syntax-e _%$%e192952192959%_)))
                        (let ((_%$%hd192956192970%_
                               (##car _%$%e192955192967%_))
                              (_%$%tl192957192972%_
                               (##cdr _%$%e192955192967%_)))
                          (let ((_%body192975%_ _%$%tl192957192972%_))
                            (cons '%#define-runtime _%body192975%_))))
                      (_%$%E192954192963%_)))))
          (_%$%E192953192977%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx192921%_)
        (let* ((_%$%e192922192929%_ _%stx192921%_)
               (_%$%E192924192933%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192922192929%_)))
               (_%$%E192923192947%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192922192929%_)
                      (let ((_%$%e192925192937%_
                             (gx#syntax-e _%$%e192922192929%_)))
                        (let ((_%$%hd192926192940%_
                               (##car _%$%e192925192937%_))
                              (_%$%tl192927192942%_
                               (##cdr _%$%e192925192937%_)))
                          (let ((_%decls192945%_ _%$%tl192927192942%_))
                            (cons '%#declare _%decls192945%_))))
                      (_%$%E192924192933%_)))))
          (_%$%E192923192947%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx192891%_)
        (let* ((_%$%e192892192899%_ _%stx192891%_)
               (_%$%E192894192903%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192892192899%_)))
               (_%$%E192893192917%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192892192899%_)
                      (let ((_%$%e192895192907%_
                             (gx#syntax-e _%$%e192892192899%_)))
                        (let ((_%$%hd192896192910%_
                               (##car _%$%e192895192907%_))
                              (_%$%tl192897192912%_
                               (##cdr _%$%e192895192907%_)))
                          (let ((_%clause192915%_ _%$%tl192897192912%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause192915%_)))))
                      (_%$%E192894192903%_)))))
          (_%$%E192893192917%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx192848%_)
        (let* ((_%$%e192849192859%_ _%stx192848%_)
               (_%$%E192851192863%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192849192859%_)))
               (_%$%E192850192887%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192849192859%_)
                      (let ((_%$%e192852192867%_
                             (gx#syntax-e _%$%e192849192859%_)))
                        (let ((_%$%hd192853192870%_
                               (##car _%$%e192852192867%_))
                              (_%$%tl192854192872%_
                               (##cdr _%$%e192852192867%_)))
                          (let ((_%hd192875%_ _%$%hd192853192870%_))
                            (if (gx#stx-pair? _%$%tl192854192872%_)
                                (let ((_%$%e192855192877%_
                                       (gx#syntax-e _%$%tl192854192872%_)))
                                  (let ((_%$%hd192856192880%_
                                         (##car _%$%e192855192877%_))
                                        (_%$%tl192857192882%_
                                         (##cdr _%$%e192855192877%_)))
                                    (let ((_%body192885%_
                                           _%$%hd192856192880%_))
                                      (if (gx#stx-null? _%$%tl192857192882%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd192875%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body192885%_)
                                                      '()))
                                          (_%$%E192851192863%_)))))
                                (_%$%E192851192863%_)))))
                      (_%$%E192851192863%_)))))
          (_%$%E192850192887%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx192818%_)
        (let* ((_%$%e192819192826%_ _%stx192818%_)
               (_%$%E192821192830%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192819192826%_)))
               (_%$%E192820192844%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192819192826%_)
                      (let ((_%$%e192822192834%_
                             (gx#syntax-e _%$%e192819192826%_)))
                        (let ((_%$%hd192823192837%_
                               (##car _%$%e192822192834%_))
                              (_%$%tl192824192839%_
                               (##cdr _%$%e192822192834%_)))
                          (let ((_%clauses192842%_ _%$%tl192824192839%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses192842%_)))))
                      (_%$%E192821192830%_)))))
          (_%$%E192820192844%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx192753%_ _%form192754%_)
        (let* ((_%$%e192755192768%_ _%stx192753%_)
               (_%$%E192757192772%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192755192768%_)))
               (_%$%E192756192804%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192755192768%_)
                      (let ((_%$%e192758192776%_
                             (gx#syntax-e _%$%e192755192768%_)))
                        (let ((_%$%hd192759192779%_
                               (##car _%$%e192758192776%_))
                              (_%$%tl192760192781%_
                               (##cdr _%$%e192758192776%_)))
                          (if (gx#stx-pair? _%$%tl192760192781%_)
                              (let ((_%$%e192761192784%_
                                     (gx#syntax-e _%$%tl192760192781%_)))
                                (let ((_%$%hd192762192787%_
                                       (##car _%$%e192761192784%_))
                                      (_%$%tl192763192789%_
                                       (##cdr _%$%e192761192784%_)))
                                  (let ((_%hd192792%_ _%$%hd192762192787%_))
                                    (if (gx#stx-pair? _%$%tl192763192789%_)
                                        (let ((_%$%e192764192794%_
                                               (gx#syntax-e
                                                _%$%tl192763192789%_)))
                                          (let ((_%$%hd192765192797%_
                                                 (##car _%$%e192764192794%_))
                                                (_%$%tl192766192799%_
                                                 (##cdr _%$%e192764192794%_)))
                                            (let ((_%body192802%_
                                                   _%$%hd192765192797%_))
                                              (if (gx#stx-null?
                                                   _%$%tl192766192799%_)
                                                  (cons _%form192754%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd192792%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body192802%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E192757192772%_)))))
                                        (_%$%E192757192772%_)))))
                              (_%$%E192757192772%_))))
                      (_%$%E192757192772%_)))))
          (_%$%E192756192804%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx192811%_)
        (let ((_%form192813%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx192811%_ _%form192813%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g193636_
        (let ((_g193637_ (##length _g193636_)))
          (cond ((##fx= _g193637_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g193636_))
                ((##fx= _g193637_ 2)
                 (apply gx#core-compile-top-let-values%__% _g193636_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g193636_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx192750%_)
        (gx#core-compile-top-let-values%__% _%stx192750%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx192748%_)
        (gx#core-compile-top-let-values%__% _%stx192748%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx192707%_)
        (let* ((_%$%e192708192718%_ _%stx192707%_)
               (_%$%E192710192722%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192708192718%_)))
               (_%$%E192709192744%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192708192718%_)
                      (let ((_%$%e192711192726%_
                             (gx#syntax-e _%$%e192708192718%_)))
                        (let ((_%$%hd192712192729%_
                               (##car _%$%e192711192726%_))
                              (_%$%tl192713192731%_
                               (##cdr _%$%e192711192726%_)))
                          (if (gx#stx-pair? _%$%tl192713192731%_)
                              (let ((_%$%e192714192734%_
                                     (gx#syntax-e _%$%tl192713192731%_)))
                                (let ((_%$%hd192715192737%_
                                       (##car _%$%e192714192734%_))
                                      (_%$%tl192716192739%_
                                       (##cdr _%$%e192714192734%_)))
                                  (let ((_%e192742%_ _%$%hd192715192737%_))
                                    (if (gx#stx-null? _%$%tl192716192739%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e192742%_)
                                                    '()))
                                        (_%$%E192710192722%_)))))
                              (_%$%E192710192722%_))))
                      (_%$%E192710192722%_)))))
          (_%$%E192709192744%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx192666%_)
        (let* ((_%$%e192667192677%_ _%stx192666%_)
               (_%$%E192669192681%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192667192677%_)))
               (_%$%E192668192703%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192667192677%_)
                      (let ((_%$%e192670192685%_
                             (gx#syntax-e _%$%e192667192677%_)))
                        (let ((_%$%hd192671192688%_
                               (##car _%$%e192670192685%_))
                              (_%$%tl192672192690%_
                               (##cdr _%$%e192670192685%_)))
                          (if (gx#stx-pair? _%$%tl192672192690%_)
                              (let ((_%$%e192673192693%_
                                     (gx#syntax-e _%$%tl192672192690%_)))
                                (let ((_%$%hd192674192696%_
                                       (##car _%$%e192673192693%_))
                                      (_%$%tl192675192698%_
                                       (##cdr _%$%e192673192693%_)))
                                  (let ((_%e192701%_ _%$%hd192674192696%_))
                                    (if (gx#stx-null? _%$%tl192675192698%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e192701%_)
                                                    '()))
                                        (_%$%E192669192681%_)))))
                              (_%$%E192669192681%_))))
                      (_%$%E192669192681%_)))))
          (_%$%E192668192703%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx192623%_)
        (let* ((_%$%e192624192634%_ _%stx192623%_)
               (_%$%E192626192638%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192624192634%_)))
               (_%$%E192625192662%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192624192634%_)
                      (let ((_%$%e192627192642%_
                             (gx#syntax-e _%$%e192624192634%_)))
                        (let ((_%$%hd192628192645%_
                               (##car _%$%e192627192642%_))
                              (_%$%tl192629192647%_
                               (##cdr _%$%e192627192642%_)))
                          (if (gx#stx-pair? _%$%tl192629192647%_)
                              (let ((_%$%e192630192650%_
                                     (gx#syntax-e _%$%tl192629192647%_)))
                                (let ((_%$%hd192631192653%_
                                       (##car _%$%e192630192650%_))
                                      (_%$%tl192632192655%_
                                       (##cdr _%$%e192630192650%_)))
                                  (let* ((_%rator192658%_ _%$%hd192631192653%_)
                                         (_%args192660%_ _%$%tl192632192655%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator192658%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args192660%_))))))
                              (_%$%E192626192638%_))))
                      (_%$%E192626192638%_)))))
          (_%$%E192625192662%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx192556%_)
        (let* ((_%$%e192557192573%_ _%stx192556%_)
               (_%$%E192559192577%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192557192573%_)))
               (_%$%E192558192619%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192557192573%_)
                      (let ((_%$%e192560192581%_
                             (gx#syntax-e _%$%e192557192573%_)))
                        (let ((_%$%hd192561192584%_
                               (##car _%$%e192560192581%_))
                              (_%$%tl192562192586%_
                               (##cdr _%$%e192560192581%_)))
                          (if (gx#stx-pair? _%$%tl192562192586%_)
                              (let ((_%$%e192563192589%_
                                     (gx#syntax-e _%$%tl192562192586%_)))
                                (let ((_%$%hd192564192592%_
                                       (##car _%$%e192563192589%_))
                                      (_%$%tl192565192594%_
                                       (##cdr _%$%e192563192589%_)))
                                  (let ((_%test192597%_ _%$%hd192564192592%_))
                                    (if (gx#stx-pair? _%$%tl192565192594%_)
                                        (let ((_%$%e192566192599%_
                                               (gx#syntax-e
                                                _%$%tl192565192594%_)))
                                          (let ((_%$%hd192567192602%_
                                                 (##car _%$%e192566192599%_))
                                                (_%$%tl192568192604%_
                                                 (##cdr _%$%e192566192599%_)))
                                            (let ((_%K192607%_
                                                   _%$%hd192567192602%_))
                                              (if (gx#stx-pair?
                                                   _%$%tl192568192604%_)
                                                  (let ((_%$%e192569192609%_
                                                         (gx#syntax-e
                                                          _%$%tl192568192604%_)))
                                                    (let ((_%$%hd192570192612%_
                                                           (##car _%$%e192569192609%_))
                                                          (_%$%tl192571192614%_
                                                           (##cdr _%$%e192569192609%_)))
                                                      (let ((_%E192617%_
                                                             _%$%hd192570192612%_))
                                                        (if (gx#stx-null?
                                                             _%$%tl192571192614%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test192597%_)
                                (cons (gx#core-compile-top-syntax _%K192607%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E192617%_)
                                            '()))))
                    (_%$%E192559192577%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E192559192577%_)))))
                                        (_%$%E192559192577%_)))))
                              (_%$%E192559192577%_))))
                      (_%$%E192559192577%_)))))
          (_%$%E192558192619%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx192515%_)
        (let* ((_%$%e192516192526%_ _%stx192515%_)
               (_%$%E192518192530%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192516192526%_)))
               (_%$%E192517192552%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192516192526%_)
                      (let ((_%$%e192519192534%_
                             (gx#syntax-e _%$%e192516192526%_)))
                        (let ((_%$%hd192520192537%_
                               (##car _%$%e192519192534%_))
                              (_%$%tl192521192539%_
                               (##cdr _%$%e192519192534%_)))
                          (if (gx#stx-pair? _%$%tl192521192539%_)
                              (let ((_%$%e192522192542%_
                                     (gx#syntax-e _%$%tl192521192539%_)))
                                (let ((_%$%hd192523192545%_
                                       (##car _%$%e192522192542%_))
                                      (_%$%tl192524192547%_
                                       (##cdr _%$%e192522192542%_)))
                                  (let ((_%id192550%_ _%$%hd192523192545%_))
                                    (if (gx#stx-null? _%$%tl192524192547%_)
                                        (if (gx#identifier? _%id192550%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id192550%_)
                                                        '()))
                                            (_%$%E192518192530%_))
                                        (_%$%E192518192530%_)))))
                              (_%$%E192518192530%_))))
                      (_%$%E192518192530%_)))))
          (_%$%E192517192552%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx192461%_)
        (let* ((_%$%e192462192475%_ _%stx192461%_)
               (_%$%E192464192479%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192462192475%_)))
               (_%$%E192463192511%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192462192475%_)
                      (let ((_%$%e192465192483%_
                             (gx#syntax-e _%$%e192462192475%_)))
                        (let ((_%$%hd192466192486%_
                               (##car _%$%e192465192483%_))
                              (_%$%tl192467192488%_
                               (##cdr _%$%e192465192483%_)))
                          (if (gx#stx-pair? _%$%tl192467192488%_)
                              (let ((_%$%e192468192491%_
                                     (gx#syntax-e _%$%tl192467192488%_)))
                                (let ((_%$%hd192469192494%_
                                       (##car _%$%e192468192491%_))
                                      (_%$%tl192470192496%_
                                       (##cdr _%$%e192468192491%_)))
                                  (let ((_%id192499%_ _%$%hd192469192494%_))
                                    (if (gx#stx-pair? _%$%tl192470192496%_)
                                        (let ((_%$%e192471192501%_
                                               (gx#syntax-e
                                                _%$%tl192470192496%_)))
                                          (let ((_%$%hd192472192504%_
                                                 (##car _%$%e192471192501%_))
                                                (_%$%tl192473192506%_
                                                 (##cdr _%$%e192471192501%_)))
                                            (let ((_%expr192509%_
                                                   _%$%hd192472192504%_))
                                              (if (gx#stx-null?
                                                   _%$%tl192473192506%_)
                                                  (if (gx#identifier?
                                                       _%id192499%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id192499%_)
                          (cons (gx#core-compile-top-syntax _%expr192509%_)
                                '())))
              (_%$%E192464192479%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E192464192479%_)))))
                                        (_%$%E192464192479%_)))))
                              (_%$%E192464192479%_))))
                      (_%$%E192464192479%_)))))
          (_%$%E192463192511%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id192455%_)
        (let ((_%$e192457%_ (gx#resolve-identifier__0 _%id192455%_)))
          (if _%$e192457%_
              (##unchecked-structure-ref _%$e192457%_ '1 '#f '#f)
              _%id192455%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd192453%_)
        (if (gx#identifier? _%hd192453%_)
            (gx#core-compile-top-runtime-ref _%hd192453%_)
            '#f)))))
