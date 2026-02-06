(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1770342549)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx176355%_)
        (let* ((_%e176356176363%_ _%stx176355%_)
               (_%E176358176367%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e176356176363%_)))
               (_%E176357176381%_
                (lambda ()
                  (if (gx#stx-pair? _%e176356176363%_)
                      (let ((_%e176359176371%_
                             (gx#syntax-e _%e176356176363%_)))
                        (let ((_%hd176360176374%_ (##car _%e176359176371%_))
                              (_%tl176361176376%_ (##cdr _%e176359176371%_)))
                          (let* ((_%form176379%_ _%hd176360176374%_)
                                 (__self176384
                                  (gx#syntax-local-e__0 _%form176379%_))
                                 (__method176385
                                  (__method-ref
                                   __self176384
                                   'compile-top-syntax)))
                            (if __method176385
                                (__method176385 __self176384 _%stx176355%_)
                                (begin
                                  (error '"Missing method"
                                         __self176384
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%E176358176367%_)))))
          (_%E176357176381%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self176304%_ _%stx176305%_)
        (let* ((_%self176308%_ _%self176304%_)
               (_%self176317176325%_ _%self176308%_)
               (_%E176319176328%_
                (lambda ()
                  (error '"No clause matching"
                         _%self176317176325%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K176320176341%_
                (lambda (_%K176331%_)
                  (let ((_%$e176333%_ (gx#stx-source _%stx176305%_)))
                    (if _%$e176333%_
                        ((lambda (_%g176335176337%_)
                           (gx#stx-wrap-source
                            (_%K176331%_ _%stx176305%_)
                            _%g176335176337%_))
                         _%$e176333%_)
                        (_%K176331%_ _%stx176305%_)))))
               (_%e176321176344%_
                (##unchecked-structure-ref _%self176317176325%_ '1 '#f '#f))
               (_%e176322176347%_
                (##unchecked-structure-ref _%self176317176325%_ '2 '#f '#f))
               (_%e176323176350%_
                (##unchecked-structure-ref _%self176317176325%_ '3 '#f '#f))
               (_%K176353%_ _%e176323176350%_))
          (_%K176320176341%_ _%K176353%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx176178%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx176178%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx176148%_)
        (let* ((_%e176149176156%_ _%stx176148%_)
               (_%E176151176160%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e176149176156%_)))
               (_%E176150176174%_
                (lambda ()
                  (if (gx#stx-pair? _%e176149176156%_)
                      (let ((_%e176152176164%_
                             (gx#syntax-e _%e176149176156%_)))
                        (let ((_%hd176153176167%_ (##car _%e176152176164%_))
                              (_%tl176154176169%_ (##cdr _%e176152176164%_)))
                          (let ((_%body176172%_ _%tl176154176169%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body176172%_)))))
                      (_%E176151176160%_)))))
          (_%E176150176174%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx176117%_)
        (let* ((_%e176118176125%_ _%stx176117%_)
               (_%E176120176129%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e176118176125%_)))
               (_%E176119176144%_
                (lambda ()
                  (if (gx#stx-pair? _%e176118176125%_)
                      (let ((_%e176121176133%_
                             (gx#syntax-e _%e176118176125%_)))
                        (let ((_%hd176122176136%_ (##car _%e176121176133%_))
                              (_%tl176123176138%_ (##cdr _%e176121176133%_)))
                          (let ((_%body176141%_ _%tl176123176138%_))
                            (cons '%#begin-syntax
                                  (call-with-parameters__1
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body176141%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%E176120176129%_)))))
          (_%E176119176144%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx176087%_)
        (let* ((_%e176088176095%_ _%stx176087%_)
               (_%E176090176099%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e176088176095%_)))
               (_%E176089176113%_
                (lambda ()
                  (if (gx#stx-pair? _%e176088176095%_)
                      (let ((_%e176091176103%_
                             (gx#syntax-e _%e176088176095%_)))
                        (let ((_%hd176092176106%_ (##car _%e176091176103%_))
                              (_%tl176093176108%_ (##cdr _%e176091176103%_)))
                          (let ((_%body176111%_ _%tl176093176108%_))
                            (cons '%#begin-foreign _%body176111%_))))
                      (_%E176090176099%_)))))
          (_%E176089176113%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx176033%_)
        (let* ((_%e176034176047%_ _%stx176033%_)
               (_%E176036176051%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e176034176047%_)))
               (_%E176035176083%_
                (lambda ()
                  (if (gx#stx-pair? _%e176034176047%_)
                      (let ((_%e176037176055%_
                             (gx#syntax-e _%e176034176047%_)))
                        (let ((_%hd176038176058%_ (##car _%e176037176055%_))
                              (_%tl176039176060%_ (##cdr _%e176037176055%_)))
                          (if (gx#stx-pair? _%tl176039176060%_)
                              (let ((_%e176040176063%_
                                     (gx#syntax-e _%tl176039176060%_)))
                                (let ((_%hd176041176066%_
                                       (##car _%e176040176063%_))
                                      (_%tl176042176068%_
                                       (##cdr _%e176040176063%_)))
                                  (let ((_%ann176071%_ _%hd176041176066%_))
                                    (if (gx#stx-pair? _%tl176042176068%_)
                                        (let ((_%e176043176073%_
                                               (gx#syntax-e
                                                _%tl176042176068%_)))
                                          (let ((_%hd176044176076%_
                                                 (##car _%e176043176073%_))
                                                (_%tl176045176078%_
                                                 (##cdr _%e176043176073%_)))
                                            (let ((_%expr176081%_
                                                   _%hd176044176076%_))
                                              (if (gx#stx-null?
                                                   _%tl176045176078%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr176081%_)
                                                  (_%E176036176051%_)))))
                                        (_%E176036176051%_)))))
                              (_%E176036176051%_))))
                      (_%E176036176051%_)))))
          (_%E176035176083%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx176003%_)
        (let* ((_%e176004176011%_ _%stx176003%_)
               (_%E176006176015%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e176004176011%_)))
               (_%E176005176029%_
                (lambda ()
                  (if (gx#stx-pair? _%e176004176011%_)
                      (let ((_%e176007176019%_
                             (gx#syntax-e _%e176004176011%_)))
                        (let ((_%hd176008176022%_ (##car _%e176007176019%_))
                              (_%tl176009176024%_ (##cdr _%e176007176019%_)))
                          (let ((_%body176027%_ _%tl176009176024%_))
                            (cons '%#import _%body176027%_))))
                      (_%E176006176015%_)))))
          (_%E176005176029%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx175960%_)
        (let* ((_%e175961175971%_ _%stx175960%_)
               (_%E175963175975%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e175961175971%_)))
               (_%E175962175999%_
                (lambda ()
                  (if (gx#stx-pair? _%e175961175971%_)
                      (let ((_%e175964175979%_
                             (gx#syntax-e _%e175961175971%_)))
                        (let ((_%hd175965175982%_ (##car _%e175964175979%_))
                              (_%tl175966175984%_ (##cdr _%e175964175979%_)))
                          (if (gx#stx-pair? _%tl175966175984%_)
                              (let ((_%e175967175987%_
                                     (gx#syntax-e _%tl175966175984%_)))
                                (let ((_%hd175968175990%_
                                       (##car _%e175967175987%_))
                                      (_%tl175969175992%_
                                       (##cdr _%e175967175987%_)))
                                  (let* ((_%hd175995%_ _%hd175968175990%_)
                                         (_%body175997%_ _%tl175969175992%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd175995%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body175997%_))))))
                              (_%E175963175975%_))))
                      (_%E175963175975%_)))))
          (_%E175962175999%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx175930%_)
        (let* ((_%e175931175938%_ _%stx175930%_)
               (_%E175933175942%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e175931175938%_)))
               (_%E175932175956%_
                (lambda ()
                  (if (gx#stx-pair? _%e175931175938%_)
                      (let ((_%e175934175946%_
                             (gx#syntax-e _%e175931175938%_)))
                        (let ((_%hd175935175949%_ (##car _%e175934175946%_))
                              (_%tl175936175951%_ (##cdr _%e175934175946%_)))
                          (let ((_%body175954%_ _%tl175936175951%_))
                            (cons '%#export _%body175954%_))))
                      (_%E175933175942%_)))))
          (_%E175932175956%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx175900%_)
        (let* ((_%e175901175908%_ _%stx175900%_)
               (_%E175903175912%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e175901175908%_)))
               (_%E175902175926%_
                (lambda ()
                  (if (gx#stx-pair? _%e175901175908%_)
                      (let ((_%e175904175916%_
                             (gx#syntax-e _%e175901175908%_)))
                        (let ((_%hd175905175919%_ (##car _%e175904175916%_))
                              (_%tl175906175921%_ (##cdr _%e175904175916%_)))
                          (let ((_%body175924%_ _%tl175906175921%_))
                            (cons '%#provide _%body175924%_))))
                      (_%E175903175912%_)))))
          (_%E175902175926%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx175870%_)
        (let* ((_%e175871175878%_ _%stx175870%_)
               (_%E175873175882%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e175871175878%_)))
               (_%E175872175896%_
                (lambda ()
                  (if (gx#stx-pair? _%e175871175878%_)
                      (let ((_%e175874175886%_
                             (gx#syntax-e _%e175871175878%_)))
                        (let ((_%hd175875175889%_ (##car _%e175874175886%_))
                              (_%tl175876175891%_ (##cdr _%e175874175886%_)))
                          (let ((_%body175894%_ _%tl175876175891%_))
                            (cons '%#extern _%body175894%_))))
                      (_%E175873175882%_)))))
          (_%E175872175896%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx175816%_)
        (let* ((_%e175817175830%_ _%stx175816%_)
               (_%E175819175834%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e175817175830%_)))
               (_%E175818175866%_
                (lambda ()
                  (if (gx#stx-pair? _%e175817175830%_)
                      (let ((_%e175820175838%_
                             (gx#syntax-e _%e175817175830%_)))
                        (let ((_%hd175821175841%_ (##car _%e175820175838%_))
                              (_%tl175822175843%_ (##cdr _%e175820175838%_)))
                          (if (gx#stx-pair? _%tl175822175843%_)
                              (let ((_%e175823175846%_
                                     (gx#syntax-e _%tl175822175843%_)))
                                (let ((_%hd175824175849%_
                                       (##car _%e175823175846%_))
                                      (_%tl175825175851%_
                                       (##cdr _%e175823175846%_)))
                                  (let ((_%hd175854%_ _%hd175824175849%_))
                                    (if (gx#stx-pair? _%tl175825175851%_)
                                        (let ((_%e175826175856%_
                                               (gx#syntax-e
                                                _%tl175825175851%_)))
                                          (let ((_%hd175827175859%_
                                                 (##car _%e175826175856%_))
                                                (_%tl175828175861%_
                                                 (##cdr _%e175826175856%_)))
                                            (let ((_%expr175864%_
                                                   _%hd175827175859%_))
                                              (if (gx#stx-null?
                                                   _%tl175828175861%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd175854%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr175864%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E175819175834%_)))))
                                        (_%E175819175834%_)))))
                              (_%E175819175834%_))))
                      (_%E175819175834%_)))))
          (_%E175818175866%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx175761%_)
        (let* ((_%e175762175775%_ _%stx175761%_)
               (_%E175764175779%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e175762175775%_)))
               (_%E175763175812%_
                (lambda ()
                  (if (gx#stx-pair? _%e175762175775%_)
                      (let ((_%e175765175783%_
                             (gx#syntax-e _%e175762175775%_)))
                        (let ((_%hd175766175786%_ (##car _%e175765175783%_))
                              (_%tl175767175788%_ (##cdr _%e175765175783%_)))
                          (if (gx#stx-pair? _%tl175767175788%_)
                              (let ((_%e175768175791%_
                                     (gx#syntax-e _%tl175767175788%_)))
                                (let ((_%hd175769175794%_
                                       (##car _%e175768175791%_))
                                      (_%tl175770175796%_
                                       (##cdr _%e175768175791%_)))
                                  (let ((_%hd175799%_ _%hd175769175794%_))
                                    (if (gx#stx-pair? _%tl175770175796%_)
                                        (let ((_%e175771175801%_
                                               (gx#syntax-e
                                                _%tl175770175796%_)))
                                          (let ((_%hd175772175804%_
                                                 (##car _%e175771175801%_))
                                                (_%tl175773175806%_
                                                 (##cdr _%e175771175801%_)))
                                            (let ((_%expr175809%_
                                                   _%hd175772175804%_))
                                              (if (gx#stx-null?
                                                   _%tl175773175806%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd175799%_
                                                              (cons (call-with-parameters__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr175809%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E175764175779%_)))))
                                        (_%E175764175779%_)))))
                              (_%E175764175779%_))))
                      (_%E175764175779%_)))))
          (_%E175763175812%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx175731%_)
        (let* ((_%e175732175739%_ _%stx175731%_)
               (_%E175734175743%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e175732175739%_)))
               (_%E175733175757%_
                (lambda ()
                  (if (gx#stx-pair? _%e175732175739%_)
                      (let ((_%e175735175747%_
                             (gx#syntax-e _%e175732175739%_)))
                        (let ((_%hd175736175750%_ (##car _%e175735175747%_))
                              (_%tl175737175752%_ (##cdr _%e175735175747%_)))
                          (let ((_%body175755%_ _%tl175737175752%_))
                            (cons '%#define-alias _%body175755%_))))
                      (_%E175734175743%_)))))
          (_%E175733175757%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx175701%_)
        (let* ((_%e175702175709%_ _%stx175701%_)
               (_%E175704175713%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e175702175709%_)))
               (_%E175703175727%_
                (lambda ()
                  (if (gx#stx-pair? _%e175702175709%_)
                      (let ((_%e175705175717%_
                             (gx#syntax-e _%e175702175709%_)))
                        (let ((_%hd175706175720%_ (##car _%e175705175717%_))
                              (_%tl175707175722%_ (##cdr _%e175705175717%_)))
                          (let ((_%body175725%_ _%tl175707175722%_))
                            (cons '%#define-runtime _%body175725%_))))
                      (_%E175704175713%_)))))
          (_%E175703175727%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx175671%_)
        (let* ((_%e175672175679%_ _%stx175671%_)
               (_%E175674175683%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e175672175679%_)))
               (_%E175673175697%_
                (lambda ()
                  (if (gx#stx-pair? _%e175672175679%_)
                      (let ((_%e175675175687%_
                             (gx#syntax-e _%e175672175679%_)))
                        (let ((_%hd175676175690%_ (##car _%e175675175687%_))
                              (_%tl175677175692%_ (##cdr _%e175675175687%_)))
                          (let ((_%decls175695%_ _%tl175677175692%_))
                            (cons '%#declare _%decls175695%_))))
                      (_%E175674175683%_)))))
          (_%E175673175697%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx175641%_)
        (let* ((_%e175642175649%_ _%stx175641%_)
               (_%E175644175653%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e175642175649%_)))
               (_%E175643175667%_
                (lambda ()
                  (if (gx#stx-pair? _%e175642175649%_)
                      (let ((_%e175645175657%_
                             (gx#syntax-e _%e175642175649%_)))
                        (let ((_%hd175646175660%_ (##car _%e175645175657%_))
                              (_%tl175647175662%_ (##cdr _%e175645175657%_)))
                          (let ((_%clause175665%_ _%tl175647175662%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause175665%_)))))
                      (_%E175644175653%_)))))
          (_%E175643175667%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx175598%_)
        (let* ((_%e175599175609%_ _%stx175598%_)
               (_%E175601175613%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e175599175609%_)))
               (_%E175600175637%_
                (lambda ()
                  (if (gx#stx-pair? _%e175599175609%_)
                      (let ((_%e175602175617%_
                             (gx#syntax-e _%e175599175609%_)))
                        (let ((_%hd175603175620%_ (##car _%e175602175617%_))
                              (_%tl175604175622%_ (##cdr _%e175602175617%_)))
                          (let ((_%hd175625%_ _%hd175603175620%_))
                            (if (gx#stx-pair? _%tl175604175622%_)
                                (let ((_%e175605175627%_
                                       (gx#syntax-e _%tl175604175622%_)))
                                  (let ((_%hd175606175630%_
                                         (##car _%e175605175627%_))
                                        (_%tl175607175632%_
                                         (##cdr _%e175605175627%_)))
                                    (let ((_%body175635%_ _%hd175606175630%_))
                                      (if (gx#stx-null? _%tl175607175632%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd175625%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body175635%_)
                                                      '()))
                                          (_%E175601175613%_)))))
                                (_%E175601175613%_)))))
                      (_%E175601175613%_)))))
          (_%E175600175637%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx175568%_)
        (let* ((_%e175569175576%_ _%stx175568%_)
               (_%E175571175580%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e175569175576%_)))
               (_%E175570175594%_
                (lambda ()
                  (if (gx#stx-pair? _%e175569175576%_)
                      (let ((_%e175572175584%_
                             (gx#syntax-e _%e175569175576%_)))
                        (let ((_%hd175573175587%_ (##car _%e175572175584%_))
                              (_%tl175574175589%_ (##cdr _%e175572175584%_)))
                          (let ((_%clauses175592%_ _%tl175574175589%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses175592%_)))))
                      (_%E175571175580%_)))))
          (_%E175570175594%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx175503%_ _%form175504%_)
        (let* ((_%e175505175518%_ _%stx175503%_)
               (_%E175507175522%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e175505175518%_)))
               (_%E175506175554%_
                (lambda ()
                  (if (gx#stx-pair? _%e175505175518%_)
                      (let ((_%e175508175526%_
                             (gx#syntax-e _%e175505175518%_)))
                        (let ((_%hd175509175529%_ (##car _%e175508175526%_))
                              (_%tl175510175531%_ (##cdr _%e175508175526%_)))
                          (if (gx#stx-pair? _%tl175510175531%_)
                              (let ((_%e175511175534%_
                                     (gx#syntax-e _%tl175510175531%_)))
                                (let ((_%hd175512175537%_
                                       (##car _%e175511175534%_))
                                      (_%tl175513175539%_
                                       (##cdr _%e175511175534%_)))
                                  (let ((_%hd175542%_ _%hd175512175537%_))
                                    (if (gx#stx-pair? _%tl175513175539%_)
                                        (let ((_%e175514175544%_
                                               (gx#syntax-e
                                                _%tl175513175539%_)))
                                          (let ((_%hd175515175547%_
                                                 (##car _%e175514175544%_))
                                                (_%tl175516175549%_
                                                 (##cdr _%e175514175544%_)))
                                            (let ((_%body175552%_
                                                   _%hd175515175547%_))
                                              (if (gx#stx-null?
                                                   _%tl175516175549%_)
                                                  (cons _%form175504%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd175542%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body175552%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E175507175522%_)))))
                                        (_%E175507175522%_)))))
                              (_%E175507175522%_))))
                      (_%E175507175522%_)))))
          (_%E175506175554%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx175561%_)
        (let ((_%form175563%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx175561%_ _%form175563%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g176386_
        (let ((_g176387_ (##length _g176386_)))
          (cond ((##fx= _g176387_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g176386_))
                ((##fx= _g176387_ 2)
                 (apply gx#core-compile-top-let-values%__% _g176386_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g176386_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx175500%_)
        (gx#core-compile-top-let-values%__% _%stx175500%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx175498%_)
        (gx#core-compile-top-let-values%__% _%stx175498%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx175457%_)
        (let* ((_%e175458175468%_ _%stx175457%_)
               (_%E175460175472%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e175458175468%_)))
               (_%E175459175494%_
                (lambda ()
                  (if (gx#stx-pair? _%e175458175468%_)
                      (let ((_%e175461175476%_
                             (gx#syntax-e _%e175458175468%_)))
                        (let ((_%hd175462175479%_ (##car _%e175461175476%_))
                              (_%tl175463175481%_ (##cdr _%e175461175476%_)))
                          (if (gx#stx-pair? _%tl175463175481%_)
                              (let ((_%e175464175484%_
                                     (gx#syntax-e _%tl175463175481%_)))
                                (let ((_%hd175465175487%_
                                       (##car _%e175464175484%_))
                                      (_%tl175466175489%_
                                       (##cdr _%e175464175484%_)))
                                  (let ((_%e175492%_ _%hd175465175487%_))
                                    (if (gx#stx-null? _%tl175466175489%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e175492%_)
                                                    '()))
                                        (_%E175460175472%_)))))
                              (_%E175460175472%_))))
                      (_%E175460175472%_)))))
          (_%E175459175494%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx175416%_)
        (let* ((_%e175417175427%_ _%stx175416%_)
               (_%E175419175431%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e175417175427%_)))
               (_%E175418175453%_
                (lambda ()
                  (if (gx#stx-pair? _%e175417175427%_)
                      (let ((_%e175420175435%_
                             (gx#syntax-e _%e175417175427%_)))
                        (let ((_%hd175421175438%_ (##car _%e175420175435%_))
                              (_%tl175422175440%_ (##cdr _%e175420175435%_)))
                          (if (gx#stx-pair? _%tl175422175440%_)
                              (let ((_%e175423175443%_
                                     (gx#syntax-e _%tl175422175440%_)))
                                (let ((_%hd175424175446%_
                                       (##car _%e175423175443%_))
                                      (_%tl175425175448%_
                                       (##cdr _%e175423175443%_)))
                                  (let ((_%e175451%_ _%hd175424175446%_))
                                    (if (gx#stx-null? _%tl175425175448%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e175451%_)
                                                    '()))
                                        (_%E175419175431%_)))))
                              (_%E175419175431%_))))
                      (_%E175419175431%_)))))
          (_%E175418175453%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx175373%_)
        (let* ((_%e175374175384%_ _%stx175373%_)
               (_%E175376175388%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e175374175384%_)))
               (_%E175375175412%_
                (lambda ()
                  (if (gx#stx-pair? _%e175374175384%_)
                      (let ((_%e175377175392%_
                             (gx#syntax-e _%e175374175384%_)))
                        (let ((_%hd175378175395%_ (##car _%e175377175392%_))
                              (_%tl175379175397%_ (##cdr _%e175377175392%_)))
                          (if (gx#stx-pair? _%tl175379175397%_)
                              (let ((_%e175380175400%_
                                     (gx#syntax-e _%tl175379175397%_)))
                                (let ((_%hd175381175403%_
                                       (##car _%e175380175400%_))
                                      (_%tl175382175405%_
                                       (##cdr _%e175380175400%_)))
                                  (let* ((_%rator175408%_ _%hd175381175403%_)
                                         (_%args175410%_ _%tl175382175405%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator175408%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args175410%_))))))
                              (_%E175376175388%_))))
                      (_%E175376175388%_)))))
          (_%E175375175412%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx175306%_)
        (let* ((_%e175307175323%_ _%stx175306%_)
               (_%E175309175327%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e175307175323%_)))
               (_%E175308175369%_
                (lambda ()
                  (if (gx#stx-pair? _%e175307175323%_)
                      (let ((_%e175310175331%_
                             (gx#syntax-e _%e175307175323%_)))
                        (let ((_%hd175311175334%_ (##car _%e175310175331%_))
                              (_%tl175312175336%_ (##cdr _%e175310175331%_)))
                          (if (gx#stx-pair? _%tl175312175336%_)
                              (let ((_%e175313175339%_
                                     (gx#syntax-e _%tl175312175336%_)))
                                (let ((_%hd175314175342%_
                                       (##car _%e175313175339%_))
                                      (_%tl175315175344%_
                                       (##cdr _%e175313175339%_)))
                                  (let ((_%test175347%_ _%hd175314175342%_))
                                    (if (gx#stx-pair? _%tl175315175344%_)
                                        (let ((_%e175316175349%_
                                               (gx#syntax-e
                                                _%tl175315175344%_)))
                                          (let ((_%hd175317175352%_
                                                 (##car _%e175316175349%_))
                                                (_%tl175318175354%_
                                                 (##cdr _%e175316175349%_)))
                                            (let ((_%K175357%_
                                                   _%hd175317175352%_))
                                              (if (gx#stx-pair?
                                                   _%tl175318175354%_)
                                                  (let ((_%e175319175359%_
                                                         (gx#syntax-e
                                                          _%tl175318175354%_)))
                                                    (let ((_%hd175320175362%_
                                                           (##car _%e175319175359%_))
                                                          (_%tl175321175364%_
                                                           (##cdr _%e175319175359%_)))
                                                      (let ((_%E175367%_
                                                             _%hd175320175362%_))
                                                        (if (gx#stx-null?
                                                             _%tl175321175364%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test175347%_)
                                (cons (gx#core-compile-top-syntax _%K175357%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E175367%_)
                                            '()))))
                    (_%E175309175327%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E175309175327%_)))))
                                        (_%E175309175327%_)))))
                              (_%E175309175327%_))))
                      (_%E175309175327%_)))))
          (_%E175308175369%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx175265%_)
        (let* ((_%e175266175276%_ _%stx175265%_)
               (_%E175268175280%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e175266175276%_)))
               (_%E175267175302%_
                (lambda ()
                  (if (gx#stx-pair? _%e175266175276%_)
                      (let ((_%e175269175284%_
                             (gx#syntax-e _%e175266175276%_)))
                        (let ((_%hd175270175287%_ (##car _%e175269175284%_))
                              (_%tl175271175289%_ (##cdr _%e175269175284%_)))
                          (if (gx#stx-pair? _%tl175271175289%_)
                              (let ((_%e175272175292%_
                                     (gx#syntax-e _%tl175271175289%_)))
                                (let ((_%hd175273175295%_
                                       (##car _%e175272175292%_))
                                      (_%tl175274175297%_
                                       (##cdr _%e175272175292%_)))
                                  (let ((_%id175300%_ _%hd175273175295%_))
                                    (if (gx#stx-null? _%tl175274175297%_)
                                        (if (gx#identifier? _%id175300%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id175300%_)
                                                        '()))
                                            (_%E175268175280%_))
                                        (_%E175268175280%_)))))
                              (_%E175268175280%_))))
                      (_%E175268175280%_)))))
          (_%E175267175302%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx175211%_)
        (let* ((_%e175212175225%_ _%stx175211%_)
               (_%E175214175229%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e175212175225%_)))
               (_%E175213175261%_
                (lambda ()
                  (if (gx#stx-pair? _%e175212175225%_)
                      (let ((_%e175215175233%_
                             (gx#syntax-e _%e175212175225%_)))
                        (let ((_%hd175216175236%_ (##car _%e175215175233%_))
                              (_%tl175217175238%_ (##cdr _%e175215175233%_)))
                          (if (gx#stx-pair? _%tl175217175238%_)
                              (let ((_%e175218175241%_
                                     (gx#syntax-e _%tl175217175238%_)))
                                (let ((_%hd175219175244%_
                                       (##car _%e175218175241%_))
                                      (_%tl175220175246%_
                                       (##cdr _%e175218175241%_)))
                                  (let ((_%id175249%_ _%hd175219175244%_))
                                    (if (gx#stx-pair? _%tl175220175246%_)
                                        (let ((_%e175221175251%_
                                               (gx#syntax-e
                                                _%tl175220175246%_)))
                                          (let ((_%hd175222175254%_
                                                 (##car _%e175221175251%_))
                                                (_%tl175223175256%_
                                                 (##cdr _%e175221175251%_)))
                                            (let ((_%expr175259%_
                                                   _%hd175222175254%_))
                                              (if (gx#stx-null?
                                                   _%tl175223175256%_)
                                                  (if (gx#identifier?
                                                       _%id175249%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id175249%_)
                          (cons (gx#core-compile-top-syntax _%expr175259%_)
                                '())))
              (_%E175214175229%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E175214175229%_)))))
                                        (_%E175214175229%_)))))
                              (_%E175214175229%_))))
                      (_%E175214175229%_)))))
          (_%E175213175261%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id175205%_)
        (let ((_%$e175207%_ (gx#resolve-identifier__0 _%id175205%_)))
          (if _%$e175207%_
              (##unchecked-structure-ref _%$e175207%_ '1 '#f '#f)
              _%id175205%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd175203%_)
        (if (gx#identifier? _%hd175203%_)
            (gx#core-compile-top-runtime-ref _%hd175203%_)
            '#f)))))
