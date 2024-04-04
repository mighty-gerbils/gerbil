(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1712246556)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx127153%_)
        (let* ((_%e127154127161%_ _%stx127153%_)
               (_%E127156127165%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127154127161%_)))
               (_%E127155127179%_
                (lambda ()
                  (if (gx#stx-pair? _%e127154127161%_)
                      (let ((_%e127157127169%_
                             (gx#syntax-e _%e127154127161%_)))
                        (let ((_%hd127158127172%_ (##car _%e127157127169%_))
                              (_%tl127159127174%_ (##cdr _%e127157127169%_)))
                          (let ((_%form127177%_ _%hd127158127172%_))
                            (if '#t
                                (let* ((__self127182
                                        (gx#syntax-local-e__0 _%form127177%_))
                                       (__method127183
                                        (__method-ref
                                         __self127182
                                         'compile-top-syntax)))
                                  (if __method127183
                                      (__method127183
                                       __self127182
                                       _%stx127153%_)
                                      (error '"Missing method"
                                             __self127182
                                             'compile-top-syntax)))
                                (_%E127156127165%_)))))
                      (_%E127156127165%_)))))
          (_%E127155127179%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self127101%_ _%stx127102%_)
        (let ((_%self127105%_ _%self127101%_))
          (let* ((_%self127114127122%_ _%self127105%_)
                 (_%E127116127126%_
                  (lambda ()
                    (error '"No clause matching"
                           _%self127114127122%_
                           '((core-expander _ _ K)))
                    '#!void))
                 (_%K127117127139%_
                  (lambda (_%K127129%_)
                    (let ((_%$e127131%_ (gx#stx-source _%stx127102%_)))
                      (if _%$e127131%_
                          ((lambda (_%g127133127135%_)
                             (gx#stx-wrap-source
                              (_%K127129%_ _%stx127102%_)
                              _%g127133127135%_))
                           _%$e127131%_)
                          (let () (_%K127129%_ _%stx127102%_)))))))
            (if '#t
                (let* ((_%e127118127142%_
                        (##unchecked-structure-ref
                         _%self127114127122%_
                         '1
                         '#f
                         '#f))
                       (_%e127119127145%_
                        (##unchecked-structure-ref
                         _%self127114127122%_
                         '2
                         '#f
                         '#f))
                       (_%e127120127148%_
                        (##unchecked-structure-ref
                         _%self127114127122%_
                         '3
                         '#f
                         '#f))
                       (_%K127151%_ _%e127120127148%_))
                  (_%K127117127139%_ _%K127151%_))
                (_%E127116127126%_))))))
    (__bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx126975%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx126975%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx126945%_)
        (let* ((_%e126946126953%_ _%stx126945%_)
               (_%E126948126957%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126946126953%_)))
               (_%E126947126971%_
                (lambda ()
                  (if (gx#stx-pair? _%e126946126953%_)
                      (let ((_%e126949126961%_
                             (gx#syntax-e _%e126946126953%_)))
                        (let ((_%hd126950126964%_ (##car _%e126949126961%_))
                              (_%tl126951126966%_ (##cdr _%e126949126961%_)))
                          (let ((_%body126969%_ _%tl126951126966%_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _%body126969%_))
                                (_%E126948126957%_)))))
                      (_%E126948126957%_)))))
          (_%E126947126971%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx126914%_)
        (let* ((_%e126915126922%_ _%stx126914%_)
               (_%E126917126926%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126915126922%_)))
               (_%E126916126941%_
                (lambda ()
                  (if (gx#stx-pair? _%e126915126922%_)
                      (let ((_%e126918126930%_
                             (gx#syntax-e _%e126915126922%_)))
                        (let ((_%hd126919126933%_ (##car _%e126918126930%_))
                              (_%tl126920126935%_ (##cdr _%e126918126930%_)))
                          (let ((_%body126938%_ _%tl126920126935%_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (__call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _%body126938%_))
                                       gx#current-expander-phi
                                       (##fx+ (gx#current-expander-phi) '1)))
                                (_%E126917126926%_)))))
                      (_%E126917126926%_)))))
          (_%E126916126941%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx126884%_)
        (let* ((_%e126885126892%_ _%stx126884%_)
               (_%E126887126896%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126885126892%_)))
               (_%E126886126910%_
                (lambda ()
                  (if (gx#stx-pair? _%e126885126892%_)
                      (let ((_%e126888126900%_
                             (gx#syntax-e _%e126885126892%_)))
                        (let ((_%hd126889126903%_ (##car _%e126888126900%_))
                              (_%tl126890126905%_ (##cdr _%e126888126900%_)))
                          (let ((_%body126908%_ _%tl126890126905%_))
                            (if '#t
                                (cons '%#begin-foreign _%body126908%_)
                                (_%E126887126896%_)))))
                      (_%E126887126896%_)))))
          (_%E126886126910%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx126830%_)
        (let* ((_%e126831126844%_ _%stx126830%_)
               (_%E126833126848%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126831126844%_)))
               (_%E126832126880%_
                (lambda ()
                  (if (gx#stx-pair? _%e126831126844%_)
                      (let ((_%e126834126852%_
                             (gx#syntax-e _%e126831126844%_)))
                        (let ((_%hd126835126855%_ (##car _%e126834126852%_))
                              (_%tl126836126857%_ (##cdr _%e126834126852%_)))
                          (if (gx#stx-pair? _%tl126836126857%_)
                              (let ((_%e126837126860%_
                                     (gx#syntax-e _%tl126836126857%_)))
                                (let ((_%hd126838126863%_
                                       (##car _%e126837126860%_))
                                      (_%tl126839126865%_
                                       (##cdr _%e126837126860%_)))
                                  (let ((_%ann126868%_ _%hd126838126863%_))
                                    (if (gx#stx-pair? _%tl126839126865%_)
                                        (let ((_%e126840126870%_
                                               (gx#syntax-e
                                                _%tl126839126865%_)))
                                          (let ((_%hd126841126873%_
                                                 (##car _%e126840126870%_))
                                                (_%tl126842126875%_
                                                 (##cdr _%e126840126870%_)))
                                            (let ((_%expr126878%_
                                                   _%hd126841126873%_))
                                              (if (gx#stx-null?
                                                   _%tl126842126875%_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _%expr126878%_)
                                                      (_%E126833126848%_))
                                                  (_%E126833126848%_)))))
                                        (_%E126833126848%_)))))
                              (_%E126833126848%_))))
                      (_%E126833126848%_)))))
          (_%E126832126880%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx126800%_)
        (let* ((_%e126801126808%_ _%stx126800%_)
               (_%E126803126812%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126801126808%_)))
               (_%E126802126826%_
                (lambda ()
                  (if (gx#stx-pair? _%e126801126808%_)
                      (let ((_%e126804126816%_
                             (gx#syntax-e _%e126801126808%_)))
                        (let ((_%hd126805126819%_ (##car _%e126804126816%_))
                              (_%tl126806126821%_ (##cdr _%e126804126816%_)))
                          (let ((_%body126824%_ _%tl126806126821%_))
                            (if '#t
                                (cons '%#import _%body126824%_)
                                (_%E126803126812%_)))))
                      (_%E126803126812%_)))))
          (_%E126802126826%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx126757%_)
        (let* ((_%e126758126768%_ _%stx126757%_)
               (_%E126760126772%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126758126768%_)))
               (_%E126759126796%_
                (lambda ()
                  (if (gx#stx-pair? _%e126758126768%_)
                      (let ((_%e126761126776%_
                             (gx#syntax-e _%e126758126768%_)))
                        (let ((_%hd126762126779%_ (##car _%e126761126776%_))
                              (_%tl126763126781%_ (##cdr _%e126761126776%_)))
                          (if (gx#stx-pair? _%tl126763126781%_)
                              (let ((_%e126764126784%_
                                     (gx#syntax-e _%tl126763126781%_)))
                                (let ((_%hd126765126787%_
                                       (##car _%e126764126784%_))
                                      (_%tl126766126789%_
                                       (##cdr _%e126764126784%_)))
                                  (let* ((_%hd126792%_ _%hd126765126787%_)
                                         (_%body126794%_ _%tl126766126789%_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _%hd126792%_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _%body126794%_)))
                                        (_%E126760126772%_)))))
                              (_%E126760126772%_))))
                      (_%E126760126772%_)))))
          (_%E126759126796%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx126727%_)
        (let* ((_%e126728126735%_ _%stx126727%_)
               (_%E126730126739%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126728126735%_)))
               (_%E126729126753%_
                (lambda ()
                  (if (gx#stx-pair? _%e126728126735%_)
                      (let ((_%e126731126743%_
                             (gx#syntax-e _%e126728126735%_)))
                        (let ((_%hd126732126746%_ (##car _%e126731126743%_))
                              (_%tl126733126748%_ (##cdr _%e126731126743%_)))
                          (let ((_%body126751%_ _%tl126733126748%_))
                            (if '#t
                                (cons '%#export _%body126751%_)
                                (_%E126730126739%_)))))
                      (_%E126730126739%_)))))
          (_%E126729126753%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx126697%_)
        (let* ((_%e126698126705%_ _%stx126697%_)
               (_%E126700126709%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126698126705%_)))
               (_%E126699126723%_
                (lambda ()
                  (if (gx#stx-pair? _%e126698126705%_)
                      (let ((_%e126701126713%_
                             (gx#syntax-e _%e126698126705%_)))
                        (let ((_%hd126702126716%_ (##car _%e126701126713%_))
                              (_%tl126703126718%_ (##cdr _%e126701126713%_)))
                          (let ((_%body126721%_ _%tl126703126718%_))
                            (if '#t
                                (cons '%#provide _%body126721%_)
                                (_%E126700126709%_)))))
                      (_%E126700126709%_)))))
          (_%E126699126723%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx126667%_)
        (let* ((_%e126668126675%_ _%stx126667%_)
               (_%E126670126679%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126668126675%_)))
               (_%E126669126693%_
                (lambda ()
                  (if (gx#stx-pair? _%e126668126675%_)
                      (let ((_%e126671126683%_
                             (gx#syntax-e _%e126668126675%_)))
                        (let ((_%hd126672126686%_ (##car _%e126671126683%_))
                              (_%tl126673126688%_ (##cdr _%e126671126683%_)))
                          (let ((_%body126691%_ _%tl126673126688%_))
                            (if '#t
                                (cons '%#extern _%body126691%_)
                                (_%E126670126679%_)))))
                      (_%E126670126679%_)))))
          (_%E126669126693%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx126613%_)
        (let* ((_%e126614126627%_ _%stx126613%_)
               (_%E126616126631%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126614126627%_)))
               (_%E126615126663%_
                (lambda ()
                  (if (gx#stx-pair? _%e126614126627%_)
                      (let ((_%e126617126635%_
                             (gx#syntax-e _%e126614126627%_)))
                        (let ((_%hd126618126638%_ (##car _%e126617126635%_))
                              (_%tl126619126640%_ (##cdr _%e126617126635%_)))
                          (if (gx#stx-pair? _%tl126619126640%_)
                              (let ((_%e126620126643%_
                                     (gx#syntax-e _%tl126619126640%_)))
                                (let ((_%hd126621126646%_
                                       (##car _%e126620126643%_))
                                      (_%tl126622126648%_
                                       (##cdr _%e126620126643%_)))
                                  (let ((_%hd126651%_ _%hd126621126646%_))
                                    (if (gx#stx-pair? _%tl126622126648%_)
                                        (let ((_%e126623126653%_
                                               (gx#syntax-e
                                                _%tl126622126648%_)))
                                          (let ((_%hd126624126656%_
                                                 (##car _%e126623126653%_))
                                                (_%tl126625126658%_
                                                 (##cdr _%e126623126653%_)))
                                            (let ((_%expr126661%_
                                                   _%hd126624126656%_))
                                              (if (gx#stx-null?
                                                   _%tl126625126658%_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _%hd126651%_)
                          (cons (gx#core-compile-top-syntax _%expr126661%_)
                                '())))
              (_%E126616126631%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E126616126631%_)))))
                                        (_%E126616126631%_)))))
                              (_%E126616126631%_))))
                      (_%E126616126631%_)))))
          (_%E126615126663%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx126558%_)
        (let* ((_%e126559126572%_ _%stx126558%_)
               (_%E126561126576%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126559126572%_)))
               (_%E126560126609%_
                (lambda ()
                  (if (gx#stx-pair? _%e126559126572%_)
                      (let ((_%e126562126580%_
                             (gx#syntax-e _%e126559126572%_)))
                        (let ((_%hd126563126583%_ (##car _%e126562126580%_))
                              (_%tl126564126585%_ (##cdr _%e126562126580%_)))
                          (if (gx#stx-pair? _%tl126564126585%_)
                              (let ((_%e126565126588%_
                                     (gx#syntax-e _%tl126564126585%_)))
                                (let ((_%hd126566126591%_
                                       (##car _%e126565126588%_))
                                      (_%tl126567126593%_
                                       (##cdr _%e126565126588%_)))
                                  (let ((_%hd126596%_ _%hd126566126591%_))
                                    (if (gx#stx-pair? _%tl126567126593%_)
                                        (let ((_%e126568126598%_
                                               (gx#syntax-e
                                                _%tl126567126593%_)))
                                          (let ((_%hd126569126601%_
                                                 (##car _%e126568126598%_))
                                                (_%tl126570126603%_
                                                 (##cdr _%e126568126598%_)))
                                            (let ((_%expr126606%_
                                                   _%hd126569126601%_))
                                              (if (gx#stx-null?
                                                   _%tl126570126603%_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _%hd126596%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (__call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _%expr126606%_))
                                 gx#current-expander-phi
                                 (##fx+ (gx#current-expander-phi) '1))
                                '())))
              (_%E126561126576%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E126561126576%_)))))
                                        (_%E126561126576%_)))))
                              (_%E126561126576%_))))
                      (_%E126561126576%_)))))
          (_%E126560126609%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx126528%_)
        (let* ((_%e126529126536%_ _%stx126528%_)
               (_%E126531126540%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126529126536%_)))
               (_%E126530126554%_
                (lambda ()
                  (if (gx#stx-pair? _%e126529126536%_)
                      (let ((_%e126532126544%_
                             (gx#syntax-e _%e126529126536%_)))
                        (let ((_%hd126533126547%_ (##car _%e126532126544%_))
                              (_%tl126534126549%_ (##cdr _%e126532126544%_)))
                          (let ((_%body126552%_ _%tl126534126549%_))
                            (if '#t
                                (cons '%#define-alias _%body126552%_)
                                (_%E126531126540%_)))))
                      (_%E126531126540%_)))))
          (_%E126530126554%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx126498%_)
        (let* ((_%e126499126506%_ _%stx126498%_)
               (_%E126501126510%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126499126506%_)))
               (_%E126500126524%_
                (lambda ()
                  (if (gx#stx-pair? _%e126499126506%_)
                      (let ((_%e126502126514%_
                             (gx#syntax-e _%e126499126506%_)))
                        (let ((_%hd126503126517%_ (##car _%e126502126514%_))
                              (_%tl126504126519%_ (##cdr _%e126502126514%_)))
                          (let ((_%body126522%_ _%tl126504126519%_))
                            (if '#t
                                (cons '%#define-runtime _%body126522%_)
                                (_%E126501126510%_)))))
                      (_%E126501126510%_)))))
          (_%E126500126524%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx126468%_)
        (let* ((_%e126469126476%_ _%stx126468%_)
               (_%E126471126480%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126469126476%_)))
               (_%E126470126494%_
                (lambda ()
                  (if (gx#stx-pair? _%e126469126476%_)
                      (let ((_%e126472126484%_
                             (gx#syntax-e _%e126469126476%_)))
                        (let ((_%hd126473126487%_ (##car _%e126472126484%_))
                              (_%tl126474126489%_ (##cdr _%e126472126484%_)))
                          (let ((_%decls126492%_ _%tl126474126489%_))
                            (if '#t
                                (cons '%#declare _%decls126492%_)
                                (_%E126471126480%_)))))
                      (_%E126471126480%_)))))
          (_%E126470126494%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx126438%_)
        (let* ((_%e126439126446%_ _%stx126438%_)
               (_%E126441126450%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126439126446%_)))
               (_%E126440126464%_
                (lambda ()
                  (if (gx#stx-pair? _%e126439126446%_)
                      (let ((_%e126442126454%_
                             (gx#syntax-e _%e126439126446%_)))
                        (let ((_%hd126443126457%_ (##car _%e126442126454%_))
                              (_%tl126444126459%_ (##cdr _%e126442126454%_)))
                          (let ((_%clause126462%_ _%tl126444126459%_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _%clause126462%_))
                                (_%E126441126450%_)))))
                      (_%E126441126450%_)))))
          (_%E126440126464%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx126395%_)
        (let* ((_%e126396126406%_ _%stx126395%_)
               (_%E126398126410%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126396126406%_)))
               (_%E126397126434%_
                (lambda ()
                  (if (gx#stx-pair? _%e126396126406%_)
                      (let ((_%e126399126414%_
                             (gx#syntax-e _%e126396126406%_)))
                        (let ((_%hd126400126417%_ (##car _%e126399126414%_))
                              (_%tl126401126419%_ (##cdr _%e126399126414%_)))
                          (let ((_%hd126422%_ _%hd126400126417%_))
                            (if (gx#stx-pair? _%tl126401126419%_)
                                (let ((_%e126402126424%_
                                       (gx#syntax-e _%tl126401126419%_)))
                                  (let ((_%hd126403126427%_
                                         (##car _%e126402126424%_))
                                        (_%tl126404126429%_
                                         (##cdr _%e126402126424%_)))
                                    (let ((_%body126432%_ _%hd126403126427%_))
                                      (if (gx#stx-null? _%tl126404126429%_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _%hd126422%_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _%body126432%_)
                                                          '()))
                                              (_%E126398126410%_))
                                          (_%E126398126410%_)))))
                                (_%E126398126410%_)))))
                      (_%E126398126410%_)))))
          (_%E126397126434%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx126365%_)
        (let* ((_%e126366126373%_ _%stx126365%_)
               (_%E126368126377%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126366126373%_)))
               (_%E126367126391%_
                (lambda ()
                  (if (gx#stx-pair? _%e126366126373%_)
                      (let ((_%e126369126381%_
                             (gx#syntax-e _%e126366126373%_)))
                        (let ((_%hd126370126384%_ (##car _%e126369126381%_))
                              (_%tl126371126386%_ (##cdr _%e126369126381%_)))
                          (let ((_%clauses126389%_ _%tl126371126386%_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _%clauses126389%_))
                                (_%E126368126377%_)))))
                      (_%E126368126377%_)))))
          (_%E126367126391%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx126300%_ _%form126301%_)
        (let* ((_%e126302126315%_ _%stx126300%_)
               (_%E126304126319%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126302126315%_)))
               (_%E126303126351%_
                (lambda ()
                  (if (gx#stx-pair? _%e126302126315%_)
                      (let ((_%e126305126323%_
                             (gx#syntax-e _%e126302126315%_)))
                        (let ((_%hd126306126326%_ (##car _%e126305126323%_))
                              (_%tl126307126328%_ (##cdr _%e126305126323%_)))
                          (if (gx#stx-pair? _%tl126307126328%_)
                              (let ((_%e126308126331%_
                                     (gx#syntax-e _%tl126307126328%_)))
                                (let ((_%hd126309126334%_
                                       (##car _%e126308126331%_))
                                      (_%tl126310126336%_
                                       (##cdr _%e126308126331%_)))
                                  (let ((_%hd126339%_ _%hd126309126334%_))
                                    (if (gx#stx-pair? _%tl126310126336%_)
                                        (let ((_%e126311126341%_
                                               (gx#syntax-e
                                                _%tl126310126336%_)))
                                          (let ((_%hd126312126344%_
                                                 (##car _%e126311126341%_))
                                                (_%tl126313126346%_
                                                 (##cdr _%e126311126341%_)))
                                            (let ((_%body126349%_
                                                   _%hd126312126344%_))
                                              (if (gx#stx-null?
                                                   _%tl126313126346%_)
                                                  (if '#t
                                                      (cons _%form126301%_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _%hd126339%_)
                          (cons (gx#core-compile-top-syntax _%body126349%_)
                                '())))
              (_%E126304126319%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E126304126319%_)))))
                                        (_%E126304126319%_)))))
                              (_%E126304126319%_))))
                      (_%E126304126319%_)))))
          (_%E126303126351%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx126358%_)
        (let ((_%form126360%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx126358%_ _%form126360%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g127185_
        (let ((_g127184_ (##length _g127185_)))
          (cond ((##fx= _g127184_ 1)
                 (apply (lambda (_%stx126358%_)
                          (gx#core-compile-top-let-values%__0 _%stx126358%_))
                        _g127185_))
                ((##fx= _g127184_ 2)
                 (apply (lambda (_%stx126362%_ _%form126363%_)
                          (gx#core-compile-top-let-values%__%
                           _%stx126362%_
                           _%form126363%_))
                        _g127185_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g127185_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx126297%_)
        (gx#core-compile-top-let-values%__% _%stx126297%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx126295%_)
        (gx#core-compile-top-let-values%__% _%stx126295%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx126254%_)
        (let* ((_%e126255126265%_ _%stx126254%_)
               (_%E126257126269%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126255126265%_)))
               (_%E126256126291%_
                (lambda ()
                  (if (gx#stx-pair? _%e126255126265%_)
                      (let ((_%e126258126273%_
                             (gx#syntax-e _%e126255126265%_)))
                        (let ((_%hd126259126276%_ (##car _%e126258126273%_))
                              (_%tl126260126278%_ (##cdr _%e126258126273%_)))
                          (if (gx#stx-pair? _%tl126260126278%_)
                              (let ((_%e126261126281%_
                                     (gx#syntax-e _%tl126260126278%_)))
                                (let ((_%hd126262126284%_
                                       (##car _%e126261126281%_))
                                      (_%tl126263126286%_
                                       (##cdr _%e126261126281%_)))
                                  (let ((_%e126289%_ _%hd126262126284%_))
                                    (if (gx#stx-null? _%tl126263126286%_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _%e126289%_)
                                                        '()))
                                            (_%E126257126269%_))
                                        (_%E126257126269%_)))))
                              (_%E126257126269%_))))
                      (_%E126257126269%_)))))
          (_%E126256126291%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx126213%_)
        (let* ((_%e126214126224%_ _%stx126213%_)
               (_%E126216126228%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126214126224%_)))
               (_%E126215126250%_
                (lambda ()
                  (if (gx#stx-pair? _%e126214126224%_)
                      (let ((_%e126217126232%_
                             (gx#syntax-e _%e126214126224%_)))
                        (let ((_%hd126218126235%_ (##car _%e126217126232%_))
                              (_%tl126219126237%_ (##cdr _%e126217126232%_)))
                          (if (gx#stx-pair? _%tl126219126237%_)
                              (let ((_%e126220126240%_
                                     (gx#syntax-e _%tl126219126237%_)))
                                (let ((_%hd126221126243%_
                                       (##car _%e126220126240%_))
                                      (_%tl126222126245%_
                                       (##cdr _%e126220126240%_)))
                                  (let ((_%e126248%_ _%hd126221126243%_))
                                    (if (gx#stx-null? _%tl126222126245%_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _%e126248%_)
                                                        '()))
                                            (_%E126216126228%_))
                                        (_%E126216126228%_)))))
                              (_%E126216126228%_))))
                      (_%E126216126228%_)))))
          (_%E126215126250%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx126170%_)
        (let* ((_%e126171126181%_ _%stx126170%_)
               (_%E126173126185%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126171126181%_)))
               (_%E126172126209%_
                (lambda ()
                  (if (gx#stx-pair? _%e126171126181%_)
                      (let ((_%e126174126189%_
                             (gx#syntax-e _%e126171126181%_)))
                        (let ((_%hd126175126192%_ (##car _%e126174126189%_))
                              (_%tl126176126194%_ (##cdr _%e126174126189%_)))
                          (if (gx#stx-pair? _%tl126176126194%_)
                              (let ((_%e126177126197%_
                                     (gx#syntax-e _%tl126176126194%_)))
                                (let ((_%hd126178126200%_
                                       (##car _%e126177126197%_))
                                      (_%tl126179126202%_
                                       (##cdr _%e126177126197%_)))
                                  (let* ((_%rator126205%_ _%hd126178126200%_)
                                         (_%args126207%_ _%tl126179126202%_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _%rator126205%_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _%args126207%_)))
                                        (_%E126173126185%_)))))
                              (_%E126173126185%_))))
                      (_%E126173126185%_)))))
          (_%E126172126209%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx126103%_)
        (let* ((_%e126104126120%_ _%stx126103%_)
               (_%E126106126124%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126104126120%_)))
               (_%E126105126166%_
                (lambda ()
                  (if (gx#stx-pair? _%e126104126120%_)
                      (let ((_%e126107126128%_
                             (gx#syntax-e _%e126104126120%_)))
                        (let ((_%hd126108126131%_ (##car _%e126107126128%_))
                              (_%tl126109126133%_ (##cdr _%e126107126128%_)))
                          (if (gx#stx-pair? _%tl126109126133%_)
                              (let ((_%e126110126136%_
                                     (gx#syntax-e _%tl126109126133%_)))
                                (let ((_%hd126111126139%_
                                       (##car _%e126110126136%_))
                                      (_%tl126112126141%_
                                       (##cdr _%e126110126136%_)))
                                  (let ((_%test126144%_ _%hd126111126139%_))
                                    (if (gx#stx-pair? _%tl126112126141%_)
                                        (let ((_%e126113126146%_
                                               (gx#syntax-e
                                                _%tl126112126141%_)))
                                          (let ((_%hd126114126149%_
                                                 (##car _%e126113126146%_))
                                                (_%tl126115126151%_
                                                 (##cdr _%e126113126146%_)))
                                            (let ((_%K126154%_
                                                   _%hd126114126149%_))
                                              (if (gx#stx-pair?
                                                   _%tl126115126151%_)
                                                  (let ((_%e126116126156%_
                                                         (gx#syntax-e
                                                          _%tl126115126151%_)))
                                                    (let ((_%hd126117126159%_
                                                           (##car _%e126116126156%_))
                                                          (_%tl126118126161%_
                                                           (##cdr _%e126116126156%_)))
                                                      (let ((_%E126164%_
                                                             _%hd126117126159%_))
                                                        (if (gx#stx-null?
                                                             _%tl126118126161%_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _%test126144%_)
                                    (cons (gx#core-compile-top-syntax
                                           _%K126154%_)
                                          (cons (gx#core-compile-top-syntax
                                                 _%E126164%_)
                                                '()))))
                        (_%E126106126124%_))
                    (_%E126106126124%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E126106126124%_)))))
                                        (_%E126106126124%_)))))
                              (_%E126106126124%_))))
                      (_%E126106126124%_)))))
          (_%E126105126166%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx126062%_)
        (let* ((_%e126063126073%_ _%stx126062%_)
               (_%E126065126077%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126063126073%_)))
               (_%E126064126099%_
                (lambda ()
                  (if (gx#stx-pair? _%e126063126073%_)
                      (let ((_%e126066126081%_
                             (gx#syntax-e _%e126063126073%_)))
                        (let ((_%hd126067126084%_ (##car _%e126066126081%_))
                              (_%tl126068126086%_ (##cdr _%e126066126081%_)))
                          (if (gx#stx-pair? _%tl126068126086%_)
                              (let ((_%e126069126089%_
                                     (gx#syntax-e _%tl126068126086%_)))
                                (let ((_%hd126070126092%_
                                       (##car _%e126069126089%_))
                                      (_%tl126071126094%_
                                       (##cdr _%e126069126089%_)))
                                  (let ((_%id126097%_ _%hd126070126092%_))
                                    (if (gx#stx-null? _%tl126071126094%_)
                                        (if (gx#identifier? _%id126097%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id126097%_)
                                                        '()))
                                            (_%E126065126077%_))
                                        (_%E126065126077%_)))))
                              (_%E126065126077%_))))
                      (_%E126065126077%_)))))
          (_%E126064126099%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx126008%_)
        (let* ((_%e126009126022%_ _%stx126008%_)
               (_%E126011126026%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126009126022%_)))
               (_%E126010126058%_
                (lambda ()
                  (if (gx#stx-pair? _%e126009126022%_)
                      (let ((_%e126012126030%_
                             (gx#syntax-e _%e126009126022%_)))
                        (let ((_%hd126013126033%_ (##car _%e126012126030%_))
                              (_%tl126014126035%_ (##cdr _%e126012126030%_)))
                          (if (gx#stx-pair? _%tl126014126035%_)
                              (let ((_%e126015126038%_
                                     (gx#syntax-e _%tl126014126035%_)))
                                (let ((_%hd126016126041%_
                                       (##car _%e126015126038%_))
                                      (_%tl126017126043%_
                                       (##cdr _%e126015126038%_)))
                                  (let ((_%id126046%_ _%hd126016126041%_))
                                    (if (gx#stx-pair? _%tl126017126043%_)
                                        (let ((_%e126018126048%_
                                               (gx#syntax-e
                                                _%tl126017126043%_)))
                                          (let ((_%hd126019126051%_
                                                 (##car _%e126018126048%_))
                                                (_%tl126020126053%_
                                                 (##cdr _%e126018126048%_)))
                                            (let ((_%expr126056%_
                                                   _%hd126019126051%_))
                                              (if (gx#stx-null?
                                                   _%tl126020126053%_)
                                                  (if (gx#identifier?
                                                       _%id126046%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id126046%_)
                          (cons (gx#core-compile-top-syntax _%expr126056%_)
                                '())))
              (_%E126011126026%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E126011126026%_)))))
                                        (_%E126011126026%_)))))
                              (_%E126011126026%_))))
                      (_%E126011126026%_)))))
          (_%E126010126058%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id126002%_)
        (let ((_%$e126004%_ (gx#resolve-identifier__0 _%id126002%_)))
          (if _%$e126004%_
              (##unchecked-structure-ref _%$e126004%_ '1 '#f '#f)
              (let () _%id126002%_)))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd126000%_)
        (if (gx#identifier? _%hd126000%_)
            (gx#core-compile-top-runtime-ref _%hd126000%_)
            '#f)))))
