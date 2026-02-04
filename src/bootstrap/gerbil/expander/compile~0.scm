(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1770248971)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx153938%_)
        (let* ((_%e153939153946%_ _%stx153938%_)
               (_%E153941153950%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153939153946%_)))
               (_%E153940153964%_
                (lambda ()
                  (if (gx#stx-pair? _%e153939153946%_)
                      (let ((_%e153942153954%_
                             (gx#syntax-e _%e153939153946%_)))
                        (let ((_%hd153943153957%_ (##car _%e153942153954%_))
                              (_%tl153944153959%_ (##cdr _%e153942153954%_)))
                          (let* ((_%form153962%_ _%hd153943153957%_)
                                 (__self153967
                                  (gx#syntax-local-e__0 _%form153962%_))
                                 (__method153968
                                  (__method-ref
                                   __self153967
                                   'compile-top-syntax)))
                            (if __method153968
                                (__method153968 __self153967 _%stx153938%_)
                                (begin
                                  (error '"Missing method"
                                         __self153967
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%E153941153950%_)))))
          (_%E153940153964%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self153887%_ _%stx153888%_)
        (let* ((_%self153891%_ _%self153887%_)
               (_%self153900153908%_ _%self153891%_)
               (_%E153902153911%_
                (lambda ()
                  (error '"No clause matching"
                         _%self153900153908%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K153903153924%_
                (lambda (_%K153914%_)
                  (let ((_%$e153916%_ (gx#stx-source _%stx153888%_)))
                    (if _%$e153916%_
                        ((lambda (_%g153918153920%_)
                           (gx#stx-wrap-source
                            (_%K153914%_ _%stx153888%_)
                            _%g153918153920%_))
                         _%$e153916%_)
                        (_%K153914%_ _%stx153888%_)))))
               (_%e153904153927%_
                (##unchecked-structure-ref _%self153900153908%_ '1 '#f '#f))
               (_%e153905153930%_
                (##unchecked-structure-ref _%self153900153908%_ '2 '#f '#f))
               (_%e153906153933%_
                (##unchecked-structure-ref _%self153900153908%_ '3 '#f '#f))
               (_%K153936%_ _%e153906153933%_))
          (_%K153903153924%_ _%K153936%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx153761%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx153761%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx153731%_)
        (let* ((_%e153732153739%_ _%stx153731%_)
               (_%E153734153743%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153732153739%_)))
               (_%E153733153757%_
                (lambda ()
                  (if (gx#stx-pair? _%e153732153739%_)
                      (let ((_%e153735153747%_
                             (gx#syntax-e _%e153732153739%_)))
                        (let ((_%hd153736153750%_ (##car _%e153735153747%_))
                              (_%tl153737153752%_ (##cdr _%e153735153747%_)))
                          (let ((_%body153755%_ _%tl153737153752%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body153755%_)))))
                      (_%E153734153743%_)))))
          (_%E153733153757%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx153700%_)
        (let* ((_%e153701153708%_ _%stx153700%_)
               (_%E153703153712%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153701153708%_)))
               (_%E153702153727%_
                (lambda ()
                  (if (gx#stx-pair? _%e153701153708%_)
                      (let ((_%e153704153716%_
                             (gx#syntax-e _%e153701153708%_)))
                        (let ((_%hd153705153719%_ (##car _%e153704153716%_))
                              (_%tl153706153721%_ (##cdr _%e153704153716%_)))
                          (let ((_%body153724%_ _%tl153706153721%_))
                            (cons '%#begin-syntax
                                  (call-with-parameters__1
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body153724%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%E153703153712%_)))))
          (_%E153702153727%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx153670%_)
        (let* ((_%e153671153678%_ _%stx153670%_)
               (_%E153673153682%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153671153678%_)))
               (_%E153672153696%_
                (lambda ()
                  (if (gx#stx-pair? _%e153671153678%_)
                      (let ((_%e153674153686%_
                             (gx#syntax-e _%e153671153678%_)))
                        (let ((_%hd153675153689%_ (##car _%e153674153686%_))
                              (_%tl153676153691%_ (##cdr _%e153674153686%_)))
                          (let ((_%body153694%_ _%tl153676153691%_))
                            (cons '%#begin-foreign _%body153694%_))))
                      (_%E153673153682%_)))))
          (_%E153672153696%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx153616%_)
        (let* ((_%e153617153630%_ _%stx153616%_)
               (_%E153619153634%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153617153630%_)))
               (_%E153618153666%_
                (lambda ()
                  (if (gx#stx-pair? _%e153617153630%_)
                      (let ((_%e153620153638%_
                             (gx#syntax-e _%e153617153630%_)))
                        (let ((_%hd153621153641%_ (##car _%e153620153638%_))
                              (_%tl153622153643%_ (##cdr _%e153620153638%_)))
                          (if (gx#stx-pair? _%tl153622153643%_)
                              (let ((_%e153623153646%_
                                     (gx#syntax-e _%tl153622153643%_)))
                                (let ((_%hd153624153649%_
                                       (##car _%e153623153646%_))
                                      (_%tl153625153651%_
                                       (##cdr _%e153623153646%_)))
                                  (let ((_%ann153654%_ _%hd153624153649%_))
                                    (if (gx#stx-pair? _%tl153625153651%_)
                                        (let ((_%e153626153656%_
                                               (gx#syntax-e
                                                _%tl153625153651%_)))
                                          (let ((_%hd153627153659%_
                                                 (##car _%e153626153656%_))
                                                (_%tl153628153661%_
                                                 (##cdr _%e153626153656%_)))
                                            (let ((_%expr153664%_
                                                   _%hd153627153659%_))
                                              (if (gx#stx-null?
                                                   _%tl153628153661%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr153664%_)
                                                  (_%E153619153634%_)))))
                                        (_%E153619153634%_)))))
                              (_%E153619153634%_))))
                      (_%E153619153634%_)))))
          (_%E153618153666%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx153586%_)
        (let* ((_%e153587153594%_ _%stx153586%_)
               (_%E153589153598%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153587153594%_)))
               (_%E153588153612%_
                (lambda ()
                  (if (gx#stx-pair? _%e153587153594%_)
                      (let ((_%e153590153602%_
                             (gx#syntax-e _%e153587153594%_)))
                        (let ((_%hd153591153605%_ (##car _%e153590153602%_))
                              (_%tl153592153607%_ (##cdr _%e153590153602%_)))
                          (let ((_%body153610%_ _%tl153592153607%_))
                            (cons '%#import _%body153610%_))))
                      (_%E153589153598%_)))))
          (_%E153588153612%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx153543%_)
        (let* ((_%e153544153554%_ _%stx153543%_)
               (_%E153546153558%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153544153554%_)))
               (_%E153545153582%_
                (lambda ()
                  (if (gx#stx-pair? _%e153544153554%_)
                      (let ((_%e153547153562%_
                             (gx#syntax-e _%e153544153554%_)))
                        (let ((_%hd153548153565%_ (##car _%e153547153562%_))
                              (_%tl153549153567%_ (##cdr _%e153547153562%_)))
                          (if (gx#stx-pair? _%tl153549153567%_)
                              (let ((_%e153550153570%_
                                     (gx#syntax-e _%tl153549153567%_)))
                                (let ((_%hd153551153573%_
                                       (##car _%e153550153570%_))
                                      (_%tl153552153575%_
                                       (##cdr _%e153550153570%_)))
                                  (let* ((_%hd153578%_ _%hd153551153573%_)
                                         (_%body153580%_ _%tl153552153575%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd153578%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body153580%_))))))
                              (_%E153546153558%_))))
                      (_%E153546153558%_)))))
          (_%E153545153582%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx153513%_)
        (let* ((_%e153514153521%_ _%stx153513%_)
               (_%E153516153525%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153514153521%_)))
               (_%E153515153539%_
                (lambda ()
                  (if (gx#stx-pair? _%e153514153521%_)
                      (let ((_%e153517153529%_
                             (gx#syntax-e _%e153514153521%_)))
                        (let ((_%hd153518153532%_ (##car _%e153517153529%_))
                              (_%tl153519153534%_ (##cdr _%e153517153529%_)))
                          (let ((_%body153537%_ _%tl153519153534%_))
                            (cons '%#export _%body153537%_))))
                      (_%E153516153525%_)))))
          (_%E153515153539%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx153483%_)
        (let* ((_%e153484153491%_ _%stx153483%_)
               (_%E153486153495%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153484153491%_)))
               (_%E153485153509%_
                (lambda ()
                  (if (gx#stx-pair? _%e153484153491%_)
                      (let ((_%e153487153499%_
                             (gx#syntax-e _%e153484153491%_)))
                        (let ((_%hd153488153502%_ (##car _%e153487153499%_))
                              (_%tl153489153504%_ (##cdr _%e153487153499%_)))
                          (let ((_%body153507%_ _%tl153489153504%_))
                            (cons '%#provide _%body153507%_))))
                      (_%E153486153495%_)))))
          (_%E153485153509%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx153453%_)
        (let* ((_%e153454153461%_ _%stx153453%_)
               (_%E153456153465%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153454153461%_)))
               (_%E153455153479%_
                (lambda ()
                  (if (gx#stx-pair? _%e153454153461%_)
                      (let ((_%e153457153469%_
                             (gx#syntax-e _%e153454153461%_)))
                        (let ((_%hd153458153472%_ (##car _%e153457153469%_))
                              (_%tl153459153474%_ (##cdr _%e153457153469%_)))
                          (let ((_%body153477%_ _%tl153459153474%_))
                            (cons '%#extern _%body153477%_))))
                      (_%E153456153465%_)))))
          (_%E153455153479%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx153399%_)
        (let* ((_%e153400153413%_ _%stx153399%_)
               (_%E153402153417%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153400153413%_)))
               (_%E153401153449%_
                (lambda ()
                  (if (gx#stx-pair? _%e153400153413%_)
                      (let ((_%e153403153421%_
                             (gx#syntax-e _%e153400153413%_)))
                        (let ((_%hd153404153424%_ (##car _%e153403153421%_))
                              (_%tl153405153426%_ (##cdr _%e153403153421%_)))
                          (if (gx#stx-pair? _%tl153405153426%_)
                              (let ((_%e153406153429%_
                                     (gx#syntax-e _%tl153405153426%_)))
                                (let ((_%hd153407153432%_
                                       (##car _%e153406153429%_))
                                      (_%tl153408153434%_
                                       (##cdr _%e153406153429%_)))
                                  (let ((_%hd153437%_ _%hd153407153432%_))
                                    (if (gx#stx-pair? _%tl153408153434%_)
                                        (let ((_%e153409153439%_
                                               (gx#syntax-e
                                                _%tl153408153434%_)))
                                          (let ((_%hd153410153442%_
                                                 (##car _%e153409153439%_))
                                                (_%tl153411153444%_
                                                 (##cdr _%e153409153439%_)))
                                            (let ((_%expr153447%_
                                                   _%hd153410153442%_))
                                              (if (gx#stx-null?
                                                   _%tl153411153444%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd153437%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr153447%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E153402153417%_)))))
                                        (_%E153402153417%_)))))
                              (_%E153402153417%_))))
                      (_%E153402153417%_)))))
          (_%E153401153449%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx153344%_)
        (let* ((_%e153345153358%_ _%stx153344%_)
               (_%E153347153362%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153345153358%_)))
               (_%E153346153395%_
                (lambda ()
                  (if (gx#stx-pair? _%e153345153358%_)
                      (let ((_%e153348153366%_
                             (gx#syntax-e _%e153345153358%_)))
                        (let ((_%hd153349153369%_ (##car _%e153348153366%_))
                              (_%tl153350153371%_ (##cdr _%e153348153366%_)))
                          (if (gx#stx-pair? _%tl153350153371%_)
                              (let ((_%e153351153374%_
                                     (gx#syntax-e _%tl153350153371%_)))
                                (let ((_%hd153352153377%_
                                       (##car _%e153351153374%_))
                                      (_%tl153353153379%_
                                       (##cdr _%e153351153374%_)))
                                  (let ((_%hd153382%_ _%hd153352153377%_))
                                    (if (gx#stx-pair? _%tl153353153379%_)
                                        (let ((_%e153354153384%_
                                               (gx#syntax-e
                                                _%tl153353153379%_)))
                                          (let ((_%hd153355153387%_
                                                 (##car _%e153354153384%_))
                                                (_%tl153356153389%_
                                                 (##cdr _%e153354153384%_)))
                                            (let ((_%expr153392%_
                                                   _%hd153355153387%_))
                                              (if (gx#stx-null?
                                                   _%tl153356153389%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd153382%_
                                                              (cons (call-with-parameters__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr153392%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E153347153362%_)))))
                                        (_%E153347153362%_)))))
                              (_%E153347153362%_))))
                      (_%E153347153362%_)))))
          (_%E153346153395%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx153314%_)
        (let* ((_%e153315153322%_ _%stx153314%_)
               (_%E153317153326%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153315153322%_)))
               (_%E153316153340%_
                (lambda ()
                  (if (gx#stx-pair? _%e153315153322%_)
                      (let ((_%e153318153330%_
                             (gx#syntax-e _%e153315153322%_)))
                        (let ((_%hd153319153333%_ (##car _%e153318153330%_))
                              (_%tl153320153335%_ (##cdr _%e153318153330%_)))
                          (let ((_%body153338%_ _%tl153320153335%_))
                            (cons '%#define-alias _%body153338%_))))
                      (_%E153317153326%_)))))
          (_%E153316153340%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx153284%_)
        (let* ((_%e153285153292%_ _%stx153284%_)
               (_%E153287153296%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153285153292%_)))
               (_%E153286153310%_
                (lambda ()
                  (if (gx#stx-pair? _%e153285153292%_)
                      (let ((_%e153288153300%_
                             (gx#syntax-e _%e153285153292%_)))
                        (let ((_%hd153289153303%_ (##car _%e153288153300%_))
                              (_%tl153290153305%_ (##cdr _%e153288153300%_)))
                          (let ((_%body153308%_ _%tl153290153305%_))
                            (cons '%#define-runtime _%body153308%_))))
                      (_%E153287153296%_)))))
          (_%E153286153310%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx153254%_)
        (let* ((_%e153255153262%_ _%stx153254%_)
               (_%E153257153266%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153255153262%_)))
               (_%E153256153280%_
                (lambda ()
                  (if (gx#stx-pair? _%e153255153262%_)
                      (let ((_%e153258153270%_
                             (gx#syntax-e _%e153255153262%_)))
                        (let ((_%hd153259153273%_ (##car _%e153258153270%_))
                              (_%tl153260153275%_ (##cdr _%e153258153270%_)))
                          (let ((_%decls153278%_ _%tl153260153275%_))
                            (cons '%#declare _%decls153278%_))))
                      (_%E153257153266%_)))))
          (_%E153256153280%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx153224%_)
        (let* ((_%e153225153232%_ _%stx153224%_)
               (_%E153227153236%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153225153232%_)))
               (_%E153226153250%_
                (lambda ()
                  (if (gx#stx-pair? _%e153225153232%_)
                      (let ((_%e153228153240%_
                             (gx#syntax-e _%e153225153232%_)))
                        (let ((_%hd153229153243%_ (##car _%e153228153240%_))
                              (_%tl153230153245%_ (##cdr _%e153228153240%_)))
                          (let ((_%clause153248%_ _%tl153230153245%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause153248%_)))))
                      (_%E153227153236%_)))))
          (_%E153226153250%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx153181%_)
        (let* ((_%e153182153192%_ _%stx153181%_)
               (_%E153184153196%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153182153192%_)))
               (_%E153183153220%_
                (lambda ()
                  (if (gx#stx-pair? _%e153182153192%_)
                      (let ((_%e153185153200%_
                             (gx#syntax-e _%e153182153192%_)))
                        (let ((_%hd153186153203%_ (##car _%e153185153200%_))
                              (_%tl153187153205%_ (##cdr _%e153185153200%_)))
                          (let ((_%hd153208%_ _%hd153186153203%_))
                            (if (gx#stx-pair? _%tl153187153205%_)
                                (let ((_%e153188153210%_
                                       (gx#syntax-e _%tl153187153205%_)))
                                  (let ((_%hd153189153213%_
                                         (##car _%e153188153210%_))
                                        (_%tl153190153215%_
                                         (##cdr _%e153188153210%_)))
                                    (let ((_%body153218%_ _%hd153189153213%_))
                                      (if (gx#stx-null? _%tl153190153215%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd153208%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body153218%_)
                                                      '()))
                                          (_%E153184153196%_)))))
                                (_%E153184153196%_)))))
                      (_%E153184153196%_)))))
          (_%E153183153220%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx153151%_)
        (let* ((_%e153152153159%_ _%stx153151%_)
               (_%E153154153163%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153152153159%_)))
               (_%E153153153177%_
                (lambda ()
                  (if (gx#stx-pair? _%e153152153159%_)
                      (let ((_%e153155153167%_
                             (gx#syntax-e _%e153152153159%_)))
                        (let ((_%hd153156153170%_ (##car _%e153155153167%_))
                              (_%tl153157153172%_ (##cdr _%e153155153167%_)))
                          (let ((_%clauses153175%_ _%tl153157153172%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses153175%_)))))
                      (_%E153154153163%_)))))
          (_%E153153153177%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx153086%_ _%form153087%_)
        (let* ((_%e153088153101%_ _%stx153086%_)
               (_%E153090153105%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153088153101%_)))
               (_%E153089153137%_
                (lambda ()
                  (if (gx#stx-pair? _%e153088153101%_)
                      (let ((_%e153091153109%_
                             (gx#syntax-e _%e153088153101%_)))
                        (let ((_%hd153092153112%_ (##car _%e153091153109%_))
                              (_%tl153093153114%_ (##cdr _%e153091153109%_)))
                          (if (gx#stx-pair? _%tl153093153114%_)
                              (let ((_%e153094153117%_
                                     (gx#syntax-e _%tl153093153114%_)))
                                (let ((_%hd153095153120%_
                                       (##car _%e153094153117%_))
                                      (_%tl153096153122%_
                                       (##cdr _%e153094153117%_)))
                                  (let ((_%hd153125%_ _%hd153095153120%_))
                                    (if (gx#stx-pair? _%tl153096153122%_)
                                        (let ((_%e153097153127%_
                                               (gx#syntax-e
                                                _%tl153096153122%_)))
                                          (let ((_%hd153098153130%_
                                                 (##car _%e153097153127%_))
                                                (_%tl153099153132%_
                                                 (##cdr _%e153097153127%_)))
                                            (let ((_%body153135%_
                                                   _%hd153098153130%_))
                                              (if (gx#stx-null?
                                                   _%tl153099153132%_)
                                                  (cons _%form153087%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd153125%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body153135%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E153090153105%_)))))
                                        (_%E153090153105%_)))))
                              (_%E153090153105%_))))
                      (_%E153090153105%_)))))
          (_%E153089153137%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx153144%_)
        (let ((_%form153146%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx153144%_ _%form153146%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g153969_
        (let ((_g153970_ (##length _g153969_)))
          (cond ((##fx= _g153970_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g153969_))
                ((##fx= _g153970_ 2)
                 (apply gx#core-compile-top-let-values%__% _g153969_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g153969_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx153083%_)
        (gx#core-compile-top-let-values%__% _%stx153083%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx153081%_)
        (gx#core-compile-top-let-values%__% _%stx153081%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx153040%_)
        (let* ((_%e153041153051%_ _%stx153040%_)
               (_%E153043153055%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153041153051%_)))
               (_%E153042153077%_
                (lambda ()
                  (if (gx#stx-pair? _%e153041153051%_)
                      (let ((_%e153044153059%_
                             (gx#syntax-e _%e153041153051%_)))
                        (let ((_%hd153045153062%_ (##car _%e153044153059%_))
                              (_%tl153046153064%_ (##cdr _%e153044153059%_)))
                          (if (gx#stx-pair? _%tl153046153064%_)
                              (let ((_%e153047153067%_
                                     (gx#syntax-e _%tl153046153064%_)))
                                (let ((_%hd153048153070%_
                                       (##car _%e153047153067%_))
                                      (_%tl153049153072%_
                                       (##cdr _%e153047153067%_)))
                                  (let ((_%e153075%_ _%hd153048153070%_))
                                    (if (gx#stx-null? _%tl153049153072%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e153075%_)
                                                    '()))
                                        (_%E153043153055%_)))))
                              (_%E153043153055%_))))
                      (_%E153043153055%_)))))
          (_%E153042153077%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx152999%_)
        (let* ((_%e153000153010%_ _%stx152999%_)
               (_%E153002153014%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153000153010%_)))
               (_%E153001153036%_
                (lambda ()
                  (if (gx#stx-pair? _%e153000153010%_)
                      (let ((_%e153003153018%_
                             (gx#syntax-e _%e153000153010%_)))
                        (let ((_%hd153004153021%_ (##car _%e153003153018%_))
                              (_%tl153005153023%_ (##cdr _%e153003153018%_)))
                          (if (gx#stx-pair? _%tl153005153023%_)
                              (let ((_%e153006153026%_
                                     (gx#syntax-e _%tl153005153023%_)))
                                (let ((_%hd153007153029%_
                                       (##car _%e153006153026%_))
                                      (_%tl153008153031%_
                                       (##cdr _%e153006153026%_)))
                                  (let ((_%e153034%_ _%hd153007153029%_))
                                    (if (gx#stx-null? _%tl153008153031%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e153034%_)
                                                    '()))
                                        (_%E153002153014%_)))))
                              (_%E153002153014%_))))
                      (_%E153002153014%_)))))
          (_%E153001153036%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx152956%_)
        (let* ((_%e152957152967%_ _%stx152956%_)
               (_%E152959152971%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e152957152967%_)))
               (_%E152958152995%_
                (lambda ()
                  (if (gx#stx-pair? _%e152957152967%_)
                      (let ((_%e152960152975%_
                             (gx#syntax-e _%e152957152967%_)))
                        (let ((_%hd152961152978%_ (##car _%e152960152975%_))
                              (_%tl152962152980%_ (##cdr _%e152960152975%_)))
                          (if (gx#stx-pair? _%tl152962152980%_)
                              (let ((_%e152963152983%_
                                     (gx#syntax-e _%tl152962152980%_)))
                                (let ((_%hd152964152986%_
                                       (##car _%e152963152983%_))
                                      (_%tl152965152988%_
                                       (##cdr _%e152963152983%_)))
                                  (let* ((_%rator152991%_ _%hd152964152986%_)
                                         (_%args152993%_ _%tl152965152988%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator152991%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args152993%_))))))
                              (_%E152959152971%_))))
                      (_%E152959152971%_)))))
          (_%E152958152995%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx152889%_)
        (let* ((_%e152890152906%_ _%stx152889%_)
               (_%E152892152910%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e152890152906%_)))
               (_%E152891152952%_
                (lambda ()
                  (if (gx#stx-pair? _%e152890152906%_)
                      (let ((_%e152893152914%_
                             (gx#syntax-e _%e152890152906%_)))
                        (let ((_%hd152894152917%_ (##car _%e152893152914%_))
                              (_%tl152895152919%_ (##cdr _%e152893152914%_)))
                          (if (gx#stx-pair? _%tl152895152919%_)
                              (let ((_%e152896152922%_
                                     (gx#syntax-e _%tl152895152919%_)))
                                (let ((_%hd152897152925%_
                                       (##car _%e152896152922%_))
                                      (_%tl152898152927%_
                                       (##cdr _%e152896152922%_)))
                                  (let ((_%test152930%_ _%hd152897152925%_))
                                    (if (gx#stx-pair? _%tl152898152927%_)
                                        (let ((_%e152899152932%_
                                               (gx#syntax-e
                                                _%tl152898152927%_)))
                                          (let ((_%hd152900152935%_
                                                 (##car _%e152899152932%_))
                                                (_%tl152901152937%_
                                                 (##cdr _%e152899152932%_)))
                                            (let ((_%K152940%_
                                                   _%hd152900152935%_))
                                              (if (gx#stx-pair?
                                                   _%tl152901152937%_)
                                                  (let ((_%e152902152942%_
                                                         (gx#syntax-e
                                                          _%tl152901152937%_)))
                                                    (let ((_%hd152903152945%_
                                                           (##car _%e152902152942%_))
                                                          (_%tl152904152947%_
                                                           (##cdr _%e152902152942%_)))
                                                      (let ((_%E152950%_
                                                             _%hd152903152945%_))
                                                        (if (gx#stx-null?
                                                             _%tl152904152947%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test152930%_)
                                (cons (gx#core-compile-top-syntax _%K152940%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E152950%_)
                                            '()))))
                    (_%E152892152910%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E152892152910%_)))))
                                        (_%E152892152910%_)))))
                              (_%E152892152910%_))))
                      (_%E152892152910%_)))))
          (_%E152891152952%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx152848%_)
        (let* ((_%e152849152859%_ _%stx152848%_)
               (_%E152851152863%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e152849152859%_)))
               (_%E152850152885%_
                (lambda ()
                  (if (gx#stx-pair? _%e152849152859%_)
                      (let ((_%e152852152867%_
                             (gx#syntax-e _%e152849152859%_)))
                        (let ((_%hd152853152870%_ (##car _%e152852152867%_))
                              (_%tl152854152872%_ (##cdr _%e152852152867%_)))
                          (if (gx#stx-pair? _%tl152854152872%_)
                              (let ((_%e152855152875%_
                                     (gx#syntax-e _%tl152854152872%_)))
                                (let ((_%hd152856152878%_
                                       (##car _%e152855152875%_))
                                      (_%tl152857152880%_
                                       (##cdr _%e152855152875%_)))
                                  (let ((_%id152883%_ _%hd152856152878%_))
                                    (if (gx#stx-null? _%tl152857152880%_)
                                        (if (gx#identifier? _%id152883%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id152883%_)
                                                        '()))
                                            (_%E152851152863%_))
                                        (_%E152851152863%_)))))
                              (_%E152851152863%_))))
                      (_%E152851152863%_)))))
          (_%E152850152885%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx152794%_)
        (let* ((_%e152795152808%_ _%stx152794%_)
               (_%E152797152812%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e152795152808%_)))
               (_%E152796152844%_
                (lambda ()
                  (if (gx#stx-pair? _%e152795152808%_)
                      (let ((_%e152798152816%_
                             (gx#syntax-e _%e152795152808%_)))
                        (let ((_%hd152799152819%_ (##car _%e152798152816%_))
                              (_%tl152800152821%_ (##cdr _%e152798152816%_)))
                          (if (gx#stx-pair? _%tl152800152821%_)
                              (let ((_%e152801152824%_
                                     (gx#syntax-e _%tl152800152821%_)))
                                (let ((_%hd152802152827%_
                                       (##car _%e152801152824%_))
                                      (_%tl152803152829%_
                                       (##cdr _%e152801152824%_)))
                                  (let ((_%id152832%_ _%hd152802152827%_))
                                    (if (gx#stx-pair? _%tl152803152829%_)
                                        (let ((_%e152804152834%_
                                               (gx#syntax-e
                                                _%tl152803152829%_)))
                                          (let ((_%hd152805152837%_
                                                 (##car _%e152804152834%_))
                                                (_%tl152806152839%_
                                                 (##cdr _%e152804152834%_)))
                                            (let ((_%expr152842%_
                                                   _%hd152805152837%_))
                                              (if (gx#stx-null?
                                                   _%tl152806152839%_)
                                                  (if (gx#identifier?
                                                       _%id152832%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id152832%_)
                          (cons (gx#core-compile-top-syntax _%expr152842%_)
                                '())))
              (_%E152797152812%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E152797152812%_)))))
                                        (_%E152797152812%_)))))
                              (_%E152797152812%_))))
                      (_%E152797152812%_)))))
          (_%E152796152844%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id152788%_)
        (let ((_%$e152790%_ (gx#resolve-identifier__0 _%id152788%_)))
          (if _%$e152790%_
              (##unchecked-structure-ref _%$e152790%_ '1 '#f '#f)
              _%id152788%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd152786%_)
        (if (gx#identifier? _%hd152786%_)
            (gx#core-compile-top-runtime-ref _%hd152786%_)
            '#f)))))
