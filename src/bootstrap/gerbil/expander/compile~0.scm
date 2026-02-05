(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1770313936)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx154064%_)
        (let* ((_%e154065154072%_ _%stx154064%_)
               (_%E154067154076%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e154065154072%_)))
               (_%E154066154090%_
                (lambda ()
                  (if (gx#stx-pair? _%e154065154072%_)
                      (let ((_%e154068154080%_
                             (gx#syntax-e _%e154065154072%_)))
                        (let ((_%hd154069154083%_ (##car _%e154068154080%_))
                              (_%tl154070154085%_ (##cdr _%e154068154080%_)))
                          (let* ((_%form154088%_ _%hd154069154083%_)
                                 (__self154093
                                  (gx#syntax-local-e__0 _%form154088%_))
                                 (__method154094
                                  (__method-ref
                                   __self154093
                                   'compile-top-syntax)))
                            (if __method154094
                                (__method154094 __self154093 _%stx154064%_)
                                (begin
                                  (error '"Missing method"
                                         __self154093
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%E154067154076%_)))))
          (_%E154066154090%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self154013%_ _%stx154014%_)
        (let* ((_%self154017%_ _%self154013%_)
               (_%self154026154034%_ _%self154017%_)
               (_%E154028154037%_
                (lambda ()
                  (error '"No clause matching"
                         _%self154026154034%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K154029154050%_
                (lambda (_%K154040%_)
                  (let ((_%$e154042%_ (gx#stx-source _%stx154014%_)))
                    (if _%$e154042%_
                        ((lambda (_%g154044154046%_)
                           (gx#stx-wrap-source
                            (_%K154040%_ _%stx154014%_)
                            _%g154044154046%_))
                         _%$e154042%_)
                        (_%K154040%_ _%stx154014%_)))))
               (_%e154030154053%_
                (##unchecked-structure-ref _%self154026154034%_ '1 '#f '#f))
               (_%e154031154056%_
                (##unchecked-structure-ref _%self154026154034%_ '2 '#f '#f))
               (_%e154032154059%_
                (##unchecked-structure-ref _%self154026154034%_ '3 '#f '#f))
               (_%K154062%_ _%e154032154059%_))
          (_%K154029154050%_ _%K154062%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx153887%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx153887%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx153857%_)
        (let* ((_%e153858153865%_ _%stx153857%_)
               (_%E153860153869%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153858153865%_)))
               (_%E153859153883%_
                (lambda ()
                  (if (gx#stx-pair? _%e153858153865%_)
                      (let ((_%e153861153873%_
                             (gx#syntax-e _%e153858153865%_)))
                        (let ((_%hd153862153876%_ (##car _%e153861153873%_))
                              (_%tl153863153878%_ (##cdr _%e153861153873%_)))
                          (let ((_%body153881%_ _%tl153863153878%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body153881%_)))))
                      (_%E153860153869%_)))))
          (_%E153859153883%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx153826%_)
        (let* ((_%e153827153834%_ _%stx153826%_)
               (_%E153829153838%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153827153834%_)))
               (_%E153828153853%_
                (lambda ()
                  (if (gx#stx-pair? _%e153827153834%_)
                      (let ((_%e153830153842%_
                             (gx#syntax-e _%e153827153834%_)))
                        (let ((_%hd153831153845%_ (##car _%e153830153842%_))
                              (_%tl153832153847%_ (##cdr _%e153830153842%_)))
                          (let ((_%body153850%_ _%tl153832153847%_))
                            (cons '%#begin-syntax
                                  (call-with-parameters__1
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body153850%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%E153829153838%_)))))
          (_%E153828153853%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx153796%_)
        (let* ((_%e153797153804%_ _%stx153796%_)
               (_%E153799153808%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153797153804%_)))
               (_%E153798153822%_
                (lambda ()
                  (if (gx#stx-pair? _%e153797153804%_)
                      (let ((_%e153800153812%_
                             (gx#syntax-e _%e153797153804%_)))
                        (let ((_%hd153801153815%_ (##car _%e153800153812%_))
                              (_%tl153802153817%_ (##cdr _%e153800153812%_)))
                          (let ((_%body153820%_ _%tl153802153817%_))
                            (cons '%#begin-foreign _%body153820%_))))
                      (_%E153799153808%_)))))
          (_%E153798153822%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx153742%_)
        (let* ((_%e153743153756%_ _%stx153742%_)
               (_%E153745153760%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153743153756%_)))
               (_%E153744153792%_
                (lambda ()
                  (if (gx#stx-pair? _%e153743153756%_)
                      (let ((_%e153746153764%_
                             (gx#syntax-e _%e153743153756%_)))
                        (let ((_%hd153747153767%_ (##car _%e153746153764%_))
                              (_%tl153748153769%_ (##cdr _%e153746153764%_)))
                          (if (gx#stx-pair? _%tl153748153769%_)
                              (let ((_%e153749153772%_
                                     (gx#syntax-e _%tl153748153769%_)))
                                (let ((_%hd153750153775%_
                                       (##car _%e153749153772%_))
                                      (_%tl153751153777%_
                                       (##cdr _%e153749153772%_)))
                                  (let ((_%ann153780%_ _%hd153750153775%_))
                                    (if (gx#stx-pair? _%tl153751153777%_)
                                        (let ((_%e153752153782%_
                                               (gx#syntax-e
                                                _%tl153751153777%_)))
                                          (let ((_%hd153753153785%_
                                                 (##car _%e153752153782%_))
                                                (_%tl153754153787%_
                                                 (##cdr _%e153752153782%_)))
                                            (let ((_%expr153790%_
                                                   _%hd153753153785%_))
                                              (if (gx#stx-null?
                                                   _%tl153754153787%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr153790%_)
                                                  (_%E153745153760%_)))))
                                        (_%E153745153760%_)))))
                              (_%E153745153760%_))))
                      (_%E153745153760%_)))))
          (_%E153744153792%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx153712%_)
        (let* ((_%e153713153720%_ _%stx153712%_)
               (_%E153715153724%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153713153720%_)))
               (_%E153714153738%_
                (lambda ()
                  (if (gx#stx-pair? _%e153713153720%_)
                      (let ((_%e153716153728%_
                             (gx#syntax-e _%e153713153720%_)))
                        (let ((_%hd153717153731%_ (##car _%e153716153728%_))
                              (_%tl153718153733%_ (##cdr _%e153716153728%_)))
                          (let ((_%body153736%_ _%tl153718153733%_))
                            (cons '%#import _%body153736%_))))
                      (_%E153715153724%_)))))
          (_%E153714153738%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx153669%_)
        (let* ((_%e153670153680%_ _%stx153669%_)
               (_%E153672153684%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153670153680%_)))
               (_%E153671153708%_
                (lambda ()
                  (if (gx#stx-pair? _%e153670153680%_)
                      (let ((_%e153673153688%_
                             (gx#syntax-e _%e153670153680%_)))
                        (let ((_%hd153674153691%_ (##car _%e153673153688%_))
                              (_%tl153675153693%_ (##cdr _%e153673153688%_)))
                          (if (gx#stx-pair? _%tl153675153693%_)
                              (let ((_%e153676153696%_
                                     (gx#syntax-e _%tl153675153693%_)))
                                (let ((_%hd153677153699%_
                                       (##car _%e153676153696%_))
                                      (_%tl153678153701%_
                                       (##cdr _%e153676153696%_)))
                                  (let* ((_%hd153704%_ _%hd153677153699%_)
                                         (_%body153706%_ _%tl153678153701%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd153704%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body153706%_))))))
                              (_%E153672153684%_))))
                      (_%E153672153684%_)))))
          (_%E153671153708%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx153639%_)
        (let* ((_%e153640153647%_ _%stx153639%_)
               (_%E153642153651%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153640153647%_)))
               (_%E153641153665%_
                (lambda ()
                  (if (gx#stx-pair? _%e153640153647%_)
                      (let ((_%e153643153655%_
                             (gx#syntax-e _%e153640153647%_)))
                        (let ((_%hd153644153658%_ (##car _%e153643153655%_))
                              (_%tl153645153660%_ (##cdr _%e153643153655%_)))
                          (let ((_%body153663%_ _%tl153645153660%_))
                            (cons '%#export _%body153663%_))))
                      (_%E153642153651%_)))))
          (_%E153641153665%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx153609%_)
        (let* ((_%e153610153617%_ _%stx153609%_)
               (_%E153612153621%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153610153617%_)))
               (_%E153611153635%_
                (lambda ()
                  (if (gx#stx-pair? _%e153610153617%_)
                      (let ((_%e153613153625%_
                             (gx#syntax-e _%e153610153617%_)))
                        (let ((_%hd153614153628%_ (##car _%e153613153625%_))
                              (_%tl153615153630%_ (##cdr _%e153613153625%_)))
                          (let ((_%body153633%_ _%tl153615153630%_))
                            (cons '%#provide _%body153633%_))))
                      (_%E153612153621%_)))))
          (_%E153611153635%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx153579%_)
        (let* ((_%e153580153587%_ _%stx153579%_)
               (_%E153582153591%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153580153587%_)))
               (_%E153581153605%_
                (lambda ()
                  (if (gx#stx-pair? _%e153580153587%_)
                      (let ((_%e153583153595%_
                             (gx#syntax-e _%e153580153587%_)))
                        (let ((_%hd153584153598%_ (##car _%e153583153595%_))
                              (_%tl153585153600%_ (##cdr _%e153583153595%_)))
                          (let ((_%body153603%_ _%tl153585153600%_))
                            (cons '%#extern _%body153603%_))))
                      (_%E153582153591%_)))))
          (_%E153581153605%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx153525%_)
        (let* ((_%e153526153539%_ _%stx153525%_)
               (_%E153528153543%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153526153539%_)))
               (_%E153527153575%_
                (lambda ()
                  (if (gx#stx-pair? _%e153526153539%_)
                      (let ((_%e153529153547%_
                             (gx#syntax-e _%e153526153539%_)))
                        (let ((_%hd153530153550%_ (##car _%e153529153547%_))
                              (_%tl153531153552%_ (##cdr _%e153529153547%_)))
                          (if (gx#stx-pair? _%tl153531153552%_)
                              (let ((_%e153532153555%_
                                     (gx#syntax-e _%tl153531153552%_)))
                                (let ((_%hd153533153558%_
                                       (##car _%e153532153555%_))
                                      (_%tl153534153560%_
                                       (##cdr _%e153532153555%_)))
                                  (let ((_%hd153563%_ _%hd153533153558%_))
                                    (if (gx#stx-pair? _%tl153534153560%_)
                                        (let ((_%e153535153565%_
                                               (gx#syntax-e
                                                _%tl153534153560%_)))
                                          (let ((_%hd153536153568%_
                                                 (##car _%e153535153565%_))
                                                (_%tl153537153570%_
                                                 (##cdr _%e153535153565%_)))
                                            (let ((_%expr153573%_
                                                   _%hd153536153568%_))
                                              (if (gx#stx-null?
                                                   _%tl153537153570%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd153563%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr153573%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E153528153543%_)))))
                                        (_%E153528153543%_)))))
                              (_%E153528153543%_))))
                      (_%E153528153543%_)))))
          (_%E153527153575%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx153470%_)
        (let* ((_%e153471153484%_ _%stx153470%_)
               (_%E153473153488%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153471153484%_)))
               (_%E153472153521%_
                (lambda ()
                  (if (gx#stx-pair? _%e153471153484%_)
                      (let ((_%e153474153492%_
                             (gx#syntax-e _%e153471153484%_)))
                        (let ((_%hd153475153495%_ (##car _%e153474153492%_))
                              (_%tl153476153497%_ (##cdr _%e153474153492%_)))
                          (if (gx#stx-pair? _%tl153476153497%_)
                              (let ((_%e153477153500%_
                                     (gx#syntax-e _%tl153476153497%_)))
                                (let ((_%hd153478153503%_
                                       (##car _%e153477153500%_))
                                      (_%tl153479153505%_
                                       (##cdr _%e153477153500%_)))
                                  (let ((_%hd153508%_ _%hd153478153503%_))
                                    (if (gx#stx-pair? _%tl153479153505%_)
                                        (let ((_%e153480153510%_
                                               (gx#syntax-e
                                                _%tl153479153505%_)))
                                          (let ((_%hd153481153513%_
                                                 (##car _%e153480153510%_))
                                                (_%tl153482153515%_
                                                 (##cdr _%e153480153510%_)))
                                            (let ((_%expr153518%_
                                                   _%hd153481153513%_))
                                              (if (gx#stx-null?
                                                   _%tl153482153515%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd153508%_
                                                              (cons (call-with-parameters__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr153518%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E153473153488%_)))))
                                        (_%E153473153488%_)))))
                              (_%E153473153488%_))))
                      (_%E153473153488%_)))))
          (_%E153472153521%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx153440%_)
        (let* ((_%e153441153448%_ _%stx153440%_)
               (_%E153443153452%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153441153448%_)))
               (_%E153442153466%_
                (lambda ()
                  (if (gx#stx-pair? _%e153441153448%_)
                      (let ((_%e153444153456%_
                             (gx#syntax-e _%e153441153448%_)))
                        (let ((_%hd153445153459%_ (##car _%e153444153456%_))
                              (_%tl153446153461%_ (##cdr _%e153444153456%_)))
                          (let ((_%body153464%_ _%tl153446153461%_))
                            (cons '%#define-alias _%body153464%_))))
                      (_%E153443153452%_)))))
          (_%E153442153466%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx153410%_)
        (let* ((_%e153411153418%_ _%stx153410%_)
               (_%E153413153422%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153411153418%_)))
               (_%E153412153436%_
                (lambda ()
                  (if (gx#stx-pair? _%e153411153418%_)
                      (let ((_%e153414153426%_
                             (gx#syntax-e _%e153411153418%_)))
                        (let ((_%hd153415153429%_ (##car _%e153414153426%_))
                              (_%tl153416153431%_ (##cdr _%e153414153426%_)))
                          (let ((_%body153434%_ _%tl153416153431%_))
                            (cons '%#define-runtime _%body153434%_))))
                      (_%E153413153422%_)))))
          (_%E153412153436%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx153380%_)
        (let* ((_%e153381153388%_ _%stx153380%_)
               (_%E153383153392%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153381153388%_)))
               (_%E153382153406%_
                (lambda ()
                  (if (gx#stx-pair? _%e153381153388%_)
                      (let ((_%e153384153396%_
                             (gx#syntax-e _%e153381153388%_)))
                        (let ((_%hd153385153399%_ (##car _%e153384153396%_))
                              (_%tl153386153401%_ (##cdr _%e153384153396%_)))
                          (let ((_%decls153404%_ _%tl153386153401%_))
                            (cons '%#declare _%decls153404%_))))
                      (_%E153383153392%_)))))
          (_%E153382153406%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx153350%_)
        (let* ((_%e153351153358%_ _%stx153350%_)
               (_%E153353153362%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153351153358%_)))
               (_%E153352153376%_
                (lambda ()
                  (if (gx#stx-pair? _%e153351153358%_)
                      (let ((_%e153354153366%_
                             (gx#syntax-e _%e153351153358%_)))
                        (let ((_%hd153355153369%_ (##car _%e153354153366%_))
                              (_%tl153356153371%_ (##cdr _%e153354153366%_)))
                          (let ((_%clause153374%_ _%tl153356153371%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause153374%_)))))
                      (_%E153353153362%_)))))
          (_%E153352153376%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx153307%_)
        (let* ((_%e153308153318%_ _%stx153307%_)
               (_%E153310153322%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153308153318%_)))
               (_%E153309153346%_
                (lambda ()
                  (if (gx#stx-pair? _%e153308153318%_)
                      (let ((_%e153311153326%_
                             (gx#syntax-e _%e153308153318%_)))
                        (let ((_%hd153312153329%_ (##car _%e153311153326%_))
                              (_%tl153313153331%_ (##cdr _%e153311153326%_)))
                          (let ((_%hd153334%_ _%hd153312153329%_))
                            (if (gx#stx-pair? _%tl153313153331%_)
                                (let ((_%e153314153336%_
                                       (gx#syntax-e _%tl153313153331%_)))
                                  (let ((_%hd153315153339%_
                                         (##car _%e153314153336%_))
                                        (_%tl153316153341%_
                                         (##cdr _%e153314153336%_)))
                                    (let ((_%body153344%_ _%hd153315153339%_))
                                      (if (gx#stx-null? _%tl153316153341%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd153334%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body153344%_)
                                                      '()))
                                          (_%E153310153322%_)))))
                                (_%E153310153322%_)))))
                      (_%E153310153322%_)))))
          (_%E153309153346%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx153277%_)
        (let* ((_%e153278153285%_ _%stx153277%_)
               (_%E153280153289%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153278153285%_)))
               (_%E153279153303%_
                (lambda ()
                  (if (gx#stx-pair? _%e153278153285%_)
                      (let ((_%e153281153293%_
                             (gx#syntax-e _%e153278153285%_)))
                        (let ((_%hd153282153296%_ (##car _%e153281153293%_))
                              (_%tl153283153298%_ (##cdr _%e153281153293%_)))
                          (let ((_%clauses153301%_ _%tl153283153298%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses153301%_)))))
                      (_%E153280153289%_)))))
          (_%E153279153303%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx153212%_ _%form153213%_)
        (let* ((_%e153214153227%_ _%stx153212%_)
               (_%E153216153231%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153214153227%_)))
               (_%E153215153263%_
                (lambda ()
                  (if (gx#stx-pair? _%e153214153227%_)
                      (let ((_%e153217153235%_
                             (gx#syntax-e _%e153214153227%_)))
                        (let ((_%hd153218153238%_ (##car _%e153217153235%_))
                              (_%tl153219153240%_ (##cdr _%e153217153235%_)))
                          (if (gx#stx-pair? _%tl153219153240%_)
                              (let ((_%e153220153243%_
                                     (gx#syntax-e _%tl153219153240%_)))
                                (let ((_%hd153221153246%_
                                       (##car _%e153220153243%_))
                                      (_%tl153222153248%_
                                       (##cdr _%e153220153243%_)))
                                  (let ((_%hd153251%_ _%hd153221153246%_))
                                    (if (gx#stx-pair? _%tl153222153248%_)
                                        (let ((_%e153223153253%_
                                               (gx#syntax-e
                                                _%tl153222153248%_)))
                                          (let ((_%hd153224153256%_
                                                 (##car _%e153223153253%_))
                                                (_%tl153225153258%_
                                                 (##cdr _%e153223153253%_)))
                                            (let ((_%body153261%_
                                                   _%hd153224153256%_))
                                              (if (gx#stx-null?
                                                   _%tl153225153258%_)
                                                  (cons _%form153213%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd153251%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body153261%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E153216153231%_)))))
                                        (_%E153216153231%_)))))
                              (_%E153216153231%_))))
                      (_%E153216153231%_)))))
          (_%E153215153263%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx153270%_)
        (let ((_%form153272%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx153270%_ _%form153272%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g154095_
        (let ((_g154096_ (##length _g154095_)))
          (cond ((##fx= _g154096_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g154095_))
                ((##fx= _g154096_ 2)
                 (apply gx#core-compile-top-let-values%__% _g154095_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g154095_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx153209%_)
        (gx#core-compile-top-let-values%__% _%stx153209%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx153207%_)
        (gx#core-compile-top-let-values%__% _%stx153207%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx153166%_)
        (let* ((_%e153167153177%_ _%stx153166%_)
               (_%E153169153181%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153167153177%_)))
               (_%E153168153203%_
                (lambda ()
                  (if (gx#stx-pair? _%e153167153177%_)
                      (let ((_%e153170153185%_
                             (gx#syntax-e _%e153167153177%_)))
                        (let ((_%hd153171153188%_ (##car _%e153170153185%_))
                              (_%tl153172153190%_ (##cdr _%e153170153185%_)))
                          (if (gx#stx-pair? _%tl153172153190%_)
                              (let ((_%e153173153193%_
                                     (gx#syntax-e _%tl153172153190%_)))
                                (let ((_%hd153174153196%_
                                       (##car _%e153173153193%_))
                                      (_%tl153175153198%_
                                       (##cdr _%e153173153193%_)))
                                  (let ((_%e153201%_ _%hd153174153196%_))
                                    (if (gx#stx-null? _%tl153175153198%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e153201%_)
                                                    '()))
                                        (_%E153169153181%_)))))
                              (_%E153169153181%_))))
                      (_%E153169153181%_)))))
          (_%E153168153203%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx153125%_)
        (let* ((_%e153126153136%_ _%stx153125%_)
               (_%E153128153140%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153126153136%_)))
               (_%E153127153162%_
                (lambda ()
                  (if (gx#stx-pair? _%e153126153136%_)
                      (let ((_%e153129153144%_
                             (gx#syntax-e _%e153126153136%_)))
                        (let ((_%hd153130153147%_ (##car _%e153129153144%_))
                              (_%tl153131153149%_ (##cdr _%e153129153144%_)))
                          (if (gx#stx-pair? _%tl153131153149%_)
                              (let ((_%e153132153152%_
                                     (gx#syntax-e _%tl153131153149%_)))
                                (let ((_%hd153133153155%_
                                       (##car _%e153132153152%_))
                                      (_%tl153134153157%_
                                       (##cdr _%e153132153152%_)))
                                  (let ((_%e153160%_ _%hd153133153155%_))
                                    (if (gx#stx-null? _%tl153134153157%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e153160%_)
                                                    '()))
                                        (_%E153128153140%_)))))
                              (_%E153128153140%_))))
                      (_%E153128153140%_)))))
          (_%E153127153162%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx153082%_)
        (let* ((_%e153083153093%_ _%stx153082%_)
               (_%E153085153097%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153083153093%_)))
               (_%E153084153121%_
                (lambda ()
                  (if (gx#stx-pair? _%e153083153093%_)
                      (let ((_%e153086153101%_
                             (gx#syntax-e _%e153083153093%_)))
                        (let ((_%hd153087153104%_ (##car _%e153086153101%_))
                              (_%tl153088153106%_ (##cdr _%e153086153101%_)))
                          (if (gx#stx-pair? _%tl153088153106%_)
                              (let ((_%e153089153109%_
                                     (gx#syntax-e _%tl153088153106%_)))
                                (let ((_%hd153090153112%_
                                       (##car _%e153089153109%_))
                                      (_%tl153091153114%_
                                       (##cdr _%e153089153109%_)))
                                  (let* ((_%rator153117%_ _%hd153090153112%_)
                                         (_%args153119%_ _%tl153091153114%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator153117%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args153119%_))))))
                              (_%E153085153097%_))))
                      (_%E153085153097%_)))))
          (_%E153084153121%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx153015%_)
        (let* ((_%e153016153032%_ _%stx153015%_)
               (_%E153018153036%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153016153032%_)))
               (_%E153017153078%_
                (lambda ()
                  (if (gx#stx-pair? _%e153016153032%_)
                      (let ((_%e153019153040%_
                             (gx#syntax-e _%e153016153032%_)))
                        (let ((_%hd153020153043%_ (##car _%e153019153040%_))
                              (_%tl153021153045%_ (##cdr _%e153019153040%_)))
                          (if (gx#stx-pair? _%tl153021153045%_)
                              (let ((_%e153022153048%_
                                     (gx#syntax-e _%tl153021153045%_)))
                                (let ((_%hd153023153051%_
                                       (##car _%e153022153048%_))
                                      (_%tl153024153053%_
                                       (##cdr _%e153022153048%_)))
                                  (let ((_%test153056%_ _%hd153023153051%_))
                                    (if (gx#stx-pair? _%tl153024153053%_)
                                        (let ((_%e153025153058%_
                                               (gx#syntax-e
                                                _%tl153024153053%_)))
                                          (let ((_%hd153026153061%_
                                                 (##car _%e153025153058%_))
                                                (_%tl153027153063%_
                                                 (##cdr _%e153025153058%_)))
                                            (let ((_%K153066%_
                                                   _%hd153026153061%_))
                                              (if (gx#stx-pair?
                                                   _%tl153027153063%_)
                                                  (let ((_%e153028153068%_
                                                         (gx#syntax-e
                                                          _%tl153027153063%_)))
                                                    (let ((_%hd153029153071%_
                                                           (##car _%e153028153068%_))
                                                          (_%tl153030153073%_
                                                           (##cdr _%e153028153068%_)))
                                                      (let ((_%E153076%_
                                                             _%hd153029153071%_))
                                                        (if (gx#stx-null?
                                                             _%tl153030153073%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test153056%_)
                                (cons (gx#core-compile-top-syntax _%K153066%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E153076%_)
                                            '()))))
                    (_%E153018153036%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E153018153036%_)))))
                                        (_%E153018153036%_)))))
                              (_%E153018153036%_))))
                      (_%E153018153036%_)))))
          (_%E153017153078%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx152974%_)
        (let* ((_%e152975152985%_ _%stx152974%_)
               (_%E152977152989%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e152975152985%_)))
               (_%E152976153011%_
                (lambda ()
                  (if (gx#stx-pair? _%e152975152985%_)
                      (let ((_%e152978152993%_
                             (gx#syntax-e _%e152975152985%_)))
                        (let ((_%hd152979152996%_ (##car _%e152978152993%_))
                              (_%tl152980152998%_ (##cdr _%e152978152993%_)))
                          (if (gx#stx-pair? _%tl152980152998%_)
                              (let ((_%e152981153001%_
                                     (gx#syntax-e _%tl152980152998%_)))
                                (let ((_%hd152982153004%_
                                       (##car _%e152981153001%_))
                                      (_%tl152983153006%_
                                       (##cdr _%e152981153001%_)))
                                  (let ((_%id153009%_ _%hd152982153004%_))
                                    (if (gx#stx-null? _%tl152983153006%_)
                                        (if (gx#identifier? _%id153009%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id153009%_)
                                                        '()))
                                            (_%E152977152989%_))
                                        (_%E152977152989%_)))))
                              (_%E152977152989%_))))
                      (_%E152977152989%_)))))
          (_%E152976153011%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx152920%_)
        (let* ((_%e152921152934%_ _%stx152920%_)
               (_%E152923152938%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e152921152934%_)))
               (_%E152922152970%_
                (lambda ()
                  (if (gx#stx-pair? _%e152921152934%_)
                      (let ((_%e152924152942%_
                             (gx#syntax-e _%e152921152934%_)))
                        (let ((_%hd152925152945%_ (##car _%e152924152942%_))
                              (_%tl152926152947%_ (##cdr _%e152924152942%_)))
                          (if (gx#stx-pair? _%tl152926152947%_)
                              (let ((_%e152927152950%_
                                     (gx#syntax-e _%tl152926152947%_)))
                                (let ((_%hd152928152953%_
                                       (##car _%e152927152950%_))
                                      (_%tl152929152955%_
                                       (##cdr _%e152927152950%_)))
                                  (let ((_%id152958%_ _%hd152928152953%_))
                                    (if (gx#stx-pair? _%tl152929152955%_)
                                        (let ((_%e152930152960%_
                                               (gx#syntax-e
                                                _%tl152929152955%_)))
                                          (let ((_%hd152931152963%_
                                                 (##car _%e152930152960%_))
                                                (_%tl152932152965%_
                                                 (##cdr _%e152930152960%_)))
                                            (let ((_%expr152968%_
                                                   _%hd152931152963%_))
                                              (if (gx#stx-null?
                                                   _%tl152932152965%_)
                                                  (if (gx#identifier?
                                                       _%id152958%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id152958%_)
                          (cons (gx#core-compile-top-syntax _%expr152968%_)
                                '())))
              (_%E152923152938%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E152923152938%_)))))
                                        (_%E152923152938%_)))))
                              (_%E152923152938%_))))
                      (_%E152923152938%_)))))
          (_%E152922152970%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id152914%_)
        (let ((_%$e152916%_ (gx#resolve-identifier__0 _%id152914%_)))
          (if _%$e152916%_
              (##unchecked-structure-ref _%$e152916%_ '1 '#f '#f)
              _%id152914%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd152912%_)
        (if (gx#identifier? _%hd152912%_)
            (gx#core-compile-top-runtime-ref _%hd152912%_)
            '#f)))))
