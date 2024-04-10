(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1712786279)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx128364%_)
        (let* ((_%e128365128372%_ _%stx128364%_)
               (_%E128367128376%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128365128372%_)))
               (_%E128366128390%_
                (lambda ()
                  (if (gx#stx-pair? _%e128365128372%_)
                      (let ((_%e128368128380%_
                             (gx#syntax-e _%e128365128372%_)))
                        (let ((_%hd128369128383%_ (##car _%e128368128380%_))
                              (_%tl128370128385%_ (##cdr _%e128368128380%_)))
                          (let ((_%form128388%_ _%hd128369128383%_))
                            (if '#t
                                (let* ((__self128393
                                        (gx#syntax-local-e__0 _%form128388%_))
                                       (__method128394
                                        (__method-ref
                                         __self128393
                                         'compile-top-syntax)))
                                  (if __method128394
                                      (__method128394
                                       __self128393
                                       _%stx128364%_)
                                      (begin
                                        (error '"Missing method"
                                               __self128393
                                               'compile-top-syntax)
                                        '#!void)))
                                (_%E128367128376%_)))))
                      (_%E128367128376%_)))))
          (_%E128366128390%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self127207128310%_ _%stx128312%_)
        (let* ((_%self128314%_ _%self127207128310%_)
               (_%self128316%_ _%self128314%_)
               (_%self128325128333%_ _%self128316%_)
               (_%E128327128337%_
                (lambda ()
                  (error '"No clause matching"
                         _%self128325128333%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K128328128350%_
                (lambda (_%K128340%_)
                  (let ((_%$e128342%_ (gx#stx-source _%stx128312%_)))
                    (if _%$e128342%_
                        ((lambda (_%g128344128346%_)
                           (gx#stx-wrap-source
                            (_%K128340%_ _%stx128312%_)
                            _%g128344128346%_))
                         _%$e128342%_)
                        (_%K128340%_ _%stx128312%_))))))
          (if '#t
              (let* ((_%e128329128353%_
                      (##unchecked-structure-ref
                       _%self128325128333%_
                       '1
                       '#f
                       '#f))
                     (_%e128330128356%_
                      (##unchecked-structure-ref
                       _%self128325128333%_
                       '2
                       '#f
                       '#f))
                     (_%e128331128359%_
                      (##unchecked-structure-ref
                       _%self128325128333%_
                       '3
                       '#f
                       '#f))
                     (_%K128362%_ _%e128331128359%_))
                (_%K128328128350%_ _%K128362%_))
              (_%E128327128337%_)))))
    (__bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx128184%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx128184%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx128154%_)
        (let* ((_%e128155128162%_ _%stx128154%_)
               (_%E128157128166%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128155128162%_)))
               (_%E128156128180%_
                (lambda ()
                  (if (gx#stx-pair? _%e128155128162%_)
                      (let ((_%e128158128170%_
                             (gx#syntax-e _%e128155128162%_)))
                        (let ((_%hd128159128173%_ (##car _%e128158128170%_))
                              (_%tl128160128175%_ (##cdr _%e128158128170%_)))
                          (let ((_%body128178%_ _%tl128160128175%_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _%body128178%_))
                                (_%E128157128166%_)))))
                      (_%E128157128166%_)))))
          (_%E128156128180%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx128123%_)
        (let* ((_%e128124128131%_ _%stx128123%_)
               (_%E128126128135%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128124128131%_)))
               (_%E128125128150%_
                (lambda ()
                  (if (gx#stx-pair? _%e128124128131%_)
                      (let ((_%e128127128139%_
                             (gx#syntax-e _%e128124128131%_)))
                        (let ((_%hd128128128142%_ (##car _%e128127128139%_))
                              (_%tl128129128144%_ (##cdr _%e128127128139%_)))
                          (let ((_%body128147%_ _%tl128129128144%_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (__call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _%body128147%_))
                                       gx#current-expander-phi
                                       (##fx+ (gx#current-expander-phi) '1)))
                                (_%E128126128135%_)))))
                      (_%E128126128135%_)))))
          (_%E128125128150%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx128093%_)
        (let* ((_%e128094128101%_ _%stx128093%_)
               (_%E128096128105%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128094128101%_)))
               (_%E128095128119%_
                (lambda ()
                  (if (gx#stx-pair? _%e128094128101%_)
                      (let ((_%e128097128109%_
                             (gx#syntax-e _%e128094128101%_)))
                        (let ((_%hd128098128112%_ (##car _%e128097128109%_))
                              (_%tl128099128114%_ (##cdr _%e128097128109%_)))
                          (let ((_%body128117%_ _%tl128099128114%_))
                            (if '#t
                                (cons '%#begin-foreign _%body128117%_)
                                (_%E128096128105%_)))))
                      (_%E128096128105%_)))))
          (_%E128095128119%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx128039%_)
        (let* ((_%e128040128053%_ _%stx128039%_)
               (_%E128042128057%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128040128053%_)))
               (_%E128041128089%_
                (lambda ()
                  (if (gx#stx-pair? _%e128040128053%_)
                      (let ((_%e128043128061%_
                             (gx#syntax-e _%e128040128053%_)))
                        (let ((_%hd128044128064%_ (##car _%e128043128061%_))
                              (_%tl128045128066%_ (##cdr _%e128043128061%_)))
                          (if (gx#stx-pair? _%tl128045128066%_)
                              (let ((_%e128046128069%_
                                     (gx#syntax-e _%tl128045128066%_)))
                                (let ((_%hd128047128072%_
                                       (##car _%e128046128069%_))
                                      (_%tl128048128074%_
                                       (##cdr _%e128046128069%_)))
                                  (let ((_%ann128077%_ _%hd128047128072%_))
                                    (if (gx#stx-pair? _%tl128048128074%_)
                                        (let ((_%e128049128079%_
                                               (gx#syntax-e
                                                _%tl128048128074%_)))
                                          (let ((_%hd128050128082%_
                                                 (##car _%e128049128079%_))
                                                (_%tl128051128084%_
                                                 (##cdr _%e128049128079%_)))
                                            (let ((_%expr128087%_
                                                   _%hd128050128082%_))
                                              (if (gx#stx-null?
                                                   _%tl128051128084%_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _%expr128087%_)
                                                      (_%E128042128057%_))
                                                  (_%E128042128057%_)))))
                                        (_%E128042128057%_)))))
                              (_%E128042128057%_))))
                      (_%E128042128057%_)))))
          (_%E128041128089%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx128009%_)
        (let* ((_%e128010128017%_ _%stx128009%_)
               (_%E128012128021%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128010128017%_)))
               (_%E128011128035%_
                (lambda ()
                  (if (gx#stx-pair? _%e128010128017%_)
                      (let ((_%e128013128025%_
                             (gx#syntax-e _%e128010128017%_)))
                        (let ((_%hd128014128028%_ (##car _%e128013128025%_))
                              (_%tl128015128030%_ (##cdr _%e128013128025%_)))
                          (let ((_%body128033%_ _%tl128015128030%_))
                            (if '#t
                                (cons '%#import _%body128033%_)
                                (_%E128012128021%_)))))
                      (_%E128012128021%_)))))
          (_%E128011128035%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx127966%_)
        (let* ((_%e127967127977%_ _%stx127966%_)
               (_%E127969127981%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127967127977%_)))
               (_%E127968128005%_
                (lambda ()
                  (if (gx#stx-pair? _%e127967127977%_)
                      (let ((_%e127970127985%_
                             (gx#syntax-e _%e127967127977%_)))
                        (let ((_%hd127971127988%_ (##car _%e127970127985%_))
                              (_%tl127972127990%_ (##cdr _%e127970127985%_)))
                          (if (gx#stx-pair? _%tl127972127990%_)
                              (let ((_%e127973127993%_
                                     (gx#syntax-e _%tl127972127990%_)))
                                (let ((_%hd127974127996%_
                                       (##car _%e127973127993%_))
                                      (_%tl127975127998%_
                                       (##cdr _%e127973127993%_)))
                                  (let* ((_%hd128001%_ _%hd127974127996%_)
                                         (_%body128003%_ _%tl127975127998%_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _%hd128001%_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _%body128003%_)))
                                        (_%E127969127981%_)))))
                              (_%E127969127981%_))))
                      (_%E127969127981%_)))))
          (_%E127968128005%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx127936%_)
        (let* ((_%e127937127944%_ _%stx127936%_)
               (_%E127939127948%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127937127944%_)))
               (_%E127938127962%_
                (lambda ()
                  (if (gx#stx-pair? _%e127937127944%_)
                      (let ((_%e127940127952%_
                             (gx#syntax-e _%e127937127944%_)))
                        (let ((_%hd127941127955%_ (##car _%e127940127952%_))
                              (_%tl127942127957%_ (##cdr _%e127940127952%_)))
                          (let ((_%body127960%_ _%tl127942127957%_))
                            (if '#t
                                (cons '%#export _%body127960%_)
                                (_%E127939127948%_)))))
                      (_%E127939127948%_)))))
          (_%E127938127962%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx127906%_)
        (let* ((_%e127907127914%_ _%stx127906%_)
               (_%E127909127918%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127907127914%_)))
               (_%E127908127932%_
                (lambda ()
                  (if (gx#stx-pair? _%e127907127914%_)
                      (let ((_%e127910127922%_
                             (gx#syntax-e _%e127907127914%_)))
                        (let ((_%hd127911127925%_ (##car _%e127910127922%_))
                              (_%tl127912127927%_ (##cdr _%e127910127922%_)))
                          (let ((_%body127930%_ _%tl127912127927%_))
                            (if '#t
                                (cons '%#provide _%body127930%_)
                                (_%E127909127918%_)))))
                      (_%E127909127918%_)))))
          (_%E127908127932%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx127876%_)
        (let* ((_%e127877127884%_ _%stx127876%_)
               (_%E127879127888%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127877127884%_)))
               (_%E127878127902%_
                (lambda ()
                  (if (gx#stx-pair? _%e127877127884%_)
                      (let ((_%e127880127892%_
                             (gx#syntax-e _%e127877127884%_)))
                        (let ((_%hd127881127895%_ (##car _%e127880127892%_))
                              (_%tl127882127897%_ (##cdr _%e127880127892%_)))
                          (let ((_%body127900%_ _%tl127882127897%_))
                            (if '#t
                                (cons '%#extern _%body127900%_)
                                (_%E127879127888%_)))))
                      (_%E127879127888%_)))))
          (_%E127878127902%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx127822%_)
        (let* ((_%e127823127836%_ _%stx127822%_)
               (_%E127825127840%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127823127836%_)))
               (_%E127824127872%_
                (lambda ()
                  (if (gx#stx-pair? _%e127823127836%_)
                      (let ((_%e127826127844%_
                             (gx#syntax-e _%e127823127836%_)))
                        (let ((_%hd127827127847%_ (##car _%e127826127844%_))
                              (_%tl127828127849%_ (##cdr _%e127826127844%_)))
                          (if (gx#stx-pair? _%tl127828127849%_)
                              (let ((_%e127829127852%_
                                     (gx#syntax-e _%tl127828127849%_)))
                                (let ((_%hd127830127855%_
                                       (##car _%e127829127852%_))
                                      (_%tl127831127857%_
                                       (##cdr _%e127829127852%_)))
                                  (let ((_%hd127860%_ _%hd127830127855%_))
                                    (if (gx#stx-pair? _%tl127831127857%_)
                                        (let ((_%e127832127862%_
                                               (gx#syntax-e
                                                _%tl127831127857%_)))
                                          (let ((_%hd127833127865%_
                                                 (##car _%e127832127862%_))
                                                (_%tl127834127867%_
                                                 (##cdr _%e127832127862%_)))
                                            (let ((_%expr127870%_
                                                   _%hd127833127865%_))
                                              (if (gx#stx-null?
                                                   _%tl127834127867%_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _%hd127860%_)
                          (cons (gx#core-compile-top-syntax _%expr127870%_)
                                '())))
              (_%E127825127840%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E127825127840%_)))))
                                        (_%E127825127840%_)))))
                              (_%E127825127840%_))))
                      (_%E127825127840%_)))))
          (_%E127824127872%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx127767%_)
        (let* ((_%e127768127781%_ _%stx127767%_)
               (_%E127770127785%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127768127781%_)))
               (_%E127769127818%_
                (lambda ()
                  (if (gx#stx-pair? _%e127768127781%_)
                      (let ((_%e127771127789%_
                             (gx#syntax-e _%e127768127781%_)))
                        (let ((_%hd127772127792%_ (##car _%e127771127789%_))
                              (_%tl127773127794%_ (##cdr _%e127771127789%_)))
                          (if (gx#stx-pair? _%tl127773127794%_)
                              (let ((_%e127774127797%_
                                     (gx#syntax-e _%tl127773127794%_)))
                                (let ((_%hd127775127800%_
                                       (##car _%e127774127797%_))
                                      (_%tl127776127802%_
                                       (##cdr _%e127774127797%_)))
                                  (let ((_%hd127805%_ _%hd127775127800%_))
                                    (if (gx#stx-pair? _%tl127776127802%_)
                                        (let ((_%e127777127807%_
                                               (gx#syntax-e
                                                _%tl127776127802%_)))
                                          (let ((_%hd127778127810%_
                                                 (##car _%e127777127807%_))
                                                (_%tl127779127812%_
                                                 (##cdr _%e127777127807%_)))
                                            (let ((_%expr127815%_
                                                   _%hd127778127810%_))
                                              (if (gx#stx-null?
                                                   _%tl127779127812%_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _%hd127805%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (__call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _%expr127815%_))
                                 gx#current-expander-phi
                                 (##fx+ (gx#current-expander-phi) '1))
                                '())))
              (_%E127770127785%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E127770127785%_)))))
                                        (_%E127770127785%_)))))
                              (_%E127770127785%_))))
                      (_%E127770127785%_)))))
          (_%E127769127818%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx127737%_)
        (let* ((_%e127738127745%_ _%stx127737%_)
               (_%E127740127749%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127738127745%_)))
               (_%E127739127763%_
                (lambda ()
                  (if (gx#stx-pair? _%e127738127745%_)
                      (let ((_%e127741127753%_
                             (gx#syntax-e _%e127738127745%_)))
                        (let ((_%hd127742127756%_ (##car _%e127741127753%_))
                              (_%tl127743127758%_ (##cdr _%e127741127753%_)))
                          (let ((_%body127761%_ _%tl127743127758%_))
                            (if '#t
                                (cons '%#define-alias _%body127761%_)
                                (_%E127740127749%_)))))
                      (_%E127740127749%_)))))
          (_%E127739127763%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx127707%_)
        (let* ((_%e127708127715%_ _%stx127707%_)
               (_%E127710127719%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127708127715%_)))
               (_%E127709127733%_
                (lambda ()
                  (if (gx#stx-pair? _%e127708127715%_)
                      (let ((_%e127711127723%_
                             (gx#syntax-e _%e127708127715%_)))
                        (let ((_%hd127712127726%_ (##car _%e127711127723%_))
                              (_%tl127713127728%_ (##cdr _%e127711127723%_)))
                          (let ((_%body127731%_ _%tl127713127728%_))
                            (if '#t
                                (cons '%#define-runtime _%body127731%_)
                                (_%E127710127719%_)))))
                      (_%E127710127719%_)))))
          (_%E127709127733%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx127677%_)
        (let* ((_%e127678127685%_ _%stx127677%_)
               (_%E127680127689%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127678127685%_)))
               (_%E127679127703%_
                (lambda ()
                  (if (gx#stx-pair? _%e127678127685%_)
                      (let ((_%e127681127693%_
                             (gx#syntax-e _%e127678127685%_)))
                        (let ((_%hd127682127696%_ (##car _%e127681127693%_))
                              (_%tl127683127698%_ (##cdr _%e127681127693%_)))
                          (let ((_%decls127701%_ _%tl127683127698%_))
                            (if '#t
                                (cons '%#declare _%decls127701%_)
                                (_%E127680127689%_)))))
                      (_%E127680127689%_)))))
          (_%E127679127703%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx127647%_)
        (let* ((_%e127648127655%_ _%stx127647%_)
               (_%E127650127659%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127648127655%_)))
               (_%E127649127673%_
                (lambda ()
                  (if (gx#stx-pair? _%e127648127655%_)
                      (let ((_%e127651127663%_
                             (gx#syntax-e _%e127648127655%_)))
                        (let ((_%hd127652127666%_ (##car _%e127651127663%_))
                              (_%tl127653127668%_ (##cdr _%e127651127663%_)))
                          (let ((_%clause127671%_ _%tl127653127668%_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _%clause127671%_))
                                (_%E127650127659%_)))))
                      (_%E127650127659%_)))))
          (_%E127649127673%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx127604%_)
        (let* ((_%e127605127615%_ _%stx127604%_)
               (_%E127607127619%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127605127615%_)))
               (_%E127606127643%_
                (lambda ()
                  (if (gx#stx-pair? _%e127605127615%_)
                      (let ((_%e127608127623%_
                             (gx#syntax-e _%e127605127615%_)))
                        (let ((_%hd127609127626%_ (##car _%e127608127623%_))
                              (_%tl127610127628%_ (##cdr _%e127608127623%_)))
                          (let ((_%hd127631%_ _%hd127609127626%_))
                            (if (gx#stx-pair? _%tl127610127628%_)
                                (let ((_%e127611127633%_
                                       (gx#syntax-e _%tl127610127628%_)))
                                  (let ((_%hd127612127636%_
                                         (##car _%e127611127633%_))
                                        (_%tl127613127638%_
                                         (##cdr _%e127611127633%_)))
                                    (let ((_%body127641%_ _%hd127612127636%_))
                                      (if (gx#stx-null? _%tl127613127638%_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _%hd127631%_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _%body127641%_)
                                                          '()))
                                              (_%E127607127619%_))
                                          (_%E127607127619%_)))))
                                (_%E127607127619%_)))))
                      (_%E127607127619%_)))))
          (_%E127606127643%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx127574%_)
        (let* ((_%e127575127582%_ _%stx127574%_)
               (_%E127577127586%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127575127582%_)))
               (_%E127576127600%_
                (lambda ()
                  (if (gx#stx-pair? _%e127575127582%_)
                      (let ((_%e127578127590%_
                             (gx#syntax-e _%e127575127582%_)))
                        (let ((_%hd127579127593%_ (##car _%e127578127590%_))
                              (_%tl127580127595%_ (##cdr _%e127578127590%_)))
                          (let ((_%clauses127598%_ _%tl127580127595%_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _%clauses127598%_))
                                (_%E127577127586%_)))))
                      (_%E127577127586%_)))))
          (_%E127576127600%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx127509%_ _%form127510%_)
        (let* ((_%e127511127524%_ _%stx127509%_)
               (_%E127513127528%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127511127524%_)))
               (_%E127512127560%_
                (lambda ()
                  (if (gx#stx-pair? _%e127511127524%_)
                      (let ((_%e127514127532%_
                             (gx#syntax-e _%e127511127524%_)))
                        (let ((_%hd127515127535%_ (##car _%e127514127532%_))
                              (_%tl127516127537%_ (##cdr _%e127514127532%_)))
                          (if (gx#stx-pair? _%tl127516127537%_)
                              (let ((_%e127517127540%_
                                     (gx#syntax-e _%tl127516127537%_)))
                                (let ((_%hd127518127543%_
                                       (##car _%e127517127540%_))
                                      (_%tl127519127545%_
                                       (##cdr _%e127517127540%_)))
                                  (let ((_%hd127548%_ _%hd127518127543%_))
                                    (if (gx#stx-pair? _%tl127519127545%_)
                                        (let ((_%e127520127550%_
                                               (gx#syntax-e
                                                _%tl127519127545%_)))
                                          (let ((_%hd127521127553%_
                                                 (##car _%e127520127550%_))
                                                (_%tl127522127555%_
                                                 (##cdr _%e127520127550%_)))
                                            (let ((_%body127558%_
                                                   _%hd127521127553%_))
                                              (if (gx#stx-null?
                                                   _%tl127522127555%_)
                                                  (if '#t
                                                      (cons _%form127510%_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _%hd127548%_)
                          (cons (gx#core-compile-top-syntax _%body127558%_)
                                '())))
              (_%E127513127528%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E127513127528%_)))))
                                        (_%E127513127528%_)))))
                              (_%E127513127528%_))))
                      (_%E127513127528%_)))))
          (_%E127512127560%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx127567%_)
        (let ((_%form127569%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx127567%_ _%form127569%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g128396_
        (let ((_g128395_ (##length _g128396_)))
          (cond ((##fx= _g128395_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g128396_))
                ((##fx= _g128395_ 2)
                 (apply gx#core-compile-top-let-values%__% _g128396_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g128396_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx127506%_)
        (gx#core-compile-top-let-values%__% _%stx127506%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx127504%_)
        (gx#core-compile-top-let-values%__% _%stx127504%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx127463%_)
        (let* ((_%e127464127474%_ _%stx127463%_)
               (_%E127466127478%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127464127474%_)))
               (_%E127465127500%_
                (lambda ()
                  (if (gx#stx-pair? _%e127464127474%_)
                      (let ((_%e127467127482%_
                             (gx#syntax-e _%e127464127474%_)))
                        (let ((_%hd127468127485%_ (##car _%e127467127482%_))
                              (_%tl127469127487%_ (##cdr _%e127467127482%_)))
                          (if (gx#stx-pair? _%tl127469127487%_)
                              (let ((_%e127470127490%_
                                     (gx#syntax-e _%tl127469127487%_)))
                                (let ((_%hd127471127493%_
                                       (##car _%e127470127490%_))
                                      (_%tl127472127495%_
                                       (##cdr _%e127470127490%_)))
                                  (let ((_%e127498%_ _%hd127471127493%_))
                                    (if (gx#stx-null? _%tl127472127495%_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _%e127498%_)
                                                        '()))
                                            (_%E127466127478%_))
                                        (_%E127466127478%_)))))
                              (_%E127466127478%_))))
                      (_%E127466127478%_)))))
          (_%E127465127500%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx127422%_)
        (let* ((_%e127423127433%_ _%stx127422%_)
               (_%E127425127437%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127423127433%_)))
               (_%E127424127459%_
                (lambda ()
                  (if (gx#stx-pair? _%e127423127433%_)
                      (let ((_%e127426127441%_
                             (gx#syntax-e _%e127423127433%_)))
                        (let ((_%hd127427127444%_ (##car _%e127426127441%_))
                              (_%tl127428127446%_ (##cdr _%e127426127441%_)))
                          (if (gx#stx-pair? _%tl127428127446%_)
                              (let ((_%e127429127449%_
                                     (gx#syntax-e _%tl127428127446%_)))
                                (let ((_%hd127430127452%_
                                       (##car _%e127429127449%_))
                                      (_%tl127431127454%_
                                       (##cdr _%e127429127449%_)))
                                  (let ((_%e127457%_ _%hd127430127452%_))
                                    (if (gx#stx-null? _%tl127431127454%_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _%e127457%_)
                                                        '()))
                                            (_%E127425127437%_))
                                        (_%E127425127437%_)))))
                              (_%E127425127437%_))))
                      (_%E127425127437%_)))))
          (_%E127424127459%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx127379%_)
        (let* ((_%e127380127390%_ _%stx127379%_)
               (_%E127382127394%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127380127390%_)))
               (_%E127381127418%_
                (lambda ()
                  (if (gx#stx-pair? _%e127380127390%_)
                      (let ((_%e127383127398%_
                             (gx#syntax-e _%e127380127390%_)))
                        (let ((_%hd127384127401%_ (##car _%e127383127398%_))
                              (_%tl127385127403%_ (##cdr _%e127383127398%_)))
                          (if (gx#stx-pair? _%tl127385127403%_)
                              (let ((_%e127386127406%_
                                     (gx#syntax-e _%tl127385127403%_)))
                                (let ((_%hd127387127409%_
                                       (##car _%e127386127406%_))
                                      (_%tl127388127411%_
                                       (##cdr _%e127386127406%_)))
                                  (let* ((_%rator127414%_ _%hd127387127409%_)
                                         (_%args127416%_ _%tl127388127411%_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _%rator127414%_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _%args127416%_)))
                                        (_%E127382127394%_)))))
                              (_%E127382127394%_))))
                      (_%E127382127394%_)))))
          (_%E127381127418%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx127312%_)
        (let* ((_%e127313127329%_ _%stx127312%_)
               (_%E127315127333%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127313127329%_)))
               (_%E127314127375%_
                (lambda ()
                  (if (gx#stx-pair? _%e127313127329%_)
                      (let ((_%e127316127337%_
                             (gx#syntax-e _%e127313127329%_)))
                        (let ((_%hd127317127340%_ (##car _%e127316127337%_))
                              (_%tl127318127342%_ (##cdr _%e127316127337%_)))
                          (if (gx#stx-pair? _%tl127318127342%_)
                              (let ((_%e127319127345%_
                                     (gx#syntax-e _%tl127318127342%_)))
                                (let ((_%hd127320127348%_
                                       (##car _%e127319127345%_))
                                      (_%tl127321127350%_
                                       (##cdr _%e127319127345%_)))
                                  (let ((_%test127353%_ _%hd127320127348%_))
                                    (if (gx#stx-pair? _%tl127321127350%_)
                                        (let ((_%e127322127355%_
                                               (gx#syntax-e
                                                _%tl127321127350%_)))
                                          (let ((_%hd127323127358%_
                                                 (##car _%e127322127355%_))
                                                (_%tl127324127360%_
                                                 (##cdr _%e127322127355%_)))
                                            (let ((_%K127363%_
                                                   _%hd127323127358%_))
                                              (if (gx#stx-pair?
                                                   _%tl127324127360%_)
                                                  (let ((_%e127325127365%_
                                                         (gx#syntax-e
                                                          _%tl127324127360%_)))
                                                    (let ((_%hd127326127368%_
                                                           (##car _%e127325127365%_))
                                                          (_%tl127327127370%_
                                                           (##cdr _%e127325127365%_)))
                                                      (let ((_%E127373%_
                                                             _%hd127326127368%_))
                                                        (if (gx#stx-null?
                                                             _%tl127327127370%_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _%test127353%_)
                                    (cons (gx#core-compile-top-syntax
                                           _%K127363%_)
                                          (cons (gx#core-compile-top-syntax
                                                 _%E127373%_)
                                                '()))))
                        (_%E127315127333%_))
                    (_%E127315127333%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E127315127333%_)))))
                                        (_%E127315127333%_)))))
                              (_%E127315127333%_))))
                      (_%E127315127333%_)))))
          (_%E127314127375%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx127271%_)
        (let* ((_%e127272127282%_ _%stx127271%_)
               (_%E127274127286%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127272127282%_)))
               (_%E127273127308%_
                (lambda ()
                  (if (gx#stx-pair? _%e127272127282%_)
                      (let ((_%e127275127290%_
                             (gx#syntax-e _%e127272127282%_)))
                        (let ((_%hd127276127293%_ (##car _%e127275127290%_))
                              (_%tl127277127295%_ (##cdr _%e127275127290%_)))
                          (if (gx#stx-pair? _%tl127277127295%_)
                              (let ((_%e127278127298%_
                                     (gx#syntax-e _%tl127277127295%_)))
                                (let ((_%hd127279127301%_
                                       (##car _%e127278127298%_))
                                      (_%tl127280127303%_
                                       (##cdr _%e127278127298%_)))
                                  (let ((_%id127306%_ _%hd127279127301%_))
                                    (if (gx#stx-null? _%tl127280127303%_)
                                        (if (gx#identifier? _%id127306%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id127306%_)
                                                        '()))
                                            (_%E127274127286%_))
                                        (_%E127274127286%_)))))
                              (_%E127274127286%_))))
                      (_%E127274127286%_)))))
          (_%E127273127308%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx127217%_)
        (let* ((_%e127218127231%_ _%stx127217%_)
               (_%E127220127235%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127218127231%_)))
               (_%E127219127267%_
                (lambda ()
                  (if (gx#stx-pair? _%e127218127231%_)
                      (let ((_%e127221127239%_
                             (gx#syntax-e _%e127218127231%_)))
                        (let ((_%hd127222127242%_ (##car _%e127221127239%_))
                              (_%tl127223127244%_ (##cdr _%e127221127239%_)))
                          (if (gx#stx-pair? _%tl127223127244%_)
                              (let ((_%e127224127247%_
                                     (gx#syntax-e _%tl127223127244%_)))
                                (let ((_%hd127225127250%_
                                       (##car _%e127224127247%_))
                                      (_%tl127226127252%_
                                       (##cdr _%e127224127247%_)))
                                  (let ((_%id127255%_ _%hd127225127250%_))
                                    (if (gx#stx-pair? _%tl127226127252%_)
                                        (let ((_%e127227127257%_
                                               (gx#syntax-e
                                                _%tl127226127252%_)))
                                          (let ((_%hd127228127260%_
                                                 (##car _%e127227127257%_))
                                                (_%tl127229127262%_
                                                 (##cdr _%e127227127257%_)))
                                            (let ((_%expr127265%_
                                                   _%hd127228127260%_))
                                              (if (gx#stx-null?
                                                   _%tl127229127262%_)
                                                  (if (gx#identifier?
                                                       _%id127255%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id127255%_)
                          (cons (gx#core-compile-top-syntax _%expr127265%_)
                                '())))
              (_%E127220127235%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E127220127235%_)))))
                                        (_%E127220127235%_)))))
                              (_%E127220127235%_))))
                      (_%E127220127235%_)))))
          (_%E127219127267%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id127211%_)
        (let ((_%$e127213%_ (gx#resolve-identifier__0 _%id127211%_)))
          (if _%$e127213%_
              (##unchecked-structure-ref _%$e127213%_ '1 '#f '#f)
              _%id127211%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd127209%_)
        (if (gx#identifier? _%hd127209%_)
            (gx#core-compile-top-runtime-ref _%hd127209%_)
            '#f)))))
