(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1784471384)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx196262%_)
        (let* ((_%$%e196263196270%_ _%stx196262%_)
               (_%$%E196265196274%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196263196270%_)))
               (_%$%E196264196288%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196263196270%_)
                      (let ((_%$%e196266196278%_
                             (gx#syntax-e _%$%e196263196270%_)))
                        (let ((_%$%hd196267196281%_
                               (##car _%$%e196266196278%_))
                              (_%$%tl196268196283%_
                               (##cdr _%$%e196266196278%_)))
                          (let* ((_%form196286%_ _%$%hd196267196281%_)
                                 (__self196291
                                  (gx#syntax-local-e__0 _%form196286%_))
                                 (__method196292
                                  (__method-ref
                                   __self196291
                                   'compile-top-syntax)))
                            (if __method196292
                                (__method196292 __self196291 _%stx196262%_)
                                (begin
                                  (error '"Missing method"
                                         __self196291
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%$%E196265196274%_)))))
          (_%$%E196264196288%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self196211%_ _%stx196212%_)
        (let* ((_%self196215%_ _%self196211%_)
               (_%$%self196224196232%_ _%self196215%_)
               (_%$%E196226196235%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%self196224196232%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%$%K196227196248%_
                (lambda (_%K196238%_)
                  (let ((_%$e196240%_ (gx#stx-source _%stx196212%_)))
                    (if _%$e196240%_
                        (gx#stx-wrap-source
                         (_%K196238%_ _%stx196212%_)
                         _%$e196240%_)
                        (_%K196238%_ _%stx196212%_)))))
               (_%$%e196228196251%_
                (##unchecked-structure-ref _%$%self196224196232%_ '1 '#f '#f))
               (_%$%e196229196254%_
                (##unchecked-structure-ref _%$%self196224196232%_ '2 '#f '#f))
               (_%$%e196230196257%_
                (##unchecked-structure-ref _%$%self196224196232%_ '3 '#f '#f))
               (_%K196260%_ _%$%e196230196257%_))
          (_%$%K196227196248%_ _%K196260%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx196085%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx196085%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx196055%_)
        (let* ((_%$%e196056196063%_ _%stx196055%_)
               (_%$%E196058196067%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196056196063%_)))
               (_%$%E196057196081%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196056196063%_)
                      (let ((_%$%e196059196071%_
                             (gx#syntax-e _%$%e196056196063%_)))
                        (let ((_%$%hd196060196074%_
                               (##car _%$%e196059196071%_))
                              (_%$%tl196061196076%_
                               (##cdr _%$%e196059196071%_)))
                          (let ((_%body196079%_ _%$%tl196061196076%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body196079%_)))))
                      (_%$%E196058196067%_)))))
          (_%$%E196057196081%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx196024%_)
        (let* ((_%$%e196025196032%_ _%stx196024%_)
               (_%$%E196027196036%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e196025196032%_)))
               (_%$%E196026196051%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e196025196032%_)
                      (let ((_%$%e196028196040%_
                             (gx#syntax-e _%$%e196025196032%_)))
                        (let ((_%$%hd196029196043%_
                               (##car _%$%e196028196040%_))
                              (_%$%tl196030196045%_
                               (##cdr _%$%e196028196040%_)))
                          (let ((_%body196048%_ _%$%tl196030196045%_))
                            (cons '%#begin-syntax
                                  (call-with-parameters__1
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body196048%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%$%E196027196036%_)))))
          (_%$%E196026196051%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx195994%_)
        (let* ((_%$%e195995196002%_ _%stx195994%_)
               (_%$%E195997196006%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195995196002%_)))
               (_%$%E195996196020%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195995196002%_)
                      (let ((_%$%e195998196010%_
                             (gx#syntax-e _%$%e195995196002%_)))
                        (let ((_%$%hd195999196013%_
                               (##car _%$%e195998196010%_))
                              (_%$%tl196000196015%_
                               (##cdr _%$%e195998196010%_)))
                          (let ((_%body196018%_ _%$%tl196000196015%_))
                            (cons '%#begin-foreign _%body196018%_))))
                      (_%$%E195997196006%_)))))
          (_%$%E195996196020%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx195940%_)
        (let* ((_%$%e195941195954%_ _%stx195940%_)
               (_%$%E195943195958%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195941195954%_)))
               (_%$%E195942195990%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195941195954%_)
                      (let ((_%$%e195944195962%_
                             (gx#syntax-e _%$%e195941195954%_)))
                        (let ((_%$%hd195945195965%_
                               (##car _%$%e195944195962%_))
                              (_%$%tl195946195967%_
                               (##cdr _%$%e195944195962%_)))
                          (if (gx#stx-pair? _%$%tl195946195967%_)
                              (let ((_%$%e195947195970%_
                                     (gx#syntax-e _%$%tl195946195967%_)))
                                (let ((_%$%hd195948195973%_
                                       (##car _%$%e195947195970%_))
                                      (_%$%tl195949195975%_
                                       (##cdr _%$%e195947195970%_)))
                                  (let ((_%ann195978%_ _%$%hd195948195973%_))
                                    (if (gx#stx-pair? _%$%tl195949195975%_)
                                        (let ((_%$%e195950195980%_
                                               (gx#syntax-e
                                                _%$%tl195949195975%_)))
                                          (let ((_%$%hd195951195983%_
                                                 (##car _%$%e195950195980%_))
                                                (_%$%tl195952195985%_
                                                 (##cdr _%$%e195950195980%_)))
                                            (let ((_%expr195988%_
                                                   _%$%hd195951195983%_))
                                              (if (gx#stx-null?
                                                   _%$%tl195952195985%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr195988%_)
                                                  (_%$%E195943195958%_)))))
                                        (_%$%E195943195958%_)))))
                              (_%$%E195943195958%_))))
                      (_%$%E195943195958%_)))))
          (_%$%E195942195990%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx195910%_)
        (let* ((_%$%e195911195918%_ _%stx195910%_)
               (_%$%E195913195922%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195911195918%_)))
               (_%$%E195912195936%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195911195918%_)
                      (let ((_%$%e195914195926%_
                             (gx#syntax-e _%$%e195911195918%_)))
                        (let ((_%$%hd195915195929%_
                               (##car _%$%e195914195926%_))
                              (_%$%tl195916195931%_
                               (##cdr _%$%e195914195926%_)))
                          (let ((_%body195934%_ _%$%tl195916195931%_))
                            (cons '%#import _%body195934%_))))
                      (_%$%E195913195922%_)))))
          (_%$%E195912195936%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx195867%_)
        (let* ((_%$%e195868195878%_ _%stx195867%_)
               (_%$%E195870195882%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195868195878%_)))
               (_%$%E195869195906%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195868195878%_)
                      (let ((_%$%e195871195886%_
                             (gx#syntax-e _%$%e195868195878%_)))
                        (let ((_%$%hd195872195889%_
                               (##car _%$%e195871195886%_))
                              (_%$%tl195873195891%_
                               (##cdr _%$%e195871195886%_)))
                          (if (gx#stx-pair? _%$%tl195873195891%_)
                              (let ((_%$%e195874195894%_
                                     (gx#syntax-e _%$%tl195873195891%_)))
                                (let ((_%$%hd195875195897%_
                                       (##car _%$%e195874195894%_))
                                      (_%$%tl195876195899%_
                                       (##cdr _%$%e195874195894%_)))
                                  (let* ((_%hd195902%_ _%$%hd195875195897%_)
                                         (_%body195904%_ _%$%tl195876195899%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd195902%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body195904%_))))))
                              (_%$%E195870195882%_))))
                      (_%$%E195870195882%_)))))
          (_%$%E195869195906%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx195837%_)
        (let* ((_%$%e195838195845%_ _%stx195837%_)
               (_%$%E195840195849%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195838195845%_)))
               (_%$%E195839195863%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195838195845%_)
                      (let ((_%$%e195841195853%_
                             (gx#syntax-e _%$%e195838195845%_)))
                        (let ((_%$%hd195842195856%_
                               (##car _%$%e195841195853%_))
                              (_%$%tl195843195858%_
                               (##cdr _%$%e195841195853%_)))
                          (let ((_%body195861%_ _%$%tl195843195858%_))
                            (cons '%#export _%body195861%_))))
                      (_%$%E195840195849%_)))))
          (_%$%E195839195863%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx195807%_)
        (let* ((_%$%e195808195815%_ _%stx195807%_)
               (_%$%E195810195819%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195808195815%_)))
               (_%$%E195809195833%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195808195815%_)
                      (let ((_%$%e195811195823%_
                             (gx#syntax-e _%$%e195808195815%_)))
                        (let ((_%$%hd195812195826%_
                               (##car _%$%e195811195823%_))
                              (_%$%tl195813195828%_
                               (##cdr _%$%e195811195823%_)))
                          (let ((_%body195831%_ _%$%tl195813195828%_))
                            (cons '%#provide _%body195831%_))))
                      (_%$%E195810195819%_)))))
          (_%$%E195809195833%_))))
    (define gx#core-compile-top-extern%
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
                            (cons '%#extern _%body195801%_))))
                      (_%$%E195780195789%_)))))
          (_%$%E195779195803%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx195723%_)
        (let* ((_%$%e195724195737%_ _%stx195723%_)
               (_%$%E195726195741%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195724195737%_)))
               (_%$%E195725195773%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195724195737%_)
                      (let ((_%$%e195727195745%_
                             (gx#syntax-e _%$%e195724195737%_)))
                        (let ((_%$%hd195728195748%_
                               (##car _%$%e195727195745%_))
                              (_%$%tl195729195750%_
                               (##cdr _%$%e195727195745%_)))
                          (if (gx#stx-pair? _%$%tl195729195750%_)
                              (let ((_%$%e195730195753%_
                                     (gx#syntax-e _%$%tl195729195750%_)))
                                (let ((_%$%hd195731195756%_
                                       (##car _%$%e195730195753%_))
                                      (_%$%tl195732195758%_
                                       (##cdr _%$%e195730195753%_)))
                                  (let ((_%hd195761%_ _%$%hd195731195756%_))
                                    (if (gx#stx-pair? _%$%tl195732195758%_)
                                        (let ((_%$%e195733195763%_
                                               (gx#syntax-e
                                                _%$%tl195732195758%_)))
                                          (let ((_%$%hd195734195766%_
                                                 (##car _%$%e195733195763%_))
                                                (_%$%tl195735195768%_
                                                 (##cdr _%$%e195733195763%_)))
                                            (let ((_%expr195771%_
                                                   _%$%hd195734195766%_))
                                              (if (gx#stx-null?
                                                   _%$%tl195735195768%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd195761%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr195771%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E195726195741%_)))))
                                        (_%$%E195726195741%_)))))
                              (_%$%E195726195741%_))))
                      (_%$%E195726195741%_)))))
          (_%$%E195725195773%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx195668%_)
        (let* ((_%$%e195669195682%_ _%stx195668%_)
               (_%$%E195671195686%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195669195682%_)))
               (_%$%E195670195719%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195669195682%_)
                      (let ((_%$%e195672195690%_
                             (gx#syntax-e _%$%e195669195682%_)))
                        (let ((_%$%hd195673195693%_
                               (##car _%$%e195672195690%_))
                              (_%$%tl195674195695%_
                               (##cdr _%$%e195672195690%_)))
                          (if (gx#stx-pair? _%$%tl195674195695%_)
                              (let ((_%$%e195675195698%_
                                     (gx#syntax-e _%$%tl195674195695%_)))
                                (let ((_%$%hd195676195701%_
                                       (##car _%$%e195675195698%_))
                                      (_%$%tl195677195703%_
                                       (##cdr _%$%e195675195698%_)))
                                  (let ((_%hd195706%_ _%$%hd195676195701%_))
                                    (if (gx#stx-pair? _%$%tl195677195703%_)
                                        (let ((_%$%e195678195708%_
                                               (gx#syntax-e
                                                _%$%tl195677195703%_)))
                                          (let ((_%$%hd195679195711%_
                                                 (##car _%$%e195678195708%_))
                                                (_%$%tl195680195713%_
                                                 (##cdr _%$%e195678195708%_)))
                                            (let ((_%expr195716%_
                                                   _%$%hd195679195711%_))
                                              (if (gx#stx-null?
                                                   _%$%tl195680195713%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd195706%_
                                                              (cons (call-with-parameters__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr195716%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E195671195686%_)))))
                                        (_%$%E195671195686%_)))))
                              (_%$%E195671195686%_))))
                      (_%$%E195671195686%_)))))
          (_%$%E195670195719%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx195638%_)
        (let* ((_%$%e195639195646%_ _%stx195638%_)
               (_%$%E195641195650%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195639195646%_)))
               (_%$%E195640195664%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195639195646%_)
                      (let ((_%$%e195642195654%_
                             (gx#syntax-e _%$%e195639195646%_)))
                        (let ((_%$%hd195643195657%_
                               (##car _%$%e195642195654%_))
                              (_%$%tl195644195659%_
                               (##cdr _%$%e195642195654%_)))
                          (let ((_%body195662%_ _%$%tl195644195659%_))
                            (cons '%#define-alias _%body195662%_))))
                      (_%$%E195641195650%_)))))
          (_%$%E195640195664%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx195608%_)
        (let* ((_%$%e195609195616%_ _%stx195608%_)
               (_%$%E195611195620%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195609195616%_)))
               (_%$%E195610195634%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195609195616%_)
                      (let ((_%$%e195612195624%_
                             (gx#syntax-e _%$%e195609195616%_)))
                        (let ((_%$%hd195613195627%_
                               (##car _%$%e195612195624%_))
                              (_%$%tl195614195629%_
                               (##cdr _%$%e195612195624%_)))
                          (let ((_%body195632%_ _%$%tl195614195629%_))
                            (cons '%#define-runtime _%body195632%_))))
                      (_%$%E195611195620%_)))))
          (_%$%E195610195634%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx195578%_)
        (let* ((_%$%e195579195586%_ _%stx195578%_)
               (_%$%E195581195590%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195579195586%_)))
               (_%$%E195580195604%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195579195586%_)
                      (let ((_%$%e195582195594%_
                             (gx#syntax-e _%$%e195579195586%_)))
                        (let ((_%$%hd195583195597%_
                               (##car _%$%e195582195594%_))
                              (_%$%tl195584195599%_
                               (##cdr _%$%e195582195594%_)))
                          (let ((_%decls195602%_ _%$%tl195584195599%_))
                            (cons '%#declare _%decls195602%_))))
                      (_%$%E195581195590%_)))))
          (_%$%E195580195604%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx195548%_)
        (let* ((_%$%e195549195556%_ _%stx195548%_)
               (_%$%E195551195560%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195549195556%_)))
               (_%$%E195550195574%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195549195556%_)
                      (let ((_%$%e195552195564%_
                             (gx#syntax-e _%$%e195549195556%_)))
                        (let ((_%$%hd195553195567%_
                               (##car _%$%e195552195564%_))
                              (_%$%tl195554195569%_
                               (##cdr _%$%e195552195564%_)))
                          (let ((_%clause195572%_ _%$%tl195554195569%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause195572%_)))))
                      (_%$%E195551195560%_)))))
          (_%$%E195550195574%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx195505%_)
        (let* ((_%$%e195506195516%_ _%stx195505%_)
               (_%$%E195508195520%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195506195516%_)))
               (_%$%E195507195544%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195506195516%_)
                      (let ((_%$%e195509195524%_
                             (gx#syntax-e _%$%e195506195516%_)))
                        (let ((_%$%hd195510195527%_
                               (##car _%$%e195509195524%_))
                              (_%$%tl195511195529%_
                               (##cdr _%$%e195509195524%_)))
                          (let ((_%hd195532%_ _%$%hd195510195527%_))
                            (if (gx#stx-pair? _%$%tl195511195529%_)
                                (let ((_%$%e195512195534%_
                                       (gx#syntax-e _%$%tl195511195529%_)))
                                  (let ((_%$%hd195513195537%_
                                         (##car _%$%e195512195534%_))
                                        (_%$%tl195514195539%_
                                         (##cdr _%$%e195512195534%_)))
                                    (let ((_%body195542%_
                                           _%$%hd195513195537%_))
                                      (if (gx#stx-null? _%$%tl195514195539%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd195532%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body195542%_)
                                                      '()))
                                          (_%$%E195508195520%_)))))
                                (_%$%E195508195520%_)))))
                      (_%$%E195508195520%_)))))
          (_%$%E195507195544%_))))
    (define gx#core-compile-top-case-lambda%
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
                          (let ((_%clauses195499%_ _%$%tl195481195496%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses195499%_)))))
                      (_%$%E195478195487%_)))))
          (_%$%E195477195501%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx195410%_ _%form195411%_)
        (let* ((_%$%e195412195425%_ _%stx195410%_)
               (_%$%E195414195429%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195412195425%_)))
               (_%$%E195413195461%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195412195425%_)
                      (let ((_%$%e195415195433%_
                             (gx#syntax-e _%$%e195412195425%_)))
                        (let ((_%$%hd195416195436%_
                               (##car _%$%e195415195433%_))
                              (_%$%tl195417195438%_
                               (##cdr _%$%e195415195433%_)))
                          (if (gx#stx-pair? _%$%tl195417195438%_)
                              (let ((_%$%e195418195441%_
                                     (gx#syntax-e _%$%tl195417195438%_)))
                                (let ((_%$%hd195419195444%_
                                       (##car _%$%e195418195441%_))
                                      (_%$%tl195420195446%_
                                       (##cdr _%$%e195418195441%_)))
                                  (let ((_%hd195449%_ _%$%hd195419195444%_))
                                    (if (gx#stx-pair? _%$%tl195420195446%_)
                                        (let ((_%$%e195421195451%_
                                               (gx#syntax-e
                                                _%$%tl195420195446%_)))
                                          (let ((_%$%hd195422195454%_
                                                 (##car _%$%e195421195451%_))
                                                (_%$%tl195423195456%_
                                                 (##cdr _%$%e195421195451%_)))
                                            (let ((_%body195459%_
                                                   _%$%hd195422195454%_))
                                              (if (gx#stx-null?
                                                   _%$%tl195423195456%_)
                                                  (cons _%form195411%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd195449%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body195459%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E195414195429%_)))))
                                        (_%$%E195414195429%_)))))
                              (_%$%E195414195429%_))))
                      (_%$%E195414195429%_)))))
          (_%$%E195413195461%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx195468%_)
        (let ((_%form195470%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx195468%_ _%form195470%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g196293_
        (let ((_g196294_ (##length _g196293_)))
          (cond ((##fx= _g196294_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g196293_))
                ((##fx= _g196294_ 2)
                 (apply gx#core-compile-top-let-values%__% _g196293_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g196293_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx195407%_)
        (gx#core-compile-top-let-values%__% _%stx195407%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx195405%_)
        (gx#core-compile-top-let-values%__% _%stx195405%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx195364%_)
        (let* ((_%$%e195365195375%_ _%stx195364%_)
               (_%$%E195367195379%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195365195375%_)))
               (_%$%E195366195401%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195365195375%_)
                      (let ((_%$%e195368195383%_
                             (gx#syntax-e _%$%e195365195375%_)))
                        (let ((_%$%hd195369195386%_
                               (##car _%$%e195368195383%_))
                              (_%$%tl195370195388%_
                               (##cdr _%$%e195368195383%_)))
                          (if (gx#stx-pair? _%$%tl195370195388%_)
                              (let ((_%$%e195371195391%_
                                     (gx#syntax-e _%$%tl195370195388%_)))
                                (let ((_%$%hd195372195394%_
                                       (##car _%$%e195371195391%_))
                                      (_%$%tl195373195396%_
                                       (##cdr _%$%e195371195391%_)))
                                  (let ((_%e195399%_ _%$%hd195372195394%_))
                                    (if (gx#stx-null? _%$%tl195373195396%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e195399%_)
                                                    '()))
                                        (_%$%E195367195379%_)))))
                              (_%$%E195367195379%_))))
                      (_%$%E195367195379%_)))))
          (_%$%E195366195401%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx195323%_)
        (let* ((_%$%e195324195334%_ _%stx195323%_)
               (_%$%E195326195338%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195324195334%_)))
               (_%$%E195325195360%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195324195334%_)
                      (let ((_%$%e195327195342%_
                             (gx#syntax-e _%$%e195324195334%_)))
                        (let ((_%$%hd195328195345%_
                               (##car _%$%e195327195342%_))
                              (_%$%tl195329195347%_
                               (##cdr _%$%e195327195342%_)))
                          (if (gx#stx-pair? _%$%tl195329195347%_)
                              (let ((_%$%e195330195350%_
                                     (gx#syntax-e _%$%tl195329195347%_)))
                                (let ((_%$%hd195331195353%_
                                       (##car _%$%e195330195350%_))
                                      (_%$%tl195332195355%_
                                       (##cdr _%$%e195330195350%_)))
                                  (let ((_%e195358%_ _%$%hd195331195353%_))
                                    (if (gx#stx-null? _%$%tl195332195355%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e195358%_)
                                                    '()))
                                        (_%$%E195326195338%_)))))
                              (_%$%E195326195338%_))))
                      (_%$%E195326195338%_)))))
          (_%$%E195325195360%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx195280%_)
        (let* ((_%$%e195281195291%_ _%stx195280%_)
               (_%$%E195283195295%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195281195291%_)))
               (_%$%E195282195319%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195281195291%_)
                      (let ((_%$%e195284195299%_
                             (gx#syntax-e _%$%e195281195291%_)))
                        (let ((_%$%hd195285195302%_
                               (##car _%$%e195284195299%_))
                              (_%$%tl195286195304%_
                               (##cdr _%$%e195284195299%_)))
                          (if (gx#stx-pair? _%$%tl195286195304%_)
                              (let ((_%$%e195287195307%_
                                     (gx#syntax-e _%$%tl195286195304%_)))
                                (let ((_%$%hd195288195310%_
                                       (##car _%$%e195287195307%_))
                                      (_%$%tl195289195312%_
                                       (##cdr _%$%e195287195307%_)))
                                  (let* ((_%rator195315%_ _%$%hd195288195310%_)
                                         (_%args195317%_ _%$%tl195289195312%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator195315%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args195317%_))))))
                              (_%$%E195283195295%_))))
                      (_%$%E195283195295%_)))))
          (_%$%E195282195319%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx195213%_)
        (let* ((_%$%e195214195230%_ _%stx195213%_)
               (_%$%E195216195234%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195214195230%_)))
               (_%$%E195215195276%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195214195230%_)
                      (let ((_%$%e195217195238%_
                             (gx#syntax-e _%$%e195214195230%_)))
                        (let ((_%$%hd195218195241%_
                               (##car _%$%e195217195238%_))
                              (_%$%tl195219195243%_
                               (##cdr _%$%e195217195238%_)))
                          (if (gx#stx-pair? _%$%tl195219195243%_)
                              (let ((_%$%e195220195246%_
                                     (gx#syntax-e _%$%tl195219195243%_)))
                                (let ((_%$%hd195221195249%_
                                       (##car _%$%e195220195246%_))
                                      (_%$%tl195222195251%_
                                       (##cdr _%$%e195220195246%_)))
                                  (let ((_%test195254%_ _%$%hd195221195249%_))
                                    (if (gx#stx-pair? _%$%tl195222195251%_)
                                        (let ((_%$%e195223195256%_
                                               (gx#syntax-e
                                                _%$%tl195222195251%_)))
                                          (let ((_%$%hd195224195259%_
                                                 (##car _%$%e195223195256%_))
                                                (_%$%tl195225195261%_
                                                 (##cdr _%$%e195223195256%_)))
                                            (let ((_%K195264%_
                                                   _%$%hd195224195259%_))
                                              (if (gx#stx-pair?
                                                   _%$%tl195225195261%_)
                                                  (let ((_%$%e195226195266%_
                                                         (gx#syntax-e
                                                          _%$%tl195225195261%_)))
                                                    (let ((_%$%hd195227195269%_
                                                           (##car _%$%e195226195266%_))
                                                          (_%$%tl195228195271%_
                                                           (##cdr _%$%e195226195266%_)))
                                                      (let ((_%E195274%_
                                                             _%$%hd195227195269%_))
                                                        (if (gx#stx-null?
                                                             _%$%tl195228195271%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test195254%_)
                                (cons (gx#core-compile-top-syntax _%K195264%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E195274%_)
                                            '()))))
                    (_%$%E195216195234%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E195216195234%_)))))
                                        (_%$%E195216195234%_)))))
                              (_%$%E195216195234%_))))
                      (_%$%E195216195234%_)))))
          (_%$%E195215195276%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx195172%_)
        (let* ((_%$%e195173195183%_ _%stx195172%_)
               (_%$%E195175195187%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195173195183%_)))
               (_%$%E195174195209%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195173195183%_)
                      (let ((_%$%e195176195191%_
                             (gx#syntax-e _%$%e195173195183%_)))
                        (let ((_%$%hd195177195194%_
                               (##car _%$%e195176195191%_))
                              (_%$%tl195178195196%_
                               (##cdr _%$%e195176195191%_)))
                          (if (gx#stx-pair? _%$%tl195178195196%_)
                              (let ((_%$%e195179195199%_
                                     (gx#syntax-e _%$%tl195178195196%_)))
                                (let ((_%$%hd195180195202%_
                                       (##car _%$%e195179195199%_))
                                      (_%$%tl195181195204%_
                                       (##cdr _%$%e195179195199%_)))
                                  (let ((_%id195207%_ _%$%hd195180195202%_))
                                    (if (gx#stx-null? _%$%tl195181195204%_)
                                        (if (gx#identifier? _%id195207%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id195207%_)
                                                        '()))
                                            (_%$%E195175195187%_))
                                        (_%$%E195175195187%_)))))
                              (_%$%E195175195187%_))))
                      (_%$%E195175195187%_)))))
          (_%$%E195174195209%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx195118%_)
        (let* ((_%$%e195119195132%_ _%stx195118%_)
               (_%$%E195121195136%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e195119195132%_)))
               (_%$%E195120195168%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e195119195132%_)
                      (let ((_%$%e195122195140%_
                             (gx#syntax-e _%$%e195119195132%_)))
                        (let ((_%$%hd195123195143%_
                               (##car _%$%e195122195140%_))
                              (_%$%tl195124195145%_
                               (##cdr _%$%e195122195140%_)))
                          (if (gx#stx-pair? _%$%tl195124195145%_)
                              (let ((_%$%e195125195148%_
                                     (gx#syntax-e _%$%tl195124195145%_)))
                                (let ((_%$%hd195126195151%_
                                       (##car _%$%e195125195148%_))
                                      (_%$%tl195127195153%_
                                       (##cdr _%$%e195125195148%_)))
                                  (let ((_%id195156%_ _%$%hd195126195151%_))
                                    (if (gx#stx-pair? _%$%tl195127195153%_)
                                        (let ((_%$%e195128195158%_
                                               (gx#syntax-e
                                                _%$%tl195127195153%_)))
                                          (let ((_%$%hd195129195161%_
                                                 (##car _%$%e195128195158%_))
                                                (_%$%tl195130195163%_
                                                 (##cdr _%$%e195128195158%_)))
                                            (let ((_%expr195166%_
                                                   _%$%hd195129195161%_))
                                              (if (gx#stx-null?
                                                   _%$%tl195130195163%_)
                                                  (if (gx#identifier?
                                                       _%id195156%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id195156%_)
                          (cons (gx#core-compile-top-syntax _%expr195166%_)
                                '())))
              (_%$%E195121195136%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E195121195136%_)))))
                                        (_%$%E195121195136%_)))))
                              (_%$%E195121195136%_))))
                      (_%$%E195121195136%_)))))
          (_%$%E195120195168%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id195112%_)
        (let ((_%$e195114%_ (gx#resolve-identifier__0 _%id195112%_)))
          (if _%$e195114%_
              (##unchecked-structure-ref _%$e195114%_ '1 '#f '#f)
              _%id195112%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd195110%_)
        (if (gx#identifier? _%hd195110%_)
            (gx#core-compile-top-runtime-ref _%hd195110%_)
            '#f)))))
