(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1734215270)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx130579%_)
        (let* ((_%e130580130587%_ _%stx130579%_)
               (_%E130582130591%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130580130587%_)))
               (_%E130581130605%_
                (lambda ()
                  (if (gx#stx-pair? _%e130580130587%_)
                      (let ((_%e130583130595%_
                             (gx#syntax-e _%e130580130587%_)))
                        (let ((_%hd130584130598%_ (##car _%e130583130595%_))
                              (_%tl130585130600%_ (##cdr _%e130583130595%_)))
                          (let* ((_%form130603%_ _%hd130584130598%_)
                                 (__self130608
                                  (gx#syntax-local-e__0 _%form130603%_))
                                 (__method130609
                                  (__method-ref
                                   __self130608
                                   'compile-top-syntax)))
                            (if __method130609
                                (__method130609 __self130608 _%stx130579%_)
                                (begin
                                  (error '"Missing method"
                                         __self130608
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%E130582130591%_)))))
          (_%E130581130605%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self129422130525%_ _%stx130527%_)
        (let* ((_%self130529%_ _%self129422130525%_)
               (_%self130531%_ _%self130529%_)
               (_%self130540130548%_ _%self130531%_)
               (_%E130542130552%_
                (lambda ()
                  (error '"No clause matching"
                         _%self130540130548%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K130543130565%_
                (lambda (_%K130555%_)
                  (let ((_%$e130557%_ (gx#stx-source _%stx130527%_)))
                    (if _%$e130557%_
                        ((lambda (_%g130559130561%_)
                           (gx#stx-wrap-source
                            (_%K130555%_ _%stx130527%_)
                            _%g130559130561%_))
                         _%$e130557%_)
                        (_%K130555%_ _%stx130527%_)))))
               (_%e130544130568%_
                (##unchecked-structure-ref _%self130540130548%_ '1 '#f '#f))
               (_%e130545130571%_
                (##unchecked-structure-ref _%self130540130548%_ '2 '#f '#f))
               (_%e130546130574%_
                (##unchecked-structure-ref _%self130540130548%_ '3 '#f '#f))
               (_%K130577%_ _%e130546130574%_))
          (_%K130543130565%_ _%K130577%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx130399%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx130399%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx130369%_)
        (let* ((_%e130370130377%_ _%stx130369%_)
               (_%E130372130381%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130370130377%_)))
               (_%E130371130395%_
                (lambda ()
                  (if (gx#stx-pair? _%e130370130377%_)
                      (let ((_%e130373130385%_
                             (gx#syntax-e _%e130370130377%_)))
                        (let ((_%hd130374130388%_ (##car _%e130373130385%_))
                              (_%tl130375130390%_ (##cdr _%e130373130385%_)))
                          (let ((_%body130393%_ _%tl130375130390%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body130393%_)))))
                      (_%E130372130381%_)))))
          (_%E130371130395%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx130338%_)
        (let* ((_%e130339130346%_ _%stx130338%_)
               (_%E130341130350%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130339130346%_)))
               (_%E130340130365%_
                (lambda ()
                  (if (gx#stx-pair? _%e130339130346%_)
                      (let ((_%e130342130354%_
                             (gx#syntax-e _%e130339130346%_)))
                        (let ((_%hd130343130357%_ (##car _%e130342130354%_))
                              (_%tl130344130359%_ (##cdr _%e130342130354%_)))
                          (let ((_%body130362%_ _%tl130344130359%_))
                            (cons '%#begin-syntax
                                  (__call-with-parameters
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body130362%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%E130341130350%_)))))
          (_%E130340130365%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx130308%_)
        (let* ((_%e130309130316%_ _%stx130308%_)
               (_%E130311130320%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130309130316%_)))
               (_%E130310130334%_
                (lambda ()
                  (if (gx#stx-pair? _%e130309130316%_)
                      (let ((_%e130312130324%_
                             (gx#syntax-e _%e130309130316%_)))
                        (let ((_%hd130313130327%_ (##car _%e130312130324%_))
                              (_%tl130314130329%_ (##cdr _%e130312130324%_)))
                          (let ((_%body130332%_ _%tl130314130329%_))
                            (cons '%#begin-foreign _%body130332%_))))
                      (_%E130311130320%_)))))
          (_%E130310130334%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx130254%_)
        (let* ((_%e130255130268%_ _%stx130254%_)
               (_%E130257130272%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130255130268%_)))
               (_%E130256130304%_
                (lambda ()
                  (if (gx#stx-pair? _%e130255130268%_)
                      (let ((_%e130258130276%_
                             (gx#syntax-e _%e130255130268%_)))
                        (let ((_%hd130259130279%_ (##car _%e130258130276%_))
                              (_%tl130260130281%_ (##cdr _%e130258130276%_)))
                          (if (gx#stx-pair? _%tl130260130281%_)
                              (let ((_%e130261130284%_
                                     (gx#syntax-e _%tl130260130281%_)))
                                (let ((_%hd130262130287%_
                                       (##car _%e130261130284%_))
                                      (_%tl130263130289%_
                                       (##cdr _%e130261130284%_)))
                                  (let ((_%ann130292%_ _%hd130262130287%_))
                                    (if (gx#stx-pair? _%tl130263130289%_)
                                        (let ((_%e130264130294%_
                                               (gx#syntax-e
                                                _%tl130263130289%_)))
                                          (let ((_%hd130265130297%_
                                                 (##car _%e130264130294%_))
                                                (_%tl130266130299%_
                                                 (##cdr _%e130264130294%_)))
                                            (let ((_%expr130302%_
                                                   _%hd130265130297%_))
                                              (if (gx#stx-null?
                                                   _%tl130266130299%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr130302%_)
                                                  (_%E130257130272%_)))))
                                        (_%E130257130272%_)))))
                              (_%E130257130272%_))))
                      (_%E130257130272%_)))))
          (_%E130256130304%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx130224%_)
        (let* ((_%e130225130232%_ _%stx130224%_)
               (_%E130227130236%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130225130232%_)))
               (_%E130226130250%_
                (lambda ()
                  (if (gx#stx-pair? _%e130225130232%_)
                      (let ((_%e130228130240%_
                             (gx#syntax-e _%e130225130232%_)))
                        (let ((_%hd130229130243%_ (##car _%e130228130240%_))
                              (_%tl130230130245%_ (##cdr _%e130228130240%_)))
                          (let ((_%body130248%_ _%tl130230130245%_))
                            (cons '%#import _%body130248%_))))
                      (_%E130227130236%_)))))
          (_%E130226130250%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx130181%_)
        (let* ((_%e130182130192%_ _%stx130181%_)
               (_%E130184130196%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130182130192%_)))
               (_%E130183130220%_
                (lambda ()
                  (if (gx#stx-pair? _%e130182130192%_)
                      (let ((_%e130185130200%_
                             (gx#syntax-e _%e130182130192%_)))
                        (let ((_%hd130186130203%_ (##car _%e130185130200%_))
                              (_%tl130187130205%_ (##cdr _%e130185130200%_)))
                          (if (gx#stx-pair? _%tl130187130205%_)
                              (let ((_%e130188130208%_
                                     (gx#syntax-e _%tl130187130205%_)))
                                (let ((_%hd130189130211%_
                                       (##car _%e130188130208%_))
                                      (_%tl130190130213%_
                                       (##cdr _%e130188130208%_)))
                                  (let* ((_%hd130216%_ _%hd130189130211%_)
                                         (_%body130218%_ _%tl130190130213%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd130216%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body130218%_))))))
                              (_%E130184130196%_))))
                      (_%E130184130196%_)))))
          (_%E130183130220%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx130151%_)
        (let* ((_%e130152130159%_ _%stx130151%_)
               (_%E130154130163%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130152130159%_)))
               (_%E130153130177%_
                (lambda ()
                  (if (gx#stx-pair? _%e130152130159%_)
                      (let ((_%e130155130167%_
                             (gx#syntax-e _%e130152130159%_)))
                        (let ((_%hd130156130170%_ (##car _%e130155130167%_))
                              (_%tl130157130172%_ (##cdr _%e130155130167%_)))
                          (let ((_%body130175%_ _%tl130157130172%_))
                            (cons '%#export _%body130175%_))))
                      (_%E130154130163%_)))))
          (_%E130153130177%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx130121%_)
        (let* ((_%e130122130129%_ _%stx130121%_)
               (_%E130124130133%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130122130129%_)))
               (_%E130123130147%_
                (lambda ()
                  (if (gx#stx-pair? _%e130122130129%_)
                      (let ((_%e130125130137%_
                             (gx#syntax-e _%e130122130129%_)))
                        (let ((_%hd130126130140%_ (##car _%e130125130137%_))
                              (_%tl130127130142%_ (##cdr _%e130125130137%_)))
                          (let ((_%body130145%_ _%tl130127130142%_))
                            (cons '%#provide _%body130145%_))))
                      (_%E130124130133%_)))))
          (_%E130123130147%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx130091%_)
        (let* ((_%e130092130099%_ _%stx130091%_)
               (_%E130094130103%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130092130099%_)))
               (_%E130093130117%_
                (lambda ()
                  (if (gx#stx-pair? _%e130092130099%_)
                      (let ((_%e130095130107%_
                             (gx#syntax-e _%e130092130099%_)))
                        (let ((_%hd130096130110%_ (##car _%e130095130107%_))
                              (_%tl130097130112%_ (##cdr _%e130095130107%_)))
                          (let ((_%body130115%_ _%tl130097130112%_))
                            (cons '%#extern _%body130115%_))))
                      (_%E130094130103%_)))))
          (_%E130093130117%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx130037%_)
        (let* ((_%e130038130051%_ _%stx130037%_)
               (_%E130040130055%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130038130051%_)))
               (_%E130039130087%_
                (lambda ()
                  (if (gx#stx-pair? _%e130038130051%_)
                      (let ((_%e130041130059%_
                             (gx#syntax-e _%e130038130051%_)))
                        (let ((_%hd130042130062%_ (##car _%e130041130059%_))
                              (_%tl130043130064%_ (##cdr _%e130041130059%_)))
                          (if (gx#stx-pair? _%tl130043130064%_)
                              (let ((_%e130044130067%_
                                     (gx#syntax-e _%tl130043130064%_)))
                                (let ((_%hd130045130070%_
                                       (##car _%e130044130067%_))
                                      (_%tl130046130072%_
                                       (##cdr _%e130044130067%_)))
                                  (let ((_%hd130075%_ _%hd130045130070%_))
                                    (if (gx#stx-pair? _%tl130046130072%_)
                                        (let ((_%e130047130077%_
                                               (gx#syntax-e
                                                _%tl130046130072%_)))
                                          (let ((_%hd130048130080%_
                                                 (##car _%e130047130077%_))
                                                (_%tl130049130082%_
                                                 (##cdr _%e130047130077%_)))
                                            (let ((_%expr130085%_
                                                   _%hd130048130080%_))
                                              (if (gx#stx-null?
                                                   _%tl130049130082%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd130075%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr130085%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E130040130055%_)))))
                                        (_%E130040130055%_)))))
                              (_%E130040130055%_))))
                      (_%E130040130055%_)))))
          (_%E130039130087%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx129982%_)
        (let* ((_%e129983129996%_ _%stx129982%_)
               (_%E129985130000%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129983129996%_)))
               (_%E129984130033%_
                (lambda ()
                  (if (gx#stx-pair? _%e129983129996%_)
                      (let ((_%e129986130004%_
                             (gx#syntax-e _%e129983129996%_)))
                        (let ((_%hd129987130007%_ (##car _%e129986130004%_))
                              (_%tl129988130009%_ (##cdr _%e129986130004%_)))
                          (if (gx#stx-pair? _%tl129988130009%_)
                              (let ((_%e129989130012%_
                                     (gx#syntax-e _%tl129988130009%_)))
                                (let ((_%hd129990130015%_
                                       (##car _%e129989130012%_))
                                      (_%tl129991130017%_
                                       (##cdr _%e129989130012%_)))
                                  (let ((_%hd130020%_ _%hd129990130015%_))
                                    (if (gx#stx-pair? _%tl129991130017%_)
                                        (let ((_%e129992130022%_
                                               (gx#syntax-e
                                                _%tl129991130017%_)))
                                          (let ((_%hd129993130025%_
                                                 (##car _%e129992130022%_))
                                                (_%tl129994130027%_
                                                 (##cdr _%e129992130022%_)))
                                            (let ((_%expr130030%_
                                                   _%hd129993130025%_))
                                              (if (gx#stx-null?
                                                   _%tl129994130027%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd130020%_
                                                              (cons (__call-with-parameters
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr130030%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E129985130000%_)))))
                                        (_%E129985130000%_)))))
                              (_%E129985130000%_))))
                      (_%E129985130000%_)))))
          (_%E129984130033%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx129952%_)
        (let* ((_%e129953129960%_ _%stx129952%_)
               (_%E129955129964%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129953129960%_)))
               (_%E129954129978%_
                (lambda ()
                  (if (gx#stx-pair? _%e129953129960%_)
                      (let ((_%e129956129968%_
                             (gx#syntax-e _%e129953129960%_)))
                        (let ((_%hd129957129971%_ (##car _%e129956129968%_))
                              (_%tl129958129973%_ (##cdr _%e129956129968%_)))
                          (let ((_%body129976%_ _%tl129958129973%_))
                            (cons '%#define-alias _%body129976%_))))
                      (_%E129955129964%_)))))
          (_%E129954129978%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx129922%_)
        (let* ((_%e129923129930%_ _%stx129922%_)
               (_%E129925129934%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129923129930%_)))
               (_%E129924129948%_
                (lambda ()
                  (if (gx#stx-pair? _%e129923129930%_)
                      (let ((_%e129926129938%_
                             (gx#syntax-e _%e129923129930%_)))
                        (let ((_%hd129927129941%_ (##car _%e129926129938%_))
                              (_%tl129928129943%_ (##cdr _%e129926129938%_)))
                          (let ((_%body129946%_ _%tl129928129943%_))
                            (cons '%#define-runtime _%body129946%_))))
                      (_%E129925129934%_)))))
          (_%E129924129948%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx129892%_)
        (let* ((_%e129893129900%_ _%stx129892%_)
               (_%E129895129904%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129893129900%_)))
               (_%E129894129918%_
                (lambda ()
                  (if (gx#stx-pair? _%e129893129900%_)
                      (let ((_%e129896129908%_
                             (gx#syntax-e _%e129893129900%_)))
                        (let ((_%hd129897129911%_ (##car _%e129896129908%_))
                              (_%tl129898129913%_ (##cdr _%e129896129908%_)))
                          (let ((_%decls129916%_ _%tl129898129913%_))
                            (cons '%#declare _%decls129916%_))))
                      (_%E129895129904%_)))))
          (_%E129894129918%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx129862%_)
        (let* ((_%e129863129870%_ _%stx129862%_)
               (_%E129865129874%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129863129870%_)))
               (_%E129864129888%_
                (lambda ()
                  (if (gx#stx-pair? _%e129863129870%_)
                      (let ((_%e129866129878%_
                             (gx#syntax-e _%e129863129870%_)))
                        (let ((_%hd129867129881%_ (##car _%e129866129878%_))
                              (_%tl129868129883%_ (##cdr _%e129866129878%_)))
                          (let ((_%clause129886%_ _%tl129868129883%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause129886%_)))))
                      (_%E129865129874%_)))))
          (_%E129864129888%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx129819%_)
        (let* ((_%e129820129830%_ _%stx129819%_)
               (_%E129822129834%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129820129830%_)))
               (_%E129821129858%_
                (lambda ()
                  (if (gx#stx-pair? _%e129820129830%_)
                      (let ((_%e129823129838%_
                             (gx#syntax-e _%e129820129830%_)))
                        (let ((_%hd129824129841%_ (##car _%e129823129838%_))
                              (_%tl129825129843%_ (##cdr _%e129823129838%_)))
                          (let ((_%hd129846%_ _%hd129824129841%_))
                            (if (gx#stx-pair? _%tl129825129843%_)
                                (let ((_%e129826129848%_
                                       (gx#syntax-e _%tl129825129843%_)))
                                  (let ((_%hd129827129851%_
                                         (##car _%e129826129848%_))
                                        (_%tl129828129853%_
                                         (##cdr _%e129826129848%_)))
                                    (let ((_%body129856%_ _%hd129827129851%_))
                                      (if (gx#stx-null? _%tl129828129853%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd129846%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body129856%_)
                                                      '()))
                                          (_%E129822129834%_)))))
                                (_%E129822129834%_)))))
                      (_%E129822129834%_)))))
          (_%E129821129858%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx129789%_)
        (let* ((_%e129790129797%_ _%stx129789%_)
               (_%E129792129801%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129790129797%_)))
               (_%E129791129815%_
                (lambda ()
                  (if (gx#stx-pair? _%e129790129797%_)
                      (let ((_%e129793129805%_
                             (gx#syntax-e _%e129790129797%_)))
                        (let ((_%hd129794129808%_ (##car _%e129793129805%_))
                              (_%tl129795129810%_ (##cdr _%e129793129805%_)))
                          (let ((_%clauses129813%_ _%tl129795129810%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses129813%_)))))
                      (_%E129792129801%_)))))
          (_%E129791129815%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx129724%_ _%form129725%_)
        (let* ((_%e129726129739%_ _%stx129724%_)
               (_%E129728129743%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129726129739%_)))
               (_%E129727129775%_
                (lambda ()
                  (if (gx#stx-pair? _%e129726129739%_)
                      (let ((_%e129729129747%_
                             (gx#syntax-e _%e129726129739%_)))
                        (let ((_%hd129730129750%_ (##car _%e129729129747%_))
                              (_%tl129731129752%_ (##cdr _%e129729129747%_)))
                          (if (gx#stx-pair? _%tl129731129752%_)
                              (let ((_%e129732129755%_
                                     (gx#syntax-e _%tl129731129752%_)))
                                (let ((_%hd129733129758%_
                                       (##car _%e129732129755%_))
                                      (_%tl129734129760%_
                                       (##cdr _%e129732129755%_)))
                                  (let ((_%hd129763%_ _%hd129733129758%_))
                                    (if (gx#stx-pair? _%tl129734129760%_)
                                        (let ((_%e129735129765%_
                                               (gx#syntax-e
                                                _%tl129734129760%_)))
                                          (let ((_%hd129736129768%_
                                                 (##car _%e129735129765%_))
                                                (_%tl129737129770%_
                                                 (##cdr _%e129735129765%_)))
                                            (let ((_%body129773%_
                                                   _%hd129736129768%_))
                                              (if (gx#stx-null?
                                                   _%tl129737129770%_)
                                                  (cons _%form129725%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd129763%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body129773%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E129728129743%_)))))
                                        (_%E129728129743%_)))))
                              (_%E129728129743%_))))
                      (_%E129728129743%_)))))
          (_%E129727129775%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx129782%_)
        (let ((_%form129784%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx129782%_ _%form129784%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g130611_
        (let ((_g130610_ (##length _g130611_)))
          (cond ((##fx= _g130610_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g130611_))
                ((##fx= _g130610_ 2)
                 (apply gx#core-compile-top-let-values%__% _g130611_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g130611_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx129721%_)
        (gx#core-compile-top-let-values%__% _%stx129721%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx129719%_)
        (gx#core-compile-top-let-values%__% _%stx129719%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx129678%_)
        (let* ((_%e129679129689%_ _%stx129678%_)
               (_%E129681129693%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129679129689%_)))
               (_%E129680129715%_
                (lambda ()
                  (if (gx#stx-pair? _%e129679129689%_)
                      (let ((_%e129682129697%_
                             (gx#syntax-e _%e129679129689%_)))
                        (let ((_%hd129683129700%_ (##car _%e129682129697%_))
                              (_%tl129684129702%_ (##cdr _%e129682129697%_)))
                          (if (gx#stx-pair? _%tl129684129702%_)
                              (let ((_%e129685129705%_
                                     (gx#syntax-e _%tl129684129702%_)))
                                (let ((_%hd129686129708%_
                                       (##car _%e129685129705%_))
                                      (_%tl129687129710%_
                                       (##cdr _%e129685129705%_)))
                                  (let ((_%e129713%_ _%hd129686129708%_))
                                    (if (gx#stx-null? _%tl129687129710%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e129713%_)
                                                    '()))
                                        (_%E129681129693%_)))))
                              (_%E129681129693%_))))
                      (_%E129681129693%_)))))
          (_%E129680129715%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx129637%_)
        (let* ((_%e129638129648%_ _%stx129637%_)
               (_%E129640129652%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129638129648%_)))
               (_%E129639129674%_
                (lambda ()
                  (if (gx#stx-pair? _%e129638129648%_)
                      (let ((_%e129641129656%_
                             (gx#syntax-e _%e129638129648%_)))
                        (let ((_%hd129642129659%_ (##car _%e129641129656%_))
                              (_%tl129643129661%_ (##cdr _%e129641129656%_)))
                          (if (gx#stx-pair? _%tl129643129661%_)
                              (let ((_%e129644129664%_
                                     (gx#syntax-e _%tl129643129661%_)))
                                (let ((_%hd129645129667%_
                                       (##car _%e129644129664%_))
                                      (_%tl129646129669%_
                                       (##cdr _%e129644129664%_)))
                                  (let ((_%e129672%_ _%hd129645129667%_))
                                    (if (gx#stx-null? _%tl129646129669%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e129672%_)
                                                    '()))
                                        (_%E129640129652%_)))))
                              (_%E129640129652%_))))
                      (_%E129640129652%_)))))
          (_%E129639129674%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx129594%_)
        (let* ((_%e129595129605%_ _%stx129594%_)
               (_%E129597129609%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129595129605%_)))
               (_%E129596129633%_
                (lambda ()
                  (if (gx#stx-pair? _%e129595129605%_)
                      (let ((_%e129598129613%_
                             (gx#syntax-e _%e129595129605%_)))
                        (let ((_%hd129599129616%_ (##car _%e129598129613%_))
                              (_%tl129600129618%_ (##cdr _%e129598129613%_)))
                          (if (gx#stx-pair? _%tl129600129618%_)
                              (let ((_%e129601129621%_
                                     (gx#syntax-e _%tl129600129618%_)))
                                (let ((_%hd129602129624%_
                                       (##car _%e129601129621%_))
                                      (_%tl129603129626%_
                                       (##cdr _%e129601129621%_)))
                                  (let* ((_%rator129629%_ _%hd129602129624%_)
                                         (_%args129631%_ _%tl129603129626%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator129629%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args129631%_))))))
                              (_%E129597129609%_))))
                      (_%E129597129609%_)))))
          (_%E129596129633%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx129527%_)
        (let* ((_%e129528129544%_ _%stx129527%_)
               (_%E129530129548%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129528129544%_)))
               (_%E129529129590%_
                (lambda ()
                  (if (gx#stx-pair? _%e129528129544%_)
                      (let ((_%e129531129552%_
                             (gx#syntax-e _%e129528129544%_)))
                        (let ((_%hd129532129555%_ (##car _%e129531129552%_))
                              (_%tl129533129557%_ (##cdr _%e129531129552%_)))
                          (if (gx#stx-pair? _%tl129533129557%_)
                              (let ((_%e129534129560%_
                                     (gx#syntax-e _%tl129533129557%_)))
                                (let ((_%hd129535129563%_
                                       (##car _%e129534129560%_))
                                      (_%tl129536129565%_
                                       (##cdr _%e129534129560%_)))
                                  (let ((_%test129568%_ _%hd129535129563%_))
                                    (if (gx#stx-pair? _%tl129536129565%_)
                                        (let ((_%e129537129570%_
                                               (gx#syntax-e
                                                _%tl129536129565%_)))
                                          (let ((_%hd129538129573%_
                                                 (##car _%e129537129570%_))
                                                (_%tl129539129575%_
                                                 (##cdr _%e129537129570%_)))
                                            (let ((_%K129578%_
                                                   _%hd129538129573%_))
                                              (if (gx#stx-pair?
                                                   _%tl129539129575%_)
                                                  (let ((_%e129540129580%_
                                                         (gx#syntax-e
                                                          _%tl129539129575%_)))
                                                    (let ((_%hd129541129583%_
                                                           (##car _%e129540129580%_))
                                                          (_%tl129542129585%_
                                                           (##cdr _%e129540129580%_)))
                                                      (let ((_%E129588%_
                                                             _%hd129541129583%_))
                                                        (if (gx#stx-null?
                                                             _%tl129542129585%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test129568%_)
                                (cons (gx#core-compile-top-syntax _%K129578%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E129588%_)
                                            '()))))
                    (_%E129530129548%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E129530129548%_)))))
                                        (_%E129530129548%_)))))
                              (_%E129530129548%_))))
                      (_%E129530129548%_)))))
          (_%E129529129590%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx129486%_)
        (let* ((_%e129487129497%_ _%stx129486%_)
               (_%E129489129501%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129487129497%_)))
               (_%E129488129523%_
                (lambda ()
                  (if (gx#stx-pair? _%e129487129497%_)
                      (let ((_%e129490129505%_
                             (gx#syntax-e _%e129487129497%_)))
                        (let ((_%hd129491129508%_ (##car _%e129490129505%_))
                              (_%tl129492129510%_ (##cdr _%e129490129505%_)))
                          (if (gx#stx-pair? _%tl129492129510%_)
                              (let ((_%e129493129513%_
                                     (gx#syntax-e _%tl129492129510%_)))
                                (let ((_%hd129494129516%_
                                       (##car _%e129493129513%_))
                                      (_%tl129495129518%_
                                       (##cdr _%e129493129513%_)))
                                  (let ((_%id129521%_ _%hd129494129516%_))
                                    (if (gx#stx-null? _%tl129495129518%_)
                                        (if (gx#identifier? _%id129521%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id129521%_)
                                                        '()))
                                            (_%E129489129501%_))
                                        (_%E129489129501%_)))))
                              (_%E129489129501%_))))
                      (_%E129489129501%_)))))
          (_%E129488129523%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx129432%_)
        (let* ((_%e129433129446%_ _%stx129432%_)
               (_%E129435129450%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129433129446%_)))
               (_%E129434129482%_
                (lambda ()
                  (if (gx#stx-pair? _%e129433129446%_)
                      (let ((_%e129436129454%_
                             (gx#syntax-e _%e129433129446%_)))
                        (let ((_%hd129437129457%_ (##car _%e129436129454%_))
                              (_%tl129438129459%_ (##cdr _%e129436129454%_)))
                          (if (gx#stx-pair? _%tl129438129459%_)
                              (let ((_%e129439129462%_
                                     (gx#syntax-e _%tl129438129459%_)))
                                (let ((_%hd129440129465%_
                                       (##car _%e129439129462%_))
                                      (_%tl129441129467%_
                                       (##cdr _%e129439129462%_)))
                                  (let ((_%id129470%_ _%hd129440129465%_))
                                    (if (gx#stx-pair? _%tl129441129467%_)
                                        (let ((_%e129442129472%_
                                               (gx#syntax-e
                                                _%tl129441129467%_)))
                                          (let ((_%hd129443129475%_
                                                 (##car _%e129442129472%_))
                                                (_%tl129444129477%_
                                                 (##cdr _%e129442129472%_)))
                                            (let ((_%expr129480%_
                                                   _%hd129443129475%_))
                                              (if (gx#stx-null?
                                                   _%tl129444129477%_)
                                                  (if (gx#identifier?
                                                       _%id129470%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id129470%_)
                          (cons (gx#core-compile-top-syntax _%expr129480%_)
                                '())))
              (_%E129435129450%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E129435129450%_)))))
                                        (_%E129435129450%_)))))
                              (_%E129435129450%_))))
                      (_%E129435129450%_)))))
          (_%E129434129482%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id129426%_)
        (let ((_%$e129428%_ (gx#resolve-identifier__0 _%id129426%_)))
          (if _%$e129428%_
              (##unchecked-structure-ref _%$e129428%_ '1 '#f '#f)
              _%id129426%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd129424%_)
        (if (gx#identifier? _%hd129424%_)
            (gx#core-compile-top-runtime-ref _%hd129424%_)
            '#f)))))
