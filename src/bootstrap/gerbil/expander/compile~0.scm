(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1712823027)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx128362%_)
        (let* ((_%e128363128370%_ _%stx128362%_)
               (_%E128365128374%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128363128370%_)))
               (_%E128364128388%_
                (lambda ()
                  (if (gx#stx-pair? _%e128363128370%_)
                      (let ((_%e128366128378%_
                             (gx#syntax-e _%e128363128370%_)))
                        (let ((_%hd128367128381%_ (##car _%e128366128378%_))
                              (_%tl128368128383%_ (##cdr _%e128366128378%_)))
                          (let ((_%form128386%_ _%hd128367128381%_))
                            (if '#t
                                (let* ((__self128391
                                        (gx#syntax-local-e__0 _%form128386%_))
                                       (__method128392
                                        (__method-ref
                                         __self128391
                                         'compile-top-syntax)))
                                  (if __method128392
                                      (__method128392
                                       __self128391
                                       _%stx128362%_)
                                      (begin
                                        (error '"Missing method"
                                               __self128391
                                               'compile-top-syntax)
                                        '#!void)))
                                (_%E128365128374%_)))))
                      (_%E128365128374%_)))))
          (_%E128364128388%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self127205128308%_ _%stx128310%_)
        (let* ((_%self128312%_ _%self127205128308%_)
               (_%self128314%_ _%self128312%_)
               (_%self128323128331%_ _%self128314%_)
               (_%E128325128335%_
                (lambda ()
                  (error '"No clause matching"
                         _%self128323128331%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K128326128348%_
                (lambda (_%K128338%_)
                  (let ((_%$e128340%_ (gx#stx-source _%stx128310%_)))
                    (if _%$e128340%_
                        ((lambda (_%g128342128344%_)
                           (gx#stx-wrap-source
                            (_%K128338%_ _%stx128310%_)
                            _%g128342128344%_))
                         _%$e128340%_)
                        (_%K128338%_ _%stx128310%_))))))
          (if '#t
              (let* ((_%e128327128351%_
                      (##unchecked-structure-ref
                       _%self128323128331%_
                       '1
                       '#f
                       '#f))
                     (_%e128328128354%_
                      (##unchecked-structure-ref
                       _%self128323128331%_
                       '2
                       '#f
                       '#f))
                     (_%e128329128357%_
                      (##unchecked-structure-ref
                       _%self128323128331%_
                       '3
                       '#f
                       '#f))
                     (_%K128360%_ _%e128329128357%_))
                (_%K128326128348%_ _%K128360%_))
              (_%E128325128335%_)))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx128182%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx128182%_)))
    (define gx#core-compile-top-begin%
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
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _%body128176%_))
                                (_%E128155128164%_)))))
                      (_%E128155128164%_)))))
          (_%E128154128178%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx128121%_)
        (let* ((_%e128122128129%_ _%stx128121%_)
               (_%E128124128133%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128122128129%_)))
               (_%E128123128148%_
                (lambda ()
                  (if (gx#stx-pair? _%e128122128129%_)
                      (let ((_%e128125128137%_
                             (gx#syntax-e _%e128122128129%_)))
                        (let ((_%hd128126128140%_ (##car _%e128125128137%_))
                              (_%tl128127128142%_ (##cdr _%e128125128137%_)))
                          (let ((_%body128145%_ _%tl128127128142%_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (__call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _%body128145%_))
                                       gx#current-expander-phi
                                       (##fx+ (gx#current-expander-phi) '1)))
                                (_%E128124128133%_)))))
                      (_%E128124128133%_)))))
          (_%E128123128148%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx128091%_)
        (let* ((_%e128092128099%_ _%stx128091%_)
               (_%E128094128103%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128092128099%_)))
               (_%E128093128117%_
                (lambda ()
                  (if (gx#stx-pair? _%e128092128099%_)
                      (let ((_%e128095128107%_
                             (gx#syntax-e _%e128092128099%_)))
                        (let ((_%hd128096128110%_ (##car _%e128095128107%_))
                              (_%tl128097128112%_ (##cdr _%e128095128107%_)))
                          (let ((_%body128115%_ _%tl128097128112%_))
                            (if '#t
                                (cons '%#begin-foreign _%body128115%_)
                                (_%E128094128103%_)))))
                      (_%E128094128103%_)))))
          (_%E128093128117%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx128037%_)
        (let* ((_%e128038128051%_ _%stx128037%_)
               (_%E128040128055%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128038128051%_)))
               (_%E128039128087%_
                (lambda ()
                  (if (gx#stx-pair? _%e128038128051%_)
                      (let ((_%e128041128059%_
                             (gx#syntax-e _%e128038128051%_)))
                        (let ((_%hd128042128062%_ (##car _%e128041128059%_))
                              (_%tl128043128064%_ (##cdr _%e128041128059%_)))
                          (if (gx#stx-pair? _%tl128043128064%_)
                              (let ((_%e128044128067%_
                                     (gx#syntax-e _%tl128043128064%_)))
                                (let ((_%hd128045128070%_
                                       (##car _%e128044128067%_))
                                      (_%tl128046128072%_
                                       (##cdr _%e128044128067%_)))
                                  (let ((_%ann128075%_ _%hd128045128070%_))
                                    (if (gx#stx-pair? _%tl128046128072%_)
                                        (let ((_%e128047128077%_
                                               (gx#syntax-e
                                                _%tl128046128072%_)))
                                          (let ((_%hd128048128080%_
                                                 (##car _%e128047128077%_))
                                                (_%tl128049128082%_
                                                 (##cdr _%e128047128077%_)))
                                            (let ((_%expr128085%_
                                                   _%hd128048128080%_))
                                              (if (gx#stx-null?
                                                   _%tl128049128082%_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _%expr128085%_)
                                                      (_%E128040128055%_))
                                                  (_%E128040128055%_)))))
                                        (_%E128040128055%_)))))
                              (_%E128040128055%_))))
                      (_%E128040128055%_)))))
          (_%E128039128087%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx128007%_)
        (let* ((_%e128008128015%_ _%stx128007%_)
               (_%E128010128019%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128008128015%_)))
               (_%E128009128033%_
                (lambda ()
                  (if (gx#stx-pair? _%e128008128015%_)
                      (let ((_%e128011128023%_
                             (gx#syntax-e _%e128008128015%_)))
                        (let ((_%hd128012128026%_ (##car _%e128011128023%_))
                              (_%tl128013128028%_ (##cdr _%e128011128023%_)))
                          (let ((_%body128031%_ _%tl128013128028%_))
                            (if '#t
                                (cons '%#import _%body128031%_)
                                (_%E128010128019%_)))))
                      (_%E128010128019%_)))))
          (_%E128009128033%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx127964%_)
        (let* ((_%e127965127975%_ _%stx127964%_)
               (_%E127967127979%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127965127975%_)))
               (_%E127966128003%_
                (lambda ()
                  (if (gx#stx-pair? _%e127965127975%_)
                      (let ((_%e127968127983%_
                             (gx#syntax-e _%e127965127975%_)))
                        (let ((_%hd127969127986%_ (##car _%e127968127983%_))
                              (_%tl127970127988%_ (##cdr _%e127968127983%_)))
                          (if (gx#stx-pair? _%tl127970127988%_)
                              (let ((_%e127971127991%_
                                     (gx#syntax-e _%tl127970127988%_)))
                                (let ((_%hd127972127994%_
                                       (##car _%e127971127991%_))
                                      (_%tl127973127996%_
                                       (##cdr _%e127971127991%_)))
                                  (let* ((_%hd127999%_ _%hd127972127994%_)
                                         (_%body128001%_ _%tl127973127996%_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _%hd127999%_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _%body128001%_)))
                                        (_%E127967127979%_)))))
                              (_%E127967127979%_))))
                      (_%E127967127979%_)))))
          (_%E127966128003%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx127934%_)
        (let* ((_%e127935127942%_ _%stx127934%_)
               (_%E127937127946%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127935127942%_)))
               (_%E127936127960%_
                (lambda ()
                  (if (gx#stx-pair? _%e127935127942%_)
                      (let ((_%e127938127950%_
                             (gx#syntax-e _%e127935127942%_)))
                        (let ((_%hd127939127953%_ (##car _%e127938127950%_))
                              (_%tl127940127955%_ (##cdr _%e127938127950%_)))
                          (let ((_%body127958%_ _%tl127940127955%_))
                            (if '#t
                                (cons '%#export _%body127958%_)
                                (_%E127937127946%_)))))
                      (_%E127937127946%_)))))
          (_%E127936127960%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx127904%_)
        (let* ((_%e127905127912%_ _%stx127904%_)
               (_%E127907127916%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127905127912%_)))
               (_%E127906127930%_
                (lambda ()
                  (if (gx#stx-pair? _%e127905127912%_)
                      (let ((_%e127908127920%_
                             (gx#syntax-e _%e127905127912%_)))
                        (let ((_%hd127909127923%_ (##car _%e127908127920%_))
                              (_%tl127910127925%_ (##cdr _%e127908127920%_)))
                          (let ((_%body127928%_ _%tl127910127925%_))
                            (if '#t
                                (cons '%#provide _%body127928%_)
                                (_%E127907127916%_)))))
                      (_%E127907127916%_)))))
          (_%E127906127930%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx127874%_)
        (let* ((_%e127875127882%_ _%stx127874%_)
               (_%E127877127886%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127875127882%_)))
               (_%E127876127900%_
                (lambda ()
                  (if (gx#stx-pair? _%e127875127882%_)
                      (let ((_%e127878127890%_
                             (gx#syntax-e _%e127875127882%_)))
                        (let ((_%hd127879127893%_ (##car _%e127878127890%_))
                              (_%tl127880127895%_ (##cdr _%e127878127890%_)))
                          (let ((_%body127898%_ _%tl127880127895%_))
                            (if '#t
                                (cons '%#extern _%body127898%_)
                                (_%E127877127886%_)))))
                      (_%E127877127886%_)))))
          (_%E127876127900%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx127820%_)
        (let* ((_%e127821127834%_ _%stx127820%_)
               (_%E127823127838%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127821127834%_)))
               (_%E127822127870%_
                (lambda ()
                  (if (gx#stx-pair? _%e127821127834%_)
                      (let ((_%e127824127842%_
                             (gx#syntax-e _%e127821127834%_)))
                        (let ((_%hd127825127845%_ (##car _%e127824127842%_))
                              (_%tl127826127847%_ (##cdr _%e127824127842%_)))
                          (if (gx#stx-pair? _%tl127826127847%_)
                              (let ((_%e127827127850%_
                                     (gx#syntax-e _%tl127826127847%_)))
                                (let ((_%hd127828127853%_
                                       (##car _%e127827127850%_))
                                      (_%tl127829127855%_
                                       (##cdr _%e127827127850%_)))
                                  (let ((_%hd127858%_ _%hd127828127853%_))
                                    (if (gx#stx-pair? _%tl127829127855%_)
                                        (let ((_%e127830127860%_
                                               (gx#syntax-e
                                                _%tl127829127855%_)))
                                          (let ((_%hd127831127863%_
                                                 (##car _%e127830127860%_))
                                                (_%tl127832127865%_
                                                 (##cdr _%e127830127860%_)))
                                            (let ((_%expr127868%_
                                                   _%hd127831127863%_))
                                              (if (gx#stx-null?
                                                   _%tl127832127865%_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _%hd127858%_)
                          (cons (gx#core-compile-top-syntax _%expr127868%_)
                                '())))
              (_%E127823127838%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E127823127838%_)))))
                                        (_%E127823127838%_)))))
                              (_%E127823127838%_))))
                      (_%E127823127838%_)))))
          (_%E127822127870%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx127765%_)
        (let* ((_%e127766127779%_ _%stx127765%_)
               (_%E127768127783%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127766127779%_)))
               (_%E127767127816%_
                (lambda ()
                  (if (gx#stx-pair? _%e127766127779%_)
                      (let ((_%e127769127787%_
                             (gx#syntax-e _%e127766127779%_)))
                        (let ((_%hd127770127790%_ (##car _%e127769127787%_))
                              (_%tl127771127792%_ (##cdr _%e127769127787%_)))
                          (if (gx#stx-pair? _%tl127771127792%_)
                              (let ((_%e127772127795%_
                                     (gx#syntax-e _%tl127771127792%_)))
                                (let ((_%hd127773127798%_
                                       (##car _%e127772127795%_))
                                      (_%tl127774127800%_
                                       (##cdr _%e127772127795%_)))
                                  (let ((_%hd127803%_ _%hd127773127798%_))
                                    (if (gx#stx-pair? _%tl127774127800%_)
                                        (let ((_%e127775127805%_
                                               (gx#syntax-e
                                                _%tl127774127800%_)))
                                          (let ((_%hd127776127808%_
                                                 (##car _%e127775127805%_))
                                                (_%tl127777127810%_
                                                 (##cdr _%e127775127805%_)))
                                            (let ((_%expr127813%_
                                                   _%hd127776127808%_))
                                              (if (gx#stx-null?
                                                   _%tl127777127810%_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _%hd127803%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (__call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _%expr127813%_))
                                 gx#current-expander-phi
                                 (##fx+ (gx#current-expander-phi) '1))
                                '())))
              (_%E127768127783%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E127768127783%_)))))
                                        (_%E127768127783%_)))))
                              (_%E127768127783%_))))
                      (_%E127768127783%_)))))
          (_%E127767127816%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx127735%_)
        (let* ((_%e127736127743%_ _%stx127735%_)
               (_%E127738127747%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127736127743%_)))
               (_%E127737127761%_
                (lambda ()
                  (if (gx#stx-pair? _%e127736127743%_)
                      (let ((_%e127739127751%_
                             (gx#syntax-e _%e127736127743%_)))
                        (let ((_%hd127740127754%_ (##car _%e127739127751%_))
                              (_%tl127741127756%_ (##cdr _%e127739127751%_)))
                          (let ((_%body127759%_ _%tl127741127756%_))
                            (if '#t
                                (cons '%#define-alias _%body127759%_)
                                (_%E127738127747%_)))))
                      (_%E127738127747%_)))))
          (_%E127737127761%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx127705%_)
        (let* ((_%e127706127713%_ _%stx127705%_)
               (_%E127708127717%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127706127713%_)))
               (_%E127707127731%_
                (lambda ()
                  (if (gx#stx-pair? _%e127706127713%_)
                      (let ((_%e127709127721%_
                             (gx#syntax-e _%e127706127713%_)))
                        (let ((_%hd127710127724%_ (##car _%e127709127721%_))
                              (_%tl127711127726%_ (##cdr _%e127709127721%_)))
                          (let ((_%body127729%_ _%tl127711127726%_))
                            (if '#t
                                (cons '%#define-runtime _%body127729%_)
                                (_%E127708127717%_)))))
                      (_%E127708127717%_)))))
          (_%E127707127731%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx127675%_)
        (let* ((_%e127676127683%_ _%stx127675%_)
               (_%E127678127687%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127676127683%_)))
               (_%E127677127701%_
                (lambda ()
                  (if (gx#stx-pair? _%e127676127683%_)
                      (let ((_%e127679127691%_
                             (gx#syntax-e _%e127676127683%_)))
                        (let ((_%hd127680127694%_ (##car _%e127679127691%_))
                              (_%tl127681127696%_ (##cdr _%e127679127691%_)))
                          (let ((_%decls127699%_ _%tl127681127696%_))
                            (if '#t
                                (cons '%#declare _%decls127699%_)
                                (_%E127678127687%_)))))
                      (_%E127678127687%_)))))
          (_%E127677127701%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx127645%_)
        (let* ((_%e127646127653%_ _%stx127645%_)
               (_%E127648127657%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127646127653%_)))
               (_%E127647127671%_
                (lambda ()
                  (if (gx#stx-pair? _%e127646127653%_)
                      (let ((_%e127649127661%_
                             (gx#syntax-e _%e127646127653%_)))
                        (let ((_%hd127650127664%_ (##car _%e127649127661%_))
                              (_%tl127651127666%_ (##cdr _%e127649127661%_)))
                          (let ((_%clause127669%_ _%tl127651127666%_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _%clause127669%_))
                                (_%E127648127657%_)))))
                      (_%E127648127657%_)))))
          (_%E127647127671%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx127602%_)
        (let* ((_%e127603127613%_ _%stx127602%_)
               (_%E127605127617%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127603127613%_)))
               (_%E127604127641%_
                (lambda ()
                  (if (gx#stx-pair? _%e127603127613%_)
                      (let ((_%e127606127621%_
                             (gx#syntax-e _%e127603127613%_)))
                        (let ((_%hd127607127624%_ (##car _%e127606127621%_))
                              (_%tl127608127626%_ (##cdr _%e127606127621%_)))
                          (let ((_%hd127629%_ _%hd127607127624%_))
                            (if (gx#stx-pair? _%tl127608127626%_)
                                (let ((_%e127609127631%_
                                       (gx#syntax-e _%tl127608127626%_)))
                                  (let ((_%hd127610127634%_
                                         (##car _%e127609127631%_))
                                        (_%tl127611127636%_
                                         (##cdr _%e127609127631%_)))
                                    (let ((_%body127639%_ _%hd127610127634%_))
                                      (if (gx#stx-null? _%tl127611127636%_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _%hd127629%_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _%body127639%_)
                                                          '()))
                                              (_%E127605127617%_))
                                          (_%E127605127617%_)))))
                                (_%E127605127617%_)))))
                      (_%E127605127617%_)))))
          (_%E127604127641%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx127572%_)
        (let* ((_%e127573127580%_ _%stx127572%_)
               (_%E127575127584%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127573127580%_)))
               (_%E127574127598%_
                (lambda ()
                  (if (gx#stx-pair? _%e127573127580%_)
                      (let ((_%e127576127588%_
                             (gx#syntax-e _%e127573127580%_)))
                        (let ((_%hd127577127591%_ (##car _%e127576127588%_))
                              (_%tl127578127593%_ (##cdr _%e127576127588%_)))
                          (let ((_%clauses127596%_ _%tl127578127593%_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _%clauses127596%_))
                                (_%E127575127584%_)))))
                      (_%E127575127584%_)))))
          (_%E127574127598%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx127507%_ _%form127508%_)
        (let* ((_%e127509127522%_ _%stx127507%_)
               (_%E127511127526%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127509127522%_)))
               (_%E127510127558%_
                (lambda ()
                  (if (gx#stx-pair? _%e127509127522%_)
                      (let ((_%e127512127530%_
                             (gx#syntax-e _%e127509127522%_)))
                        (let ((_%hd127513127533%_ (##car _%e127512127530%_))
                              (_%tl127514127535%_ (##cdr _%e127512127530%_)))
                          (if (gx#stx-pair? _%tl127514127535%_)
                              (let ((_%e127515127538%_
                                     (gx#syntax-e _%tl127514127535%_)))
                                (let ((_%hd127516127541%_
                                       (##car _%e127515127538%_))
                                      (_%tl127517127543%_
                                       (##cdr _%e127515127538%_)))
                                  (let ((_%hd127546%_ _%hd127516127541%_))
                                    (if (gx#stx-pair? _%tl127517127543%_)
                                        (let ((_%e127518127548%_
                                               (gx#syntax-e
                                                _%tl127517127543%_)))
                                          (let ((_%hd127519127551%_
                                                 (##car _%e127518127548%_))
                                                (_%tl127520127553%_
                                                 (##cdr _%e127518127548%_)))
                                            (let ((_%body127556%_
                                                   _%hd127519127551%_))
                                              (if (gx#stx-null?
                                                   _%tl127520127553%_)
                                                  (if '#t
                                                      (cons _%form127508%_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _%hd127546%_)
                          (cons (gx#core-compile-top-syntax _%body127556%_)
                                '())))
              (_%E127511127526%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E127511127526%_)))))
                                        (_%E127511127526%_)))))
                              (_%E127511127526%_))))
                      (_%E127511127526%_)))))
          (_%E127510127558%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx127565%_)
        (let ((_%form127567%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx127565%_ _%form127567%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g128394_
        (let ((_g128393_ (##length _g128394_)))
          (cond ((##fx= _g128393_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g128394_))
                ((##fx= _g128393_ 2)
                 (apply gx#core-compile-top-let-values%__% _g128394_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g128394_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx127504%_)
        (gx#core-compile-top-let-values%__% _%stx127504%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx127502%_)
        (gx#core-compile-top-let-values%__% _%stx127502%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx127461%_)
        (let* ((_%e127462127472%_ _%stx127461%_)
               (_%E127464127476%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127462127472%_)))
               (_%E127463127498%_
                (lambda ()
                  (if (gx#stx-pair? _%e127462127472%_)
                      (let ((_%e127465127480%_
                             (gx#syntax-e _%e127462127472%_)))
                        (let ((_%hd127466127483%_ (##car _%e127465127480%_))
                              (_%tl127467127485%_ (##cdr _%e127465127480%_)))
                          (if (gx#stx-pair? _%tl127467127485%_)
                              (let ((_%e127468127488%_
                                     (gx#syntax-e _%tl127467127485%_)))
                                (let ((_%hd127469127491%_
                                       (##car _%e127468127488%_))
                                      (_%tl127470127493%_
                                       (##cdr _%e127468127488%_)))
                                  (let ((_%e127496%_ _%hd127469127491%_))
                                    (if (gx#stx-null? _%tl127470127493%_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _%e127496%_)
                                                        '()))
                                            (_%E127464127476%_))
                                        (_%E127464127476%_)))))
                              (_%E127464127476%_))))
                      (_%E127464127476%_)))))
          (_%E127463127498%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx127420%_)
        (let* ((_%e127421127431%_ _%stx127420%_)
               (_%E127423127435%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127421127431%_)))
               (_%E127422127457%_
                (lambda ()
                  (if (gx#stx-pair? _%e127421127431%_)
                      (let ((_%e127424127439%_
                             (gx#syntax-e _%e127421127431%_)))
                        (let ((_%hd127425127442%_ (##car _%e127424127439%_))
                              (_%tl127426127444%_ (##cdr _%e127424127439%_)))
                          (if (gx#stx-pair? _%tl127426127444%_)
                              (let ((_%e127427127447%_
                                     (gx#syntax-e _%tl127426127444%_)))
                                (let ((_%hd127428127450%_
                                       (##car _%e127427127447%_))
                                      (_%tl127429127452%_
                                       (##cdr _%e127427127447%_)))
                                  (let ((_%e127455%_ _%hd127428127450%_))
                                    (if (gx#stx-null? _%tl127429127452%_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _%e127455%_)
                                                        '()))
                                            (_%E127423127435%_))
                                        (_%E127423127435%_)))))
                              (_%E127423127435%_))))
                      (_%E127423127435%_)))))
          (_%E127422127457%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx127377%_)
        (let* ((_%e127378127388%_ _%stx127377%_)
               (_%E127380127392%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127378127388%_)))
               (_%E127379127416%_
                (lambda ()
                  (if (gx#stx-pair? _%e127378127388%_)
                      (let ((_%e127381127396%_
                             (gx#syntax-e _%e127378127388%_)))
                        (let ((_%hd127382127399%_ (##car _%e127381127396%_))
                              (_%tl127383127401%_ (##cdr _%e127381127396%_)))
                          (if (gx#stx-pair? _%tl127383127401%_)
                              (let ((_%e127384127404%_
                                     (gx#syntax-e _%tl127383127401%_)))
                                (let ((_%hd127385127407%_
                                       (##car _%e127384127404%_))
                                      (_%tl127386127409%_
                                       (##cdr _%e127384127404%_)))
                                  (let* ((_%rator127412%_ _%hd127385127407%_)
                                         (_%args127414%_ _%tl127386127409%_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _%rator127412%_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _%args127414%_)))
                                        (_%E127380127392%_)))))
                              (_%E127380127392%_))))
                      (_%E127380127392%_)))))
          (_%E127379127416%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx127310%_)
        (let* ((_%e127311127327%_ _%stx127310%_)
               (_%E127313127331%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127311127327%_)))
               (_%E127312127373%_
                (lambda ()
                  (if (gx#stx-pair? _%e127311127327%_)
                      (let ((_%e127314127335%_
                             (gx#syntax-e _%e127311127327%_)))
                        (let ((_%hd127315127338%_ (##car _%e127314127335%_))
                              (_%tl127316127340%_ (##cdr _%e127314127335%_)))
                          (if (gx#stx-pair? _%tl127316127340%_)
                              (let ((_%e127317127343%_
                                     (gx#syntax-e _%tl127316127340%_)))
                                (let ((_%hd127318127346%_
                                       (##car _%e127317127343%_))
                                      (_%tl127319127348%_
                                       (##cdr _%e127317127343%_)))
                                  (let ((_%test127351%_ _%hd127318127346%_))
                                    (if (gx#stx-pair? _%tl127319127348%_)
                                        (let ((_%e127320127353%_
                                               (gx#syntax-e
                                                _%tl127319127348%_)))
                                          (let ((_%hd127321127356%_
                                                 (##car _%e127320127353%_))
                                                (_%tl127322127358%_
                                                 (##cdr _%e127320127353%_)))
                                            (let ((_%K127361%_
                                                   _%hd127321127356%_))
                                              (if (gx#stx-pair?
                                                   _%tl127322127358%_)
                                                  (let ((_%e127323127363%_
                                                         (gx#syntax-e
                                                          _%tl127322127358%_)))
                                                    (let ((_%hd127324127366%_
                                                           (##car _%e127323127363%_))
                                                          (_%tl127325127368%_
                                                           (##cdr _%e127323127363%_)))
                                                      (let ((_%E127371%_
                                                             _%hd127324127366%_))
                                                        (if (gx#stx-null?
                                                             _%tl127325127368%_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _%test127351%_)
                                    (cons (gx#core-compile-top-syntax
                                           _%K127361%_)
                                          (cons (gx#core-compile-top-syntax
                                                 _%E127371%_)
                                                '()))))
                        (_%E127313127331%_))
                    (_%E127313127331%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E127313127331%_)))))
                                        (_%E127313127331%_)))))
                              (_%E127313127331%_))))
                      (_%E127313127331%_)))))
          (_%E127312127373%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx127269%_)
        (let* ((_%e127270127280%_ _%stx127269%_)
               (_%E127272127284%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127270127280%_)))
               (_%E127271127306%_
                (lambda ()
                  (if (gx#stx-pair? _%e127270127280%_)
                      (let ((_%e127273127288%_
                             (gx#syntax-e _%e127270127280%_)))
                        (let ((_%hd127274127291%_ (##car _%e127273127288%_))
                              (_%tl127275127293%_ (##cdr _%e127273127288%_)))
                          (if (gx#stx-pair? _%tl127275127293%_)
                              (let ((_%e127276127296%_
                                     (gx#syntax-e _%tl127275127293%_)))
                                (let ((_%hd127277127299%_
                                       (##car _%e127276127296%_))
                                      (_%tl127278127301%_
                                       (##cdr _%e127276127296%_)))
                                  (let ((_%id127304%_ _%hd127277127299%_))
                                    (if (gx#stx-null? _%tl127278127301%_)
                                        (if (gx#identifier? _%id127304%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id127304%_)
                                                        '()))
                                            (_%E127272127284%_))
                                        (_%E127272127284%_)))))
                              (_%E127272127284%_))))
                      (_%E127272127284%_)))))
          (_%E127271127306%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx127215%_)
        (let* ((_%e127216127229%_ _%stx127215%_)
               (_%E127218127233%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127216127229%_)))
               (_%E127217127265%_
                (lambda ()
                  (if (gx#stx-pair? _%e127216127229%_)
                      (let ((_%e127219127237%_
                             (gx#syntax-e _%e127216127229%_)))
                        (let ((_%hd127220127240%_ (##car _%e127219127237%_))
                              (_%tl127221127242%_ (##cdr _%e127219127237%_)))
                          (if (gx#stx-pair? _%tl127221127242%_)
                              (let ((_%e127222127245%_
                                     (gx#syntax-e _%tl127221127242%_)))
                                (let ((_%hd127223127248%_
                                       (##car _%e127222127245%_))
                                      (_%tl127224127250%_
                                       (##cdr _%e127222127245%_)))
                                  (let ((_%id127253%_ _%hd127223127248%_))
                                    (if (gx#stx-pair? _%tl127224127250%_)
                                        (let ((_%e127225127255%_
                                               (gx#syntax-e
                                                _%tl127224127250%_)))
                                          (let ((_%hd127226127258%_
                                                 (##car _%e127225127255%_))
                                                (_%tl127227127260%_
                                                 (##cdr _%e127225127255%_)))
                                            (let ((_%expr127263%_
                                                   _%hd127226127258%_))
                                              (if (gx#stx-null?
                                                   _%tl127227127260%_)
                                                  (if (gx#identifier?
                                                       _%id127253%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id127253%_)
                          (cons (gx#core-compile-top-syntax _%expr127263%_)
                                '())))
              (_%E127218127233%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E127218127233%_)))))
                                        (_%E127218127233%_)))))
                              (_%E127218127233%_))))
                      (_%E127218127233%_)))))
          (_%E127217127265%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id127209%_)
        (let ((_%$e127211%_ (gx#resolve-identifier__0 _%id127209%_)))
          (if _%$e127211%_
              (##unchecked-structure-ref _%$e127211%_ '1 '#f '#f)
              _%id127209%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd127207%_)
        (if (gx#identifier? _%hd127207%_)
            (gx#core-compile-top-runtime-ref _%hd127207%_)
            '#f)))))
