(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1784279016)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx196129%_)
        (let* ((_%$%e196130196137%_ _%stx196129%_)
               (_%$%E196132196141%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196130196137%_)))
               (_%$%E196131196155%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196130196137%_)
                      (let ((_%$%e196133196145%_
                             (gx#syntax-e _%$%e196130196137%_)))
                        (let ((_%$%hd196134196148%_
                               (##car _%$%e196133196145%_))
                              (_%$%tl196135196150%_
                               (##cdr _%$%e196133196145%_)))
                          (let* ((_%form196153%_ _%$%hd196134196148%_)
                                 (__self196158
                                  (gx#syntax-local-e__0 _%form196153%_))
                                 (__method196159
                                  (__method-ref
                                   __self196158
                                   'compile-top-syntax)))
                            (if __method196159
                                (__method196159 __self196158 _%stx196129%_)
                                (begin
                                  (error '"Missing method"
                                         __self196158
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%$%E196132196141%_)))))
          (_%$%E196131196155%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self196078%_ _%stx196079%_)
        (let* ((_%self196082%_ _%self196078%_)
               (_%$%self196091196099%_ _%self196082%_)
               (_%$%E196093196102%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%self196091196099%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%$%K196094196115%_
                (lambda (_%K196105%_)
                  (let ((_%$e196107%_ (gx#stx-source _%stx196079%_)))
                    (if _%$e196107%_
                        (gx#stx-wrap-source
                         (_%K196105%_ _%stx196079%_)
                         _%$e196107%_)
                        (_%K196105%_ _%stx196079%_)))))
               (_%$%e196095196118%_
                (##unchecked-structure-ref _%$%self196091196099%_ '1 '#f '#f))
               (_%$%e196096196121%_
                (##unchecked-structure-ref _%$%self196091196099%_ '2 '#f '#f))
               (_%$%e196097196124%_
                (##unchecked-structure-ref _%$%self196091196099%_ '3 '#f '#f))
               (_%K196127%_ _%$%e196097196124%_))
          (_%$%K196094196115%_ _%K196127%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx195952%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx195952%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx195922%_)
        (let* ((_%$%e195923195930%_ _%stx195922%_)
               (_%$%E195925195934%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195923195930%_)))
               (_%$%E195924195948%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195923195930%_)
                      (let ((_%$%e195926195938%_
                             (gx#syntax-e _%$%e195923195930%_)))
                        (let ((_%$%hd195927195941%_
                               (##car _%$%e195926195938%_))
                              (_%$%tl195928195943%_
                               (##cdr _%$%e195926195938%_)))
                          (let ((_%body195946%_ _%$%tl195928195943%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body195946%_)))))
                      (_%$%E195925195934%_)))))
          (_%$%E195924195948%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx195891%_)
        (let* ((_%$%e195892195899%_ _%stx195891%_)
               (_%$%E195894195903%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195892195899%_)))
               (_%$%E195893195918%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195892195899%_)
                      (let ((_%$%e195895195907%_
                             (gx#syntax-e _%$%e195892195899%_)))
                        (let ((_%$%hd195896195910%_
                               (##car _%$%e195895195907%_))
                              (_%$%tl195897195912%_
                               (##cdr _%$%e195895195907%_)))
                          (let ((_%body195915%_ _%$%tl195897195912%_))
                            (cons '%#begin-syntax
                                  (call-with-parameters__1
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body195915%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%$%E195894195903%_)))))
          (_%$%E195893195918%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx195861%_)
        (let* ((_%$%e195862195869%_ _%stx195861%_)
               (_%$%E195864195873%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195862195869%_)))
               (_%$%E195863195887%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195862195869%_)
                      (let ((_%$%e195865195877%_
                             (gx#syntax-e _%$%e195862195869%_)))
                        (let ((_%$%hd195866195880%_
                               (##car _%$%e195865195877%_))
                              (_%$%tl195867195882%_
                               (##cdr _%$%e195865195877%_)))
                          (let ((_%body195885%_ _%$%tl195867195882%_))
                            (cons '%#begin-foreign _%body195885%_))))
                      (_%$%E195864195873%_)))))
          (_%$%E195863195887%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx195807%_)
        (let* ((_%$%e195808195821%_ _%stx195807%_)
               (_%$%E195810195825%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195808195821%_)))
               (_%$%E195809195857%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195808195821%_)
                      (let ((_%$%e195811195829%_
                             (gx#syntax-e _%$%e195808195821%_)))
                        (let ((_%$%hd195812195832%_
                               (##car _%$%e195811195829%_))
                              (_%$%tl195813195834%_
                               (##cdr _%$%e195811195829%_)))
                          (if (gx#stx-pair? _%$%tl195813195834%_)
                              (let ((_%$%e195814195837%_
                                     (gx#syntax-e _%$%tl195813195834%_)))
                                (let ((_%$%hd195815195840%_
                                       (##car _%$%e195814195837%_))
                                      (_%$%tl195816195842%_
                                       (##cdr _%$%e195814195837%_)))
                                  (let ((_%ann195845%_ _%$%hd195815195840%_))
                                    (if (gx#stx-pair? _%$%tl195816195842%_)
                                        (let ((_%$%e195817195847%_
                                               (gx#syntax-e
                                                _%$%tl195816195842%_)))
                                          (let ((_%$%hd195818195850%_
                                                 (##car _%$%e195817195847%_))
                                                (_%$%tl195819195852%_
                                                 (##cdr _%$%e195817195847%_)))
                                            (let ((_%expr195855%_
                                                   _%$%hd195818195850%_))
                                              (if (gx#stx-null?
                                                   _%$%tl195819195852%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr195855%_)
                                                  (_%$%E195810195825%_)))))
                                        (_%$%E195810195825%_)))))
                              (_%$%E195810195825%_))))
                      (_%$%E195810195825%_)))))
          (_%$%E195809195857%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx195777%_)
        (let* ((_%$%e195778195785%_ _%stx195777%_)
               (_%$%E195780195789%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195778195785%_)))
               (_%$%E195779195803%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195778195785%_)
                      (let ((_%$%e195781195793%_
                             (gx#syntax-e _%$%e195778195785%_)))
                        (let ((_%$%hd195782195796%_
                               (##car _%$%e195781195793%_))
                              (_%$%tl195783195798%_
                               (##cdr _%$%e195781195793%_)))
                          (let ((_%body195801%_ _%$%tl195783195798%_))
                            (cons '%#import _%body195801%_))))
                      (_%$%E195780195789%_)))))
          (_%$%E195779195803%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx195734%_)
        (let* ((_%$%e195735195745%_ _%stx195734%_)
               (_%$%E195737195749%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195735195745%_)))
               (_%$%E195736195773%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195735195745%_)
                      (let ((_%$%e195738195753%_
                             (gx#syntax-e _%$%e195735195745%_)))
                        (let ((_%$%hd195739195756%_
                               (##car _%$%e195738195753%_))
                              (_%$%tl195740195758%_
                               (##cdr _%$%e195738195753%_)))
                          (if (gx#stx-pair? _%$%tl195740195758%_)
                              (let ((_%$%e195741195761%_
                                     (gx#syntax-e _%$%tl195740195758%_)))
                                (let ((_%$%hd195742195764%_
                                       (##car _%$%e195741195761%_))
                                      (_%$%tl195743195766%_
                                       (##cdr _%$%e195741195761%_)))
                                  (let* ((_%hd195769%_ _%$%hd195742195764%_)
                                         (_%body195771%_ _%$%tl195743195766%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd195769%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body195771%_))))))
                              (_%$%E195737195749%_))))
                      (_%$%E195737195749%_)))))
          (_%$%E195736195773%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx195704%_)
        (let* ((_%$%e195705195712%_ _%stx195704%_)
               (_%$%E195707195716%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195705195712%_)))
               (_%$%E195706195730%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195705195712%_)
                      (let ((_%$%e195708195720%_
                             (gx#syntax-e _%$%e195705195712%_)))
                        (let ((_%$%hd195709195723%_
                               (##car _%$%e195708195720%_))
                              (_%$%tl195710195725%_
                               (##cdr _%$%e195708195720%_)))
                          (let ((_%body195728%_ _%$%tl195710195725%_))
                            (cons '%#export _%body195728%_))))
                      (_%$%E195707195716%_)))))
          (_%$%E195706195730%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx195674%_)
        (let* ((_%$%e195675195682%_ _%stx195674%_)
               (_%$%E195677195686%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195675195682%_)))
               (_%$%E195676195700%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195675195682%_)
                      (let ((_%$%e195678195690%_
                             (gx#syntax-e _%$%e195675195682%_)))
                        (let ((_%$%hd195679195693%_
                               (##car _%$%e195678195690%_))
                              (_%$%tl195680195695%_
                               (##cdr _%$%e195678195690%_)))
                          (let ((_%body195698%_ _%$%tl195680195695%_))
                            (cons '%#provide _%body195698%_))))
                      (_%$%E195677195686%_)))))
          (_%$%E195676195700%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx195644%_)
        (let* ((_%$%e195645195652%_ _%stx195644%_)
               (_%$%E195647195656%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195645195652%_)))
               (_%$%E195646195670%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195645195652%_)
                      (let ((_%$%e195648195660%_
                             (gx#syntax-e _%$%e195645195652%_)))
                        (let ((_%$%hd195649195663%_
                               (##car _%$%e195648195660%_))
                              (_%$%tl195650195665%_
                               (##cdr _%$%e195648195660%_)))
                          (let ((_%body195668%_ _%$%tl195650195665%_))
                            (cons '%#extern _%body195668%_))))
                      (_%$%E195647195656%_)))))
          (_%$%E195646195670%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx195590%_)
        (let* ((_%$%e195591195604%_ _%stx195590%_)
               (_%$%E195593195608%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195591195604%_)))
               (_%$%E195592195640%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195591195604%_)
                      (let ((_%$%e195594195612%_
                             (gx#syntax-e _%$%e195591195604%_)))
                        (let ((_%$%hd195595195615%_
                               (##car _%$%e195594195612%_))
                              (_%$%tl195596195617%_
                               (##cdr _%$%e195594195612%_)))
                          (if (gx#stx-pair? _%$%tl195596195617%_)
                              (let ((_%$%e195597195620%_
                                     (gx#syntax-e _%$%tl195596195617%_)))
                                (let ((_%$%hd195598195623%_
                                       (##car _%$%e195597195620%_))
                                      (_%$%tl195599195625%_
                                       (##cdr _%$%e195597195620%_)))
                                  (let ((_%hd195628%_ _%$%hd195598195623%_))
                                    (if (gx#stx-pair? _%$%tl195599195625%_)
                                        (let ((_%$%e195600195630%_
                                               (gx#syntax-e
                                                _%$%tl195599195625%_)))
                                          (let ((_%$%hd195601195633%_
                                                 (##car _%$%e195600195630%_))
                                                (_%$%tl195602195635%_
                                                 (##cdr _%$%e195600195630%_)))
                                            (let ((_%expr195638%_
                                                   _%$%hd195601195633%_))
                                              (if (gx#stx-null?
                                                   _%$%tl195602195635%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd195628%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr195638%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E195593195608%_)))))
                                        (_%$%E195593195608%_)))))
                              (_%$%E195593195608%_))))
                      (_%$%E195593195608%_)))))
          (_%$%E195592195640%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx195535%_)
        (let* ((_%$%e195536195549%_ _%stx195535%_)
               (_%$%E195538195553%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195536195549%_)))
               (_%$%E195537195586%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195536195549%_)
                      (let ((_%$%e195539195557%_
                             (gx#syntax-e _%$%e195536195549%_)))
                        (let ((_%$%hd195540195560%_
                               (##car _%$%e195539195557%_))
                              (_%$%tl195541195562%_
                               (##cdr _%$%e195539195557%_)))
                          (if (gx#stx-pair? _%$%tl195541195562%_)
                              (let ((_%$%e195542195565%_
                                     (gx#syntax-e _%$%tl195541195562%_)))
                                (let ((_%$%hd195543195568%_
                                       (##car _%$%e195542195565%_))
                                      (_%$%tl195544195570%_
                                       (##cdr _%$%e195542195565%_)))
                                  (let ((_%hd195573%_ _%$%hd195543195568%_))
                                    (if (gx#stx-pair? _%$%tl195544195570%_)
                                        (let ((_%$%e195545195575%_
                                               (gx#syntax-e
                                                _%$%tl195544195570%_)))
                                          (let ((_%$%hd195546195578%_
                                                 (##car _%$%e195545195575%_))
                                                (_%$%tl195547195580%_
                                                 (##cdr _%$%e195545195575%_)))
                                            (let ((_%expr195583%_
                                                   _%$%hd195546195578%_))
                                              (if (gx#stx-null?
                                                   _%$%tl195547195580%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd195573%_
                                                              (cons (call-with-parameters__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr195583%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E195538195553%_)))))
                                        (_%$%E195538195553%_)))))
                              (_%$%E195538195553%_))))
                      (_%$%E195538195553%_)))))
          (_%$%E195537195586%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx195505%_)
        (let* ((_%$%e195506195513%_ _%stx195505%_)
               (_%$%E195508195517%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195506195513%_)))
               (_%$%E195507195531%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195506195513%_)
                      (let ((_%$%e195509195521%_
                             (gx#syntax-e _%$%e195506195513%_)))
                        (let ((_%$%hd195510195524%_
                               (##car _%$%e195509195521%_))
                              (_%$%tl195511195526%_
                               (##cdr _%$%e195509195521%_)))
                          (let ((_%body195529%_ _%$%tl195511195526%_))
                            (cons '%#define-alias _%body195529%_))))
                      (_%$%E195508195517%_)))))
          (_%$%E195507195531%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx195475%_)
        (let* ((_%$%e195476195483%_ _%stx195475%_)
               (_%$%E195478195487%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195476195483%_)))
               (_%$%E195477195501%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195476195483%_)
                      (let ((_%$%e195479195491%_
                             (gx#syntax-e _%$%e195476195483%_)))
                        (let ((_%$%hd195480195494%_
                               (##car _%$%e195479195491%_))
                              (_%$%tl195481195496%_
                               (##cdr _%$%e195479195491%_)))
                          (let ((_%body195499%_ _%$%tl195481195496%_))
                            (cons '%#define-runtime _%body195499%_))))
                      (_%$%E195478195487%_)))))
          (_%$%E195477195501%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx195445%_)
        (let* ((_%$%e195446195453%_ _%stx195445%_)
               (_%$%E195448195457%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195446195453%_)))
               (_%$%E195447195471%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195446195453%_)
                      (let ((_%$%e195449195461%_
                             (gx#syntax-e _%$%e195446195453%_)))
                        (let ((_%$%hd195450195464%_
                               (##car _%$%e195449195461%_))
                              (_%$%tl195451195466%_
                               (##cdr _%$%e195449195461%_)))
                          (let ((_%decls195469%_ _%$%tl195451195466%_))
                            (cons '%#declare _%decls195469%_))))
                      (_%$%E195448195457%_)))))
          (_%$%E195447195471%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx195415%_)
        (let* ((_%$%e195416195423%_ _%stx195415%_)
               (_%$%E195418195427%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195416195423%_)))
               (_%$%E195417195441%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195416195423%_)
                      (let ((_%$%e195419195431%_
                             (gx#syntax-e _%$%e195416195423%_)))
                        (let ((_%$%hd195420195434%_
                               (##car _%$%e195419195431%_))
                              (_%$%tl195421195436%_
                               (##cdr _%$%e195419195431%_)))
                          (let ((_%clause195439%_ _%$%tl195421195436%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause195439%_)))))
                      (_%$%E195418195427%_)))))
          (_%$%E195417195441%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx195372%_)
        (let* ((_%$%e195373195383%_ _%stx195372%_)
               (_%$%E195375195387%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195373195383%_)))
               (_%$%E195374195411%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195373195383%_)
                      (let ((_%$%e195376195391%_
                             (gx#syntax-e _%$%e195373195383%_)))
                        (let ((_%$%hd195377195394%_
                               (##car _%$%e195376195391%_))
                              (_%$%tl195378195396%_
                               (##cdr _%$%e195376195391%_)))
                          (let ((_%hd195399%_ _%$%hd195377195394%_))
                            (if (gx#stx-pair? _%$%tl195378195396%_)
                                (let ((_%$%e195379195401%_
                                       (gx#syntax-e _%$%tl195378195396%_)))
                                  (let ((_%$%hd195380195404%_
                                         (##car _%$%e195379195401%_))
                                        (_%$%tl195381195406%_
                                         (##cdr _%$%e195379195401%_)))
                                    (let ((_%body195409%_
                                           _%$%hd195380195404%_))
                                      (if (gx#stx-null? _%$%tl195381195406%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd195399%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body195409%_)
                                                      '()))
                                          (_%$%E195375195387%_)))))
                                (_%$%E195375195387%_)))))
                      (_%$%E195375195387%_)))))
          (_%$%E195374195411%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx195342%_)
        (let* ((_%$%e195343195350%_ _%stx195342%_)
               (_%$%E195345195354%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195343195350%_)))
               (_%$%E195344195368%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195343195350%_)
                      (let ((_%$%e195346195358%_
                             (gx#syntax-e _%$%e195343195350%_)))
                        (let ((_%$%hd195347195361%_
                               (##car _%$%e195346195358%_))
                              (_%$%tl195348195363%_
                               (##cdr _%$%e195346195358%_)))
                          (let ((_%clauses195366%_ _%$%tl195348195363%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses195366%_)))))
                      (_%$%E195345195354%_)))))
          (_%$%E195344195368%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx195277%_ _%form195278%_)
        (let* ((_%$%e195279195292%_ _%stx195277%_)
               (_%$%E195281195296%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195279195292%_)))
               (_%$%E195280195328%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195279195292%_)
                      (let ((_%$%e195282195300%_
                             (gx#syntax-e _%$%e195279195292%_)))
                        (let ((_%$%hd195283195303%_
                               (##car _%$%e195282195300%_))
                              (_%$%tl195284195305%_
                               (##cdr _%$%e195282195300%_)))
                          (if (gx#stx-pair? _%$%tl195284195305%_)
                              (let ((_%$%e195285195308%_
                                     (gx#syntax-e _%$%tl195284195305%_)))
                                (let ((_%$%hd195286195311%_
                                       (##car _%$%e195285195308%_))
                                      (_%$%tl195287195313%_
                                       (##cdr _%$%e195285195308%_)))
                                  (let ((_%hd195316%_ _%$%hd195286195311%_))
                                    (if (gx#stx-pair? _%$%tl195287195313%_)
                                        (let ((_%$%e195288195318%_
                                               (gx#syntax-e
                                                _%$%tl195287195313%_)))
                                          (let ((_%$%hd195289195321%_
                                                 (##car _%$%e195288195318%_))
                                                (_%$%tl195290195323%_
                                                 (##cdr _%$%e195288195318%_)))
                                            (let ((_%body195326%_
                                                   _%$%hd195289195321%_))
                                              (if (gx#stx-null?
                                                   _%$%tl195290195323%_)
                                                  (cons _%form195278%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd195316%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body195326%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E195281195296%_)))))
                                        (_%$%E195281195296%_)))))
                              (_%$%E195281195296%_))))
                      (_%$%E195281195296%_)))))
          (_%$%E195280195328%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx195335%_)
        (let ((_%form195337%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx195335%_ _%form195337%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g196160_
        (let ((_g196161_ (##length _g196160_)))
          (cond ((##fx= _g196161_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g196160_))
                ((##fx= _g196161_ 2)
                 (apply gx#core-compile-top-let-values%__% _g196160_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g196160_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx195274%_)
        (gx#core-compile-top-let-values%__% _%stx195274%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx195272%_)
        (gx#core-compile-top-let-values%__% _%stx195272%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx195231%_)
        (let* ((_%$%e195232195242%_ _%stx195231%_)
               (_%$%E195234195246%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195232195242%_)))
               (_%$%E195233195268%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195232195242%_)
                      (let ((_%$%e195235195250%_
                             (gx#syntax-e _%$%e195232195242%_)))
                        (let ((_%$%hd195236195253%_
                               (##car _%$%e195235195250%_))
                              (_%$%tl195237195255%_
                               (##cdr _%$%e195235195250%_)))
                          (if (gx#stx-pair? _%$%tl195237195255%_)
                              (let ((_%$%e195238195258%_
                                     (gx#syntax-e _%$%tl195237195255%_)))
                                (let ((_%$%hd195239195261%_
                                       (##car _%$%e195238195258%_))
                                      (_%$%tl195240195263%_
                                       (##cdr _%$%e195238195258%_)))
                                  (let ((_%e195266%_ _%$%hd195239195261%_))
                                    (if (gx#stx-null? _%$%tl195240195263%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e195266%_)
                                                    '()))
                                        (_%$%E195234195246%_)))))
                              (_%$%E195234195246%_))))
                      (_%$%E195234195246%_)))))
          (_%$%E195233195268%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx195190%_)
        (let* ((_%$%e195191195201%_ _%stx195190%_)
               (_%$%E195193195205%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195191195201%_)))
               (_%$%E195192195227%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195191195201%_)
                      (let ((_%$%e195194195209%_
                             (gx#syntax-e _%$%e195191195201%_)))
                        (let ((_%$%hd195195195212%_
                               (##car _%$%e195194195209%_))
                              (_%$%tl195196195214%_
                               (##cdr _%$%e195194195209%_)))
                          (if (gx#stx-pair? _%$%tl195196195214%_)
                              (let ((_%$%e195197195217%_
                                     (gx#syntax-e _%$%tl195196195214%_)))
                                (let ((_%$%hd195198195220%_
                                       (##car _%$%e195197195217%_))
                                      (_%$%tl195199195222%_
                                       (##cdr _%$%e195197195217%_)))
                                  (let ((_%e195225%_ _%$%hd195198195220%_))
                                    (if (gx#stx-null? _%$%tl195199195222%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e195225%_)
                                                    '()))
                                        (_%$%E195193195205%_)))))
                              (_%$%E195193195205%_))))
                      (_%$%E195193195205%_)))))
          (_%$%E195192195227%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx195147%_)
        (let* ((_%$%e195148195158%_ _%stx195147%_)
               (_%$%E195150195162%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195148195158%_)))
               (_%$%E195149195186%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195148195158%_)
                      (let ((_%$%e195151195166%_
                             (gx#syntax-e _%$%e195148195158%_)))
                        (let ((_%$%hd195152195169%_
                               (##car _%$%e195151195166%_))
                              (_%$%tl195153195171%_
                               (##cdr _%$%e195151195166%_)))
                          (if (gx#stx-pair? _%$%tl195153195171%_)
                              (let ((_%$%e195154195174%_
                                     (gx#syntax-e _%$%tl195153195171%_)))
                                (let ((_%$%hd195155195177%_
                                       (##car _%$%e195154195174%_))
                                      (_%$%tl195156195179%_
                                       (##cdr _%$%e195154195174%_)))
                                  (let* ((_%rator195182%_ _%$%hd195155195177%_)
                                         (_%args195184%_ _%$%tl195156195179%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator195182%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args195184%_))))))
                              (_%$%E195150195162%_))))
                      (_%$%E195150195162%_)))))
          (_%$%E195149195186%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx195080%_)
        (let* ((_%$%e195081195097%_ _%stx195080%_)
               (_%$%E195083195101%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195081195097%_)))
               (_%$%E195082195143%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195081195097%_)
                      (let ((_%$%e195084195105%_
                             (gx#syntax-e _%$%e195081195097%_)))
                        (let ((_%$%hd195085195108%_
                               (##car _%$%e195084195105%_))
                              (_%$%tl195086195110%_
                               (##cdr _%$%e195084195105%_)))
                          (if (gx#stx-pair? _%$%tl195086195110%_)
                              (let ((_%$%e195087195113%_
                                     (gx#syntax-e _%$%tl195086195110%_)))
                                (let ((_%$%hd195088195116%_
                                       (##car _%$%e195087195113%_))
                                      (_%$%tl195089195118%_
                                       (##cdr _%$%e195087195113%_)))
                                  (let ((_%test195121%_ _%$%hd195088195116%_))
                                    (if (gx#stx-pair? _%$%tl195089195118%_)
                                        (let ((_%$%e195090195123%_
                                               (gx#syntax-e
                                                _%$%tl195089195118%_)))
                                          (let ((_%$%hd195091195126%_
                                                 (##car _%$%e195090195123%_))
                                                (_%$%tl195092195128%_
                                                 (##cdr _%$%e195090195123%_)))
                                            (let ((_%K195131%_
                                                   _%$%hd195091195126%_))
                                              (if (gx#stx-pair?
                                                   _%$%tl195092195128%_)
                                                  (let ((_%$%e195093195133%_
                                                         (gx#syntax-e
                                                          _%$%tl195092195128%_)))
                                                    (let ((_%$%hd195094195136%_
                                                           (##car _%$%e195093195133%_))
                                                          (_%$%tl195095195138%_
                                                           (##cdr _%$%e195093195133%_)))
                                                      (let ((_%E195141%_
                                                             _%$%hd195094195136%_))
                                                        (if (gx#stx-null?
                                                             _%$%tl195095195138%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test195121%_)
                                (cons (gx#core-compile-top-syntax _%K195131%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E195141%_)
                                            '()))))
                    (_%$%E195083195101%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E195083195101%_)))))
                                        (_%$%E195083195101%_)))))
                              (_%$%E195083195101%_))))
                      (_%$%E195083195101%_)))))
          (_%$%E195082195143%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx195039%_)
        (let* ((_%$%e195040195050%_ _%stx195039%_)
               (_%$%E195042195054%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195040195050%_)))
               (_%$%E195041195076%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195040195050%_)
                      (let ((_%$%e195043195058%_
                             (gx#syntax-e _%$%e195040195050%_)))
                        (let ((_%$%hd195044195061%_
                               (##car _%$%e195043195058%_))
                              (_%$%tl195045195063%_
                               (##cdr _%$%e195043195058%_)))
                          (if (gx#stx-pair? _%$%tl195045195063%_)
                              (let ((_%$%e195046195066%_
                                     (gx#syntax-e _%$%tl195045195063%_)))
                                (let ((_%$%hd195047195069%_
                                       (##car _%$%e195046195066%_))
                                      (_%$%tl195048195071%_
                                       (##cdr _%$%e195046195066%_)))
                                  (let ((_%id195074%_ _%$%hd195047195069%_))
                                    (if (gx#stx-null? _%$%tl195048195071%_)
                                        (if (gx#identifier? _%id195074%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id195074%_)
                                                        '()))
                                            (_%$%E195042195054%_))
                                        (_%$%E195042195054%_)))))
                              (_%$%E195042195054%_))))
                      (_%$%E195042195054%_)))))
          (_%$%E195041195076%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx194985%_)
        (let* ((_%$%e194986194999%_ _%stx194985%_)
               (_%$%E194988195003%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e194986194999%_)))
               (_%$%E194987195035%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e194986194999%_)
                      (let ((_%$%e194989195007%_
                             (gx#syntax-e _%$%e194986194999%_)))
                        (let ((_%$%hd194990195010%_
                               (##car _%$%e194989195007%_))
                              (_%$%tl194991195012%_
                               (##cdr _%$%e194989195007%_)))
                          (if (gx#stx-pair? _%$%tl194991195012%_)
                              (let ((_%$%e194992195015%_
                                     (gx#syntax-e _%$%tl194991195012%_)))
                                (let ((_%$%hd194993195018%_
                                       (##car _%$%e194992195015%_))
                                      (_%$%tl194994195020%_
                                       (##cdr _%$%e194992195015%_)))
                                  (let ((_%id195023%_ _%$%hd194993195018%_))
                                    (if (gx#stx-pair? _%$%tl194994195020%_)
                                        (let ((_%$%e194995195025%_
                                               (gx#syntax-e
                                                _%$%tl194994195020%_)))
                                          (let ((_%$%hd194996195028%_
                                                 (##car _%$%e194995195025%_))
                                                (_%$%tl194997195030%_
                                                 (##cdr _%$%e194995195025%_)))
                                            (let ((_%expr195033%_
                                                   _%$%hd194996195028%_))
                                              (if (gx#stx-null?
                                                   _%$%tl194997195030%_)
                                                  (if (gx#identifier?
                                                       _%id195023%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id195023%_)
                          (cons (gx#core-compile-top-syntax _%expr195033%_)
                                '())))
              (_%$%E194988195003%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E194988195003%_)))))
                                        (_%$%E194988195003%_)))))
                              (_%$%E194988195003%_))))
                      (_%$%E194988195003%_)))))
          (_%$%E194987195035%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id194979%_)
        (let ((_%$e194981%_ (gx#resolve-identifier__0 _%id194979%_)))
          (if _%$e194981%_
              (##unchecked-structure-ref _%$e194981%_ '1 '#f '#f)
              _%id194979%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd194977%_)
        (if (gx#identifier? _%hd194977%_)
            (gx#core-compile-top-runtime-ref _%hd194977%_)
            '#f)))))
