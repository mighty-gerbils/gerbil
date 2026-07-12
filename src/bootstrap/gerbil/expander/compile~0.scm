(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1783878477)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
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
                          (let* ((_%form193361%_ _%$%hd193342193356%_)
                                 (__self193366
                                  (gx#syntax-local-e__0 _%form193361%_))
                                 (__method193367
                                  (__method-ref
                                   __self193366
                                   'compile-top-syntax)))
                            (if __method193367
                                (__method193367 __self193366 _%stx193337%_)
                                (begin
                                  (error '"Missing method"
                                         __self193366
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%$%E193340193349%_)))))
          (_%$%E193339193363%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self193286%_ _%stx193287%_)
        (let* ((_%self193290%_ _%self193286%_)
               (_%$%self193299193307%_ _%self193290%_)
               (_%$%E193301193310%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%self193299193307%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%$%K193302193323%_
                (lambda (_%K193313%_)
                  (let ((_%$e193315%_ (gx#stx-source _%stx193287%_)))
                    (if _%$e193315%_
                        (gx#stx-wrap-source
                         (_%K193313%_ _%stx193287%_)
                         _%$e193315%_)
                        (_%K193313%_ _%stx193287%_)))))
               (_%$%e193303193326%_
                (##unchecked-structure-ref _%$%self193299193307%_ '1 '#f '#f))
               (_%$%e193304193329%_
                (##unchecked-structure-ref _%$%self193299193307%_ '2 '#f '#f))
               (_%$%e193305193332%_
                (##unchecked-structure-ref _%$%self193299193307%_ '3 '#f '#f))
               (_%K193335%_ _%$%e193305193332%_))
          (_%$%K193302193323%_ _%K193335%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx193160%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx193160%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx193130%_)
        (let* ((_%$%e193131193138%_ _%stx193130%_)
               (_%$%E193133193142%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e193131193138%_)))
               (_%$%E193132193156%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e193131193138%_)
                      (let ((_%$%e193134193146%_
                             (gx#syntax-e _%$%e193131193138%_)))
                        (let ((_%$%hd193135193149%_
                               (##car _%$%e193134193146%_))
                              (_%$%tl193136193151%_
                               (##cdr _%$%e193134193146%_)))
                          (let ((_%body193154%_ _%$%tl193136193151%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body193154%_)))))
                      (_%$%E193133193142%_)))))
          (_%$%E193132193156%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx193099%_)
        (let* ((_%$%e193100193107%_ _%stx193099%_)
               (_%$%E193102193111%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e193100193107%_)))
               (_%$%E193101193126%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e193100193107%_)
                      (let ((_%$%e193103193115%_
                             (gx#syntax-e _%$%e193100193107%_)))
                        (let ((_%$%hd193104193118%_
                               (##car _%$%e193103193115%_))
                              (_%$%tl193105193120%_
                               (##cdr _%$%e193103193115%_)))
                          (let ((_%body193123%_ _%$%tl193105193120%_))
                            (cons '%#begin-syntax
                                  (call-with-parameters__1
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body193123%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%$%E193102193111%_)))))
          (_%$%E193101193126%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx193069%_)
        (let* ((_%$%e193070193077%_ _%stx193069%_)
               (_%$%E193072193081%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e193070193077%_)))
               (_%$%E193071193095%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e193070193077%_)
                      (let ((_%$%e193073193085%_
                             (gx#syntax-e _%$%e193070193077%_)))
                        (let ((_%$%hd193074193088%_
                               (##car _%$%e193073193085%_))
                              (_%$%tl193075193090%_
                               (##cdr _%$%e193073193085%_)))
                          (let ((_%body193093%_ _%$%tl193075193090%_))
                            (cons '%#begin-foreign _%body193093%_))))
                      (_%$%E193072193081%_)))))
          (_%$%E193071193095%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx193015%_)
        (let* ((_%$%e193016193029%_ _%stx193015%_)
               (_%$%E193018193033%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e193016193029%_)))
               (_%$%E193017193065%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e193016193029%_)
                      (let ((_%$%e193019193037%_
                             (gx#syntax-e _%$%e193016193029%_)))
                        (let ((_%$%hd193020193040%_
                               (##car _%$%e193019193037%_))
                              (_%$%tl193021193042%_
                               (##cdr _%$%e193019193037%_)))
                          (if (gx#stx-pair? _%$%tl193021193042%_)
                              (let ((_%$%e193022193045%_
                                     (gx#syntax-e _%$%tl193021193042%_)))
                                (let ((_%$%hd193023193048%_
                                       (##car _%$%e193022193045%_))
                                      (_%$%tl193024193050%_
                                       (##cdr _%$%e193022193045%_)))
                                  (let ((_%ann193053%_ _%$%hd193023193048%_))
                                    (if (gx#stx-pair? _%$%tl193024193050%_)
                                        (let ((_%$%e193025193055%_
                                               (gx#syntax-e
                                                _%$%tl193024193050%_)))
                                          (let ((_%$%hd193026193058%_
                                                 (##car _%$%e193025193055%_))
                                                (_%$%tl193027193060%_
                                                 (##cdr _%$%e193025193055%_)))
                                            (let ((_%expr193063%_
                                                   _%$%hd193026193058%_))
                                              (if (gx#stx-null?
                                                   _%$%tl193027193060%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr193063%_)
                                                  (_%$%E193018193033%_)))))
                                        (_%$%E193018193033%_)))))
                              (_%$%E193018193033%_))))
                      (_%$%E193018193033%_)))))
          (_%$%E193017193065%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx192985%_)
        (let* ((_%$%e192986192993%_ _%stx192985%_)
               (_%$%E192988192997%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192986192993%_)))
               (_%$%E192987193011%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192986192993%_)
                      (let ((_%$%e192989193001%_
                             (gx#syntax-e _%$%e192986192993%_)))
                        (let ((_%$%hd192990193004%_
                               (##car _%$%e192989193001%_))
                              (_%$%tl192991193006%_
                               (##cdr _%$%e192989193001%_)))
                          (let ((_%body193009%_ _%$%tl192991193006%_))
                            (cons '%#import _%body193009%_))))
                      (_%$%E192988192997%_)))))
          (_%$%E192987193011%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx192942%_)
        (let* ((_%$%e192943192953%_ _%stx192942%_)
               (_%$%E192945192957%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192943192953%_)))
               (_%$%E192944192981%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192943192953%_)
                      (let ((_%$%e192946192961%_
                             (gx#syntax-e _%$%e192943192953%_)))
                        (let ((_%$%hd192947192964%_
                               (##car _%$%e192946192961%_))
                              (_%$%tl192948192966%_
                               (##cdr _%$%e192946192961%_)))
                          (if (gx#stx-pair? _%$%tl192948192966%_)
                              (let ((_%$%e192949192969%_
                                     (gx#syntax-e _%$%tl192948192966%_)))
                                (let ((_%$%hd192950192972%_
                                       (##car _%$%e192949192969%_))
                                      (_%$%tl192951192974%_
                                       (##cdr _%$%e192949192969%_)))
                                  (let* ((_%hd192977%_ _%$%hd192950192972%_)
                                         (_%body192979%_ _%$%tl192951192974%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd192977%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body192979%_))))))
                              (_%$%E192945192957%_))))
                      (_%$%E192945192957%_)))))
          (_%$%E192944192981%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx192912%_)
        (let* ((_%$%e192913192920%_ _%stx192912%_)
               (_%$%E192915192924%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192913192920%_)))
               (_%$%E192914192938%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192913192920%_)
                      (let ((_%$%e192916192928%_
                             (gx#syntax-e _%$%e192913192920%_)))
                        (let ((_%$%hd192917192931%_
                               (##car _%$%e192916192928%_))
                              (_%$%tl192918192933%_
                               (##cdr _%$%e192916192928%_)))
                          (let ((_%body192936%_ _%$%tl192918192933%_))
                            (cons '%#export _%body192936%_))))
                      (_%$%E192915192924%_)))))
          (_%$%E192914192938%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx192882%_)
        (let* ((_%$%e192883192890%_ _%stx192882%_)
               (_%$%E192885192894%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192883192890%_)))
               (_%$%E192884192908%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192883192890%_)
                      (let ((_%$%e192886192898%_
                             (gx#syntax-e _%$%e192883192890%_)))
                        (let ((_%$%hd192887192901%_
                               (##car _%$%e192886192898%_))
                              (_%$%tl192888192903%_
                               (##cdr _%$%e192886192898%_)))
                          (let ((_%body192906%_ _%$%tl192888192903%_))
                            (cons '%#provide _%body192906%_))))
                      (_%$%E192885192894%_)))))
          (_%$%E192884192908%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx192852%_)
        (let* ((_%$%e192853192860%_ _%stx192852%_)
               (_%$%E192855192864%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192853192860%_)))
               (_%$%E192854192878%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192853192860%_)
                      (let ((_%$%e192856192868%_
                             (gx#syntax-e _%$%e192853192860%_)))
                        (let ((_%$%hd192857192871%_
                               (##car _%$%e192856192868%_))
                              (_%$%tl192858192873%_
                               (##cdr _%$%e192856192868%_)))
                          (let ((_%body192876%_ _%$%tl192858192873%_))
                            (cons '%#extern _%body192876%_))))
                      (_%$%E192855192864%_)))))
          (_%$%E192854192878%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx192798%_)
        (let* ((_%$%e192799192812%_ _%stx192798%_)
               (_%$%E192801192816%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192799192812%_)))
               (_%$%E192800192848%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192799192812%_)
                      (let ((_%$%e192802192820%_
                             (gx#syntax-e _%$%e192799192812%_)))
                        (let ((_%$%hd192803192823%_
                               (##car _%$%e192802192820%_))
                              (_%$%tl192804192825%_
                               (##cdr _%$%e192802192820%_)))
                          (if (gx#stx-pair? _%$%tl192804192825%_)
                              (let ((_%$%e192805192828%_
                                     (gx#syntax-e _%$%tl192804192825%_)))
                                (let ((_%$%hd192806192831%_
                                       (##car _%$%e192805192828%_))
                                      (_%$%tl192807192833%_
                                       (##cdr _%$%e192805192828%_)))
                                  (let ((_%hd192836%_ _%$%hd192806192831%_))
                                    (if (gx#stx-pair? _%$%tl192807192833%_)
                                        (let ((_%$%e192808192838%_
                                               (gx#syntax-e
                                                _%$%tl192807192833%_)))
                                          (let ((_%$%hd192809192841%_
                                                 (##car _%$%e192808192838%_))
                                                (_%$%tl192810192843%_
                                                 (##cdr _%$%e192808192838%_)))
                                            (let ((_%expr192846%_
                                                   _%$%hd192809192841%_))
                                              (if (gx#stx-null?
                                                   _%$%tl192810192843%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd192836%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr192846%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E192801192816%_)))))
                                        (_%$%E192801192816%_)))))
                              (_%$%E192801192816%_))))
                      (_%$%E192801192816%_)))))
          (_%$%E192800192848%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx192743%_)
        (let* ((_%$%e192744192757%_ _%stx192743%_)
               (_%$%E192746192761%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192744192757%_)))
               (_%$%E192745192794%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192744192757%_)
                      (let ((_%$%e192747192765%_
                             (gx#syntax-e _%$%e192744192757%_)))
                        (let ((_%$%hd192748192768%_
                               (##car _%$%e192747192765%_))
                              (_%$%tl192749192770%_
                               (##cdr _%$%e192747192765%_)))
                          (if (gx#stx-pair? _%$%tl192749192770%_)
                              (let ((_%$%e192750192773%_
                                     (gx#syntax-e _%$%tl192749192770%_)))
                                (let ((_%$%hd192751192776%_
                                       (##car _%$%e192750192773%_))
                                      (_%$%tl192752192778%_
                                       (##cdr _%$%e192750192773%_)))
                                  (let ((_%hd192781%_ _%$%hd192751192776%_))
                                    (if (gx#stx-pair? _%$%tl192752192778%_)
                                        (let ((_%$%e192753192783%_
                                               (gx#syntax-e
                                                _%$%tl192752192778%_)))
                                          (let ((_%$%hd192754192786%_
                                                 (##car _%$%e192753192783%_))
                                                (_%$%tl192755192788%_
                                                 (##cdr _%$%e192753192783%_)))
                                            (let ((_%expr192791%_
                                                   _%$%hd192754192786%_))
                                              (if (gx#stx-null?
                                                   _%$%tl192755192788%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd192781%_
                                                              (cons (call-with-parameters__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr192791%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E192746192761%_)))))
                                        (_%$%E192746192761%_)))))
                              (_%$%E192746192761%_))))
                      (_%$%E192746192761%_)))))
          (_%$%E192745192794%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx192713%_)
        (let* ((_%$%e192714192721%_ _%stx192713%_)
               (_%$%E192716192725%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192714192721%_)))
               (_%$%E192715192739%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192714192721%_)
                      (let ((_%$%e192717192729%_
                             (gx#syntax-e _%$%e192714192721%_)))
                        (let ((_%$%hd192718192732%_
                               (##car _%$%e192717192729%_))
                              (_%$%tl192719192734%_
                               (##cdr _%$%e192717192729%_)))
                          (let ((_%body192737%_ _%$%tl192719192734%_))
                            (cons '%#define-alias _%body192737%_))))
                      (_%$%E192716192725%_)))))
          (_%$%E192715192739%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx192683%_)
        (let* ((_%$%e192684192691%_ _%stx192683%_)
               (_%$%E192686192695%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192684192691%_)))
               (_%$%E192685192709%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192684192691%_)
                      (let ((_%$%e192687192699%_
                             (gx#syntax-e _%$%e192684192691%_)))
                        (let ((_%$%hd192688192702%_
                               (##car _%$%e192687192699%_))
                              (_%$%tl192689192704%_
                               (##cdr _%$%e192687192699%_)))
                          (let ((_%body192707%_ _%$%tl192689192704%_))
                            (cons '%#define-runtime _%body192707%_))))
                      (_%$%E192686192695%_)))))
          (_%$%E192685192709%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx192653%_)
        (let* ((_%$%e192654192661%_ _%stx192653%_)
               (_%$%E192656192665%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192654192661%_)))
               (_%$%E192655192679%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192654192661%_)
                      (let ((_%$%e192657192669%_
                             (gx#syntax-e _%$%e192654192661%_)))
                        (let ((_%$%hd192658192672%_
                               (##car _%$%e192657192669%_))
                              (_%$%tl192659192674%_
                               (##cdr _%$%e192657192669%_)))
                          (let ((_%decls192677%_ _%$%tl192659192674%_))
                            (cons '%#declare _%decls192677%_))))
                      (_%$%E192656192665%_)))))
          (_%$%E192655192679%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx192623%_)
        (let* ((_%$%e192624192631%_ _%stx192623%_)
               (_%$%E192626192635%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192624192631%_)))
               (_%$%E192625192649%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192624192631%_)
                      (let ((_%$%e192627192639%_
                             (gx#syntax-e _%$%e192624192631%_)))
                        (let ((_%$%hd192628192642%_
                               (##car _%$%e192627192639%_))
                              (_%$%tl192629192644%_
                               (##cdr _%$%e192627192639%_)))
                          (let ((_%clause192647%_ _%$%tl192629192644%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause192647%_)))))
                      (_%$%E192626192635%_)))))
          (_%$%E192625192649%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx192580%_)
        (let* ((_%$%e192581192591%_ _%stx192580%_)
               (_%$%E192583192595%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192581192591%_)))
               (_%$%E192582192619%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192581192591%_)
                      (let ((_%$%e192584192599%_
                             (gx#syntax-e _%$%e192581192591%_)))
                        (let ((_%$%hd192585192602%_
                               (##car _%$%e192584192599%_))
                              (_%$%tl192586192604%_
                               (##cdr _%$%e192584192599%_)))
                          (let ((_%hd192607%_ _%$%hd192585192602%_))
                            (if (gx#stx-pair? _%$%tl192586192604%_)
                                (let ((_%$%e192587192609%_
                                       (gx#syntax-e _%$%tl192586192604%_)))
                                  (let ((_%$%hd192588192612%_
                                         (##car _%$%e192587192609%_))
                                        (_%$%tl192589192614%_
                                         (##cdr _%$%e192587192609%_)))
                                    (let ((_%body192617%_
                                           _%$%hd192588192612%_))
                                      (if (gx#stx-null? _%$%tl192589192614%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd192607%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body192617%_)
                                                      '()))
                                          (_%$%E192583192595%_)))))
                                (_%$%E192583192595%_)))))
                      (_%$%E192583192595%_)))))
          (_%$%E192582192619%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx192550%_)
        (let* ((_%$%e192551192558%_ _%stx192550%_)
               (_%$%E192553192562%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192551192558%_)))
               (_%$%E192552192576%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192551192558%_)
                      (let ((_%$%e192554192566%_
                             (gx#syntax-e _%$%e192551192558%_)))
                        (let ((_%$%hd192555192569%_
                               (##car _%$%e192554192566%_))
                              (_%$%tl192556192571%_
                               (##cdr _%$%e192554192566%_)))
                          (let ((_%clauses192574%_ _%$%tl192556192571%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses192574%_)))))
                      (_%$%E192553192562%_)))))
          (_%$%E192552192576%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx192485%_ _%form192486%_)
        (let* ((_%$%e192487192500%_ _%stx192485%_)
               (_%$%E192489192504%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192487192500%_)))
               (_%$%E192488192536%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192487192500%_)
                      (let ((_%$%e192490192508%_
                             (gx#syntax-e _%$%e192487192500%_)))
                        (let ((_%$%hd192491192511%_
                               (##car _%$%e192490192508%_))
                              (_%$%tl192492192513%_
                               (##cdr _%$%e192490192508%_)))
                          (if (gx#stx-pair? _%$%tl192492192513%_)
                              (let ((_%$%e192493192516%_
                                     (gx#syntax-e _%$%tl192492192513%_)))
                                (let ((_%$%hd192494192519%_
                                       (##car _%$%e192493192516%_))
                                      (_%$%tl192495192521%_
                                       (##cdr _%$%e192493192516%_)))
                                  (let ((_%hd192524%_ _%$%hd192494192519%_))
                                    (if (gx#stx-pair? _%$%tl192495192521%_)
                                        (let ((_%$%e192496192526%_
                                               (gx#syntax-e
                                                _%$%tl192495192521%_)))
                                          (let ((_%$%hd192497192529%_
                                                 (##car _%$%e192496192526%_))
                                                (_%$%tl192498192531%_
                                                 (##cdr _%$%e192496192526%_)))
                                            (let ((_%body192534%_
                                                   _%$%hd192497192529%_))
                                              (if (gx#stx-null?
                                                   _%$%tl192498192531%_)
                                                  (cons _%form192486%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd192524%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body192534%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E192489192504%_)))))
                                        (_%$%E192489192504%_)))))
                              (_%$%E192489192504%_))))
                      (_%$%E192489192504%_)))))
          (_%$%E192488192536%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx192543%_)
        (let ((_%form192545%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx192543%_ _%form192545%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g193368_
        (let ((_g193369_ (##length _g193368_)))
          (cond ((##fx= _g193369_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g193368_))
                ((##fx= _g193369_ 2)
                 (apply gx#core-compile-top-let-values%__% _g193368_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g193368_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx192482%_)
        (gx#core-compile-top-let-values%__% _%stx192482%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx192480%_)
        (gx#core-compile-top-let-values%__% _%stx192480%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx192439%_)
        (let* ((_%$%e192440192450%_ _%stx192439%_)
               (_%$%E192442192454%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192440192450%_)))
               (_%$%E192441192476%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192440192450%_)
                      (let ((_%$%e192443192458%_
                             (gx#syntax-e _%$%e192440192450%_)))
                        (let ((_%$%hd192444192461%_
                               (##car _%$%e192443192458%_))
                              (_%$%tl192445192463%_
                               (##cdr _%$%e192443192458%_)))
                          (if (gx#stx-pair? _%$%tl192445192463%_)
                              (let ((_%$%e192446192466%_
                                     (gx#syntax-e _%$%tl192445192463%_)))
                                (let ((_%$%hd192447192469%_
                                       (##car _%$%e192446192466%_))
                                      (_%$%tl192448192471%_
                                       (##cdr _%$%e192446192466%_)))
                                  (let ((_%e192474%_ _%$%hd192447192469%_))
                                    (if (gx#stx-null? _%$%tl192448192471%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e192474%_)
                                                    '()))
                                        (_%$%E192442192454%_)))))
                              (_%$%E192442192454%_))))
                      (_%$%E192442192454%_)))))
          (_%$%E192441192476%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx192398%_)
        (let* ((_%$%e192399192409%_ _%stx192398%_)
               (_%$%E192401192413%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192399192409%_)))
               (_%$%E192400192435%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192399192409%_)
                      (let ((_%$%e192402192417%_
                             (gx#syntax-e _%$%e192399192409%_)))
                        (let ((_%$%hd192403192420%_
                               (##car _%$%e192402192417%_))
                              (_%$%tl192404192422%_
                               (##cdr _%$%e192402192417%_)))
                          (if (gx#stx-pair? _%$%tl192404192422%_)
                              (let ((_%$%e192405192425%_
                                     (gx#syntax-e _%$%tl192404192422%_)))
                                (let ((_%$%hd192406192428%_
                                       (##car _%$%e192405192425%_))
                                      (_%$%tl192407192430%_
                                       (##cdr _%$%e192405192425%_)))
                                  (let ((_%e192433%_ _%$%hd192406192428%_))
                                    (if (gx#stx-null? _%$%tl192407192430%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e192433%_)
                                                    '()))
                                        (_%$%E192401192413%_)))))
                              (_%$%E192401192413%_))))
                      (_%$%E192401192413%_)))))
          (_%$%E192400192435%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx192355%_)
        (let* ((_%$%e192356192366%_ _%stx192355%_)
               (_%$%E192358192370%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192356192366%_)))
               (_%$%E192357192394%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192356192366%_)
                      (let ((_%$%e192359192374%_
                             (gx#syntax-e _%$%e192356192366%_)))
                        (let ((_%$%hd192360192377%_
                               (##car _%$%e192359192374%_))
                              (_%$%tl192361192379%_
                               (##cdr _%$%e192359192374%_)))
                          (if (gx#stx-pair? _%$%tl192361192379%_)
                              (let ((_%$%e192362192382%_
                                     (gx#syntax-e _%$%tl192361192379%_)))
                                (let ((_%$%hd192363192385%_
                                       (##car _%$%e192362192382%_))
                                      (_%$%tl192364192387%_
                                       (##cdr _%$%e192362192382%_)))
                                  (let* ((_%rator192390%_ _%$%hd192363192385%_)
                                         (_%args192392%_ _%$%tl192364192387%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator192390%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args192392%_))))))
                              (_%$%E192358192370%_))))
                      (_%$%E192358192370%_)))))
          (_%$%E192357192394%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx192288%_)
        (let* ((_%$%e192289192305%_ _%stx192288%_)
               (_%$%E192291192309%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192289192305%_)))
               (_%$%E192290192351%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192289192305%_)
                      (let ((_%$%e192292192313%_
                             (gx#syntax-e _%$%e192289192305%_)))
                        (let ((_%$%hd192293192316%_
                               (##car _%$%e192292192313%_))
                              (_%$%tl192294192318%_
                               (##cdr _%$%e192292192313%_)))
                          (if (gx#stx-pair? _%$%tl192294192318%_)
                              (let ((_%$%e192295192321%_
                                     (gx#syntax-e _%$%tl192294192318%_)))
                                (let ((_%$%hd192296192324%_
                                       (##car _%$%e192295192321%_))
                                      (_%$%tl192297192326%_
                                       (##cdr _%$%e192295192321%_)))
                                  (let ((_%test192329%_ _%$%hd192296192324%_))
                                    (if (gx#stx-pair? _%$%tl192297192326%_)
                                        (let ((_%$%e192298192331%_
                                               (gx#syntax-e
                                                _%$%tl192297192326%_)))
                                          (let ((_%$%hd192299192334%_
                                                 (##car _%$%e192298192331%_))
                                                (_%$%tl192300192336%_
                                                 (##cdr _%$%e192298192331%_)))
                                            (let ((_%K192339%_
                                                   _%$%hd192299192334%_))
                                              (if (gx#stx-pair?
                                                   _%$%tl192300192336%_)
                                                  (let ((_%$%e192301192341%_
                                                         (gx#syntax-e
                                                          _%$%tl192300192336%_)))
                                                    (let ((_%$%hd192302192344%_
                                                           (##car _%$%e192301192341%_))
                                                          (_%$%tl192303192346%_
                                                           (##cdr _%$%e192301192341%_)))
                                                      (let ((_%E192349%_
                                                             _%$%hd192302192344%_))
                                                        (if (gx#stx-null?
                                                             _%$%tl192303192346%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test192329%_)
                                (cons (gx#core-compile-top-syntax _%K192339%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E192349%_)
                                            '()))))
                    (_%$%E192291192309%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E192291192309%_)))))
                                        (_%$%E192291192309%_)))))
                              (_%$%E192291192309%_))))
                      (_%$%E192291192309%_)))))
          (_%$%E192290192351%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx192247%_)
        (let* ((_%$%e192248192258%_ _%stx192247%_)
               (_%$%E192250192262%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192248192258%_)))
               (_%$%E192249192284%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192248192258%_)
                      (let ((_%$%e192251192266%_
                             (gx#syntax-e _%$%e192248192258%_)))
                        (let ((_%$%hd192252192269%_
                               (##car _%$%e192251192266%_))
                              (_%$%tl192253192271%_
                               (##cdr _%$%e192251192266%_)))
                          (if (gx#stx-pair? _%$%tl192253192271%_)
                              (let ((_%$%e192254192274%_
                                     (gx#syntax-e _%$%tl192253192271%_)))
                                (let ((_%$%hd192255192277%_
                                       (##car _%$%e192254192274%_))
                                      (_%$%tl192256192279%_
                                       (##cdr _%$%e192254192274%_)))
                                  (let ((_%id192282%_ _%$%hd192255192277%_))
                                    (if (gx#stx-null? _%$%tl192256192279%_)
                                        (if (gx#identifier? _%id192282%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id192282%_)
                                                        '()))
                                            (_%$%E192250192262%_))
                                        (_%$%E192250192262%_)))))
                              (_%$%E192250192262%_))))
                      (_%$%E192250192262%_)))))
          (_%$%E192249192284%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx192193%_)
        (let* ((_%$%e192194192207%_ _%stx192193%_)
               (_%$%E192196192211%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192194192207%_)))
               (_%$%E192195192243%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192194192207%_)
                      (let ((_%$%e192197192215%_
                             (gx#syntax-e _%$%e192194192207%_)))
                        (let ((_%$%hd192198192218%_
                               (##car _%$%e192197192215%_))
                              (_%$%tl192199192220%_
                               (##cdr _%$%e192197192215%_)))
                          (if (gx#stx-pair? _%$%tl192199192220%_)
                              (let ((_%$%e192200192223%_
                                     (gx#syntax-e _%$%tl192199192220%_)))
                                (let ((_%$%hd192201192226%_
                                       (##car _%$%e192200192223%_))
                                      (_%$%tl192202192228%_
                                       (##cdr _%$%e192200192223%_)))
                                  (let ((_%id192231%_ _%$%hd192201192226%_))
                                    (if (gx#stx-pair? _%$%tl192202192228%_)
                                        (let ((_%$%e192203192233%_
                                               (gx#syntax-e
                                                _%$%tl192202192228%_)))
                                          (let ((_%$%hd192204192236%_
                                                 (##car _%$%e192203192233%_))
                                                (_%$%tl192205192238%_
                                                 (##cdr _%$%e192203192233%_)))
                                            (let ((_%expr192241%_
                                                   _%$%hd192204192236%_))
                                              (if (gx#stx-null?
                                                   _%$%tl192205192238%_)
                                                  (if (gx#identifier?
                                                       _%id192231%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id192231%_)
                          (cons (gx#core-compile-top-syntax _%expr192241%_)
                                '())))
              (_%$%E192196192211%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E192196192211%_)))))
                                        (_%$%E192196192211%_)))))
                              (_%$%E192196192211%_))))
                      (_%$%E192196192211%_)))))
          (_%$%E192195192243%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id192187%_)
        (let ((_%$e192189%_ (gx#resolve-identifier__0 _%id192187%_)))
          (if _%$e192189%_
              (##unchecked-structure-ref _%$e192189%_ '1 '#f '#f)
              _%id192187%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd192185%_)
        (if (gx#identifier? _%hd192185%_)
            (gx#core-compile-top-runtime-ref _%hd192185%_)
            '#f)))))
