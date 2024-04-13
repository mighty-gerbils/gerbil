(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1712991653)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx128423%_)
        (let* ((_%e128424128431%_ _%stx128423%_)
               (_%E128426128435%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128424128431%_)))
               (_%E128425128449%_
                (lambda ()
                  (if (gx#stx-pair? _%e128424128431%_)
                      (let ((_%e128427128439%_
                             (gx#syntax-e _%e128424128431%_)))
                        (let ((_%hd128428128442%_ (##car _%e128427128439%_))
                              (_%tl128429128444%_ (##cdr _%e128427128439%_)))
                          (let* ((_%form128447%_ _%hd128428128442%_)
                                 (__self128452
                                  (gx#syntax-local-e__0 _%form128447%_))
                                 (__method128453
                                  (__method-ref
                                   __self128452
                                   'compile-top-syntax)))
                            (if __method128453
                                (__method128453 __self128452 _%stx128423%_)
                                (begin
                                  (error '"Missing method"
                                         __self128452
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%E128426128435%_)))))
          (_%E128425128449%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self127266128369%_ _%stx128371%_)
        (let* ((_%self128373%_ _%self127266128369%_)
               (_%self128375%_ _%self128373%_)
               (_%self128384128392%_ _%self128375%_)
               (_%E128386128396%_
                (lambda ()
                  (error '"No clause matching"
                         _%self128384128392%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K128387128409%_
                (lambda (_%K128399%_)
                  (let ((_%$e128401%_ (gx#stx-source _%stx128371%_)))
                    (if _%$e128401%_
                        ((lambda (_%g128403128405%_)
                           (gx#stx-wrap-source
                            (_%K128399%_ _%stx128371%_)
                            _%g128403128405%_))
                         _%$e128401%_)
                        (_%K128399%_ _%stx128371%_)))))
               (_%e128388128412%_
                (##unchecked-structure-ref _%self128384128392%_ '1 '#f '#f))
               (_%e128389128415%_
                (##unchecked-structure-ref _%self128384128392%_ '2 '#f '#f))
               (_%e128390128418%_
                (##unchecked-structure-ref _%self128384128392%_ '3 '#f '#f))
               (_%K128421%_ _%e128390128418%_))
          (_%K128387128409%_ _%K128421%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx128243%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx128243%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx128213%_)
        (let* ((_%e128214128221%_ _%stx128213%_)
               (_%E128216128225%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128214128221%_)))
               (_%E128215128239%_
                (lambda ()
                  (if (gx#stx-pair? _%e128214128221%_)
                      (let ((_%e128217128229%_
                             (gx#syntax-e _%e128214128221%_)))
                        (let ((_%hd128218128232%_ (##car _%e128217128229%_))
                              (_%tl128219128234%_ (##cdr _%e128217128229%_)))
                          (let ((_%body128237%_ _%tl128219128234%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body128237%_)))))
                      (_%E128216128225%_)))))
          (_%E128215128239%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx128182%_)
        (let* ((_%e128183128190%_ _%stx128182%_)
               (_%E128185128194%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128183128190%_)))
               (_%E128184128209%_
                (lambda ()
                  (if (gx#stx-pair? _%e128183128190%_)
                      (let ((_%e128186128198%_
                             (gx#syntax-e _%e128183128190%_)))
                        (let ((_%hd128187128201%_ (##car _%e128186128198%_))
                              (_%tl128188128203%_ (##cdr _%e128186128198%_)))
                          (let ((_%body128206%_ _%tl128188128203%_))
                            (cons '%#begin-syntax
                                  (__call-with-parameters
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body128206%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%E128185128194%_)))))
          (_%E128184128209%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx128152%_)
        (let* ((_%e128153128160%_ _%stx128152%_)
               (_%E128155128164%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128153128160%_)))
               (_%E128154128178%_
                (lambda ()
                  (if (gx#stx-pair? _%e128153128160%_)
                      (let ((_%e128156128168%_
                             (gx#syntax-e _%e128153128160%_)))
                        (let ((_%hd128157128171%_ (##car _%e128156128168%_))
                              (_%tl128158128173%_ (##cdr _%e128156128168%_)))
                          (let ((_%body128176%_ _%tl128158128173%_))
                            (cons '%#begin-foreign _%body128176%_))))
                      (_%E128155128164%_)))))
          (_%E128154128178%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx128098%_)
        (let* ((_%e128099128112%_ _%stx128098%_)
               (_%E128101128116%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128099128112%_)))
               (_%E128100128148%_
                (lambda ()
                  (if (gx#stx-pair? _%e128099128112%_)
                      (let ((_%e128102128120%_
                             (gx#syntax-e _%e128099128112%_)))
                        (let ((_%hd128103128123%_ (##car _%e128102128120%_))
                              (_%tl128104128125%_ (##cdr _%e128102128120%_)))
                          (if (gx#stx-pair? _%tl128104128125%_)
                              (let ((_%e128105128128%_
                                     (gx#syntax-e _%tl128104128125%_)))
                                (let ((_%hd128106128131%_
                                       (##car _%e128105128128%_))
                                      (_%tl128107128133%_
                                       (##cdr _%e128105128128%_)))
                                  (let ((_%ann128136%_ _%hd128106128131%_))
                                    (if (gx#stx-pair? _%tl128107128133%_)
                                        (let ((_%e128108128138%_
                                               (gx#syntax-e
                                                _%tl128107128133%_)))
                                          (let ((_%hd128109128141%_
                                                 (##car _%e128108128138%_))
                                                (_%tl128110128143%_
                                                 (##cdr _%e128108128138%_)))
                                            (let ((_%expr128146%_
                                                   _%hd128109128141%_))
                                              (if (gx#stx-null?
                                                   _%tl128110128143%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr128146%_)
                                                  (_%E128101128116%_)))))
                                        (_%E128101128116%_)))))
                              (_%E128101128116%_))))
                      (_%E128101128116%_)))))
          (_%E128100128148%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx128068%_)
        (let* ((_%e128069128076%_ _%stx128068%_)
               (_%E128071128080%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128069128076%_)))
               (_%E128070128094%_
                (lambda ()
                  (if (gx#stx-pair? _%e128069128076%_)
                      (let ((_%e128072128084%_
                             (gx#syntax-e _%e128069128076%_)))
                        (let ((_%hd128073128087%_ (##car _%e128072128084%_))
                              (_%tl128074128089%_ (##cdr _%e128072128084%_)))
                          (let ((_%body128092%_ _%tl128074128089%_))
                            (cons '%#import _%body128092%_))))
                      (_%E128071128080%_)))))
          (_%E128070128094%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx128025%_)
        (let* ((_%e128026128036%_ _%stx128025%_)
               (_%E128028128040%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128026128036%_)))
               (_%E128027128064%_
                (lambda ()
                  (if (gx#stx-pair? _%e128026128036%_)
                      (let ((_%e128029128044%_
                             (gx#syntax-e _%e128026128036%_)))
                        (let ((_%hd128030128047%_ (##car _%e128029128044%_))
                              (_%tl128031128049%_ (##cdr _%e128029128044%_)))
                          (if (gx#stx-pair? _%tl128031128049%_)
                              (let ((_%e128032128052%_
                                     (gx#syntax-e _%tl128031128049%_)))
                                (let ((_%hd128033128055%_
                                       (##car _%e128032128052%_))
                                      (_%tl128034128057%_
                                       (##cdr _%e128032128052%_)))
                                  (let* ((_%hd128060%_ _%hd128033128055%_)
                                         (_%body128062%_ _%tl128034128057%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd128060%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body128062%_))))))
                              (_%E128028128040%_))))
                      (_%E128028128040%_)))))
          (_%E128027128064%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx127995%_)
        (let* ((_%e127996128003%_ _%stx127995%_)
               (_%E127998128007%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127996128003%_)))
               (_%E127997128021%_
                (lambda ()
                  (if (gx#stx-pair? _%e127996128003%_)
                      (let ((_%e127999128011%_
                             (gx#syntax-e _%e127996128003%_)))
                        (let ((_%hd128000128014%_ (##car _%e127999128011%_))
                              (_%tl128001128016%_ (##cdr _%e127999128011%_)))
                          (let ((_%body128019%_ _%tl128001128016%_))
                            (cons '%#export _%body128019%_))))
                      (_%E127998128007%_)))))
          (_%E127997128021%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx127965%_)
        (let* ((_%e127966127973%_ _%stx127965%_)
               (_%E127968127977%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127966127973%_)))
               (_%E127967127991%_
                (lambda ()
                  (if (gx#stx-pair? _%e127966127973%_)
                      (let ((_%e127969127981%_
                             (gx#syntax-e _%e127966127973%_)))
                        (let ((_%hd127970127984%_ (##car _%e127969127981%_))
                              (_%tl127971127986%_ (##cdr _%e127969127981%_)))
                          (let ((_%body127989%_ _%tl127971127986%_))
                            (cons '%#provide _%body127989%_))))
                      (_%E127968127977%_)))))
          (_%E127967127991%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx127935%_)
        (let* ((_%e127936127943%_ _%stx127935%_)
               (_%E127938127947%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127936127943%_)))
               (_%E127937127961%_
                (lambda ()
                  (if (gx#stx-pair? _%e127936127943%_)
                      (let ((_%e127939127951%_
                             (gx#syntax-e _%e127936127943%_)))
                        (let ((_%hd127940127954%_ (##car _%e127939127951%_))
                              (_%tl127941127956%_ (##cdr _%e127939127951%_)))
                          (let ((_%body127959%_ _%tl127941127956%_))
                            (cons '%#extern _%body127959%_))))
                      (_%E127938127947%_)))))
          (_%E127937127961%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx127881%_)
        (let* ((_%e127882127895%_ _%stx127881%_)
               (_%E127884127899%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127882127895%_)))
               (_%E127883127931%_
                (lambda ()
                  (if (gx#stx-pair? _%e127882127895%_)
                      (let ((_%e127885127903%_
                             (gx#syntax-e _%e127882127895%_)))
                        (let ((_%hd127886127906%_ (##car _%e127885127903%_))
                              (_%tl127887127908%_ (##cdr _%e127885127903%_)))
                          (if (gx#stx-pair? _%tl127887127908%_)
                              (let ((_%e127888127911%_
                                     (gx#syntax-e _%tl127887127908%_)))
                                (let ((_%hd127889127914%_
                                       (##car _%e127888127911%_))
                                      (_%tl127890127916%_
                                       (##cdr _%e127888127911%_)))
                                  (let ((_%hd127919%_ _%hd127889127914%_))
                                    (if (gx#stx-pair? _%tl127890127916%_)
                                        (let ((_%e127891127921%_
                                               (gx#syntax-e
                                                _%tl127890127916%_)))
                                          (let ((_%hd127892127924%_
                                                 (##car _%e127891127921%_))
                                                (_%tl127893127926%_
                                                 (##cdr _%e127891127921%_)))
                                            (let ((_%expr127929%_
                                                   _%hd127892127924%_))
                                              (if (gx#stx-null?
                                                   _%tl127893127926%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd127919%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr127929%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E127884127899%_)))))
                                        (_%E127884127899%_)))))
                              (_%E127884127899%_))))
                      (_%E127884127899%_)))))
          (_%E127883127931%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx127826%_)
        (let* ((_%e127827127840%_ _%stx127826%_)
               (_%E127829127844%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127827127840%_)))
               (_%E127828127877%_
                (lambda ()
                  (if (gx#stx-pair? _%e127827127840%_)
                      (let ((_%e127830127848%_
                             (gx#syntax-e _%e127827127840%_)))
                        (let ((_%hd127831127851%_ (##car _%e127830127848%_))
                              (_%tl127832127853%_ (##cdr _%e127830127848%_)))
                          (if (gx#stx-pair? _%tl127832127853%_)
                              (let ((_%e127833127856%_
                                     (gx#syntax-e _%tl127832127853%_)))
                                (let ((_%hd127834127859%_
                                       (##car _%e127833127856%_))
                                      (_%tl127835127861%_
                                       (##cdr _%e127833127856%_)))
                                  (let ((_%hd127864%_ _%hd127834127859%_))
                                    (if (gx#stx-pair? _%tl127835127861%_)
                                        (let ((_%e127836127866%_
                                               (gx#syntax-e
                                                _%tl127835127861%_)))
                                          (let ((_%hd127837127869%_
                                                 (##car _%e127836127866%_))
                                                (_%tl127838127871%_
                                                 (##cdr _%e127836127866%_)))
                                            (let ((_%expr127874%_
                                                   _%hd127837127869%_))
                                              (if (gx#stx-null?
                                                   _%tl127838127871%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd127864%_
                                                              (cons (__call-with-parameters
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr127874%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E127829127844%_)))))
                                        (_%E127829127844%_)))))
                              (_%E127829127844%_))))
                      (_%E127829127844%_)))))
          (_%E127828127877%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx127796%_)
        (let* ((_%e127797127804%_ _%stx127796%_)
               (_%E127799127808%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127797127804%_)))
               (_%E127798127822%_
                (lambda ()
                  (if (gx#stx-pair? _%e127797127804%_)
                      (let ((_%e127800127812%_
                             (gx#syntax-e _%e127797127804%_)))
                        (let ((_%hd127801127815%_ (##car _%e127800127812%_))
                              (_%tl127802127817%_ (##cdr _%e127800127812%_)))
                          (let ((_%body127820%_ _%tl127802127817%_))
                            (cons '%#define-alias _%body127820%_))))
                      (_%E127799127808%_)))))
          (_%E127798127822%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx127766%_)
        (let* ((_%e127767127774%_ _%stx127766%_)
               (_%E127769127778%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127767127774%_)))
               (_%E127768127792%_
                (lambda ()
                  (if (gx#stx-pair? _%e127767127774%_)
                      (let ((_%e127770127782%_
                             (gx#syntax-e _%e127767127774%_)))
                        (let ((_%hd127771127785%_ (##car _%e127770127782%_))
                              (_%tl127772127787%_ (##cdr _%e127770127782%_)))
                          (let ((_%body127790%_ _%tl127772127787%_))
                            (cons '%#define-runtime _%body127790%_))))
                      (_%E127769127778%_)))))
          (_%E127768127792%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx127736%_)
        (let* ((_%e127737127744%_ _%stx127736%_)
               (_%E127739127748%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127737127744%_)))
               (_%E127738127762%_
                (lambda ()
                  (if (gx#stx-pair? _%e127737127744%_)
                      (let ((_%e127740127752%_
                             (gx#syntax-e _%e127737127744%_)))
                        (let ((_%hd127741127755%_ (##car _%e127740127752%_))
                              (_%tl127742127757%_ (##cdr _%e127740127752%_)))
                          (let ((_%decls127760%_ _%tl127742127757%_))
                            (cons '%#declare _%decls127760%_))))
                      (_%E127739127748%_)))))
          (_%E127738127762%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx127706%_)
        (let* ((_%e127707127714%_ _%stx127706%_)
               (_%E127709127718%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127707127714%_)))
               (_%E127708127732%_
                (lambda ()
                  (if (gx#stx-pair? _%e127707127714%_)
                      (let ((_%e127710127722%_
                             (gx#syntax-e _%e127707127714%_)))
                        (let ((_%hd127711127725%_ (##car _%e127710127722%_))
                              (_%tl127712127727%_ (##cdr _%e127710127722%_)))
                          (let ((_%clause127730%_ _%tl127712127727%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause127730%_)))))
                      (_%E127709127718%_)))))
          (_%E127708127732%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx127663%_)
        (let* ((_%e127664127674%_ _%stx127663%_)
               (_%E127666127678%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127664127674%_)))
               (_%E127665127702%_
                (lambda ()
                  (if (gx#stx-pair? _%e127664127674%_)
                      (let ((_%e127667127682%_
                             (gx#syntax-e _%e127664127674%_)))
                        (let ((_%hd127668127685%_ (##car _%e127667127682%_))
                              (_%tl127669127687%_ (##cdr _%e127667127682%_)))
                          (let ((_%hd127690%_ _%hd127668127685%_))
                            (if (gx#stx-pair? _%tl127669127687%_)
                                (let ((_%e127670127692%_
                                       (gx#syntax-e _%tl127669127687%_)))
                                  (let ((_%hd127671127695%_
                                         (##car _%e127670127692%_))
                                        (_%tl127672127697%_
                                         (##cdr _%e127670127692%_)))
                                    (let ((_%body127700%_ _%hd127671127695%_))
                                      (if (gx#stx-null? _%tl127672127697%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd127690%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body127700%_)
                                                      '()))
                                          (_%E127666127678%_)))))
                                (_%E127666127678%_)))))
                      (_%E127666127678%_)))))
          (_%E127665127702%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx127633%_)
        (let* ((_%e127634127641%_ _%stx127633%_)
               (_%E127636127645%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127634127641%_)))
               (_%E127635127659%_
                (lambda ()
                  (if (gx#stx-pair? _%e127634127641%_)
                      (let ((_%e127637127649%_
                             (gx#syntax-e _%e127634127641%_)))
                        (let ((_%hd127638127652%_ (##car _%e127637127649%_))
                              (_%tl127639127654%_ (##cdr _%e127637127649%_)))
                          (let ((_%clauses127657%_ _%tl127639127654%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses127657%_)))))
                      (_%E127636127645%_)))))
          (_%E127635127659%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx127568%_ _%form127569%_)
        (let* ((_%e127570127583%_ _%stx127568%_)
               (_%E127572127587%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127570127583%_)))
               (_%E127571127619%_
                (lambda ()
                  (if (gx#stx-pair? _%e127570127583%_)
                      (let ((_%e127573127591%_
                             (gx#syntax-e _%e127570127583%_)))
                        (let ((_%hd127574127594%_ (##car _%e127573127591%_))
                              (_%tl127575127596%_ (##cdr _%e127573127591%_)))
                          (if (gx#stx-pair? _%tl127575127596%_)
                              (let ((_%e127576127599%_
                                     (gx#syntax-e _%tl127575127596%_)))
                                (let ((_%hd127577127602%_
                                       (##car _%e127576127599%_))
                                      (_%tl127578127604%_
                                       (##cdr _%e127576127599%_)))
                                  (let ((_%hd127607%_ _%hd127577127602%_))
                                    (if (gx#stx-pair? _%tl127578127604%_)
                                        (let ((_%e127579127609%_
                                               (gx#syntax-e
                                                _%tl127578127604%_)))
                                          (let ((_%hd127580127612%_
                                                 (##car _%e127579127609%_))
                                                (_%tl127581127614%_
                                                 (##cdr _%e127579127609%_)))
                                            (let ((_%body127617%_
                                                   _%hd127580127612%_))
                                              (if (gx#stx-null?
                                                   _%tl127581127614%_)
                                                  (cons _%form127569%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd127607%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body127617%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E127572127587%_)))))
                                        (_%E127572127587%_)))))
                              (_%E127572127587%_))))
                      (_%E127572127587%_)))))
          (_%E127571127619%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx127626%_)
        (let ((_%form127628%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx127626%_ _%form127628%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g128455_
        (let ((_g128454_ (##length _g128455_)))
          (cond ((##fx= _g128454_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g128455_))
                ((##fx= _g128454_ 2)
                 (apply gx#core-compile-top-let-values%__% _g128455_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g128455_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx127565%_)
        (gx#core-compile-top-let-values%__% _%stx127565%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx127563%_)
        (gx#core-compile-top-let-values%__% _%stx127563%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx127522%_)
        (let* ((_%e127523127533%_ _%stx127522%_)
               (_%E127525127537%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127523127533%_)))
               (_%E127524127559%_
                (lambda ()
                  (if (gx#stx-pair? _%e127523127533%_)
                      (let ((_%e127526127541%_
                             (gx#syntax-e _%e127523127533%_)))
                        (let ((_%hd127527127544%_ (##car _%e127526127541%_))
                              (_%tl127528127546%_ (##cdr _%e127526127541%_)))
                          (if (gx#stx-pair? _%tl127528127546%_)
                              (let ((_%e127529127549%_
                                     (gx#syntax-e _%tl127528127546%_)))
                                (let ((_%hd127530127552%_
                                       (##car _%e127529127549%_))
                                      (_%tl127531127554%_
                                       (##cdr _%e127529127549%_)))
                                  (let ((_%e127557%_ _%hd127530127552%_))
                                    (if (gx#stx-null? _%tl127531127554%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e127557%_)
                                                    '()))
                                        (_%E127525127537%_)))))
                              (_%E127525127537%_))))
                      (_%E127525127537%_)))))
          (_%E127524127559%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx127481%_)
        (let* ((_%e127482127492%_ _%stx127481%_)
               (_%E127484127496%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127482127492%_)))
               (_%E127483127518%_
                (lambda ()
                  (if (gx#stx-pair? _%e127482127492%_)
                      (let ((_%e127485127500%_
                             (gx#syntax-e _%e127482127492%_)))
                        (let ((_%hd127486127503%_ (##car _%e127485127500%_))
                              (_%tl127487127505%_ (##cdr _%e127485127500%_)))
                          (if (gx#stx-pair? _%tl127487127505%_)
                              (let ((_%e127488127508%_
                                     (gx#syntax-e _%tl127487127505%_)))
                                (let ((_%hd127489127511%_
                                       (##car _%e127488127508%_))
                                      (_%tl127490127513%_
                                       (##cdr _%e127488127508%_)))
                                  (let ((_%e127516%_ _%hd127489127511%_))
                                    (if (gx#stx-null? _%tl127490127513%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e127516%_)
                                                    '()))
                                        (_%E127484127496%_)))))
                              (_%E127484127496%_))))
                      (_%E127484127496%_)))))
          (_%E127483127518%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx127438%_)
        (let* ((_%e127439127449%_ _%stx127438%_)
               (_%E127441127453%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127439127449%_)))
               (_%E127440127477%_
                (lambda ()
                  (if (gx#stx-pair? _%e127439127449%_)
                      (let ((_%e127442127457%_
                             (gx#syntax-e _%e127439127449%_)))
                        (let ((_%hd127443127460%_ (##car _%e127442127457%_))
                              (_%tl127444127462%_ (##cdr _%e127442127457%_)))
                          (if (gx#stx-pair? _%tl127444127462%_)
                              (let ((_%e127445127465%_
                                     (gx#syntax-e _%tl127444127462%_)))
                                (let ((_%hd127446127468%_
                                       (##car _%e127445127465%_))
                                      (_%tl127447127470%_
                                       (##cdr _%e127445127465%_)))
                                  (let* ((_%rator127473%_ _%hd127446127468%_)
                                         (_%args127475%_ _%tl127447127470%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator127473%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args127475%_))))))
                              (_%E127441127453%_))))
                      (_%E127441127453%_)))))
          (_%E127440127477%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx127371%_)
        (let* ((_%e127372127388%_ _%stx127371%_)
               (_%E127374127392%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127372127388%_)))
               (_%E127373127434%_
                (lambda ()
                  (if (gx#stx-pair? _%e127372127388%_)
                      (let ((_%e127375127396%_
                             (gx#syntax-e _%e127372127388%_)))
                        (let ((_%hd127376127399%_ (##car _%e127375127396%_))
                              (_%tl127377127401%_ (##cdr _%e127375127396%_)))
                          (if (gx#stx-pair? _%tl127377127401%_)
                              (let ((_%e127378127404%_
                                     (gx#syntax-e _%tl127377127401%_)))
                                (let ((_%hd127379127407%_
                                       (##car _%e127378127404%_))
                                      (_%tl127380127409%_
                                       (##cdr _%e127378127404%_)))
                                  (let ((_%test127412%_ _%hd127379127407%_))
                                    (if (gx#stx-pair? _%tl127380127409%_)
                                        (let ((_%e127381127414%_
                                               (gx#syntax-e
                                                _%tl127380127409%_)))
                                          (let ((_%hd127382127417%_
                                                 (##car _%e127381127414%_))
                                                (_%tl127383127419%_
                                                 (##cdr _%e127381127414%_)))
                                            (let ((_%K127422%_
                                                   _%hd127382127417%_))
                                              (if (gx#stx-pair?
                                                   _%tl127383127419%_)
                                                  (let ((_%e127384127424%_
                                                         (gx#syntax-e
                                                          _%tl127383127419%_)))
                                                    (let ((_%hd127385127427%_
                                                           (##car _%e127384127424%_))
                                                          (_%tl127386127429%_
                                                           (##cdr _%e127384127424%_)))
                                                      (let ((_%E127432%_
                                                             _%hd127385127427%_))
                                                        (if (gx#stx-null?
                                                             _%tl127386127429%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test127412%_)
                                (cons (gx#core-compile-top-syntax _%K127422%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E127432%_)
                                            '()))))
                    (_%E127374127392%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E127374127392%_)))))
                                        (_%E127374127392%_)))))
                              (_%E127374127392%_))))
                      (_%E127374127392%_)))))
          (_%E127373127434%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx127330%_)
        (let* ((_%e127331127341%_ _%stx127330%_)
               (_%E127333127345%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127331127341%_)))
               (_%E127332127367%_
                (lambda ()
                  (if (gx#stx-pair? _%e127331127341%_)
                      (let ((_%e127334127349%_
                             (gx#syntax-e _%e127331127341%_)))
                        (let ((_%hd127335127352%_ (##car _%e127334127349%_))
                              (_%tl127336127354%_ (##cdr _%e127334127349%_)))
                          (if (gx#stx-pair? _%tl127336127354%_)
                              (let ((_%e127337127357%_
                                     (gx#syntax-e _%tl127336127354%_)))
                                (let ((_%hd127338127360%_
                                       (##car _%e127337127357%_))
                                      (_%tl127339127362%_
                                       (##cdr _%e127337127357%_)))
                                  (let ((_%id127365%_ _%hd127338127360%_))
                                    (if (gx#stx-null? _%tl127339127362%_)
                                        (if (gx#identifier? _%id127365%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id127365%_)
                                                        '()))
                                            (_%E127333127345%_))
                                        (_%E127333127345%_)))))
                              (_%E127333127345%_))))
                      (_%E127333127345%_)))))
          (_%E127332127367%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx127276%_)
        (let* ((_%e127277127290%_ _%stx127276%_)
               (_%E127279127294%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127277127290%_)))
               (_%E127278127326%_
                (lambda ()
                  (if (gx#stx-pair? _%e127277127290%_)
                      (let ((_%e127280127298%_
                             (gx#syntax-e _%e127277127290%_)))
                        (let ((_%hd127281127301%_ (##car _%e127280127298%_))
                              (_%tl127282127303%_ (##cdr _%e127280127298%_)))
                          (if (gx#stx-pair? _%tl127282127303%_)
                              (let ((_%e127283127306%_
                                     (gx#syntax-e _%tl127282127303%_)))
                                (let ((_%hd127284127309%_
                                       (##car _%e127283127306%_))
                                      (_%tl127285127311%_
                                       (##cdr _%e127283127306%_)))
                                  (let ((_%id127314%_ _%hd127284127309%_))
                                    (if (gx#stx-pair? _%tl127285127311%_)
                                        (let ((_%e127286127316%_
                                               (gx#syntax-e
                                                _%tl127285127311%_)))
                                          (let ((_%hd127287127319%_
                                                 (##car _%e127286127316%_))
                                                (_%tl127288127321%_
                                                 (##cdr _%e127286127316%_)))
                                            (let ((_%expr127324%_
                                                   _%hd127287127319%_))
                                              (if (gx#stx-null?
                                                   _%tl127288127321%_)
                                                  (if (gx#identifier?
                                                       _%id127314%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id127314%_)
                          (cons (gx#core-compile-top-syntax _%expr127324%_)
                                '())))
              (_%E127279127294%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E127279127294%_)))))
                                        (_%E127279127294%_)))))
                              (_%E127279127294%_))))
                      (_%E127279127294%_)))))
          (_%E127278127326%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id127270%_)
        (let ((_%$e127272%_ (gx#resolve-identifier__0 _%id127270%_)))
          (if _%$e127272%_
              (##unchecked-structure-ref _%$e127272%_ '1 '#f '#f)
              _%id127270%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd127268%_)
        (if (gx#identifier? _%hd127268%_)
            (gx#core-compile-top-runtime-ref _%hd127268%_)
            '#f)))))
