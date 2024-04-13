(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1713001408)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx128710%_)
        (let* ((_%e128711128718%_ _%stx128710%_)
               (_%E128713128722%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128711128718%_)))
               (_%E128712128736%_
                (lambda ()
                  (if (gx#stx-pair? _%e128711128718%_)
                      (let ((_%e128714128726%_
                             (gx#syntax-e _%e128711128718%_)))
                        (let ((_%hd128715128729%_ (##car _%e128714128726%_))
                              (_%tl128716128731%_ (##cdr _%e128714128726%_)))
                          (let* ((_%form128734%_ _%hd128715128729%_)
                                 (__self128739
                                  (gx#syntax-local-e__0 _%form128734%_))
                                 (__method128740
                                  (__method-ref
                                   __self128739
                                   'compile-top-syntax)))
                            (if __method128740
                                (__method128740 __self128739 _%stx128710%_)
                                (begin
                                  (error '"Missing method"
                                         __self128739
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%E128713128722%_)))))
          (_%E128712128736%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self127553128656%_ _%stx128658%_)
        (let* ((_%self128660%_ _%self127553128656%_)
               (_%self128662%_ _%self128660%_)
               (_%self128671128679%_ _%self128662%_)
               (_%E128673128683%_
                (lambda ()
                  (error '"No clause matching"
                         _%self128671128679%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K128674128696%_
                (lambda (_%K128686%_)
                  (let ((_%$e128688%_ (gx#stx-source _%stx128658%_)))
                    (if _%$e128688%_
                        ((lambda (_%g128690128692%_)
                           (gx#stx-wrap-source
                            (_%K128686%_ _%stx128658%_)
                            _%g128690128692%_))
                         _%$e128688%_)
                        (_%K128686%_ _%stx128658%_)))))
               (_%e128675128699%_
                (##unchecked-structure-ref _%self128671128679%_ '1 '#f '#f))
               (_%e128676128702%_
                (##unchecked-structure-ref _%self128671128679%_ '2 '#f '#f))
               (_%e128677128705%_
                (##unchecked-structure-ref _%self128671128679%_ '3 '#f '#f))
               (_%K128708%_ _%e128677128705%_))
          (_%K128674128696%_ _%K128708%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx128530%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx128530%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx128500%_)
        (let* ((_%e128501128508%_ _%stx128500%_)
               (_%E128503128512%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128501128508%_)))
               (_%E128502128526%_
                (lambda ()
                  (if (gx#stx-pair? _%e128501128508%_)
                      (let ((_%e128504128516%_
                             (gx#syntax-e _%e128501128508%_)))
                        (let ((_%hd128505128519%_ (##car _%e128504128516%_))
                              (_%tl128506128521%_ (##cdr _%e128504128516%_)))
                          (let ((_%body128524%_ _%tl128506128521%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body128524%_)))))
                      (_%E128503128512%_)))))
          (_%E128502128526%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx128469%_)
        (let* ((_%e128470128477%_ _%stx128469%_)
               (_%E128472128481%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128470128477%_)))
               (_%E128471128496%_
                (lambda ()
                  (if (gx#stx-pair? _%e128470128477%_)
                      (let ((_%e128473128485%_
                             (gx#syntax-e _%e128470128477%_)))
                        (let ((_%hd128474128488%_ (##car _%e128473128485%_))
                              (_%tl128475128490%_ (##cdr _%e128473128485%_)))
                          (let ((_%body128493%_ _%tl128475128490%_))
                            (cons '%#begin-syntax
                                  (__call-with-parameters
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body128493%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%E128472128481%_)))))
          (_%E128471128496%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx128439%_)
        (let* ((_%e128440128447%_ _%stx128439%_)
               (_%E128442128451%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128440128447%_)))
               (_%E128441128465%_
                (lambda ()
                  (if (gx#stx-pair? _%e128440128447%_)
                      (let ((_%e128443128455%_
                             (gx#syntax-e _%e128440128447%_)))
                        (let ((_%hd128444128458%_ (##car _%e128443128455%_))
                              (_%tl128445128460%_ (##cdr _%e128443128455%_)))
                          (let ((_%body128463%_ _%tl128445128460%_))
                            (cons '%#begin-foreign _%body128463%_))))
                      (_%E128442128451%_)))))
          (_%E128441128465%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx128385%_)
        (let* ((_%e128386128399%_ _%stx128385%_)
               (_%E128388128403%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128386128399%_)))
               (_%E128387128435%_
                (lambda ()
                  (if (gx#stx-pair? _%e128386128399%_)
                      (let ((_%e128389128407%_
                             (gx#syntax-e _%e128386128399%_)))
                        (let ((_%hd128390128410%_ (##car _%e128389128407%_))
                              (_%tl128391128412%_ (##cdr _%e128389128407%_)))
                          (if (gx#stx-pair? _%tl128391128412%_)
                              (let ((_%e128392128415%_
                                     (gx#syntax-e _%tl128391128412%_)))
                                (let ((_%hd128393128418%_
                                       (##car _%e128392128415%_))
                                      (_%tl128394128420%_
                                       (##cdr _%e128392128415%_)))
                                  (let ((_%ann128423%_ _%hd128393128418%_))
                                    (if (gx#stx-pair? _%tl128394128420%_)
                                        (let ((_%e128395128425%_
                                               (gx#syntax-e
                                                _%tl128394128420%_)))
                                          (let ((_%hd128396128428%_
                                                 (##car _%e128395128425%_))
                                                (_%tl128397128430%_
                                                 (##cdr _%e128395128425%_)))
                                            (let ((_%expr128433%_
                                                   _%hd128396128428%_))
                                              (if (gx#stx-null?
                                                   _%tl128397128430%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr128433%_)
                                                  (_%E128388128403%_)))))
                                        (_%E128388128403%_)))))
                              (_%E128388128403%_))))
                      (_%E128388128403%_)))))
          (_%E128387128435%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx128355%_)
        (let* ((_%e128356128363%_ _%stx128355%_)
               (_%E128358128367%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128356128363%_)))
               (_%E128357128381%_
                (lambda ()
                  (if (gx#stx-pair? _%e128356128363%_)
                      (let ((_%e128359128371%_
                             (gx#syntax-e _%e128356128363%_)))
                        (let ((_%hd128360128374%_ (##car _%e128359128371%_))
                              (_%tl128361128376%_ (##cdr _%e128359128371%_)))
                          (let ((_%body128379%_ _%tl128361128376%_))
                            (cons '%#import _%body128379%_))))
                      (_%E128358128367%_)))))
          (_%E128357128381%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx128312%_)
        (let* ((_%e128313128323%_ _%stx128312%_)
               (_%E128315128327%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128313128323%_)))
               (_%E128314128351%_
                (lambda ()
                  (if (gx#stx-pair? _%e128313128323%_)
                      (let ((_%e128316128331%_
                             (gx#syntax-e _%e128313128323%_)))
                        (let ((_%hd128317128334%_ (##car _%e128316128331%_))
                              (_%tl128318128336%_ (##cdr _%e128316128331%_)))
                          (if (gx#stx-pair? _%tl128318128336%_)
                              (let ((_%e128319128339%_
                                     (gx#syntax-e _%tl128318128336%_)))
                                (let ((_%hd128320128342%_
                                       (##car _%e128319128339%_))
                                      (_%tl128321128344%_
                                       (##cdr _%e128319128339%_)))
                                  (let* ((_%hd128347%_ _%hd128320128342%_)
                                         (_%body128349%_ _%tl128321128344%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd128347%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body128349%_))))))
                              (_%E128315128327%_))))
                      (_%E128315128327%_)))))
          (_%E128314128351%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx128282%_)
        (let* ((_%e128283128290%_ _%stx128282%_)
               (_%E128285128294%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128283128290%_)))
               (_%E128284128308%_
                (lambda ()
                  (if (gx#stx-pair? _%e128283128290%_)
                      (let ((_%e128286128298%_
                             (gx#syntax-e _%e128283128290%_)))
                        (let ((_%hd128287128301%_ (##car _%e128286128298%_))
                              (_%tl128288128303%_ (##cdr _%e128286128298%_)))
                          (let ((_%body128306%_ _%tl128288128303%_))
                            (cons '%#export _%body128306%_))))
                      (_%E128285128294%_)))))
          (_%E128284128308%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx128252%_)
        (let* ((_%e128253128260%_ _%stx128252%_)
               (_%E128255128264%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128253128260%_)))
               (_%E128254128278%_
                (lambda ()
                  (if (gx#stx-pair? _%e128253128260%_)
                      (let ((_%e128256128268%_
                             (gx#syntax-e _%e128253128260%_)))
                        (let ((_%hd128257128271%_ (##car _%e128256128268%_))
                              (_%tl128258128273%_ (##cdr _%e128256128268%_)))
                          (let ((_%body128276%_ _%tl128258128273%_))
                            (cons '%#provide _%body128276%_))))
                      (_%E128255128264%_)))))
          (_%E128254128278%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx128222%_)
        (let* ((_%e128223128230%_ _%stx128222%_)
               (_%E128225128234%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128223128230%_)))
               (_%E128224128248%_
                (lambda ()
                  (if (gx#stx-pair? _%e128223128230%_)
                      (let ((_%e128226128238%_
                             (gx#syntax-e _%e128223128230%_)))
                        (let ((_%hd128227128241%_ (##car _%e128226128238%_))
                              (_%tl128228128243%_ (##cdr _%e128226128238%_)))
                          (let ((_%body128246%_ _%tl128228128243%_))
                            (cons '%#extern _%body128246%_))))
                      (_%E128225128234%_)))))
          (_%E128224128248%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx128168%_)
        (let* ((_%e128169128182%_ _%stx128168%_)
               (_%E128171128186%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128169128182%_)))
               (_%E128170128218%_
                (lambda ()
                  (if (gx#stx-pair? _%e128169128182%_)
                      (let ((_%e128172128190%_
                             (gx#syntax-e _%e128169128182%_)))
                        (let ((_%hd128173128193%_ (##car _%e128172128190%_))
                              (_%tl128174128195%_ (##cdr _%e128172128190%_)))
                          (if (gx#stx-pair? _%tl128174128195%_)
                              (let ((_%e128175128198%_
                                     (gx#syntax-e _%tl128174128195%_)))
                                (let ((_%hd128176128201%_
                                       (##car _%e128175128198%_))
                                      (_%tl128177128203%_
                                       (##cdr _%e128175128198%_)))
                                  (let ((_%hd128206%_ _%hd128176128201%_))
                                    (if (gx#stx-pair? _%tl128177128203%_)
                                        (let ((_%e128178128208%_
                                               (gx#syntax-e
                                                _%tl128177128203%_)))
                                          (let ((_%hd128179128211%_
                                                 (##car _%e128178128208%_))
                                                (_%tl128180128213%_
                                                 (##cdr _%e128178128208%_)))
                                            (let ((_%expr128216%_
                                                   _%hd128179128211%_))
                                              (if (gx#stx-null?
                                                   _%tl128180128213%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd128206%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr128216%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E128171128186%_)))))
                                        (_%E128171128186%_)))))
                              (_%E128171128186%_))))
                      (_%E128171128186%_)))))
          (_%E128170128218%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx128113%_)
        (let* ((_%e128114128127%_ _%stx128113%_)
               (_%E128116128131%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128114128127%_)))
               (_%E128115128164%_
                (lambda ()
                  (if (gx#stx-pair? _%e128114128127%_)
                      (let ((_%e128117128135%_
                             (gx#syntax-e _%e128114128127%_)))
                        (let ((_%hd128118128138%_ (##car _%e128117128135%_))
                              (_%tl128119128140%_ (##cdr _%e128117128135%_)))
                          (if (gx#stx-pair? _%tl128119128140%_)
                              (let ((_%e128120128143%_
                                     (gx#syntax-e _%tl128119128140%_)))
                                (let ((_%hd128121128146%_
                                       (##car _%e128120128143%_))
                                      (_%tl128122128148%_
                                       (##cdr _%e128120128143%_)))
                                  (let ((_%hd128151%_ _%hd128121128146%_))
                                    (if (gx#stx-pair? _%tl128122128148%_)
                                        (let ((_%e128123128153%_
                                               (gx#syntax-e
                                                _%tl128122128148%_)))
                                          (let ((_%hd128124128156%_
                                                 (##car _%e128123128153%_))
                                                (_%tl128125128158%_
                                                 (##cdr _%e128123128153%_)))
                                            (let ((_%expr128161%_
                                                   _%hd128124128156%_))
                                              (if (gx#stx-null?
                                                   _%tl128125128158%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd128151%_
                                                              (cons (__call-with-parameters
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr128161%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E128116128131%_)))))
                                        (_%E128116128131%_)))))
                              (_%E128116128131%_))))
                      (_%E128116128131%_)))))
          (_%E128115128164%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx128083%_)
        (let* ((_%e128084128091%_ _%stx128083%_)
               (_%E128086128095%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128084128091%_)))
               (_%E128085128109%_
                (lambda ()
                  (if (gx#stx-pair? _%e128084128091%_)
                      (let ((_%e128087128099%_
                             (gx#syntax-e _%e128084128091%_)))
                        (let ((_%hd128088128102%_ (##car _%e128087128099%_))
                              (_%tl128089128104%_ (##cdr _%e128087128099%_)))
                          (let ((_%body128107%_ _%tl128089128104%_))
                            (cons '%#define-alias _%body128107%_))))
                      (_%E128086128095%_)))))
          (_%E128085128109%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx128053%_)
        (let* ((_%e128054128061%_ _%stx128053%_)
               (_%E128056128065%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128054128061%_)))
               (_%E128055128079%_
                (lambda ()
                  (if (gx#stx-pair? _%e128054128061%_)
                      (let ((_%e128057128069%_
                             (gx#syntax-e _%e128054128061%_)))
                        (let ((_%hd128058128072%_ (##car _%e128057128069%_))
                              (_%tl128059128074%_ (##cdr _%e128057128069%_)))
                          (let ((_%body128077%_ _%tl128059128074%_))
                            (cons '%#define-runtime _%body128077%_))))
                      (_%E128056128065%_)))))
          (_%E128055128079%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx128023%_)
        (let* ((_%e128024128031%_ _%stx128023%_)
               (_%E128026128035%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128024128031%_)))
               (_%E128025128049%_
                (lambda ()
                  (if (gx#stx-pair? _%e128024128031%_)
                      (let ((_%e128027128039%_
                             (gx#syntax-e _%e128024128031%_)))
                        (let ((_%hd128028128042%_ (##car _%e128027128039%_))
                              (_%tl128029128044%_ (##cdr _%e128027128039%_)))
                          (let ((_%decls128047%_ _%tl128029128044%_))
                            (cons '%#declare _%decls128047%_))))
                      (_%E128026128035%_)))))
          (_%E128025128049%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx127993%_)
        (let* ((_%e127994128001%_ _%stx127993%_)
               (_%E127996128005%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127994128001%_)))
               (_%E127995128019%_
                (lambda ()
                  (if (gx#stx-pair? _%e127994128001%_)
                      (let ((_%e127997128009%_
                             (gx#syntax-e _%e127994128001%_)))
                        (let ((_%hd127998128012%_ (##car _%e127997128009%_))
                              (_%tl127999128014%_ (##cdr _%e127997128009%_)))
                          (let ((_%clause128017%_ _%tl127999128014%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause128017%_)))))
                      (_%E127996128005%_)))))
          (_%E127995128019%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx127950%_)
        (let* ((_%e127951127961%_ _%stx127950%_)
               (_%E127953127965%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127951127961%_)))
               (_%E127952127989%_
                (lambda ()
                  (if (gx#stx-pair? _%e127951127961%_)
                      (let ((_%e127954127969%_
                             (gx#syntax-e _%e127951127961%_)))
                        (let ((_%hd127955127972%_ (##car _%e127954127969%_))
                              (_%tl127956127974%_ (##cdr _%e127954127969%_)))
                          (let ((_%hd127977%_ _%hd127955127972%_))
                            (if (gx#stx-pair? _%tl127956127974%_)
                                (let ((_%e127957127979%_
                                       (gx#syntax-e _%tl127956127974%_)))
                                  (let ((_%hd127958127982%_
                                         (##car _%e127957127979%_))
                                        (_%tl127959127984%_
                                         (##cdr _%e127957127979%_)))
                                    (let ((_%body127987%_ _%hd127958127982%_))
                                      (if (gx#stx-null? _%tl127959127984%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd127977%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body127987%_)
                                                      '()))
                                          (_%E127953127965%_)))))
                                (_%E127953127965%_)))))
                      (_%E127953127965%_)))))
          (_%E127952127989%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx127920%_)
        (let* ((_%e127921127928%_ _%stx127920%_)
               (_%E127923127932%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127921127928%_)))
               (_%E127922127946%_
                (lambda ()
                  (if (gx#stx-pair? _%e127921127928%_)
                      (let ((_%e127924127936%_
                             (gx#syntax-e _%e127921127928%_)))
                        (let ((_%hd127925127939%_ (##car _%e127924127936%_))
                              (_%tl127926127941%_ (##cdr _%e127924127936%_)))
                          (let ((_%clauses127944%_ _%tl127926127941%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses127944%_)))))
                      (_%E127923127932%_)))))
          (_%E127922127946%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx127855%_ _%form127856%_)
        (let* ((_%e127857127870%_ _%stx127855%_)
               (_%E127859127874%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127857127870%_)))
               (_%E127858127906%_
                (lambda ()
                  (if (gx#stx-pair? _%e127857127870%_)
                      (let ((_%e127860127878%_
                             (gx#syntax-e _%e127857127870%_)))
                        (let ((_%hd127861127881%_ (##car _%e127860127878%_))
                              (_%tl127862127883%_ (##cdr _%e127860127878%_)))
                          (if (gx#stx-pair? _%tl127862127883%_)
                              (let ((_%e127863127886%_
                                     (gx#syntax-e _%tl127862127883%_)))
                                (let ((_%hd127864127889%_
                                       (##car _%e127863127886%_))
                                      (_%tl127865127891%_
                                       (##cdr _%e127863127886%_)))
                                  (let ((_%hd127894%_ _%hd127864127889%_))
                                    (if (gx#stx-pair? _%tl127865127891%_)
                                        (let ((_%e127866127896%_
                                               (gx#syntax-e
                                                _%tl127865127891%_)))
                                          (let ((_%hd127867127899%_
                                                 (##car _%e127866127896%_))
                                                (_%tl127868127901%_
                                                 (##cdr _%e127866127896%_)))
                                            (let ((_%body127904%_
                                                   _%hd127867127899%_))
                                              (if (gx#stx-null?
                                                   _%tl127868127901%_)
                                                  (cons _%form127856%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd127894%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body127904%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E127859127874%_)))))
                                        (_%E127859127874%_)))))
                              (_%E127859127874%_))))
                      (_%E127859127874%_)))))
          (_%E127858127906%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx127913%_)
        (let ((_%form127915%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx127913%_ _%form127915%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g128742_
        (let ((_g128741_ (##length _g128742_)))
          (cond ((##fx= _g128741_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g128742_))
                ((##fx= _g128741_ 2)
                 (apply gx#core-compile-top-let-values%__% _g128742_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g128742_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx127852%_)
        (gx#core-compile-top-let-values%__% _%stx127852%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx127850%_)
        (gx#core-compile-top-let-values%__% _%stx127850%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx127809%_)
        (let* ((_%e127810127820%_ _%stx127809%_)
               (_%E127812127824%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127810127820%_)))
               (_%E127811127846%_
                (lambda ()
                  (if (gx#stx-pair? _%e127810127820%_)
                      (let ((_%e127813127828%_
                             (gx#syntax-e _%e127810127820%_)))
                        (let ((_%hd127814127831%_ (##car _%e127813127828%_))
                              (_%tl127815127833%_ (##cdr _%e127813127828%_)))
                          (if (gx#stx-pair? _%tl127815127833%_)
                              (let ((_%e127816127836%_
                                     (gx#syntax-e _%tl127815127833%_)))
                                (let ((_%hd127817127839%_
                                       (##car _%e127816127836%_))
                                      (_%tl127818127841%_
                                       (##cdr _%e127816127836%_)))
                                  (let ((_%e127844%_ _%hd127817127839%_))
                                    (if (gx#stx-null? _%tl127818127841%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e127844%_)
                                                    '()))
                                        (_%E127812127824%_)))))
                              (_%E127812127824%_))))
                      (_%E127812127824%_)))))
          (_%E127811127846%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx127768%_)
        (let* ((_%e127769127779%_ _%stx127768%_)
               (_%E127771127783%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127769127779%_)))
               (_%E127770127805%_
                (lambda ()
                  (if (gx#stx-pair? _%e127769127779%_)
                      (let ((_%e127772127787%_
                             (gx#syntax-e _%e127769127779%_)))
                        (let ((_%hd127773127790%_ (##car _%e127772127787%_))
                              (_%tl127774127792%_ (##cdr _%e127772127787%_)))
                          (if (gx#stx-pair? _%tl127774127792%_)
                              (let ((_%e127775127795%_
                                     (gx#syntax-e _%tl127774127792%_)))
                                (let ((_%hd127776127798%_
                                       (##car _%e127775127795%_))
                                      (_%tl127777127800%_
                                       (##cdr _%e127775127795%_)))
                                  (let ((_%e127803%_ _%hd127776127798%_))
                                    (if (gx#stx-null? _%tl127777127800%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e127803%_)
                                                    '()))
                                        (_%E127771127783%_)))))
                              (_%E127771127783%_))))
                      (_%E127771127783%_)))))
          (_%E127770127805%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx127725%_)
        (let* ((_%e127726127736%_ _%stx127725%_)
               (_%E127728127740%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127726127736%_)))
               (_%E127727127764%_
                (lambda ()
                  (if (gx#stx-pair? _%e127726127736%_)
                      (let ((_%e127729127744%_
                             (gx#syntax-e _%e127726127736%_)))
                        (let ((_%hd127730127747%_ (##car _%e127729127744%_))
                              (_%tl127731127749%_ (##cdr _%e127729127744%_)))
                          (if (gx#stx-pair? _%tl127731127749%_)
                              (let ((_%e127732127752%_
                                     (gx#syntax-e _%tl127731127749%_)))
                                (let ((_%hd127733127755%_
                                       (##car _%e127732127752%_))
                                      (_%tl127734127757%_
                                       (##cdr _%e127732127752%_)))
                                  (let* ((_%rator127760%_ _%hd127733127755%_)
                                         (_%args127762%_ _%tl127734127757%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator127760%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args127762%_))))))
                              (_%E127728127740%_))))
                      (_%E127728127740%_)))))
          (_%E127727127764%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx127658%_)
        (let* ((_%e127659127675%_ _%stx127658%_)
               (_%E127661127679%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127659127675%_)))
               (_%E127660127721%_
                (lambda ()
                  (if (gx#stx-pair? _%e127659127675%_)
                      (let ((_%e127662127683%_
                             (gx#syntax-e _%e127659127675%_)))
                        (let ((_%hd127663127686%_ (##car _%e127662127683%_))
                              (_%tl127664127688%_ (##cdr _%e127662127683%_)))
                          (if (gx#stx-pair? _%tl127664127688%_)
                              (let ((_%e127665127691%_
                                     (gx#syntax-e _%tl127664127688%_)))
                                (let ((_%hd127666127694%_
                                       (##car _%e127665127691%_))
                                      (_%tl127667127696%_
                                       (##cdr _%e127665127691%_)))
                                  (let ((_%test127699%_ _%hd127666127694%_))
                                    (if (gx#stx-pair? _%tl127667127696%_)
                                        (let ((_%e127668127701%_
                                               (gx#syntax-e
                                                _%tl127667127696%_)))
                                          (let ((_%hd127669127704%_
                                                 (##car _%e127668127701%_))
                                                (_%tl127670127706%_
                                                 (##cdr _%e127668127701%_)))
                                            (let ((_%K127709%_
                                                   _%hd127669127704%_))
                                              (if (gx#stx-pair?
                                                   _%tl127670127706%_)
                                                  (let ((_%e127671127711%_
                                                         (gx#syntax-e
                                                          _%tl127670127706%_)))
                                                    (let ((_%hd127672127714%_
                                                           (##car _%e127671127711%_))
                                                          (_%tl127673127716%_
                                                           (##cdr _%e127671127711%_)))
                                                      (let ((_%E127719%_
                                                             _%hd127672127714%_))
                                                        (if (gx#stx-null?
                                                             _%tl127673127716%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test127699%_)
                                (cons (gx#core-compile-top-syntax _%K127709%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E127719%_)
                                            '()))))
                    (_%E127661127679%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E127661127679%_)))))
                                        (_%E127661127679%_)))))
                              (_%E127661127679%_))))
                      (_%E127661127679%_)))))
          (_%E127660127721%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx127617%_)
        (let* ((_%e127618127628%_ _%stx127617%_)
               (_%E127620127632%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127618127628%_)))
               (_%E127619127654%_
                (lambda ()
                  (if (gx#stx-pair? _%e127618127628%_)
                      (let ((_%e127621127636%_
                             (gx#syntax-e _%e127618127628%_)))
                        (let ((_%hd127622127639%_ (##car _%e127621127636%_))
                              (_%tl127623127641%_ (##cdr _%e127621127636%_)))
                          (if (gx#stx-pair? _%tl127623127641%_)
                              (let ((_%e127624127644%_
                                     (gx#syntax-e _%tl127623127641%_)))
                                (let ((_%hd127625127647%_
                                       (##car _%e127624127644%_))
                                      (_%tl127626127649%_
                                       (##cdr _%e127624127644%_)))
                                  (let ((_%id127652%_ _%hd127625127647%_))
                                    (if (gx#stx-null? _%tl127626127649%_)
                                        (if (gx#identifier? _%id127652%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id127652%_)
                                                        '()))
                                            (_%E127620127632%_))
                                        (_%E127620127632%_)))))
                              (_%E127620127632%_))))
                      (_%E127620127632%_)))))
          (_%E127619127654%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx127563%_)
        (let* ((_%e127564127577%_ _%stx127563%_)
               (_%E127566127581%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127564127577%_)))
               (_%E127565127613%_
                (lambda ()
                  (if (gx#stx-pair? _%e127564127577%_)
                      (let ((_%e127567127585%_
                             (gx#syntax-e _%e127564127577%_)))
                        (let ((_%hd127568127588%_ (##car _%e127567127585%_))
                              (_%tl127569127590%_ (##cdr _%e127567127585%_)))
                          (if (gx#stx-pair? _%tl127569127590%_)
                              (let ((_%e127570127593%_
                                     (gx#syntax-e _%tl127569127590%_)))
                                (let ((_%hd127571127596%_
                                       (##car _%e127570127593%_))
                                      (_%tl127572127598%_
                                       (##cdr _%e127570127593%_)))
                                  (let ((_%id127601%_ _%hd127571127596%_))
                                    (if (gx#stx-pair? _%tl127572127598%_)
                                        (let ((_%e127573127603%_
                                               (gx#syntax-e
                                                _%tl127572127598%_)))
                                          (let ((_%hd127574127606%_
                                                 (##car _%e127573127603%_))
                                                (_%tl127575127608%_
                                                 (##cdr _%e127573127603%_)))
                                            (let ((_%expr127611%_
                                                   _%hd127574127606%_))
                                              (if (gx#stx-null?
                                                   _%tl127575127608%_)
                                                  (if (gx#identifier?
                                                       _%id127601%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id127601%_)
                          (cons (gx#core-compile-top-syntax _%expr127611%_)
                                '())))
              (_%E127566127581%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E127566127581%_)))))
                                        (_%E127566127581%_)))))
                              (_%E127566127581%_))))
                      (_%E127566127581%_)))))
          (_%E127565127613%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id127557%_)
        (let ((_%$e127559%_ (gx#resolve-identifier__0 _%id127557%_)))
          (if _%$e127559%_
              (##unchecked-structure-ref _%$e127559%_ '1 '#f '#f)
              _%id127557%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd127555%_)
        (if (gx#identifier? _%hd127555%_)
            (gx#core-compile-top-runtime-ref _%hd127555%_)
            '#f)))))
