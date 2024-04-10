(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1712784666)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx127646%_)
        (let* ((_%e127647127654%_ _%stx127646%_)
               (_%E127649127658%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127647127654%_)))
               (_%E127648127672%_
                (lambda ()
                  (if (gx#stx-pair? _%e127647127654%_)
                      (let ((_%e127650127662%_
                             (gx#syntax-e _%e127647127654%_)))
                        (let ((_%hd127651127665%_ (##car _%e127650127662%_))
                              (_%tl127652127667%_ (##cdr _%e127650127662%_)))
                          (let ((_%form127670%_ _%hd127651127665%_))
                            (if '#t
                                (let* ((__self127675
                                        (gx#syntax-local-e__0 _%form127670%_))
                                       (__method127676
                                        (__method-ref
                                         __self127675
                                         'compile-top-syntax)))
                                  (if __method127676
                                      (__method127676
                                       __self127675
                                       _%stx127646%_)
                                      (begin
                                        (error '"Missing method"
                                               __self127675
                                               'compile-top-syntax)
                                        '#!void)))
                                (_%E127649127658%_)))))
                      (_%E127649127658%_)))))
          (_%E127648127672%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self126489127592%_ _%stx127594%_)
        (let* ((_%self127596%_ _%self126489127592%_)
               (_%self127598%_ _%self127596%_)
               (_%self127607127615%_ _%self127598%_)
               (_%E127609127619%_
                (lambda ()
                  (error '"No clause matching"
                         _%self127607127615%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K127610127632%_
                (lambda (_%K127622%_)
                  (let ((_%$e127624%_ (gx#stx-source _%stx127594%_)))
                    (if _%$e127624%_
                        ((lambda (_%g127626127628%_)
                           (gx#stx-wrap-source
                            (_%K127622%_ _%stx127594%_)
                            _%g127626127628%_))
                         _%$e127624%_)
                        (_%K127622%_ _%stx127594%_))))))
          (if '#t
              (let* ((_%e127611127635%_
                      (##unchecked-structure-ref
                       _%self127607127615%_
                       '1
                       '#f
                       '#f))
                     (_%e127612127638%_
                      (##unchecked-structure-ref
                       _%self127607127615%_
                       '2
                       '#f
                       '#f))
                     (_%e127613127641%_
                      (##unchecked-structure-ref
                       _%self127607127615%_
                       '3
                       '#f
                       '#f))
                     (_%K127644%_ _%e127613127641%_))
                (_%K127610127632%_ _%K127644%_))
              (_%E127609127619%_)))))
    (__bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx127466%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx127466%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx127436%_)
        (let* ((_%e127437127444%_ _%stx127436%_)
               (_%E127439127448%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127437127444%_)))
               (_%E127438127462%_
                (lambda ()
                  (if (gx#stx-pair? _%e127437127444%_)
                      (let ((_%e127440127452%_
                             (gx#syntax-e _%e127437127444%_)))
                        (let ((_%hd127441127455%_ (##car _%e127440127452%_))
                              (_%tl127442127457%_ (##cdr _%e127440127452%_)))
                          (let ((_%body127460%_ _%tl127442127457%_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _%body127460%_))
                                (_%E127439127448%_)))))
                      (_%E127439127448%_)))))
          (_%E127438127462%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx127405%_)
        (let* ((_%e127406127413%_ _%stx127405%_)
               (_%E127408127417%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127406127413%_)))
               (_%E127407127432%_
                (lambda ()
                  (if (gx#stx-pair? _%e127406127413%_)
                      (let ((_%e127409127421%_
                             (gx#syntax-e _%e127406127413%_)))
                        (let ((_%hd127410127424%_ (##car _%e127409127421%_))
                              (_%tl127411127426%_ (##cdr _%e127409127421%_)))
                          (let ((_%body127429%_ _%tl127411127426%_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (__call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _%body127429%_))
                                       gx#current-expander-phi
                                       (##fx+ (gx#current-expander-phi) '1)))
                                (_%E127408127417%_)))))
                      (_%E127408127417%_)))))
          (_%E127407127432%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx127375%_)
        (let* ((_%e127376127383%_ _%stx127375%_)
               (_%E127378127387%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127376127383%_)))
               (_%E127377127401%_
                (lambda ()
                  (if (gx#stx-pair? _%e127376127383%_)
                      (let ((_%e127379127391%_
                             (gx#syntax-e _%e127376127383%_)))
                        (let ((_%hd127380127394%_ (##car _%e127379127391%_))
                              (_%tl127381127396%_ (##cdr _%e127379127391%_)))
                          (let ((_%body127399%_ _%tl127381127396%_))
                            (if '#t
                                (cons '%#begin-foreign _%body127399%_)
                                (_%E127378127387%_)))))
                      (_%E127378127387%_)))))
          (_%E127377127401%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx127321%_)
        (let* ((_%e127322127335%_ _%stx127321%_)
               (_%E127324127339%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127322127335%_)))
               (_%E127323127371%_
                (lambda ()
                  (if (gx#stx-pair? _%e127322127335%_)
                      (let ((_%e127325127343%_
                             (gx#syntax-e _%e127322127335%_)))
                        (let ((_%hd127326127346%_ (##car _%e127325127343%_))
                              (_%tl127327127348%_ (##cdr _%e127325127343%_)))
                          (if (gx#stx-pair? _%tl127327127348%_)
                              (let ((_%e127328127351%_
                                     (gx#syntax-e _%tl127327127348%_)))
                                (let ((_%hd127329127354%_
                                       (##car _%e127328127351%_))
                                      (_%tl127330127356%_
                                       (##cdr _%e127328127351%_)))
                                  (let ((_%ann127359%_ _%hd127329127354%_))
                                    (if (gx#stx-pair? _%tl127330127356%_)
                                        (let ((_%e127331127361%_
                                               (gx#syntax-e
                                                _%tl127330127356%_)))
                                          (let ((_%hd127332127364%_
                                                 (##car _%e127331127361%_))
                                                (_%tl127333127366%_
                                                 (##cdr _%e127331127361%_)))
                                            (let ((_%expr127369%_
                                                   _%hd127332127364%_))
                                              (if (gx#stx-null?
                                                   _%tl127333127366%_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _%expr127369%_)
                                                      (_%E127324127339%_))
                                                  (_%E127324127339%_)))))
                                        (_%E127324127339%_)))))
                              (_%E127324127339%_))))
                      (_%E127324127339%_)))))
          (_%E127323127371%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx127291%_)
        (let* ((_%e127292127299%_ _%stx127291%_)
               (_%E127294127303%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127292127299%_)))
               (_%E127293127317%_
                (lambda ()
                  (if (gx#stx-pair? _%e127292127299%_)
                      (let ((_%e127295127307%_
                             (gx#syntax-e _%e127292127299%_)))
                        (let ((_%hd127296127310%_ (##car _%e127295127307%_))
                              (_%tl127297127312%_ (##cdr _%e127295127307%_)))
                          (let ((_%body127315%_ _%tl127297127312%_))
                            (if '#t
                                (cons '%#import _%body127315%_)
                                (_%E127294127303%_)))))
                      (_%E127294127303%_)))))
          (_%E127293127317%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx127248%_)
        (let* ((_%e127249127259%_ _%stx127248%_)
               (_%E127251127263%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127249127259%_)))
               (_%E127250127287%_
                (lambda ()
                  (if (gx#stx-pair? _%e127249127259%_)
                      (let ((_%e127252127267%_
                             (gx#syntax-e _%e127249127259%_)))
                        (let ((_%hd127253127270%_ (##car _%e127252127267%_))
                              (_%tl127254127272%_ (##cdr _%e127252127267%_)))
                          (if (gx#stx-pair? _%tl127254127272%_)
                              (let ((_%e127255127275%_
                                     (gx#syntax-e _%tl127254127272%_)))
                                (let ((_%hd127256127278%_
                                       (##car _%e127255127275%_))
                                      (_%tl127257127280%_
                                       (##cdr _%e127255127275%_)))
                                  (let* ((_%hd127283%_ _%hd127256127278%_)
                                         (_%body127285%_ _%tl127257127280%_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _%hd127283%_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _%body127285%_)))
                                        (_%E127251127263%_)))))
                              (_%E127251127263%_))))
                      (_%E127251127263%_)))))
          (_%E127250127287%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx127218%_)
        (let* ((_%e127219127226%_ _%stx127218%_)
               (_%E127221127230%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127219127226%_)))
               (_%E127220127244%_
                (lambda ()
                  (if (gx#stx-pair? _%e127219127226%_)
                      (let ((_%e127222127234%_
                             (gx#syntax-e _%e127219127226%_)))
                        (let ((_%hd127223127237%_ (##car _%e127222127234%_))
                              (_%tl127224127239%_ (##cdr _%e127222127234%_)))
                          (let ((_%body127242%_ _%tl127224127239%_))
                            (if '#t
                                (cons '%#export _%body127242%_)
                                (_%E127221127230%_)))))
                      (_%E127221127230%_)))))
          (_%E127220127244%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx127188%_)
        (let* ((_%e127189127196%_ _%stx127188%_)
               (_%E127191127200%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127189127196%_)))
               (_%E127190127214%_
                (lambda ()
                  (if (gx#stx-pair? _%e127189127196%_)
                      (let ((_%e127192127204%_
                             (gx#syntax-e _%e127189127196%_)))
                        (let ((_%hd127193127207%_ (##car _%e127192127204%_))
                              (_%tl127194127209%_ (##cdr _%e127192127204%_)))
                          (let ((_%body127212%_ _%tl127194127209%_))
                            (if '#t
                                (cons '%#provide _%body127212%_)
                                (_%E127191127200%_)))))
                      (_%E127191127200%_)))))
          (_%E127190127214%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx127158%_)
        (let* ((_%e127159127166%_ _%stx127158%_)
               (_%E127161127170%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127159127166%_)))
               (_%E127160127184%_
                (lambda ()
                  (if (gx#stx-pair? _%e127159127166%_)
                      (let ((_%e127162127174%_
                             (gx#syntax-e _%e127159127166%_)))
                        (let ((_%hd127163127177%_ (##car _%e127162127174%_))
                              (_%tl127164127179%_ (##cdr _%e127162127174%_)))
                          (let ((_%body127182%_ _%tl127164127179%_))
                            (if '#t
                                (cons '%#extern _%body127182%_)
                                (_%E127161127170%_)))))
                      (_%E127161127170%_)))))
          (_%E127160127184%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx127104%_)
        (let* ((_%e127105127118%_ _%stx127104%_)
               (_%E127107127122%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127105127118%_)))
               (_%E127106127154%_
                (lambda ()
                  (if (gx#stx-pair? _%e127105127118%_)
                      (let ((_%e127108127126%_
                             (gx#syntax-e _%e127105127118%_)))
                        (let ((_%hd127109127129%_ (##car _%e127108127126%_))
                              (_%tl127110127131%_ (##cdr _%e127108127126%_)))
                          (if (gx#stx-pair? _%tl127110127131%_)
                              (let ((_%e127111127134%_
                                     (gx#syntax-e _%tl127110127131%_)))
                                (let ((_%hd127112127137%_
                                       (##car _%e127111127134%_))
                                      (_%tl127113127139%_
                                       (##cdr _%e127111127134%_)))
                                  (let ((_%hd127142%_ _%hd127112127137%_))
                                    (if (gx#stx-pair? _%tl127113127139%_)
                                        (let ((_%e127114127144%_
                                               (gx#syntax-e
                                                _%tl127113127139%_)))
                                          (let ((_%hd127115127147%_
                                                 (##car _%e127114127144%_))
                                                (_%tl127116127149%_
                                                 (##cdr _%e127114127144%_)))
                                            (let ((_%expr127152%_
                                                   _%hd127115127147%_))
                                              (if (gx#stx-null?
                                                   _%tl127116127149%_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _%hd127142%_)
                          (cons (gx#core-compile-top-syntax _%expr127152%_)
                                '())))
              (_%E127107127122%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E127107127122%_)))))
                                        (_%E127107127122%_)))))
                              (_%E127107127122%_))))
                      (_%E127107127122%_)))))
          (_%E127106127154%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx127049%_)
        (let* ((_%e127050127063%_ _%stx127049%_)
               (_%E127052127067%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127050127063%_)))
               (_%E127051127100%_
                (lambda ()
                  (if (gx#stx-pair? _%e127050127063%_)
                      (let ((_%e127053127071%_
                             (gx#syntax-e _%e127050127063%_)))
                        (let ((_%hd127054127074%_ (##car _%e127053127071%_))
                              (_%tl127055127076%_ (##cdr _%e127053127071%_)))
                          (if (gx#stx-pair? _%tl127055127076%_)
                              (let ((_%e127056127079%_
                                     (gx#syntax-e _%tl127055127076%_)))
                                (let ((_%hd127057127082%_
                                       (##car _%e127056127079%_))
                                      (_%tl127058127084%_
                                       (##cdr _%e127056127079%_)))
                                  (let ((_%hd127087%_ _%hd127057127082%_))
                                    (if (gx#stx-pair? _%tl127058127084%_)
                                        (let ((_%e127059127089%_
                                               (gx#syntax-e
                                                _%tl127058127084%_)))
                                          (let ((_%hd127060127092%_
                                                 (##car _%e127059127089%_))
                                                (_%tl127061127094%_
                                                 (##cdr _%e127059127089%_)))
                                            (let ((_%expr127097%_
                                                   _%hd127060127092%_))
                                              (if (gx#stx-null?
                                                   _%tl127061127094%_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _%hd127087%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (__call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _%expr127097%_))
                                 gx#current-expander-phi
                                 (##fx+ (gx#current-expander-phi) '1))
                                '())))
              (_%E127052127067%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E127052127067%_)))))
                                        (_%E127052127067%_)))))
                              (_%E127052127067%_))))
                      (_%E127052127067%_)))))
          (_%E127051127100%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx127019%_)
        (let* ((_%e127020127027%_ _%stx127019%_)
               (_%E127022127031%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127020127027%_)))
               (_%E127021127045%_
                (lambda ()
                  (if (gx#stx-pair? _%e127020127027%_)
                      (let ((_%e127023127035%_
                             (gx#syntax-e _%e127020127027%_)))
                        (let ((_%hd127024127038%_ (##car _%e127023127035%_))
                              (_%tl127025127040%_ (##cdr _%e127023127035%_)))
                          (let ((_%body127043%_ _%tl127025127040%_))
                            (if '#t
                                (cons '%#define-alias _%body127043%_)
                                (_%E127022127031%_)))))
                      (_%E127022127031%_)))))
          (_%E127021127045%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx126989%_)
        (let* ((_%e126990126997%_ _%stx126989%_)
               (_%E126992127001%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126990126997%_)))
               (_%E126991127015%_
                (lambda ()
                  (if (gx#stx-pair? _%e126990126997%_)
                      (let ((_%e126993127005%_
                             (gx#syntax-e _%e126990126997%_)))
                        (let ((_%hd126994127008%_ (##car _%e126993127005%_))
                              (_%tl126995127010%_ (##cdr _%e126993127005%_)))
                          (let ((_%body127013%_ _%tl126995127010%_))
                            (if '#t
                                (cons '%#define-runtime _%body127013%_)
                                (_%E126992127001%_)))))
                      (_%E126992127001%_)))))
          (_%E126991127015%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx126959%_)
        (let* ((_%e126960126967%_ _%stx126959%_)
               (_%E126962126971%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126960126967%_)))
               (_%E126961126985%_
                (lambda ()
                  (if (gx#stx-pair? _%e126960126967%_)
                      (let ((_%e126963126975%_
                             (gx#syntax-e _%e126960126967%_)))
                        (let ((_%hd126964126978%_ (##car _%e126963126975%_))
                              (_%tl126965126980%_ (##cdr _%e126963126975%_)))
                          (let ((_%decls126983%_ _%tl126965126980%_))
                            (if '#t
                                (cons '%#declare _%decls126983%_)
                                (_%E126962126971%_)))))
                      (_%E126962126971%_)))))
          (_%E126961126985%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx126929%_)
        (let* ((_%e126930126937%_ _%stx126929%_)
               (_%E126932126941%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126930126937%_)))
               (_%E126931126955%_
                (lambda ()
                  (if (gx#stx-pair? _%e126930126937%_)
                      (let ((_%e126933126945%_
                             (gx#syntax-e _%e126930126937%_)))
                        (let ((_%hd126934126948%_ (##car _%e126933126945%_))
                              (_%tl126935126950%_ (##cdr _%e126933126945%_)))
                          (let ((_%clause126953%_ _%tl126935126950%_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _%clause126953%_))
                                (_%E126932126941%_)))))
                      (_%E126932126941%_)))))
          (_%E126931126955%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx126886%_)
        (let* ((_%e126887126897%_ _%stx126886%_)
               (_%E126889126901%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126887126897%_)))
               (_%E126888126925%_
                (lambda ()
                  (if (gx#stx-pair? _%e126887126897%_)
                      (let ((_%e126890126905%_
                             (gx#syntax-e _%e126887126897%_)))
                        (let ((_%hd126891126908%_ (##car _%e126890126905%_))
                              (_%tl126892126910%_ (##cdr _%e126890126905%_)))
                          (let ((_%hd126913%_ _%hd126891126908%_))
                            (if (gx#stx-pair? _%tl126892126910%_)
                                (let ((_%e126893126915%_
                                       (gx#syntax-e _%tl126892126910%_)))
                                  (let ((_%hd126894126918%_
                                         (##car _%e126893126915%_))
                                        (_%tl126895126920%_
                                         (##cdr _%e126893126915%_)))
                                    (let ((_%body126923%_ _%hd126894126918%_))
                                      (if (gx#stx-null? _%tl126895126920%_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _%hd126913%_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _%body126923%_)
                                                          '()))
                                              (_%E126889126901%_))
                                          (_%E126889126901%_)))))
                                (_%E126889126901%_)))))
                      (_%E126889126901%_)))))
          (_%E126888126925%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx126856%_)
        (let* ((_%e126857126864%_ _%stx126856%_)
               (_%E126859126868%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126857126864%_)))
               (_%E126858126882%_
                (lambda ()
                  (if (gx#stx-pair? _%e126857126864%_)
                      (let ((_%e126860126872%_
                             (gx#syntax-e _%e126857126864%_)))
                        (let ((_%hd126861126875%_ (##car _%e126860126872%_))
                              (_%tl126862126877%_ (##cdr _%e126860126872%_)))
                          (let ((_%clauses126880%_ _%tl126862126877%_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _%clauses126880%_))
                                (_%E126859126868%_)))))
                      (_%E126859126868%_)))))
          (_%E126858126882%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx126791%_ _%form126792%_)
        (let* ((_%e126793126806%_ _%stx126791%_)
               (_%E126795126810%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126793126806%_)))
               (_%E126794126842%_
                (lambda ()
                  (if (gx#stx-pair? _%e126793126806%_)
                      (let ((_%e126796126814%_
                             (gx#syntax-e _%e126793126806%_)))
                        (let ((_%hd126797126817%_ (##car _%e126796126814%_))
                              (_%tl126798126819%_ (##cdr _%e126796126814%_)))
                          (if (gx#stx-pair? _%tl126798126819%_)
                              (let ((_%e126799126822%_
                                     (gx#syntax-e _%tl126798126819%_)))
                                (let ((_%hd126800126825%_
                                       (##car _%e126799126822%_))
                                      (_%tl126801126827%_
                                       (##cdr _%e126799126822%_)))
                                  (let ((_%hd126830%_ _%hd126800126825%_))
                                    (if (gx#stx-pair? _%tl126801126827%_)
                                        (let ((_%e126802126832%_
                                               (gx#syntax-e
                                                _%tl126801126827%_)))
                                          (let ((_%hd126803126835%_
                                                 (##car _%e126802126832%_))
                                                (_%tl126804126837%_
                                                 (##cdr _%e126802126832%_)))
                                            (let ((_%body126840%_
                                                   _%hd126803126835%_))
                                              (if (gx#stx-null?
                                                   _%tl126804126837%_)
                                                  (if '#t
                                                      (cons _%form126792%_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _%hd126830%_)
                          (cons (gx#core-compile-top-syntax _%body126840%_)
                                '())))
              (_%E126795126810%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E126795126810%_)))))
                                        (_%E126795126810%_)))))
                              (_%E126795126810%_))))
                      (_%E126795126810%_)))))
          (_%E126794126842%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx126849%_)
        (let ((_%form126851%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx126849%_ _%form126851%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g127678_
        (let ((_g127677_ (##length _g127678_)))
          (cond ((##fx= _g127677_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g127678_))
                ((##fx= _g127677_ 2)
                 (apply gx#core-compile-top-let-values%__% _g127678_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g127678_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx126788%_)
        (gx#core-compile-top-let-values%__% _%stx126788%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx126786%_)
        (gx#core-compile-top-let-values%__% _%stx126786%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx126745%_)
        (let* ((_%e126746126756%_ _%stx126745%_)
               (_%E126748126760%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126746126756%_)))
               (_%E126747126782%_
                (lambda ()
                  (if (gx#stx-pair? _%e126746126756%_)
                      (let ((_%e126749126764%_
                             (gx#syntax-e _%e126746126756%_)))
                        (let ((_%hd126750126767%_ (##car _%e126749126764%_))
                              (_%tl126751126769%_ (##cdr _%e126749126764%_)))
                          (if (gx#stx-pair? _%tl126751126769%_)
                              (let ((_%e126752126772%_
                                     (gx#syntax-e _%tl126751126769%_)))
                                (let ((_%hd126753126775%_
                                       (##car _%e126752126772%_))
                                      (_%tl126754126777%_
                                       (##cdr _%e126752126772%_)))
                                  (let ((_%e126780%_ _%hd126753126775%_))
                                    (if (gx#stx-null? _%tl126754126777%_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _%e126780%_)
                                                        '()))
                                            (_%E126748126760%_))
                                        (_%E126748126760%_)))))
                              (_%E126748126760%_))))
                      (_%E126748126760%_)))))
          (_%E126747126782%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx126704%_)
        (let* ((_%e126705126715%_ _%stx126704%_)
               (_%E126707126719%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126705126715%_)))
               (_%E126706126741%_
                (lambda ()
                  (if (gx#stx-pair? _%e126705126715%_)
                      (let ((_%e126708126723%_
                             (gx#syntax-e _%e126705126715%_)))
                        (let ((_%hd126709126726%_ (##car _%e126708126723%_))
                              (_%tl126710126728%_ (##cdr _%e126708126723%_)))
                          (if (gx#stx-pair? _%tl126710126728%_)
                              (let ((_%e126711126731%_
                                     (gx#syntax-e _%tl126710126728%_)))
                                (let ((_%hd126712126734%_
                                       (##car _%e126711126731%_))
                                      (_%tl126713126736%_
                                       (##cdr _%e126711126731%_)))
                                  (let ((_%e126739%_ _%hd126712126734%_))
                                    (if (gx#stx-null? _%tl126713126736%_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _%e126739%_)
                                                        '()))
                                            (_%E126707126719%_))
                                        (_%E126707126719%_)))))
                              (_%E126707126719%_))))
                      (_%E126707126719%_)))))
          (_%E126706126741%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx126661%_)
        (let* ((_%e126662126672%_ _%stx126661%_)
               (_%E126664126676%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126662126672%_)))
               (_%E126663126700%_
                (lambda ()
                  (if (gx#stx-pair? _%e126662126672%_)
                      (let ((_%e126665126680%_
                             (gx#syntax-e _%e126662126672%_)))
                        (let ((_%hd126666126683%_ (##car _%e126665126680%_))
                              (_%tl126667126685%_ (##cdr _%e126665126680%_)))
                          (if (gx#stx-pair? _%tl126667126685%_)
                              (let ((_%e126668126688%_
                                     (gx#syntax-e _%tl126667126685%_)))
                                (let ((_%hd126669126691%_
                                       (##car _%e126668126688%_))
                                      (_%tl126670126693%_
                                       (##cdr _%e126668126688%_)))
                                  (let* ((_%rator126696%_ _%hd126669126691%_)
                                         (_%args126698%_ _%tl126670126693%_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _%rator126696%_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _%args126698%_)))
                                        (_%E126664126676%_)))))
                              (_%E126664126676%_))))
                      (_%E126664126676%_)))))
          (_%E126663126700%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx126594%_)
        (let* ((_%e126595126611%_ _%stx126594%_)
               (_%E126597126615%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126595126611%_)))
               (_%E126596126657%_
                (lambda ()
                  (if (gx#stx-pair? _%e126595126611%_)
                      (let ((_%e126598126619%_
                             (gx#syntax-e _%e126595126611%_)))
                        (let ((_%hd126599126622%_ (##car _%e126598126619%_))
                              (_%tl126600126624%_ (##cdr _%e126598126619%_)))
                          (if (gx#stx-pair? _%tl126600126624%_)
                              (let ((_%e126601126627%_
                                     (gx#syntax-e _%tl126600126624%_)))
                                (let ((_%hd126602126630%_
                                       (##car _%e126601126627%_))
                                      (_%tl126603126632%_
                                       (##cdr _%e126601126627%_)))
                                  (let ((_%test126635%_ _%hd126602126630%_))
                                    (if (gx#stx-pair? _%tl126603126632%_)
                                        (let ((_%e126604126637%_
                                               (gx#syntax-e
                                                _%tl126603126632%_)))
                                          (let ((_%hd126605126640%_
                                                 (##car _%e126604126637%_))
                                                (_%tl126606126642%_
                                                 (##cdr _%e126604126637%_)))
                                            (let ((_%K126645%_
                                                   _%hd126605126640%_))
                                              (if (gx#stx-pair?
                                                   _%tl126606126642%_)
                                                  (let ((_%e126607126647%_
                                                         (gx#syntax-e
                                                          _%tl126606126642%_)))
                                                    (let ((_%hd126608126650%_
                                                           (##car _%e126607126647%_))
                                                          (_%tl126609126652%_
                                                           (##cdr _%e126607126647%_)))
                                                      (let ((_%E126655%_
                                                             _%hd126608126650%_))
                                                        (if (gx#stx-null?
                                                             _%tl126609126652%_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _%test126635%_)
                                    (cons (gx#core-compile-top-syntax
                                           _%K126645%_)
                                          (cons (gx#core-compile-top-syntax
                                                 _%E126655%_)
                                                '()))))
                        (_%E126597126615%_))
                    (_%E126597126615%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E126597126615%_)))))
                                        (_%E126597126615%_)))))
                              (_%E126597126615%_))))
                      (_%E126597126615%_)))))
          (_%E126596126657%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx126553%_)
        (let* ((_%e126554126564%_ _%stx126553%_)
               (_%E126556126568%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126554126564%_)))
               (_%E126555126590%_
                (lambda ()
                  (if (gx#stx-pair? _%e126554126564%_)
                      (let ((_%e126557126572%_
                             (gx#syntax-e _%e126554126564%_)))
                        (let ((_%hd126558126575%_ (##car _%e126557126572%_))
                              (_%tl126559126577%_ (##cdr _%e126557126572%_)))
                          (if (gx#stx-pair? _%tl126559126577%_)
                              (let ((_%e126560126580%_
                                     (gx#syntax-e _%tl126559126577%_)))
                                (let ((_%hd126561126583%_
                                       (##car _%e126560126580%_))
                                      (_%tl126562126585%_
                                       (##cdr _%e126560126580%_)))
                                  (let ((_%id126588%_ _%hd126561126583%_))
                                    (if (gx#stx-null? _%tl126562126585%_)
                                        (if (gx#identifier? _%id126588%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id126588%_)
                                                        '()))
                                            (_%E126556126568%_))
                                        (_%E126556126568%_)))))
                              (_%E126556126568%_))))
                      (_%E126556126568%_)))))
          (_%E126555126590%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx126499%_)
        (let* ((_%e126500126513%_ _%stx126499%_)
               (_%E126502126517%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126500126513%_)))
               (_%E126501126549%_
                (lambda ()
                  (if (gx#stx-pair? _%e126500126513%_)
                      (let ((_%e126503126521%_
                             (gx#syntax-e _%e126500126513%_)))
                        (let ((_%hd126504126524%_ (##car _%e126503126521%_))
                              (_%tl126505126526%_ (##cdr _%e126503126521%_)))
                          (if (gx#stx-pair? _%tl126505126526%_)
                              (let ((_%e126506126529%_
                                     (gx#syntax-e _%tl126505126526%_)))
                                (let ((_%hd126507126532%_
                                       (##car _%e126506126529%_))
                                      (_%tl126508126534%_
                                       (##cdr _%e126506126529%_)))
                                  (let ((_%id126537%_ _%hd126507126532%_))
                                    (if (gx#stx-pair? _%tl126508126534%_)
                                        (let ((_%e126509126539%_
                                               (gx#syntax-e
                                                _%tl126508126534%_)))
                                          (let ((_%hd126510126542%_
                                                 (##car _%e126509126539%_))
                                                (_%tl126511126544%_
                                                 (##cdr _%e126509126539%_)))
                                            (let ((_%expr126547%_
                                                   _%hd126510126542%_))
                                              (if (gx#stx-null?
                                                   _%tl126511126544%_)
                                                  (if (gx#identifier?
                                                       _%id126537%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id126537%_)
                          (cons (gx#core-compile-top-syntax _%expr126547%_)
                                '())))
              (_%E126502126517%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E126502126517%_)))))
                                        (_%E126502126517%_)))))
                              (_%E126502126517%_))))
                      (_%E126502126517%_)))))
          (_%E126501126549%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id126493%_)
        (let ((_%$e126495%_ (gx#resolve-identifier__0 _%id126493%_)))
          (if _%$e126495%_
              (##unchecked-structure-ref _%$e126495%_ '1 '#f '#f)
              _%id126493%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd126491%_)
        (if (gx#identifier? _%hd126491%_)
            (gx#core-compile-top-runtime-ref _%hd126491%_)
            '#f)))))
