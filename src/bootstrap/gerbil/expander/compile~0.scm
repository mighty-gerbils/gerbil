(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1770327921)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx154020%_)
        (let* ((_%e154021154028%_ _%stx154020%_)
               (_%E154023154032%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e154021154028%_)))
               (_%E154022154046%_
                (lambda ()
                  (if (gx#stx-pair? _%e154021154028%_)
                      (let ((_%e154024154036%_
                             (gx#syntax-e _%e154021154028%_)))
                        (let ((_%hd154025154039%_ (##car _%e154024154036%_))
                              (_%tl154026154041%_ (##cdr _%e154024154036%_)))
                          (let* ((_%form154044%_ _%hd154025154039%_)
                                 (__self154049
                                  (gx#syntax-local-e__0 _%form154044%_))
                                 (__method154050
                                  (__method-ref
                                   __self154049
                                   'compile-top-syntax)))
                            (if __method154050
                                (__method154050 __self154049 _%stx154020%_)
                                (begin
                                  (error '"Missing method"
                                         __self154049
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%E154023154032%_)))))
          (_%E154022154046%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self153969%_ _%stx153970%_)
        (let* ((_%self153973%_ _%self153969%_)
               (_%self153982153990%_ _%self153973%_)
               (_%E153984153993%_
                (lambda ()
                  (error '"No clause matching"
                         _%self153982153990%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K153985154006%_
                (lambda (_%K153996%_)
                  (let ((_%$e153998%_ (gx#stx-source _%stx153970%_)))
                    (if _%$e153998%_
                        ((lambda (_%g154000154002%_)
                           (gx#stx-wrap-source
                            (_%K153996%_ _%stx153970%_)
                            _%g154000154002%_))
                         _%$e153998%_)
                        (_%K153996%_ _%stx153970%_)))))
               (_%e153986154009%_
                (##unchecked-structure-ref _%self153982153990%_ '1 '#f '#f))
               (_%e153987154012%_
                (##unchecked-structure-ref _%self153982153990%_ '2 '#f '#f))
               (_%e153988154015%_
                (##unchecked-structure-ref _%self153982153990%_ '3 '#f '#f))
               (_%K154018%_ _%e153988154015%_))
          (_%K153985154006%_ _%K154018%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx153843%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx153843%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx153813%_)
        (let* ((_%e153814153821%_ _%stx153813%_)
               (_%E153816153825%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153814153821%_)))
               (_%E153815153839%_
                (lambda ()
                  (if (gx#stx-pair? _%e153814153821%_)
                      (let ((_%e153817153829%_
                             (gx#syntax-e _%e153814153821%_)))
                        (let ((_%hd153818153832%_ (##car _%e153817153829%_))
                              (_%tl153819153834%_ (##cdr _%e153817153829%_)))
                          (let ((_%body153837%_ _%tl153819153834%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body153837%_)))))
                      (_%E153816153825%_)))))
          (_%E153815153839%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx153782%_)
        (let* ((_%e153783153790%_ _%stx153782%_)
               (_%E153785153794%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153783153790%_)))
               (_%E153784153809%_
                (lambda ()
                  (if (gx#stx-pair? _%e153783153790%_)
                      (let ((_%e153786153798%_
                             (gx#syntax-e _%e153783153790%_)))
                        (let ((_%hd153787153801%_ (##car _%e153786153798%_))
                              (_%tl153788153803%_ (##cdr _%e153786153798%_)))
                          (let ((_%body153806%_ _%tl153788153803%_))
                            (cons '%#begin-syntax
                                  (call-with-parameters__1
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body153806%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%E153785153794%_)))))
          (_%E153784153809%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx153752%_)
        (let* ((_%e153753153760%_ _%stx153752%_)
               (_%E153755153764%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153753153760%_)))
               (_%E153754153778%_
                (lambda ()
                  (if (gx#stx-pair? _%e153753153760%_)
                      (let ((_%e153756153768%_
                             (gx#syntax-e _%e153753153760%_)))
                        (let ((_%hd153757153771%_ (##car _%e153756153768%_))
                              (_%tl153758153773%_ (##cdr _%e153756153768%_)))
                          (let ((_%body153776%_ _%tl153758153773%_))
                            (cons '%#begin-foreign _%body153776%_))))
                      (_%E153755153764%_)))))
          (_%E153754153778%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx153698%_)
        (let* ((_%e153699153712%_ _%stx153698%_)
               (_%E153701153716%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153699153712%_)))
               (_%E153700153748%_
                (lambda ()
                  (if (gx#stx-pair? _%e153699153712%_)
                      (let ((_%e153702153720%_
                             (gx#syntax-e _%e153699153712%_)))
                        (let ((_%hd153703153723%_ (##car _%e153702153720%_))
                              (_%tl153704153725%_ (##cdr _%e153702153720%_)))
                          (if (gx#stx-pair? _%tl153704153725%_)
                              (let ((_%e153705153728%_
                                     (gx#syntax-e _%tl153704153725%_)))
                                (let ((_%hd153706153731%_
                                       (##car _%e153705153728%_))
                                      (_%tl153707153733%_
                                       (##cdr _%e153705153728%_)))
                                  (let ((_%ann153736%_ _%hd153706153731%_))
                                    (if (gx#stx-pair? _%tl153707153733%_)
                                        (let ((_%e153708153738%_
                                               (gx#syntax-e
                                                _%tl153707153733%_)))
                                          (let ((_%hd153709153741%_
                                                 (##car _%e153708153738%_))
                                                (_%tl153710153743%_
                                                 (##cdr _%e153708153738%_)))
                                            (let ((_%expr153746%_
                                                   _%hd153709153741%_))
                                              (if (gx#stx-null?
                                                   _%tl153710153743%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr153746%_)
                                                  (_%E153701153716%_)))))
                                        (_%E153701153716%_)))))
                              (_%E153701153716%_))))
                      (_%E153701153716%_)))))
          (_%E153700153748%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx153668%_)
        (let* ((_%e153669153676%_ _%stx153668%_)
               (_%E153671153680%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153669153676%_)))
               (_%E153670153694%_
                (lambda ()
                  (if (gx#stx-pair? _%e153669153676%_)
                      (let ((_%e153672153684%_
                             (gx#syntax-e _%e153669153676%_)))
                        (let ((_%hd153673153687%_ (##car _%e153672153684%_))
                              (_%tl153674153689%_ (##cdr _%e153672153684%_)))
                          (let ((_%body153692%_ _%tl153674153689%_))
                            (cons '%#import _%body153692%_))))
                      (_%E153671153680%_)))))
          (_%E153670153694%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx153625%_)
        (let* ((_%e153626153636%_ _%stx153625%_)
               (_%E153628153640%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153626153636%_)))
               (_%E153627153664%_
                (lambda ()
                  (if (gx#stx-pair? _%e153626153636%_)
                      (let ((_%e153629153644%_
                             (gx#syntax-e _%e153626153636%_)))
                        (let ((_%hd153630153647%_ (##car _%e153629153644%_))
                              (_%tl153631153649%_ (##cdr _%e153629153644%_)))
                          (if (gx#stx-pair? _%tl153631153649%_)
                              (let ((_%e153632153652%_
                                     (gx#syntax-e _%tl153631153649%_)))
                                (let ((_%hd153633153655%_
                                       (##car _%e153632153652%_))
                                      (_%tl153634153657%_
                                       (##cdr _%e153632153652%_)))
                                  (let* ((_%hd153660%_ _%hd153633153655%_)
                                         (_%body153662%_ _%tl153634153657%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd153660%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body153662%_))))))
                              (_%E153628153640%_))))
                      (_%E153628153640%_)))))
          (_%E153627153664%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx153595%_)
        (let* ((_%e153596153603%_ _%stx153595%_)
               (_%E153598153607%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153596153603%_)))
               (_%E153597153621%_
                (lambda ()
                  (if (gx#stx-pair? _%e153596153603%_)
                      (let ((_%e153599153611%_
                             (gx#syntax-e _%e153596153603%_)))
                        (let ((_%hd153600153614%_ (##car _%e153599153611%_))
                              (_%tl153601153616%_ (##cdr _%e153599153611%_)))
                          (let ((_%body153619%_ _%tl153601153616%_))
                            (cons '%#export _%body153619%_))))
                      (_%E153598153607%_)))))
          (_%E153597153621%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx153565%_)
        (let* ((_%e153566153573%_ _%stx153565%_)
               (_%E153568153577%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153566153573%_)))
               (_%E153567153591%_
                (lambda ()
                  (if (gx#stx-pair? _%e153566153573%_)
                      (let ((_%e153569153581%_
                             (gx#syntax-e _%e153566153573%_)))
                        (let ((_%hd153570153584%_ (##car _%e153569153581%_))
                              (_%tl153571153586%_ (##cdr _%e153569153581%_)))
                          (let ((_%body153589%_ _%tl153571153586%_))
                            (cons '%#provide _%body153589%_))))
                      (_%E153568153577%_)))))
          (_%E153567153591%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx153535%_)
        (let* ((_%e153536153543%_ _%stx153535%_)
               (_%E153538153547%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153536153543%_)))
               (_%E153537153561%_
                (lambda ()
                  (if (gx#stx-pair? _%e153536153543%_)
                      (let ((_%e153539153551%_
                             (gx#syntax-e _%e153536153543%_)))
                        (let ((_%hd153540153554%_ (##car _%e153539153551%_))
                              (_%tl153541153556%_ (##cdr _%e153539153551%_)))
                          (let ((_%body153559%_ _%tl153541153556%_))
                            (cons '%#extern _%body153559%_))))
                      (_%E153538153547%_)))))
          (_%E153537153561%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx153481%_)
        (let* ((_%e153482153495%_ _%stx153481%_)
               (_%E153484153499%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153482153495%_)))
               (_%E153483153531%_
                (lambda ()
                  (if (gx#stx-pair? _%e153482153495%_)
                      (let ((_%e153485153503%_
                             (gx#syntax-e _%e153482153495%_)))
                        (let ((_%hd153486153506%_ (##car _%e153485153503%_))
                              (_%tl153487153508%_ (##cdr _%e153485153503%_)))
                          (if (gx#stx-pair? _%tl153487153508%_)
                              (let ((_%e153488153511%_
                                     (gx#syntax-e _%tl153487153508%_)))
                                (let ((_%hd153489153514%_
                                       (##car _%e153488153511%_))
                                      (_%tl153490153516%_
                                       (##cdr _%e153488153511%_)))
                                  (let ((_%hd153519%_ _%hd153489153514%_))
                                    (if (gx#stx-pair? _%tl153490153516%_)
                                        (let ((_%e153491153521%_
                                               (gx#syntax-e
                                                _%tl153490153516%_)))
                                          (let ((_%hd153492153524%_
                                                 (##car _%e153491153521%_))
                                                (_%tl153493153526%_
                                                 (##cdr _%e153491153521%_)))
                                            (let ((_%expr153529%_
                                                   _%hd153492153524%_))
                                              (if (gx#stx-null?
                                                   _%tl153493153526%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd153519%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr153529%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E153484153499%_)))))
                                        (_%E153484153499%_)))))
                              (_%E153484153499%_))))
                      (_%E153484153499%_)))))
          (_%E153483153531%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx153426%_)
        (let* ((_%e153427153440%_ _%stx153426%_)
               (_%E153429153444%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153427153440%_)))
               (_%E153428153477%_
                (lambda ()
                  (if (gx#stx-pair? _%e153427153440%_)
                      (let ((_%e153430153448%_
                             (gx#syntax-e _%e153427153440%_)))
                        (let ((_%hd153431153451%_ (##car _%e153430153448%_))
                              (_%tl153432153453%_ (##cdr _%e153430153448%_)))
                          (if (gx#stx-pair? _%tl153432153453%_)
                              (let ((_%e153433153456%_
                                     (gx#syntax-e _%tl153432153453%_)))
                                (let ((_%hd153434153459%_
                                       (##car _%e153433153456%_))
                                      (_%tl153435153461%_
                                       (##cdr _%e153433153456%_)))
                                  (let ((_%hd153464%_ _%hd153434153459%_))
                                    (if (gx#stx-pair? _%tl153435153461%_)
                                        (let ((_%e153436153466%_
                                               (gx#syntax-e
                                                _%tl153435153461%_)))
                                          (let ((_%hd153437153469%_
                                                 (##car _%e153436153466%_))
                                                (_%tl153438153471%_
                                                 (##cdr _%e153436153466%_)))
                                            (let ((_%expr153474%_
                                                   _%hd153437153469%_))
                                              (if (gx#stx-null?
                                                   _%tl153438153471%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd153464%_
                                                              (cons (call-with-parameters__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr153474%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E153429153444%_)))))
                                        (_%E153429153444%_)))))
                              (_%E153429153444%_))))
                      (_%E153429153444%_)))))
          (_%E153428153477%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx153396%_)
        (let* ((_%e153397153404%_ _%stx153396%_)
               (_%E153399153408%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153397153404%_)))
               (_%E153398153422%_
                (lambda ()
                  (if (gx#stx-pair? _%e153397153404%_)
                      (let ((_%e153400153412%_
                             (gx#syntax-e _%e153397153404%_)))
                        (let ((_%hd153401153415%_ (##car _%e153400153412%_))
                              (_%tl153402153417%_ (##cdr _%e153400153412%_)))
                          (let ((_%body153420%_ _%tl153402153417%_))
                            (cons '%#define-alias _%body153420%_))))
                      (_%E153399153408%_)))))
          (_%E153398153422%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx153366%_)
        (let* ((_%e153367153374%_ _%stx153366%_)
               (_%E153369153378%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153367153374%_)))
               (_%E153368153392%_
                (lambda ()
                  (if (gx#stx-pair? _%e153367153374%_)
                      (let ((_%e153370153382%_
                             (gx#syntax-e _%e153367153374%_)))
                        (let ((_%hd153371153385%_ (##car _%e153370153382%_))
                              (_%tl153372153387%_ (##cdr _%e153370153382%_)))
                          (let ((_%body153390%_ _%tl153372153387%_))
                            (cons '%#define-runtime _%body153390%_))))
                      (_%E153369153378%_)))))
          (_%E153368153392%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx153336%_)
        (let* ((_%e153337153344%_ _%stx153336%_)
               (_%E153339153348%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153337153344%_)))
               (_%E153338153362%_
                (lambda ()
                  (if (gx#stx-pair? _%e153337153344%_)
                      (let ((_%e153340153352%_
                             (gx#syntax-e _%e153337153344%_)))
                        (let ((_%hd153341153355%_ (##car _%e153340153352%_))
                              (_%tl153342153357%_ (##cdr _%e153340153352%_)))
                          (let ((_%decls153360%_ _%tl153342153357%_))
                            (cons '%#declare _%decls153360%_))))
                      (_%E153339153348%_)))))
          (_%E153338153362%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx153306%_)
        (let* ((_%e153307153314%_ _%stx153306%_)
               (_%E153309153318%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153307153314%_)))
               (_%E153308153332%_
                (lambda ()
                  (if (gx#stx-pair? _%e153307153314%_)
                      (let ((_%e153310153322%_
                             (gx#syntax-e _%e153307153314%_)))
                        (let ((_%hd153311153325%_ (##car _%e153310153322%_))
                              (_%tl153312153327%_ (##cdr _%e153310153322%_)))
                          (let ((_%clause153330%_ _%tl153312153327%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause153330%_)))))
                      (_%E153309153318%_)))))
          (_%E153308153332%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx153263%_)
        (let* ((_%e153264153274%_ _%stx153263%_)
               (_%E153266153278%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153264153274%_)))
               (_%E153265153302%_
                (lambda ()
                  (if (gx#stx-pair? _%e153264153274%_)
                      (let ((_%e153267153282%_
                             (gx#syntax-e _%e153264153274%_)))
                        (let ((_%hd153268153285%_ (##car _%e153267153282%_))
                              (_%tl153269153287%_ (##cdr _%e153267153282%_)))
                          (let ((_%hd153290%_ _%hd153268153285%_))
                            (if (gx#stx-pair? _%tl153269153287%_)
                                (let ((_%e153270153292%_
                                       (gx#syntax-e _%tl153269153287%_)))
                                  (let ((_%hd153271153295%_
                                         (##car _%e153270153292%_))
                                        (_%tl153272153297%_
                                         (##cdr _%e153270153292%_)))
                                    (let ((_%body153300%_ _%hd153271153295%_))
                                      (if (gx#stx-null? _%tl153272153297%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd153290%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body153300%_)
                                                      '()))
                                          (_%E153266153278%_)))))
                                (_%E153266153278%_)))))
                      (_%E153266153278%_)))))
          (_%E153265153302%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx153233%_)
        (let* ((_%e153234153241%_ _%stx153233%_)
               (_%E153236153245%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153234153241%_)))
               (_%E153235153259%_
                (lambda ()
                  (if (gx#stx-pair? _%e153234153241%_)
                      (let ((_%e153237153249%_
                             (gx#syntax-e _%e153234153241%_)))
                        (let ((_%hd153238153252%_ (##car _%e153237153249%_))
                              (_%tl153239153254%_ (##cdr _%e153237153249%_)))
                          (let ((_%clauses153257%_ _%tl153239153254%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses153257%_)))))
                      (_%E153236153245%_)))))
          (_%E153235153259%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx153168%_ _%form153169%_)
        (let* ((_%e153170153183%_ _%stx153168%_)
               (_%E153172153187%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153170153183%_)))
               (_%E153171153219%_
                (lambda ()
                  (if (gx#stx-pair? _%e153170153183%_)
                      (let ((_%e153173153191%_
                             (gx#syntax-e _%e153170153183%_)))
                        (let ((_%hd153174153194%_ (##car _%e153173153191%_))
                              (_%tl153175153196%_ (##cdr _%e153173153191%_)))
                          (if (gx#stx-pair? _%tl153175153196%_)
                              (let ((_%e153176153199%_
                                     (gx#syntax-e _%tl153175153196%_)))
                                (let ((_%hd153177153202%_
                                       (##car _%e153176153199%_))
                                      (_%tl153178153204%_
                                       (##cdr _%e153176153199%_)))
                                  (let ((_%hd153207%_ _%hd153177153202%_))
                                    (if (gx#stx-pair? _%tl153178153204%_)
                                        (let ((_%e153179153209%_
                                               (gx#syntax-e
                                                _%tl153178153204%_)))
                                          (let ((_%hd153180153212%_
                                                 (##car _%e153179153209%_))
                                                (_%tl153181153214%_
                                                 (##cdr _%e153179153209%_)))
                                            (let ((_%body153217%_
                                                   _%hd153180153212%_))
                                              (if (gx#stx-null?
                                                   _%tl153181153214%_)
                                                  (cons _%form153169%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd153207%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body153217%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E153172153187%_)))))
                                        (_%E153172153187%_)))))
                              (_%E153172153187%_))))
                      (_%E153172153187%_)))))
          (_%E153171153219%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx153226%_)
        (let ((_%form153228%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx153226%_ _%form153228%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g154051_
        (let ((_g154052_ (##length _g154051_)))
          (cond ((##fx= _g154052_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g154051_))
                ((##fx= _g154052_ 2)
                 (apply gx#core-compile-top-let-values%__% _g154051_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g154051_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx153165%_)
        (gx#core-compile-top-let-values%__% _%stx153165%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx153163%_)
        (gx#core-compile-top-let-values%__% _%stx153163%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx153122%_)
        (let* ((_%e153123153133%_ _%stx153122%_)
               (_%E153125153137%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153123153133%_)))
               (_%E153124153159%_
                (lambda ()
                  (if (gx#stx-pair? _%e153123153133%_)
                      (let ((_%e153126153141%_
                             (gx#syntax-e _%e153123153133%_)))
                        (let ((_%hd153127153144%_ (##car _%e153126153141%_))
                              (_%tl153128153146%_ (##cdr _%e153126153141%_)))
                          (if (gx#stx-pair? _%tl153128153146%_)
                              (let ((_%e153129153149%_
                                     (gx#syntax-e _%tl153128153146%_)))
                                (let ((_%hd153130153152%_
                                       (##car _%e153129153149%_))
                                      (_%tl153131153154%_
                                       (##cdr _%e153129153149%_)))
                                  (let ((_%e153157%_ _%hd153130153152%_))
                                    (if (gx#stx-null? _%tl153131153154%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e153157%_)
                                                    '()))
                                        (_%E153125153137%_)))))
                              (_%E153125153137%_))))
                      (_%E153125153137%_)))))
          (_%E153124153159%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx153081%_)
        (let* ((_%e153082153092%_ _%stx153081%_)
               (_%E153084153096%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153082153092%_)))
               (_%E153083153118%_
                (lambda ()
                  (if (gx#stx-pair? _%e153082153092%_)
                      (let ((_%e153085153100%_
                             (gx#syntax-e _%e153082153092%_)))
                        (let ((_%hd153086153103%_ (##car _%e153085153100%_))
                              (_%tl153087153105%_ (##cdr _%e153085153100%_)))
                          (if (gx#stx-pair? _%tl153087153105%_)
                              (let ((_%e153088153108%_
                                     (gx#syntax-e _%tl153087153105%_)))
                                (let ((_%hd153089153111%_
                                       (##car _%e153088153108%_))
                                      (_%tl153090153113%_
                                       (##cdr _%e153088153108%_)))
                                  (let ((_%e153116%_ _%hd153089153111%_))
                                    (if (gx#stx-null? _%tl153090153113%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e153116%_)
                                                    '()))
                                        (_%E153084153096%_)))))
                              (_%E153084153096%_))))
                      (_%E153084153096%_)))))
          (_%E153083153118%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx153038%_)
        (let* ((_%e153039153049%_ _%stx153038%_)
               (_%E153041153053%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153039153049%_)))
               (_%E153040153077%_
                (lambda ()
                  (if (gx#stx-pair? _%e153039153049%_)
                      (let ((_%e153042153057%_
                             (gx#syntax-e _%e153039153049%_)))
                        (let ((_%hd153043153060%_ (##car _%e153042153057%_))
                              (_%tl153044153062%_ (##cdr _%e153042153057%_)))
                          (if (gx#stx-pair? _%tl153044153062%_)
                              (let ((_%e153045153065%_
                                     (gx#syntax-e _%tl153044153062%_)))
                                (let ((_%hd153046153068%_
                                       (##car _%e153045153065%_))
                                      (_%tl153047153070%_
                                       (##cdr _%e153045153065%_)))
                                  (let* ((_%rator153073%_ _%hd153046153068%_)
                                         (_%args153075%_ _%tl153047153070%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator153073%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args153075%_))))))
                              (_%E153041153053%_))))
                      (_%E153041153053%_)))))
          (_%E153040153077%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx152971%_)
        (let* ((_%e152972152988%_ _%stx152971%_)
               (_%E152974152992%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e152972152988%_)))
               (_%E152973153034%_
                (lambda ()
                  (if (gx#stx-pair? _%e152972152988%_)
                      (let ((_%e152975152996%_
                             (gx#syntax-e _%e152972152988%_)))
                        (let ((_%hd152976152999%_ (##car _%e152975152996%_))
                              (_%tl152977153001%_ (##cdr _%e152975152996%_)))
                          (if (gx#stx-pair? _%tl152977153001%_)
                              (let ((_%e152978153004%_
                                     (gx#syntax-e _%tl152977153001%_)))
                                (let ((_%hd152979153007%_
                                       (##car _%e152978153004%_))
                                      (_%tl152980153009%_
                                       (##cdr _%e152978153004%_)))
                                  (let ((_%test153012%_ _%hd152979153007%_))
                                    (if (gx#stx-pair? _%tl152980153009%_)
                                        (let ((_%e152981153014%_
                                               (gx#syntax-e
                                                _%tl152980153009%_)))
                                          (let ((_%hd152982153017%_
                                                 (##car _%e152981153014%_))
                                                (_%tl152983153019%_
                                                 (##cdr _%e152981153014%_)))
                                            (let ((_%K153022%_
                                                   _%hd152982153017%_))
                                              (if (gx#stx-pair?
                                                   _%tl152983153019%_)
                                                  (let ((_%e152984153024%_
                                                         (gx#syntax-e
                                                          _%tl152983153019%_)))
                                                    (let ((_%hd152985153027%_
                                                           (##car _%e152984153024%_))
                                                          (_%tl152986153029%_
                                                           (##cdr _%e152984153024%_)))
                                                      (let ((_%E153032%_
                                                             _%hd152985153027%_))
                                                        (if (gx#stx-null?
                                                             _%tl152986153029%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test153012%_)
                                (cons (gx#core-compile-top-syntax _%K153022%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E153032%_)
                                            '()))))
                    (_%E152974152992%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E152974152992%_)))))
                                        (_%E152974152992%_)))))
                              (_%E152974152992%_))))
                      (_%E152974152992%_)))))
          (_%E152973153034%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx152930%_)
        (let* ((_%e152931152941%_ _%stx152930%_)
               (_%E152933152945%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e152931152941%_)))
               (_%E152932152967%_
                (lambda ()
                  (if (gx#stx-pair? _%e152931152941%_)
                      (let ((_%e152934152949%_
                             (gx#syntax-e _%e152931152941%_)))
                        (let ((_%hd152935152952%_ (##car _%e152934152949%_))
                              (_%tl152936152954%_ (##cdr _%e152934152949%_)))
                          (if (gx#stx-pair? _%tl152936152954%_)
                              (let ((_%e152937152957%_
                                     (gx#syntax-e _%tl152936152954%_)))
                                (let ((_%hd152938152960%_
                                       (##car _%e152937152957%_))
                                      (_%tl152939152962%_
                                       (##cdr _%e152937152957%_)))
                                  (let ((_%id152965%_ _%hd152938152960%_))
                                    (if (gx#stx-null? _%tl152939152962%_)
                                        (if (gx#identifier? _%id152965%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id152965%_)
                                                        '()))
                                            (_%E152933152945%_))
                                        (_%E152933152945%_)))))
                              (_%E152933152945%_))))
                      (_%E152933152945%_)))))
          (_%E152932152967%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx152876%_)
        (let* ((_%e152877152890%_ _%stx152876%_)
               (_%E152879152894%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e152877152890%_)))
               (_%E152878152926%_
                (lambda ()
                  (if (gx#stx-pair? _%e152877152890%_)
                      (let ((_%e152880152898%_
                             (gx#syntax-e _%e152877152890%_)))
                        (let ((_%hd152881152901%_ (##car _%e152880152898%_))
                              (_%tl152882152903%_ (##cdr _%e152880152898%_)))
                          (if (gx#stx-pair? _%tl152882152903%_)
                              (let ((_%e152883152906%_
                                     (gx#syntax-e _%tl152882152903%_)))
                                (let ((_%hd152884152909%_
                                       (##car _%e152883152906%_))
                                      (_%tl152885152911%_
                                       (##cdr _%e152883152906%_)))
                                  (let ((_%id152914%_ _%hd152884152909%_))
                                    (if (gx#stx-pair? _%tl152885152911%_)
                                        (let ((_%e152886152916%_
                                               (gx#syntax-e
                                                _%tl152885152911%_)))
                                          (let ((_%hd152887152919%_
                                                 (##car _%e152886152916%_))
                                                (_%tl152888152921%_
                                                 (##cdr _%e152886152916%_)))
                                            (let ((_%expr152924%_
                                                   _%hd152887152919%_))
                                              (if (gx#stx-null?
                                                   _%tl152888152921%_)
                                                  (if (gx#identifier?
                                                       _%id152914%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id152914%_)
                          (cons (gx#core-compile-top-syntax _%expr152924%_)
                                '())))
              (_%E152879152894%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E152879152894%_)))))
                                        (_%E152879152894%_)))))
                              (_%E152879152894%_))))
                      (_%E152879152894%_)))))
          (_%E152878152926%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id152870%_)
        (let ((_%$e152872%_ (gx#resolve-identifier__0 _%id152870%_)))
          (if _%$e152872%_
              (##unchecked-structure-ref _%$e152872%_ '1 '#f '#f)
              _%id152870%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd152868%_)
        (if (gx#identifier? _%hd152868%_)
            (gx#core-compile-top-runtime-ref _%hd152868%_)
            '#f)))))
