(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1770333054)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx154036%_)
        (let* ((_%e154037154044%_ _%stx154036%_)
               (_%E154039154048%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e154037154044%_)))
               (_%E154038154062%_
                (lambda ()
                  (if (gx#stx-pair? _%e154037154044%_)
                      (let ((_%e154040154052%_
                             (gx#syntax-e _%e154037154044%_)))
                        (let ((_%hd154041154055%_ (##car _%e154040154052%_))
                              (_%tl154042154057%_ (##cdr _%e154040154052%_)))
                          (let* ((_%form154060%_ _%hd154041154055%_)
                                 (__self154065
                                  (gx#syntax-local-e__0 _%form154060%_))
                                 (__method154066
                                  (__method-ref
                                   __self154065
                                   'compile-top-syntax)))
                            (if __method154066
                                (__method154066 __self154065 _%stx154036%_)
                                (begin
                                  (error '"Missing method"
                                         __self154065
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%E154039154048%_)))))
          (_%E154038154062%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self153985%_ _%stx153986%_)
        (let* ((_%self153989%_ _%self153985%_)
               (_%self153998154006%_ _%self153989%_)
               (_%E154000154009%_
                (lambda ()
                  (error '"No clause matching"
                         _%self153998154006%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K154001154022%_
                (lambda (_%K154012%_)
                  (let ((_%$e154014%_ (gx#stx-source _%stx153986%_)))
                    (if _%$e154014%_
                        ((lambda (_%g154016154018%_)
                           (gx#stx-wrap-source
                            (_%K154012%_ _%stx153986%_)
                            _%g154016154018%_))
                         _%$e154014%_)
                        (_%K154012%_ _%stx153986%_)))))
               (_%e154002154025%_
                (##unchecked-structure-ref _%self153998154006%_ '1 '#f '#f))
               (_%e154003154028%_
                (##unchecked-structure-ref _%self153998154006%_ '2 '#f '#f))
               (_%e154004154031%_
                (##unchecked-structure-ref _%self153998154006%_ '3 '#f '#f))
               (_%K154034%_ _%e154004154031%_))
          (_%K154001154022%_ _%K154034%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx153859%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx153859%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx153829%_)
        (let* ((_%e153830153837%_ _%stx153829%_)
               (_%E153832153841%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153830153837%_)))
               (_%E153831153855%_
                (lambda ()
                  (if (gx#stx-pair? _%e153830153837%_)
                      (let ((_%e153833153845%_
                             (gx#syntax-e _%e153830153837%_)))
                        (let ((_%hd153834153848%_ (##car _%e153833153845%_))
                              (_%tl153835153850%_ (##cdr _%e153833153845%_)))
                          (let ((_%body153853%_ _%tl153835153850%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body153853%_)))))
                      (_%E153832153841%_)))))
          (_%E153831153855%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx153798%_)
        (let* ((_%e153799153806%_ _%stx153798%_)
               (_%E153801153810%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153799153806%_)))
               (_%E153800153825%_
                (lambda ()
                  (if (gx#stx-pair? _%e153799153806%_)
                      (let ((_%e153802153814%_
                             (gx#syntax-e _%e153799153806%_)))
                        (let ((_%hd153803153817%_ (##car _%e153802153814%_))
                              (_%tl153804153819%_ (##cdr _%e153802153814%_)))
                          (let ((_%body153822%_ _%tl153804153819%_))
                            (cons '%#begin-syntax
                                  (call-with-parameters__1
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body153822%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%E153801153810%_)))))
          (_%E153800153825%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx153768%_)
        (let* ((_%e153769153776%_ _%stx153768%_)
               (_%E153771153780%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153769153776%_)))
               (_%E153770153794%_
                (lambda ()
                  (if (gx#stx-pair? _%e153769153776%_)
                      (let ((_%e153772153784%_
                             (gx#syntax-e _%e153769153776%_)))
                        (let ((_%hd153773153787%_ (##car _%e153772153784%_))
                              (_%tl153774153789%_ (##cdr _%e153772153784%_)))
                          (let ((_%body153792%_ _%tl153774153789%_))
                            (cons '%#begin-foreign _%body153792%_))))
                      (_%E153771153780%_)))))
          (_%E153770153794%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx153714%_)
        (let* ((_%e153715153728%_ _%stx153714%_)
               (_%E153717153732%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153715153728%_)))
               (_%E153716153764%_
                (lambda ()
                  (if (gx#stx-pair? _%e153715153728%_)
                      (let ((_%e153718153736%_
                             (gx#syntax-e _%e153715153728%_)))
                        (let ((_%hd153719153739%_ (##car _%e153718153736%_))
                              (_%tl153720153741%_ (##cdr _%e153718153736%_)))
                          (if (gx#stx-pair? _%tl153720153741%_)
                              (let ((_%e153721153744%_
                                     (gx#syntax-e _%tl153720153741%_)))
                                (let ((_%hd153722153747%_
                                       (##car _%e153721153744%_))
                                      (_%tl153723153749%_
                                       (##cdr _%e153721153744%_)))
                                  (let ((_%ann153752%_ _%hd153722153747%_))
                                    (if (gx#stx-pair? _%tl153723153749%_)
                                        (let ((_%e153724153754%_
                                               (gx#syntax-e
                                                _%tl153723153749%_)))
                                          (let ((_%hd153725153757%_
                                                 (##car _%e153724153754%_))
                                                (_%tl153726153759%_
                                                 (##cdr _%e153724153754%_)))
                                            (let ((_%expr153762%_
                                                   _%hd153725153757%_))
                                              (if (gx#stx-null?
                                                   _%tl153726153759%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr153762%_)
                                                  (_%E153717153732%_)))))
                                        (_%E153717153732%_)))))
                              (_%E153717153732%_))))
                      (_%E153717153732%_)))))
          (_%E153716153764%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx153684%_)
        (let* ((_%e153685153692%_ _%stx153684%_)
               (_%E153687153696%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153685153692%_)))
               (_%E153686153710%_
                (lambda ()
                  (if (gx#stx-pair? _%e153685153692%_)
                      (let ((_%e153688153700%_
                             (gx#syntax-e _%e153685153692%_)))
                        (let ((_%hd153689153703%_ (##car _%e153688153700%_))
                              (_%tl153690153705%_ (##cdr _%e153688153700%_)))
                          (let ((_%body153708%_ _%tl153690153705%_))
                            (cons '%#import _%body153708%_))))
                      (_%E153687153696%_)))))
          (_%E153686153710%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx153641%_)
        (let* ((_%e153642153652%_ _%stx153641%_)
               (_%E153644153656%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153642153652%_)))
               (_%E153643153680%_
                (lambda ()
                  (if (gx#stx-pair? _%e153642153652%_)
                      (let ((_%e153645153660%_
                             (gx#syntax-e _%e153642153652%_)))
                        (let ((_%hd153646153663%_ (##car _%e153645153660%_))
                              (_%tl153647153665%_ (##cdr _%e153645153660%_)))
                          (if (gx#stx-pair? _%tl153647153665%_)
                              (let ((_%e153648153668%_
                                     (gx#syntax-e _%tl153647153665%_)))
                                (let ((_%hd153649153671%_
                                       (##car _%e153648153668%_))
                                      (_%tl153650153673%_
                                       (##cdr _%e153648153668%_)))
                                  (let* ((_%hd153676%_ _%hd153649153671%_)
                                         (_%body153678%_ _%tl153650153673%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd153676%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body153678%_))))))
                              (_%E153644153656%_))))
                      (_%E153644153656%_)))))
          (_%E153643153680%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx153611%_)
        (let* ((_%e153612153619%_ _%stx153611%_)
               (_%E153614153623%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153612153619%_)))
               (_%E153613153637%_
                (lambda ()
                  (if (gx#stx-pair? _%e153612153619%_)
                      (let ((_%e153615153627%_
                             (gx#syntax-e _%e153612153619%_)))
                        (let ((_%hd153616153630%_ (##car _%e153615153627%_))
                              (_%tl153617153632%_ (##cdr _%e153615153627%_)))
                          (let ((_%body153635%_ _%tl153617153632%_))
                            (cons '%#export _%body153635%_))))
                      (_%E153614153623%_)))))
          (_%E153613153637%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx153581%_)
        (let* ((_%e153582153589%_ _%stx153581%_)
               (_%E153584153593%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153582153589%_)))
               (_%E153583153607%_
                (lambda ()
                  (if (gx#stx-pair? _%e153582153589%_)
                      (let ((_%e153585153597%_
                             (gx#syntax-e _%e153582153589%_)))
                        (let ((_%hd153586153600%_ (##car _%e153585153597%_))
                              (_%tl153587153602%_ (##cdr _%e153585153597%_)))
                          (let ((_%body153605%_ _%tl153587153602%_))
                            (cons '%#provide _%body153605%_))))
                      (_%E153584153593%_)))))
          (_%E153583153607%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx153551%_)
        (let* ((_%e153552153559%_ _%stx153551%_)
               (_%E153554153563%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153552153559%_)))
               (_%E153553153577%_
                (lambda ()
                  (if (gx#stx-pair? _%e153552153559%_)
                      (let ((_%e153555153567%_
                             (gx#syntax-e _%e153552153559%_)))
                        (let ((_%hd153556153570%_ (##car _%e153555153567%_))
                              (_%tl153557153572%_ (##cdr _%e153555153567%_)))
                          (let ((_%body153575%_ _%tl153557153572%_))
                            (cons '%#extern _%body153575%_))))
                      (_%E153554153563%_)))))
          (_%E153553153577%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx153497%_)
        (let* ((_%e153498153511%_ _%stx153497%_)
               (_%E153500153515%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153498153511%_)))
               (_%E153499153547%_
                (lambda ()
                  (if (gx#stx-pair? _%e153498153511%_)
                      (let ((_%e153501153519%_
                             (gx#syntax-e _%e153498153511%_)))
                        (let ((_%hd153502153522%_ (##car _%e153501153519%_))
                              (_%tl153503153524%_ (##cdr _%e153501153519%_)))
                          (if (gx#stx-pair? _%tl153503153524%_)
                              (let ((_%e153504153527%_
                                     (gx#syntax-e _%tl153503153524%_)))
                                (let ((_%hd153505153530%_
                                       (##car _%e153504153527%_))
                                      (_%tl153506153532%_
                                       (##cdr _%e153504153527%_)))
                                  (let ((_%hd153535%_ _%hd153505153530%_))
                                    (if (gx#stx-pair? _%tl153506153532%_)
                                        (let ((_%e153507153537%_
                                               (gx#syntax-e
                                                _%tl153506153532%_)))
                                          (let ((_%hd153508153540%_
                                                 (##car _%e153507153537%_))
                                                (_%tl153509153542%_
                                                 (##cdr _%e153507153537%_)))
                                            (let ((_%expr153545%_
                                                   _%hd153508153540%_))
                                              (if (gx#stx-null?
                                                   _%tl153509153542%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd153535%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr153545%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E153500153515%_)))))
                                        (_%E153500153515%_)))))
                              (_%E153500153515%_))))
                      (_%E153500153515%_)))))
          (_%E153499153547%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx153442%_)
        (let* ((_%e153443153456%_ _%stx153442%_)
               (_%E153445153460%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153443153456%_)))
               (_%E153444153493%_
                (lambda ()
                  (if (gx#stx-pair? _%e153443153456%_)
                      (let ((_%e153446153464%_
                             (gx#syntax-e _%e153443153456%_)))
                        (let ((_%hd153447153467%_ (##car _%e153446153464%_))
                              (_%tl153448153469%_ (##cdr _%e153446153464%_)))
                          (if (gx#stx-pair? _%tl153448153469%_)
                              (let ((_%e153449153472%_
                                     (gx#syntax-e _%tl153448153469%_)))
                                (let ((_%hd153450153475%_
                                       (##car _%e153449153472%_))
                                      (_%tl153451153477%_
                                       (##cdr _%e153449153472%_)))
                                  (let ((_%hd153480%_ _%hd153450153475%_))
                                    (if (gx#stx-pair? _%tl153451153477%_)
                                        (let ((_%e153452153482%_
                                               (gx#syntax-e
                                                _%tl153451153477%_)))
                                          (let ((_%hd153453153485%_
                                                 (##car _%e153452153482%_))
                                                (_%tl153454153487%_
                                                 (##cdr _%e153452153482%_)))
                                            (let ((_%expr153490%_
                                                   _%hd153453153485%_))
                                              (if (gx#stx-null?
                                                   _%tl153454153487%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd153480%_
                                                              (cons (call-with-parameters__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr153490%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E153445153460%_)))))
                                        (_%E153445153460%_)))))
                              (_%E153445153460%_))))
                      (_%E153445153460%_)))))
          (_%E153444153493%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx153412%_)
        (let* ((_%e153413153420%_ _%stx153412%_)
               (_%E153415153424%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153413153420%_)))
               (_%E153414153438%_
                (lambda ()
                  (if (gx#stx-pair? _%e153413153420%_)
                      (let ((_%e153416153428%_
                             (gx#syntax-e _%e153413153420%_)))
                        (let ((_%hd153417153431%_ (##car _%e153416153428%_))
                              (_%tl153418153433%_ (##cdr _%e153416153428%_)))
                          (let ((_%body153436%_ _%tl153418153433%_))
                            (cons '%#define-alias _%body153436%_))))
                      (_%E153415153424%_)))))
          (_%E153414153438%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx153382%_)
        (let* ((_%e153383153390%_ _%stx153382%_)
               (_%E153385153394%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153383153390%_)))
               (_%E153384153408%_
                (lambda ()
                  (if (gx#stx-pair? _%e153383153390%_)
                      (let ((_%e153386153398%_
                             (gx#syntax-e _%e153383153390%_)))
                        (let ((_%hd153387153401%_ (##car _%e153386153398%_))
                              (_%tl153388153403%_ (##cdr _%e153386153398%_)))
                          (let ((_%body153406%_ _%tl153388153403%_))
                            (cons '%#define-runtime _%body153406%_))))
                      (_%E153385153394%_)))))
          (_%E153384153408%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx153352%_)
        (let* ((_%e153353153360%_ _%stx153352%_)
               (_%E153355153364%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153353153360%_)))
               (_%E153354153378%_
                (lambda ()
                  (if (gx#stx-pair? _%e153353153360%_)
                      (let ((_%e153356153368%_
                             (gx#syntax-e _%e153353153360%_)))
                        (let ((_%hd153357153371%_ (##car _%e153356153368%_))
                              (_%tl153358153373%_ (##cdr _%e153356153368%_)))
                          (let ((_%decls153376%_ _%tl153358153373%_))
                            (cons '%#declare _%decls153376%_))))
                      (_%E153355153364%_)))))
          (_%E153354153378%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx153322%_)
        (let* ((_%e153323153330%_ _%stx153322%_)
               (_%E153325153334%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153323153330%_)))
               (_%E153324153348%_
                (lambda ()
                  (if (gx#stx-pair? _%e153323153330%_)
                      (let ((_%e153326153338%_
                             (gx#syntax-e _%e153323153330%_)))
                        (let ((_%hd153327153341%_ (##car _%e153326153338%_))
                              (_%tl153328153343%_ (##cdr _%e153326153338%_)))
                          (let ((_%clause153346%_ _%tl153328153343%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause153346%_)))))
                      (_%E153325153334%_)))))
          (_%E153324153348%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx153279%_)
        (let* ((_%e153280153290%_ _%stx153279%_)
               (_%E153282153294%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153280153290%_)))
               (_%E153281153318%_
                (lambda ()
                  (if (gx#stx-pair? _%e153280153290%_)
                      (let ((_%e153283153298%_
                             (gx#syntax-e _%e153280153290%_)))
                        (let ((_%hd153284153301%_ (##car _%e153283153298%_))
                              (_%tl153285153303%_ (##cdr _%e153283153298%_)))
                          (let ((_%hd153306%_ _%hd153284153301%_))
                            (if (gx#stx-pair? _%tl153285153303%_)
                                (let ((_%e153286153308%_
                                       (gx#syntax-e _%tl153285153303%_)))
                                  (let ((_%hd153287153311%_
                                         (##car _%e153286153308%_))
                                        (_%tl153288153313%_
                                         (##cdr _%e153286153308%_)))
                                    (let ((_%body153316%_ _%hd153287153311%_))
                                      (if (gx#stx-null? _%tl153288153313%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd153306%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body153316%_)
                                                      '()))
                                          (_%E153282153294%_)))))
                                (_%E153282153294%_)))))
                      (_%E153282153294%_)))))
          (_%E153281153318%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx153249%_)
        (let* ((_%e153250153257%_ _%stx153249%_)
               (_%E153252153261%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153250153257%_)))
               (_%E153251153275%_
                (lambda ()
                  (if (gx#stx-pair? _%e153250153257%_)
                      (let ((_%e153253153265%_
                             (gx#syntax-e _%e153250153257%_)))
                        (let ((_%hd153254153268%_ (##car _%e153253153265%_))
                              (_%tl153255153270%_ (##cdr _%e153253153265%_)))
                          (let ((_%clauses153273%_ _%tl153255153270%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses153273%_)))))
                      (_%E153252153261%_)))))
          (_%E153251153275%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx153184%_ _%form153185%_)
        (let* ((_%e153186153199%_ _%stx153184%_)
               (_%E153188153203%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153186153199%_)))
               (_%E153187153235%_
                (lambda ()
                  (if (gx#stx-pair? _%e153186153199%_)
                      (let ((_%e153189153207%_
                             (gx#syntax-e _%e153186153199%_)))
                        (let ((_%hd153190153210%_ (##car _%e153189153207%_))
                              (_%tl153191153212%_ (##cdr _%e153189153207%_)))
                          (if (gx#stx-pair? _%tl153191153212%_)
                              (let ((_%e153192153215%_
                                     (gx#syntax-e _%tl153191153212%_)))
                                (let ((_%hd153193153218%_
                                       (##car _%e153192153215%_))
                                      (_%tl153194153220%_
                                       (##cdr _%e153192153215%_)))
                                  (let ((_%hd153223%_ _%hd153193153218%_))
                                    (if (gx#stx-pair? _%tl153194153220%_)
                                        (let ((_%e153195153225%_
                                               (gx#syntax-e
                                                _%tl153194153220%_)))
                                          (let ((_%hd153196153228%_
                                                 (##car _%e153195153225%_))
                                                (_%tl153197153230%_
                                                 (##cdr _%e153195153225%_)))
                                            (let ((_%body153233%_
                                                   _%hd153196153228%_))
                                              (if (gx#stx-null?
                                                   _%tl153197153230%_)
                                                  (cons _%form153185%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd153223%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body153233%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E153188153203%_)))))
                                        (_%E153188153203%_)))))
                              (_%E153188153203%_))))
                      (_%E153188153203%_)))))
          (_%E153187153235%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx153242%_)
        (let ((_%form153244%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx153242%_ _%form153244%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g154067_
        (let ((_g154068_ (##length _g154067_)))
          (cond ((##fx= _g154068_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g154067_))
                ((##fx= _g154068_ 2)
                 (apply gx#core-compile-top-let-values%__% _g154067_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g154067_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx153181%_)
        (gx#core-compile-top-let-values%__% _%stx153181%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx153179%_)
        (gx#core-compile-top-let-values%__% _%stx153179%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx153138%_)
        (let* ((_%e153139153149%_ _%stx153138%_)
               (_%E153141153153%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153139153149%_)))
               (_%E153140153175%_
                (lambda ()
                  (if (gx#stx-pair? _%e153139153149%_)
                      (let ((_%e153142153157%_
                             (gx#syntax-e _%e153139153149%_)))
                        (let ((_%hd153143153160%_ (##car _%e153142153157%_))
                              (_%tl153144153162%_ (##cdr _%e153142153157%_)))
                          (if (gx#stx-pair? _%tl153144153162%_)
                              (let ((_%e153145153165%_
                                     (gx#syntax-e _%tl153144153162%_)))
                                (let ((_%hd153146153168%_
                                       (##car _%e153145153165%_))
                                      (_%tl153147153170%_
                                       (##cdr _%e153145153165%_)))
                                  (let ((_%e153173%_ _%hd153146153168%_))
                                    (if (gx#stx-null? _%tl153147153170%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e153173%_)
                                                    '()))
                                        (_%E153141153153%_)))))
                              (_%E153141153153%_))))
                      (_%E153141153153%_)))))
          (_%E153140153175%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx153097%_)
        (let* ((_%e153098153108%_ _%stx153097%_)
               (_%E153100153112%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153098153108%_)))
               (_%E153099153134%_
                (lambda ()
                  (if (gx#stx-pair? _%e153098153108%_)
                      (let ((_%e153101153116%_
                             (gx#syntax-e _%e153098153108%_)))
                        (let ((_%hd153102153119%_ (##car _%e153101153116%_))
                              (_%tl153103153121%_ (##cdr _%e153101153116%_)))
                          (if (gx#stx-pair? _%tl153103153121%_)
                              (let ((_%e153104153124%_
                                     (gx#syntax-e _%tl153103153121%_)))
                                (let ((_%hd153105153127%_
                                       (##car _%e153104153124%_))
                                      (_%tl153106153129%_
                                       (##cdr _%e153104153124%_)))
                                  (let ((_%e153132%_ _%hd153105153127%_))
                                    (if (gx#stx-null? _%tl153106153129%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e153132%_)
                                                    '()))
                                        (_%E153100153112%_)))))
                              (_%E153100153112%_))))
                      (_%E153100153112%_)))))
          (_%E153099153134%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx153054%_)
        (let* ((_%e153055153065%_ _%stx153054%_)
               (_%E153057153069%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153055153065%_)))
               (_%E153056153093%_
                (lambda ()
                  (if (gx#stx-pair? _%e153055153065%_)
                      (let ((_%e153058153073%_
                             (gx#syntax-e _%e153055153065%_)))
                        (let ((_%hd153059153076%_ (##car _%e153058153073%_))
                              (_%tl153060153078%_ (##cdr _%e153058153073%_)))
                          (if (gx#stx-pair? _%tl153060153078%_)
                              (let ((_%e153061153081%_
                                     (gx#syntax-e _%tl153060153078%_)))
                                (let ((_%hd153062153084%_
                                       (##car _%e153061153081%_))
                                      (_%tl153063153086%_
                                       (##cdr _%e153061153081%_)))
                                  (let* ((_%rator153089%_ _%hd153062153084%_)
                                         (_%args153091%_ _%tl153063153086%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator153089%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args153091%_))))))
                              (_%E153057153069%_))))
                      (_%E153057153069%_)))))
          (_%E153056153093%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx152987%_)
        (let* ((_%e152988153004%_ _%stx152987%_)
               (_%E152990153008%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e152988153004%_)))
               (_%E152989153050%_
                (lambda ()
                  (if (gx#stx-pair? _%e152988153004%_)
                      (let ((_%e152991153012%_
                             (gx#syntax-e _%e152988153004%_)))
                        (let ((_%hd152992153015%_ (##car _%e152991153012%_))
                              (_%tl152993153017%_ (##cdr _%e152991153012%_)))
                          (if (gx#stx-pair? _%tl152993153017%_)
                              (let ((_%e152994153020%_
                                     (gx#syntax-e _%tl152993153017%_)))
                                (let ((_%hd152995153023%_
                                       (##car _%e152994153020%_))
                                      (_%tl152996153025%_
                                       (##cdr _%e152994153020%_)))
                                  (let ((_%test153028%_ _%hd152995153023%_))
                                    (if (gx#stx-pair? _%tl152996153025%_)
                                        (let ((_%e152997153030%_
                                               (gx#syntax-e
                                                _%tl152996153025%_)))
                                          (let ((_%hd152998153033%_
                                                 (##car _%e152997153030%_))
                                                (_%tl152999153035%_
                                                 (##cdr _%e152997153030%_)))
                                            (let ((_%K153038%_
                                                   _%hd152998153033%_))
                                              (if (gx#stx-pair?
                                                   _%tl152999153035%_)
                                                  (let ((_%e153000153040%_
                                                         (gx#syntax-e
                                                          _%tl152999153035%_)))
                                                    (let ((_%hd153001153043%_
                                                           (##car _%e153000153040%_))
                                                          (_%tl153002153045%_
                                                           (##cdr _%e153000153040%_)))
                                                      (let ((_%E153048%_
                                                             _%hd153001153043%_))
                                                        (if (gx#stx-null?
                                                             _%tl153002153045%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test153028%_)
                                (cons (gx#core-compile-top-syntax _%K153038%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E153048%_)
                                            '()))))
                    (_%E152990153008%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E152990153008%_)))))
                                        (_%E152990153008%_)))))
                              (_%E152990153008%_))))
                      (_%E152990153008%_)))))
          (_%E152989153050%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx152946%_)
        (let* ((_%e152947152957%_ _%stx152946%_)
               (_%E152949152961%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e152947152957%_)))
               (_%E152948152983%_
                (lambda ()
                  (if (gx#stx-pair? _%e152947152957%_)
                      (let ((_%e152950152965%_
                             (gx#syntax-e _%e152947152957%_)))
                        (let ((_%hd152951152968%_ (##car _%e152950152965%_))
                              (_%tl152952152970%_ (##cdr _%e152950152965%_)))
                          (if (gx#stx-pair? _%tl152952152970%_)
                              (let ((_%e152953152973%_
                                     (gx#syntax-e _%tl152952152970%_)))
                                (let ((_%hd152954152976%_
                                       (##car _%e152953152973%_))
                                      (_%tl152955152978%_
                                       (##cdr _%e152953152973%_)))
                                  (let ((_%id152981%_ _%hd152954152976%_))
                                    (if (gx#stx-null? _%tl152955152978%_)
                                        (if (gx#identifier? _%id152981%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id152981%_)
                                                        '()))
                                            (_%E152949152961%_))
                                        (_%E152949152961%_)))))
                              (_%E152949152961%_))))
                      (_%E152949152961%_)))))
          (_%E152948152983%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx152892%_)
        (let* ((_%e152893152906%_ _%stx152892%_)
               (_%E152895152910%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e152893152906%_)))
               (_%E152894152942%_
                (lambda ()
                  (if (gx#stx-pair? _%e152893152906%_)
                      (let ((_%e152896152914%_
                             (gx#syntax-e _%e152893152906%_)))
                        (let ((_%hd152897152917%_ (##car _%e152896152914%_))
                              (_%tl152898152919%_ (##cdr _%e152896152914%_)))
                          (if (gx#stx-pair? _%tl152898152919%_)
                              (let ((_%e152899152922%_
                                     (gx#syntax-e _%tl152898152919%_)))
                                (let ((_%hd152900152925%_
                                       (##car _%e152899152922%_))
                                      (_%tl152901152927%_
                                       (##cdr _%e152899152922%_)))
                                  (let ((_%id152930%_ _%hd152900152925%_))
                                    (if (gx#stx-pair? _%tl152901152927%_)
                                        (let ((_%e152902152932%_
                                               (gx#syntax-e
                                                _%tl152901152927%_)))
                                          (let ((_%hd152903152935%_
                                                 (##car _%e152902152932%_))
                                                (_%tl152904152937%_
                                                 (##cdr _%e152902152932%_)))
                                            (let ((_%expr152940%_
                                                   _%hd152903152935%_))
                                              (if (gx#stx-null?
                                                   _%tl152904152937%_)
                                                  (if (gx#identifier?
                                                       _%id152930%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id152930%_)
                          (cons (gx#core-compile-top-syntax _%expr152940%_)
                                '())))
              (_%E152895152910%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E152895152910%_)))))
                                        (_%E152895152910%_)))))
                              (_%E152895152910%_))))
                      (_%E152895152910%_)))))
          (_%E152894152942%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id152886%_)
        (let ((_%$e152888%_ (gx#resolve-identifier__0 _%id152886%_)))
          (if _%$e152888%_
              (##unchecked-structure-ref _%$e152888%_ '1 '#f '#f)
              _%id152886%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd152884%_)
        (if (gx#identifier? _%hd152884%_)
            (gx#core-compile-top-runtime-ref _%hd152884%_)
            '#f)))))
