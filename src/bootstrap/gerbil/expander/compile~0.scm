(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1779967243)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx189205%_)
        (let* ((_%e189206189213%_ _%stx189205%_)
               (_%E189208189217%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e189206189213%_)))
               (_%E189207189231%_
                (lambda ()
                  (if (gx#stx-pair? _%e189206189213%_)
                      (let ((_%e189209189221%_
                             (gx#syntax-e _%e189206189213%_)))
                        (let ((_%hd189210189224%_ (##car _%e189209189221%_))
                              (_%tl189211189226%_ (##cdr _%e189209189221%_)))
                          (let* ((_%form189229%_ _%hd189210189224%_)
                                 (__self189234
                                  (gx#syntax-local-e__0 _%form189229%_))
                                 (__method189235
                                  (__method-ref
                                   __self189234
                                   'compile-top-syntax)))
                            (if __method189235
                                (__method189235 __self189234 _%stx189205%_)
                                (begin
                                  (error '"Missing method"
                                         __self189234
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%E189208189217%_)))))
          (_%E189207189231%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self189154%_ _%stx189155%_)
        (let* ((_%self189158%_ _%self189154%_)
               (_%self189167189175%_ _%self189158%_)
               (_%E189169189178%_
                (lambda ()
                  (error '"No clause matching"
                         _%self189167189175%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K189170189191%_
                (lambda (_%K189181%_)
                  (let ((_%$e189183%_ (gx#stx-source _%stx189155%_)))
                    (if _%$e189183%_
                        (gx#stx-wrap-source
                         (_%K189181%_ _%stx189155%_)
                         _%$e189183%_)
                        (_%K189181%_ _%stx189155%_)))))
               (_%e189171189194%_
                (##unchecked-structure-ref _%self189167189175%_ '1 '#f '#f))
               (_%e189172189197%_
                (##unchecked-structure-ref _%self189167189175%_ '2 '#f '#f))
               (_%e189173189200%_
                (##unchecked-structure-ref _%self189167189175%_ '3 '#f '#f))
               (_%K189203%_ _%e189173189200%_))
          (_%K189170189191%_ _%K189203%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx189028%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx189028%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx188998%_)
        (let* ((_%e188999189006%_ _%stx188998%_)
               (_%E189001189010%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e188999189006%_)))
               (_%E189000189024%_
                (lambda ()
                  (if (gx#stx-pair? _%e188999189006%_)
                      (let ((_%e189002189014%_
                             (gx#syntax-e _%e188999189006%_)))
                        (let ((_%hd189003189017%_ (##car _%e189002189014%_))
                              (_%tl189004189019%_ (##cdr _%e189002189014%_)))
                          (let ((_%body189022%_ _%tl189004189019%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body189022%_)))))
                      (_%E189001189010%_)))))
          (_%E189000189024%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx188967%_)
        (let* ((_%e188968188975%_ _%stx188967%_)
               (_%E188970188979%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e188968188975%_)))
               (_%E188969188994%_
                (lambda ()
                  (if (gx#stx-pair? _%e188968188975%_)
                      (let ((_%e188971188983%_
                             (gx#syntax-e _%e188968188975%_)))
                        (let ((_%hd188972188986%_ (##car _%e188971188983%_))
                              (_%tl188973188988%_ (##cdr _%e188971188983%_)))
                          (let ((_%body188991%_ _%tl188973188988%_))
                            (cons '%#begin-syntax
                                  (call-with-parameters__1
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body188991%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%E188970188979%_)))))
          (_%E188969188994%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx188937%_)
        (let* ((_%e188938188945%_ _%stx188937%_)
               (_%E188940188949%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e188938188945%_)))
               (_%E188939188963%_
                (lambda ()
                  (if (gx#stx-pair? _%e188938188945%_)
                      (let ((_%e188941188953%_
                             (gx#syntax-e _%e188938188945%_)))
                        (let ((_%hd188942188956%_ (##car _%e188941188953%_))
                              (_%tl188943188958%_ (##cdr _%e188941188953%_)))
                          (let ((_%body188961%_ _%tl188943188958%_))
                            (cons '%#begin-foreign _%body188961%_))))
                      (_%E188940188949%_)))))
          (_%E188939188963%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx188883%_)
        (let* ((_%e188884188897%_ _%stx188883%_)
               (_%E188886188901%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e188884188897%_)))
               (_%E188885188933%_
                (lambda ()
                  (if (gx#stx-pair? _%e188884188897%_)
                      (let ((_%e188887188905%_
                             (gx#syntax-e _%e188884188897%_)))
                        (let ((_%hd188888188908%_ (##car _%e188887188905%_))
                              (_%tl188889188910%_ (##cdr _%e188887188905%_)))
                          (if (gx#stx-pair? _%tl188889188910%_)
                              (let ((_%e188890188913%_
                                     (gx#syntax-e _%tl188889188910%_)))
                                (let ((_%hd188891188916%_
                                       (##car _%e188890188913%_))
                                      (_%tl188892188918%_
                                       (##cdr _%e188890188913%_)))
                                  (let ((_%ann188921%_ _%hd188891188916%_))
                                    (if (gx#stx-pair? _%tl188892188918%_)
                                        (let ((_%e188893188923%_
                                               (gx#syntax-e
                                                _%tl188892188918%_)))
                                          (let ((_%hd188894188926%_
                                                 (##car _%e188893188923%_))
                                                (_%tl188895188928%_
                                                 (##cdr _%e188893188923%_)))
                                            (let ((_%expr188931%_
                                                   _%hd188894188926%_))
                                              (if (gx#stx-null?
                                                   _%tl188895188928%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr188931%_)
                                                  (_%E188886188901%_)))))
                                        (_%E188886188901%_)))))
                              (_%E188886188901%_))))
                      (_%E188886188901%_)))))
          (_%E188885188933%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx188853%_)
        (let* ((_%e188854188861%_ _%stx188853%_)
               (_%E188856188865%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e188854188861%_)))
               (_%E188855188879%_
                (lambda ()
                  (if (gx#stx-pair? _%e188854188861%_)
                      (let ((_%e188857188869%_
                             (gx#syntax-e _%e188854188861%_)))
                        (let ((_%hd188858188872%_ (##car _%e188857188869%_))
                              (_%tl188859188874%_ (##cdr _%e188857188869%_)))
                          (let ((_%body188877%_ _%tl188859188874%_))
                            (cons '%#import _%body188877%_))))
                      (_%E188856188865%_)))))
          (_%E188855188879%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx188810%_)
        (let* ((_%e188811188821%_ _%stx188810%_)
               (_%E188813188825%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e188811188821%_)))
               (_%E188812188849%_
                (lambda ()
                  (if (gx#stx-pair? _%e188811188821%_)
                      (let ((_%e188814188829%_
                             (gx#syntax-e _%e188811188821%_)))
                        (let ((_%hd188815188832%_ (##car _%e188814188829%_))
                              (_%tl188816188834%_ (##cdr _%e188814188829%_)))
                          (if (gx#stx-pair? _%tl188816188834%_)
                              (let ((_%e188817188837%_
                                     (gx#syntax-e _%tl188816188834%_)))
                                (let ((_%hd188818188840%_
                                       (##car _%e188817188837%_))
                                      (_%tl188819188842%_
                                       (##cdr _%e188817188837%_)))
                                  (let* ((_%hd188845%_ _%hd188818188840%_)
                                         (_%body188847%_ _%tl188819188842%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd188845%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body188847%_))))))
                              (_%E188813188825%_))))
                      (_%E188813188825%_)))))
          (_%E188812188849%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx188780%_)
        (let* ((_%e188781188788%_ _%stx188780%_)
               (_%E188783188792%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e188781188788%_)))
               (_%E188782188806%_
                (lambda ()
                  (if (gx#stx-pair? _%e188781188788%_)
                      (let ((_%e188784188796%_
                             (gx#syntax-e _%e188781188788%_)))
                        (let ((_%hd188785188799%_ (##car _%e188784188796%_))
                              (_%tl188786188801%_ (##cdr _%e188784188796%_)))
                          (let ((_%body188804%_ _%tl188786188801%_))
                            (cons '%#export _%body188804%_))))
                      (_%E188783188792%_)))))
          (_%E188782188806%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx188750%_)
        (let* ((_%e188751188758%_ _%stx188750%_)
               (_%E188753188762%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e188751188758%_)))
               (_%E188752188776%_
                (lambda ()
                  (if (gx#stx-pair? _%e188751188758%_)
                      (let ((_%e188754188766%_
                             (gx#syntax-e _%e188751188758%_)))
                        (let ((_%hd188755188769%_ (##car _%e188754188766%_))
                              (_%tl188756188771%_ (##cdr _%e188754188766%_)))
                          (let ((_%body188774%_ _%tl188756188771%_))
                            (cons '%#provide _%body188774%_))))
                      (_%E188753188762%_)))))
          (_%E188752188776%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx188720%_)
        (let* ((_%e188721188728%_ _%stx188720%_)
               (_%E188723188732%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e188721188728%_)))
               (_%E188722188746%_
                (lambda ()
                  (if (gx#stx-pair? _%e188721188728%_)
                      (let ((_%e188724188736%_
                             (gx#syntax-e _%e188721188728%_)))
                        (let ((_%hd188725188739%_ (##car _%e188724188736%_))
                              (_%tl188726188741%_ (##cdr _%e188724188736%_)))
                          (let ((_%body188744%_ _%tl188726188741%_))
                            (cons '%#extern _%body188744%_))))
                      (_%E188723188732%_)))))
          (_%E188722188746%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx188666%_)
        (let* ((_%e188667188680%_ _%stx188666%_)
               (_%E188669188684%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e188667188680%_)))
               (_%E188668188716%_
                (lambda ()
                  (if (gx#stx-pair? _%e188667188680%_)
                      (let ((_%e188670188688%_
                             (gx#syntax-e _%e188667188680%_)))
                        (let ((_%hd188671188691%_ (##car _%e188670188688%_))
                              (_%tl188672188693%_ (##cdr _%e188670188688%_)))
                          (if (gx#stx-pair? _%tl188672188693%_)
                              (let ((_%e188673188696%_
                                     (gx#syntax-e _%tl188672188693%_)))
                                (let ((_%hd188674188699%_
                                       (##car _%e188673188696%_))
                                      (_%tl188675188701%_
                                       (##cdr _%e188673188696%_)))
                                  (let ((_%hd188704%_ _%hd188674188699%_))
                                    (if (gx#stx-pair? _%tl188675188701%_)
                                        (let ((_%e188676188706%_
                                               (gx#syntax-e
                                                _%tl188675188701%_)))
                                          (let ((_%hd188677188709%_
                                                 (##car _%e188676188706%_))
                                                (_%tl188678188711%_
                                                 (##cdr _%e188676188706%_)))
                                            (let ((_%expr188714%_
                                                   _%hd188677188709%_))
                                              (if (gx#stx-null?
                                                   _%tl188678188711%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd188704%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr188714%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E188669188684%_)))))
                                        (_%E188669188684%_)))))
                              (_%E188669188684%_))))
                      (_%E188669188684%_)))))
          (_%E188668188716%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx188611%_)
        (let* ((_%e188612188625%_ _%stx188611%_)
               (_%E188614188629%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e188612188625%_)))
               (_%E188613188662%_
                (lambda ()
                  (if (gx#stx-pair? _%e188612188625%_)
                      (let ((_%e188615188633%_
                             (gx#syntax-e _%e188612188625%_)))
                        (let ((_%hd188616188636%_ (##car _%e188615188633%_))
                              (_%tl188617188638%_ (##cdr _%e188615188633%_)))
                          (if (gx#stx-pair? _%tl188617188638%_)
                              (let ((_%e188618188641%_
                                     (gx#syntax-e _%tl188617188638%_)))
                                (let ((_%hd188619188644%_
                                       (##car _%e188618188641%_))
                                      (_%tl188620188646%_
                                       (##cdr _%e188618188641%_)))
                                  (let ((_%hd188649%_ _%hd188619188644%_))
                                    (if (gx#stx-pair? _%tl188620188646%_)
                                        (let ((_%e188621188651%_
                                               (gx#syntax-e
                                                _%tl188620188646%_)))
                                          (let ((_%hd188622188654%_
                                                 (##car _%e188621188651%_))
                                                (_%tl188623188656%_
                                                 (##cdr _%e188621188651%_)))
                                            (let ((_%expr188659%_
                                                   _%hd188622188654%_))
                                              (if (gx#stx-null?
                                                   _%tl188623188656%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd188649%_
                                                              (cons (call-with-parameters__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr188659%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E188614188629%_)))))
                                        (_%E188614188629%_)))))
                              (_%E188614188629%_))))
                      (_%E188614188629%_)))))
          (_%E188613188662%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx188581%_)
        (let* ((_%e188582188589%_ _%stx188581%_)
               (_%E188584188593%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e188582188589%_)))
               (_%E188583188607%_
                (lambda ()
                  (if (gx#stx-pair? _%e188582188589%_)
                      (let ((_%e188585188597%_
                             (gx#syntax-e _%e188582188589%_)))
                        (let ((_%hd188586188600%_ (##car _%e188585188597%_))
                              (_%tl188587188602%_ (##cdr _%e188585188597%_)))
                          (let ((_%body188605%_ _%tl188587188602%_))
                            (cons '%#define-alias _%body188605%_))))
                      (_%E188584188593%_)))))
          (_%E188583188607%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx188551%_)
        (let* ((_%e188552188559%_ _%stx188551%_)
               (_%E188554188563%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e188552188559%_)))
               (_%E188553188577%_
                (lambda ()
                  (if (gx#stx-pair? _%e188552188559%_)
                      (let ((_%e188555188567%_
                             (gx#syntax-e _%e188552188559%_)))
                        (let ((_%hd188556188570%_ (##car _%e188555188567%_))
                              (_%tl188557188572%_ (##cdr _%e188555188567%_)))
                          (let ((_%body188575%_ _%tl188557188572%_))
                            (cons '%#define-runtime _%body188575%_))))
                      (_%E188554188563%_)))))
          (_%E188553188577%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx188521%_)
        (let* ((_%e188522188529%_ _%stx188521%_)
               (_%E188524188533%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e188522188529%_)))
               (_%E188523188547%_
                (lambda ()
                  (if (gx#stx-pair? _%e188522188529%_)
                      (let ((_%e188525188537%_
                             (gx#syntax-e _%e188522188529%_)))
                        (let ((_%hd188526188540%_ (##car _%e188525188537%_))
                              (_%tl188527188542%_ (##cdr _%e188525188537%_)))
                          (let ((_%decls188545%_ _%tl188527188542%_))
                            (cons '%#declare _%decls188545%_))))
                      (_%E188524188533%_)))))
          (_%E188523188547%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx188491%_)
        (let* ((_%e188492188499%_ _%stx188491%_)
               (_%E188494188503%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e188492188499%_)))
               (_%E188493188517%_
                (lambda ()
                  (if (gx#stx-pair? _%e188492188499%_)
                      (let ((_%e188495188507%_
                             (gx#syntax-e _%e188492188499%_)))
                        (let ((_%hd188496188510%_ (##car _%e188495188507%_))
                              (_%tl188497188512%_ (##cdr _%e188495188507%_)))
                          (let ((_%clause188515%_ _%tl188497188512%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause188515%_)))))
                      (_%E188494188503%_)))))
          (_%E188493188517%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx188448%_)
        (let* ((_%e188449188459%_ _%stx188448%_)
               (_%E188451188463%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e188449188459%_)))
               (_%E188450188487%_
                (lambda ()
                  (if (gx#stx-pair? _%e188449188459%_)
                      (let ((_%e188452188467%_
                             (gx#syntax-e _%e188449188459%_)))
                        (let ((_%hd188453188470%_ (##car _%e188452188467%_))
                              (_%tl188454188472%_ (##cdr _%e188452188467%_)))
                          (let ((_%hd188475%_ _%hd188453188470%_))
                            (if (gx#stx-pair? _%tl188454188472%_)
                                (let ((_%e188455188477%_
                                       (gx#syntax-e _%tl188454188472%_)))
                                  (let ((_%hd188456188480%_
                                         (##car _%e188455188477%_))
                                        (_%tl188457188482%_
                                         (##cdr _%e188455188477%_)))
                                    (let ((_%body188485%_ _%hd188456188480%_))
                                      (if (gx#stx-null? _%tl188457188482%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd188475%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body188485%_)
                                                      '()))
                                          (_%E188451188463%_)))))
                                (_%E188451188463%_)))))
                      (_%E188451188463%_)))))
          (_%E188450188487%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx188418%_)
        (let* ((_%e188419188426%_ _%stx188418%_)
               (_%E188421188430%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e188419188426%_)))
               (_%E188420188444%_
                (lambda ()
                  (if (gx#stx-pair? _%e188419188426%_)
                      (let ((_%e188422188434%_
                             (gx#syntax-e _%e188419188426%_)))
                        (let ((_%hd188423188437%_ (##car _%e188422188434%_))
                              (_%tl188424188439%_ (##cdr _%e188422188434%_)))
                          (let ((_%clauses188442%_ _%tl188424188439%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses188442%_)))))
                      (_%E188421188430%_)))))
          (_%E188420188444%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx188353%_ _%form188354%_)
        (let* ((_%e188355188368%_ _%stx188353%_)
               (_%E188357188372%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e188355188368%_)))
               (_%E188356188404%_
                (lambda ()
                  (if (gx#stx-pair? _%e188355188368%_)
                      (let ((_%e188358188376%_
                             (gx#syntax-e _%e188355188368%_)))
                        (let ((_%hd188359188379%_ (##car _%e188358188376%_))
                              (_%tl188360188381%_ (##cdr _%e188358188376%_)))
                          (if (gx#stx-pair? _%tl188360188381%_)
                              (let ((_%e188361188384%_
                                     (gx#syntax-e _%tl188360188381%_)))
                                (let ((_%hd188362188387%_
                                       (##car _%e188361188384%_))
                                      (_%tl188363188389%_
                                       (##cdr _%e188361188384%_)))
                                  (let ((_%hd188392%_ _%hd188362188387%_))
                                    (if (gx#stx-pair? _%tl188363188389%_)
                                        (let ((_%e188364188394%_
                                               (gx#syntax-e
                                                _%tl188363188389%_)))
                                          (let ((_%hd188365188397%_
                                                 (##car _%e188364188394%_))
                                                (_%tl188366188399%_
                                                 (##cdr _%e188364188394%_)))
                                            (let ((_%body188402%_
                                                   _%hd188365188397%_))
                                              (if (gx#stx-null?
                                                   _%tl188366188399%_)
                                                  (cons _%form188354%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd188392%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body188402%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E188357188372%_)))))
                                        (_%E188357188372%_)))))
                              (_%E188357188372%_))))
                      (_%E188357188372%_)))))
          (_%E188356188404%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx188411%_)
        (let ((_%form188413%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx188411%_ _%form188413%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g189236_
        (let ((_g189237_ (##length _g189236_)))
          (cond ((##fx= _g189237_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g189236_))
                ((##fx= _g189237_ 2)
                 (apply gx#core-compile-top-let-values%__% _g189236_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g189236_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx188350%_)
        (gx#core-compile-top-let-values%__% _%stx188350%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx188348%_)
        (gx#core-compile-top-let-values%__% _%stx188348%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx188307%_)
        (let* ((_%e188308188318%_ _%stx188307%_)
               (_%E188310188322%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e188308188318%_)))
               (_%E188309188344%_
                (lambda ()
                  (if (gx#stx-pair? _%e188308188318%_)
                      (let ((_%e188311188326%_
                             (gx#syntax-e _%e188308188318%_)))
                        (let ((_%hd188312188329%_ (##car _%e188311188326%_))
                              (_%tl188313188331%_ (##cdr _%e188311188326%_)))
                          (if (gx#stx-pair? _%tl188313188331%_)
                              (let ((_%e188314188334%_
                                     (gx#syntax-e _%tl188313188331%_)))
                                (let ((_%hd188315188337%_
                                       (##car _%e188314188334%_))
                                      (_%tl188316188339%_
                                       (##cdr _%e188314188334%_)))
                                  (let ((_%e188342%_ _%hd188315188337%_))
                                    (if (gx#stx-null? _%tl188316188339%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e188342%_)
                                                    '()))
                                        (_%E188310188322%_)))))
                              (_%E188310188322%_))))
                      (_%E188310188322%_)))))
          (_%E188309188344%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx188266%_)
        (let* ((_%e188267188277%_ _%stx188266%_)
               (_%E188269188281%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e188267188277%_)))
               (_%E188268188303%_
                (lambda ()
                  (if (gx#stx-pair? _%e188267188277%_)
                      (let ((_%e188270188285%_
                             (gx#syntax-e _%e188267188277%_)))
                        (let ((_%hd188271188288%_ (##car _%e188270188285%_))
                              (_%tl188272188290%_ (##cdr _%e188270188285%_)))
                          (if (gx#stx-pair? _%tl188272188290%_)
                              (let ((_%e188273188293%_
                                     (gx#syntax-e _%tl188272188290%_)))
                                (let ((_%hd188274188296%_
                                       (##car _%e188273188293%_))
                                      (_%tl188275188298%_
                                       (##cdr _%e188273188293%_)))
                                  (let ((_%e188301%_ _%hd188274188296%_))
                                    (if (gx#stx-null? _%tl188275188298%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e188301%_)
                                                    '()))
                                        (_%E188269188281%_)))))
                              (_%E188269188281%_))))
                      (_%E188269188281%_)))))
          (_%E188268188303%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx188223%_)
        (let* ((_%e188224188234%_ _%stx188223%_)
               (_%E188226188238%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e188224188234%_)))
               (_%E188225188262%_
                (lambda ()
                  (if (gx#stx-pair? _%e188224188234%_)
                      (let ((_%e188227188242%_
                             (gx#syntax-e _%e188224188234%_)))
                        (let ((_%hd188228188245%_ (##car _%e188227188242%_))
                              (_%tl188229188247%_ (##cdr _%e188227188242%_)))
                          (if (gx#stx-pair? _%tl188229188247%_)
                              (let ((_%e188230188250%_
                                     (gx#syntax-e _%tl188229188247%_)))
                                (let ((_%hd188231188253%_
                                       (##car _%e188230188250%_))
                                      (_%tl188232188255%_
                                       (##cdr _%e188230188250%_)))
                                  (let* ((_%rator188258%_ _%hd188231188253%_)
                                         (_%args188260%_ _%tl188232188255%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator188258%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args188260%_))))))
                              (_%E188226188238%_))))
                      (_%E188226188238%_)))))
          (_%E188225188262%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx188156%_)
        (let* ((_%e188157188173%_ _%stx188156%_)
               (_%E188159188177%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e188157188173%_)))
               (_%E188158188219%_
                (lambda ()
                  (if (gx#stx-pair? _%e188157188173%_)
                      (let ((_%e188160188181%_
                             (gx#syntax-e _%e188157188173%_)))
                        (let ((_%hd188161188184%_ (##car _%e188160188181%_))
                              (_%tl188162188186%_ (##cdr _%e188160188181%_)))
                          (if (gx#stx-pair? _%tl188162188186%_)
                              (let ((_%e188163188189%_
                                     (gx#syntax-e _%tl188162188186%_)))
                                (let ((_%hd188164188192%_
                                       (##car _%e188163188189%_))
                                      (_%tl188165188194%_
                                       (##cdr _%e188163188189%_)))
                                  (let ((_%test188197%_ _%hd188164188192%_))
                                    (if (gx#stx-pair? _%tl188165188194%_)
                                        (let ((_%e188166188199%_
                                               (gx#syntax-e
                                                _%tl188165188194%_)))
                                          (let ((_%hd188167188202%_
                                                 (##car _%e188166188199%_))
                                                (_%tl188168188204%_
                                                 (##cdr _%e188166188199%_)))
                                            (let ((_%K188207%_
                                                   _%hd188167188202%_))
                                              (if (gx#stx-pair?
                                                   _%tl188168188204%_)
                                                  (let ((_%e188169188209%_
                                                         (gx#syntax-e
                                                          _%tl188168188204%_)))
                                                    (let ((_%hd188170188212%_
                                                           (##car _%e188169188209%_))
                                                          (_%tl188171188214%_
                                                           (##cdr _%e188169188209%_)))
                                                      (let ((_%E188217%_
                                                             _%hd188170188212%_))
                                                        (if (gx#stx-null?
                                                             _%tl188171188214%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test188197%_)
                                (cons (gx#core-compile-top-syntax _%K188207%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E188217%_)
                                            '()))))
                    (_%E188159188177%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E188159188177%_)))))
                                        (_%E188159188177%_)))))
                              (_%E188159188177%_))))
                      (_%E188159188177%_)))))
          (_%E188158188219%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx188115%_)
        (let* ((_%e188116188126%_ _%stx188115%_)
               (_%E188118188130%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e188116188126%_)))
               (_%E188117188152%_
                (lambda ()
                  (if (gx#stx-pair? _%e188116188126%_)
                      (let ((_%e188119188134%_
                             (gx#syntax-e _%e188116188126%_)))
                        (let ((_%hd188120188137%_ (##car _%e188119188134%_))
                              (_%tl188121188139%_ (##cdr _%e188119188134%_)))
                          (if (gx#stx-pair? _%tl188121188139%_)
                              (let ((_%e188122188142%_
                                     (gx#syntax-e _%tl188121188139%_)))
                                (let ((_%hd188123188145%_
                                       (##car _%e188122188142%_))
                                      (_%tl188124188147%_
                                       (##cdr _%e188122188142%_)))
                                  (let ((_%id188150%_ _%hd188123188145%_))
                                    (if (gx#stx-null? _%tl188124188147%_)
                                        (if (gx#identifier? _%id188150%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id188150%_)
                                                        '()))
                                            (_%E188118188130%_))
                                        (_%E188118188130%_)))))
                              (_%E188118188130%_))))
                      (_%E188118188130%_)))))
          (_%E188117188152%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx188061%_)
        (let* ((_%e188062188075%_ _%stx188061%_)
               (_%E188064188079%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e188062188075%_)))
               (_%E188063188111%_
                (lambda ()
                  (if (gx#stx-pair? _%e188062188075%_)
                      (let ((_%e188065188083%_
                             (gx#syntax-e _%e188062188075%_)))
                        (let ((_%hd188066188086%_ (##car _%e188065188083%_))
                              (_%tl188067188088%_ (##cdr _%e188065188083%_)))
                          (if (gx#stx-pair? _%tl188067188088%_)
                              (let ((_%e188068188091%_
                                     (gx#syntax-e _%tl188067188088%_)))
                                (let ((_%hd188069188094%_
                                       (##car _%e188068188091%_))
                                      (_%tl188070188096%_
                                       (##cdr _%e188068188091%_)))
                                  (let ((_%id188099%_ _%hd188069188094%_))
                                    (if (gx#stx-pair? _%tl188070188096%_)
                                        (let ((_%e188071188101%_
                                               (gx#syntax-e
                                                _%tl188070188096%_)))
                                          (let ((_%hd188072188104%_
                                                 (##car _%e188071188101%_))
                                                (_%tl188073188106%_
                                                 (##cdr _%e188071188101%_)))
                                            (let ((_%expr188109%_
                                                   _%hd188072188104%_))
                                              (if (gx#stx-null?
                                                   _%tl188073188106%_)
                                                  (if (gx#identifier?
                                                       _%id188099%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id188099%_)
                          (cons (gx#core-compile-top-syntax _%expr188109%_)
                                '())))
              (_%E188064188079%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E188064188079%_)))))
                                        (_%E188064188079%_)))))
                              (_%E188064188079%_))))
                      (_%E188064188079%_)))))
          (_%E188063188111%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id188055%_)
        (let ((_%$e188057%_ (gx#resolve-identifier__0 _%id188055%_)))
          (if _%$e188057%_
              (##unchecked-structure-ref _%$e188057%_ '1 '#f '#f)
              _%id188055%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd188053%_)
        (if (gx#identifier? _%hd188053%_)
            (gx#core-compile-top-runtime-ref _%hd188053%_)
            '#f)))))
