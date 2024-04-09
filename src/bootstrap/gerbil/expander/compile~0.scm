(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1712643208)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx126299%_)
        (let* ((_%e126300126307%_ _%stx126299%_)
               (_%E126302126311%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126300126307%_)))
               (_%E126301126325%_
                (lambda ()
                  (if (gx#stx-pair? _%e126300126307%_)
                      (let ((_%e126303126315%_
                             (gx#syntax-e _%e126300126307%_)))
                        (let ((_%hd126304126318%_ (##car _%e126303126315%_))
                              (_%tl126305126320%_ (##cdr _%e126303126315%_)))
                          (let ((_%form126323%_ _%hd126304126318%_))
                            (if '#t
                                (let* ((__self126328
                                        (gx#syntax-local-e__0 _%form126323%_))
                                       (__method126329
                                        (__method-ref
                                         __self126328
                                         'compile-top-syntax)))
                                  (if __method126329
                                      (__method126329
                                       __self126328
                                       _%stx126299%_)
                                      (error '"Missing method"
                                             __self126328
                                             'compile-top-syntax)))
                                (_%E126302126311%_)))))
                      (_%E126302126311%_)))))
          (_%E126301126325%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self126247%_ _%stx126248%_)
        (let* ((_%self126251%_ _%self126247%_)
               (_%self126260126268%_ _%self126251%_)
               (_%E126262126272%_
                (lambda ()
                  (error '"No clause matching"
                         _%self126260126268%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K126263126285%_
                (lambda (_%K126275%_)
                  (let ((_%$e126277%_ (gx#stx-source _%stx126248%_)))
                    (if _%$e126277%_
                        ((lambda (_%g126279126281%_)
                           (gx#stx-wrap-source
                            (_%K126275%_ _%stx126248%_)
                            _%g126279126281%_))
                         _%$e126277%_)
                        (_%K126275%_ _%stx126248%_))))))
          (if '#t
              (let* ((_%e126264126288%_
                      (##unchecked-structure-ref
                       _%self126260126268%_
                       '1
                       '#f
                       '#f))
                     (_%e126265126291%_
                      (##unchecked-structure-ref
                       _%self126260126268%_
                       '2
                       '#f
                       '#f))
                     (_%e126266126294%_
                      (##unchecked-structure-ref
                       _%self126260126268%_
                       '3
                       '#f
                       '#f))
                     (_%K126297%_ _%e126266126294%_))
                (_%K126263126285%_ _%K126297%_))
              (_%E126262126272%_)))))
    (__bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx126121%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx126121%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx126091%_)
        (let* ((_%e126092126099%_ _%stx126091%_)
               (_%E126094126103%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126092126099%_)))
               (_%E126093126117%_
                (lambda ()
                  (if (gx#stx-pair? _%e126092126099%_)
                      (let ((_%e126095126107%_
                             (gx#syntax-e _%e126092126099%_)))
                        (let ((_%hd126096126110%_ (##car _%e126095126107%_))
                              (_%tl126097126112%_ (##cdr _%e126095126107%_)))
                          (let ((_%body126115%_ _%tl126097126112%_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _%body126115%_))
                                (_%E126094126103%_)))))
                      (_%E126094126103%_)))))
          (_%E126093126117%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx126060%_)
        (let* ((_%e126061126068%_ _%stx126060%_)
               (_%E126063126072%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126061126068%_)))
               (_%E126062126087%_
                (lambda ()
                  (if (gx#stx-pair? _%e126061126068%_)
                      (let ((_%e126064126076%_
                             (gx#syntax-e _%e126061126068%_)))
                        (let ((_%hd126065126079%_ (##car _%e126064126076%_))
                              (_%tl126066126081%_ (##cdr _%e126064126076%_)))
                          (let ((_%body126084%_ _%tl126066126081%_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (__call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _%body126084%_))
                                       gx#current-expander-phi
                                       (##fx+ (gx#current-expander-phi) '1)))
                                (_%E126063126072%_)))))
                      (_%E126063126072%_)))))
          (_%E126062126087%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx126030%_)
        (let* ((_%e126031126038%_ _%stx126030%_)
               (_%E126033126042%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126031126038%_)))
               (_%E126032126056%_
                (lambda ()
                  (if (gx#stx-pair? _%e126031126038%_)
                      (let ((_%e126034126046%_
                             (gx#syntax-e _%e126031126038%_)))
                        (let ((_%hd126035126049%_ (##car _%e126034126046%_))
                              (_%tl126036126051%_ (##cdr _%e126034126046%_)))
                          (let ((_%body126054%_ _%tl126036126051%_))
                            (if '#t
                                (cons '%#begin-foreign _%body126054%_)
                                (_%E126033126042%_)))))
                      (_%E126033126042%_)))))
          (_%E126032126056%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx125976%_)
        (let* ((_%e125977125990%_ _%stx125976%_)
               (_%E125979125994%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125977125990%_)))
               (_%E125978126026%_
                (lambda ()
                  (if (gx#stx-pair? _%e125977125990%_)
                      (let ((_%e125980125998%_
                             (gx#syntax-e _%e125977125990%_)))
                        (let ((_%hd125981126001%_ (##car _%e125980125998%_))
                              (_%tl125982126003%_ (##cdr _%e125980125998%_)))
                          (if (gx#stx-pair? _%tl125982126003%_)
                              (let ((_%e125983126006%_
                                     (gx#syntax-e _%tl125982126003%_)))
                                (let ((_%hd125984126009%_
                                       (##car _%e125983126006%_))
                                      (_%tl125985126011%_
                                       (##cdr _%e125983126006%_)))
                                  (let ((_%ann126014%_ _%hd125984126009%_))
                                    (if (gx#stx-pair? _%tl125985126011%_)
                                        (let ((_%e125986126016%_
                                               (gx#syntax-e
                                                _%tl125985126011%_)))
                                          (let ((_%hd125987126019%_
                                                 (##car _%e125986126016%_))
                                                (_%tl125988126021%_
                                                 (##cdr _%e125986126016%_)))
                                            (let ((_%expr126024%_
                                                   _%hd125987126019%_))
                                              (if (gx#stx-null?
                                                   _%tl125988126021%_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _%expr126024%_)
                                                      (_%E125979125994%_))
                                                  (_%E125979125994%_)))))
                                        (_%E125979125994%_)))))
                              (_%E125979125994%_))))
                      (_%E125979125994%_)))))
          (_%E125978126026%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx125946%_)
        (let* ((_%e125947125954%_ _%stx125946%_)
               (_%E125949125958%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125947125954%_)))
               (_%E125948125972%_
                (lambda ()
                  (if (gx#stx-pair? _%e125947125954%_)
                      (let ((_%e125950125962%_
                             (gx#syntax-e _%e125947125954%_)))
                        (let ((_%hd125951125965%_ (##car _%e125950125962%_))
                              (_%tl125952125967%_ (##cdr _%e125950125962%_)))
                          (let ((_%body125970%_ _%tl125952125967%_))
                            (if '#t
                                (cons '%#import _%body125970%_)
                                (_%E125949125958%_)))))
                      (_%E125949125958%_)))))
          (_%E125948125972%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx125903%_)
        (let* ((_%e125904125914%_ _%stx125903%_)
               (_%E125906125918%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125904125914%_)))
               (_%E125905125942%_
                (lambda ()
                  (if (gx#stx-pair? _%e125904125914%_)
                      (let ((_%e125907125922%_
                             (gx#syntax-e _%e125904125914%_)))
                        (let ((_%hd125908125925%_ (##car _%e125907125922%_))
                              (_%tl125909125927%_ (##cdr _%e125907125922%_)))
                          (if (gx#stx-pair? _%tl125909125927%_)
                              (let ((_%e125910125930%_
                                     (gx#syntax-e _%tl125909125927%_)))
                                (let ((_%hd125911125933%_
                                       (##car _%e125910125930%_))
                                      (_%tl125912125935%_
                                       (##cdr _%e125910125930%_)))
                                  (let* ((_%hd125938%_ _%hd125911125933%_)
                                         (_%body125940%_ _%tl125912125935%_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _%hd125938%_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _%body125940%_)))
                                        (_%E125906125918%_)))))
                              (_%E125906125918%_))))
                      (_%E125906125918%_)))))
          (_%E125905125942%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx125873%_)
        (let* ((_%e125874125881%_ _%stx125873%_)
               (_%E125876125885%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125874125881%_)))
               (_%E125875125899%_
                (lambda ()
                  (if (gx#stx-pair? _%e125874125881%_)
                      (let ((_%e125877125889%_
                             (gx#syntax-e _%e125874125881%_)))
                        (let ((_%hd125878125892%_ (##car _%e125877125889%_))
                              (_%tl125879125894%_ (##cdr _%e125877125889%_)))
                          (let ((_%body125897%_ _%tl125879125894%_))
                            (if '#t
                                (cons '%#export _%body125897%_)
                                (_%E125876125885%_)))))
                      (_%E125876125885%_)))))
          (_%E125875125899%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx125843%_)
        (let* ((_%e125844125851%_ _%stx125843%_)
               (_%E125846125855%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125844125851%_)))
               (_%E125845125869%_
                (lambda ()
                  (if (gx#stx-pair? _%e125844125851%_)
                      (let ((_%e125847125859%_
                             (gx#syntax-e _%e125844125851%_)))
                        (let ((_%hd125848125862%_ (##car _%e125847125859%_))
                              (_%tl125849125864%_ (##cdr _%e125847125859%_)))
                          (let ((_%body125867%_ _%tl125849125864%_))
                            (if '#t
                                (cons '%#provide _%body125867%_)
                                (_%E125846125855%_)))))
                      (_%E125846125855%_)))))
          (_%E125845125869%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx125813%_)
        (let* ((_%e125814125821%_ _%stx125813%_)
               (_%E125816125825%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125814125821%_)))
               (_%E125815125839%_
                (lambda ()
                  (if (gx#stx-pair? _%e125814125821%_)
                      (let ((_%e125817125829%_
                             (gx#syntax-e _%e125814125821%_)))
                        (let ((_%hd125818125832%_ (##car _%e125817125829%_))
                              (_%tl125819125834%_ (##cdr _%e125817125829%_)))
                          (let ((_%body125837%_ _%tl125819125834%_))
                            (if '#t
                                (cons '%#extern _%body125837%_)
                                (_%E125816125825%_)))))
                      (_%E125816125825%_)))))
          (_%E125815125839%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx125759%_)
        (let* ((_%e125760125773%_ _%stx125759%_)
               (_%E125762125777%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125760125773%_)))
               (_%E125761125809%_
                (lambda ()
                  (if (gx#stx-pair? _%e125760125773%_)
                      (let ((_%e125763125781%_
                             (gx#syntax-e _%e125760125773%_)))
                        (let ((_%hd125764125784%_ (##car _%e125763125781%_))
                              (_%tl125765125786%_ (##cdr _%e125763125781%_)))
                          (if (gx#stx-pair? _%tl125765125786%_)
                              (let ((_%e125766125789%_
                                     (gx#syntax-e _%tl125765125786%_)))
                                (let ((_%hd125767125792%_
                                       (##car _%e125766125789%_))
                                      (_%tl125768125794%_
                                       (##cdr _%e125766125789%_)))
                                  (let ((_%hd125797%_ _%hd125767125792%_))
                                    (if (gx#stx-pair? _%tl125768125794%_)
                                        (let ((_%e125769125799%_
                                               (gx#syntax-e
                                                _%tl125768125794%_)))
                                          (let ((_%hd125770125802%_
                                                 (##car _%e125769125799%_))
                                                (_%tl125771125804%_
                                                 (##cdr _%e125769125799%_)))
                                            (let ((_%expr125807%_
                                                   _%hd125770125802%_))
                                              (if (gx#stx-null?
                                                   _%tl125771125804%_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _%hd125797%_)
                          (cons (gx#core-compile-top-syntax _%expr125807%_)
                                '())))
              (_%E125762125777%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125762125777%_)))))
                                        (_%E125762125777%_)))))
                              (_%E125762125777%_))))
                      (_%E125762125777%_)))))
          (_%E125761125809%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx125704%_)
        (let* ((_%e125705125718%_ _%stx125704%_)
               (_%E125707125722%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125705125718%_)))
               (_%E125706125755%_
                (lambda ()
                  (if (gx#stx-pair? _%e125705125718%_)
                      (let ((_%e125708125726%_
                             (gx#syntax-e _%e125705125718%_)))
                        (let ((_%hd125709125729%_ (##car _%e125708125726%_))
                              (_%tl125710125731%_ (##cdr _%e125708125726%_)))
                          (if (gx#stx-pair? _%tl125710125731%_)
                              (let ((_%e125711125734%_
                                     (gx#syntax-e _%tl125710125731%_)))
                                (let ((_%hd125712125737%_
                                       (##car _%e125711125734%_))
                                      (_%tl125713125739%_
                                       (##cdr _%e125711125734%_)))
                                  (let ((_%hd125742%_ _%hd125712125737%_))
                                    (if (gx#stx-pair? _%tl125713125739%_)
                                        (let ((_%e125714125744%_
                                               (gx#syntax-e
                                                _%tl125713125739%_)))
                                          (let ((_%hd125715125747%_
                                                 (##car _%e125714125744%_))
                                                (_%tl125716125749%_
                                                 (##cdr _%e125714125744%_)))
                                            (let ((_%expr125752%_
                                                   _%hd125715125747%_))
                                              (if (gx#stx-null?
                                                   _%tl125716125749%_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _%hd125742%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (__call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _%expr125752%_))
                                 gx#current-expander-phi
                                 (##fx+ (gx#current-expander-phi) '1))
                                '())))
              (_%E125707125722%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125707125722%_)))))
                                        (_%E125707125722%_)))))
                              (_%E125707125722%_))))
                      (_%E125707125722%_)))))
          (_%E125706125755%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx125674%_)
        (let* ((_%e125675125682%_ _%stx125674%_)
               (_%E125677125686%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125675125682%_)))
               (_%E125676125700%_
                (lambda ()
                  (if (gx#stx-pair? _%e125675125682%_)
                      (let ((_%e125678125690%_
                             (gx#syntax-e _%e125675125682%_)))
                        (let ((_%hd125679125693%_ (##car _%e125678125690%_))
                              (_%tl125680125695%_ (##cdr _%e125678125690%_)))
                          (let ((_%body125698%_ _%tl125680125695%_))
                            (if '#t
                                (cons '%#define-alias _%body125698%_)
                                (_%E125677125686%_)))))
                      (_%E125677125686%_)))))
          (_%E125676125700%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx125644%_)
        (let* ((_%e125645125652%_ _%stx125644%_)
               (_%E125647125656%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125645125652%_)))
               (_%E125646125670%_
                (lambda ()
                  (if (gx#stx-pair? _%e125645125652%_)
                      (let ((_%e125648125660%_
                             (gx#syntax-e _%e125645125652%_)))
                        (let ((_%hd125649125663%_ (##car _%e125648125660%_))
                              (_%tl125650125665%_ (##cdr _%e125648125660%_)))
                          (let ((_%body125668%_ _%tl125650125665%_))
                            (if '#t
                                (cons '%#define-runtime _%body125668%_)
                                (_%E125647125656%_)))))
                      (_%E125647125656%_)))))
          (_%E125646125670%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx125614%_)
        (let* ((_%e125615125622%_ _%stx125614%_)
               (_%E125617125626%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125615125622%_)))
               (_%E125616125640%_
                (lambda ()
                  (if (gx#stx-pair? _%e125615125622%_)
                      (let ((_%e125618125630%_
                             (gx#syntax-e _%e125615125622%_)))
                        (let ((_%hd125619125633%_ (##car _%e125618125630%_))
                              (_%tl125620125635%_ (##cdr _%e125618125630%_)))
                          (let ((_%decls125638%_ _%tl125620125635%_))
                            (if '#t
                                (cons '%#declare _%decls125638%_)
                                (_%E125617125626%_)))))
                      (_%E125617125626%_)))))
          (_%E125616125640%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx125584%_)
        (let* ((_%e125585125592%_ _%stx125584%_)
               (_%E125587125596%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125585125592%_)))
               (_%E125586125610%_
                (lambda ()
                  (if (gx#stx-pair? _%e125585125592%_)
                      (let ((_%e125588125600%_
                             (gx#syntax-e _%e125585125592%_)))
                        (let ((_%hd125589125603%_ (##car _%e125588125600%_))
                              (_%tl125590125605%_ (##cdr _%e125588125600%_)))
                          (let ((_%clause125608%_ _%tl125590125605%_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _%clause125608%_))
                                (_%E125587125596%_)))))
                      (_%E125587125596%_)))))
          (_%E125586125610%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx125541%_)
        (let* ((_%e125542125552%_ _%stx125541%_)
               (_%E125544125556%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125542125552%_)))
               (_%E125543125580%_
                (lambda ()
                  (if (gx#stx-pair? _%e125542125552%_)
                      (let ((_%e125545125560%_
                             (gx#syntax-e _%e125542125552%_)))
                        (let ((_%hd125546125563%_ (##car _%e125545125560%_))
                              (_%tl125547125565%_ (##cdr _%e125545125560%_)))
                          (let ((_%hd125568%_ _%hd125546125563%_))
                            (if (gx#stx-pair? _%tl125547125565%_)
                                (let ((_%e125548125570%_
                                       (gx#syntax-e _%tl125547125565%_)))
                                  (let ((_%hd125549125573%_
                                         (##car _%e125548125570%_))
                                        (_%tl125550125575%_
                                         (##cdr _%e125548125570%_)))
                                    (let ((_%body125578%_ _%hd125549125573%_))
                                      (if (gx#stx-null? _%tl125550125575%_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _%hd125568%_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _%body125578%_)
                                                          '()))
                                              (_%E125544125556%_))
                                          (_%E125544125556%_)))))
                                (_%E125544125556%_)))))
                      (_%E125544125556%_)))))
          (_%E125543125580%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx125511%_)
        (let* ((_%e125512125519%_ _%stx125511%_)
               (_%E125514125523%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125512125519%_)))
               (_%E125513125537%_
                (lambda ()
                  (if (gx#stx-pair? _%e125512125519%_)
                      (let ((_%e125515125527%_
                             (gx#syntax-e _%e125512125519%_)))
                        (let ((_%hd125516125530%_ (##car _%e125515125527%_))
                              (_%tl125517125532%_ (##cdr _%e125515125527%_)))
                          (let ((_%clauses125535%_ _%tl125517125532%_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _%clauses125535%_))
                                (_%E125514125523%_)))))
                      (_%E125514125523%_)))))
          (_%E125513125537%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx125446%_ _%form125447%_)
        (let* ((_%e125448125461%_ _%stx125446%_)
               (_%E125450125465%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125448125461%_)))
               (_%E125449125497%_
                (lambda ()
                  (if (gx#stx-pair? _%e125448125461%_)
                      (let ((_%e125451125469%_
                             (gx#syntax-e _%e125448125461%_)))
                        (let ((_%hd125452125472%_ (##car _%e125451125469%_))
                              (_%tl125453125474%_ (##cdr _%e125451125469%_)))
                          (if (gx#stx-pair? _%tl125453125474%_)
                              (let ((_%e125454125477%_
                                     (gx#syntax-e _%tl125453125474%_)))
                                (let ((_%hd125455125480%_
                                       (##car _%e125454125477%_))
                                      (_%tl125456125482%_
                                       (##cdr _%e125454125477%_)))
                                  (let ((_%hd125485%_ _%hd125455125480%_))
                                    (if (gx#stx-pair? _%tl125456125482%_)
                                        (let ((_%e125457125487%_
                                               (gx#syntax-e
                                                _%tl125456125482%_)))
                                          (let ((_%hd125458125490%_
                                                 (##car _%e125457125487%_))
                                                (_%tl125459125492%_
                                                 (##cdr _%e125457125487%_)))
                                            (let ((_%body125495%_
                                                   _%hd125458125490%_))
                                              (if (gx#stx-null?
                                                   _%tl125459125492%_)
                                                  (if '#t
                                                      (cons _%form125447%_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _%hd125485%_)
                          (cons (gx#core-compile-top-syntax _%body125495%_)
                                '())))
              (_%E125450125465%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125450125465%_)))))
                                        (_%E125450125465%_)))))
                              (_%E125450125465%_))))
                      (_%E125450125465%_)))))
          (_%E125449125497%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx125504%_)
        (let ((_%form125506%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx125504%_ _%form125506%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g126331_
        (let ((_g126330_ (##length _g126331_)))
          (cond ((##fx= _g126330_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g126331_))
                ((##fx= _g126330_ 2)
                 (apply gx#core-compile-top-let-values%__% _g126331_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g126331_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx125443%_)
        (gx#core-compile-top-let-values%__% _%stx125443%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx125441%_)
        (gx#core-compile-top-let-values%__% _%stx125441%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx125400%_)
        (let* ((_%e125401125411%_ _%stx125400%_)
               (_%E125403125415%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125401125411%_)))
               (_%E125402125437%_
                (lambda ()
                  (if (gx#stx-pair? _%e125401125411%_)
                      (let ((_%e125404125419%_
                             (gx#syntax-e _%e125401125411%_)))
                        (let ((_%hd125405125422%_ (##car _%e125404125419%_))
                              (_%tl125406125424%_ (##cdr _%e125404125419%_)))
                          (if (gx#stx-pair? _%tl125406125424%_)
                              (let ((_%e125407125427%_
                                     (gx#syntax-e _%tl125406125424%_)))
                                (let ((_%hd125408125430%_
                                       (##car _%e125407125427%_))
                                      (_%tl125409125432%_
                                       (##cdr _%e125407125427%_)))
                                  (let ((_%e125435%_ _%hd125408125430%_))
                                    (if (gx#stx-null? _%tl125409125432%_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _%e125435%_)
                                                        '()))
                                            (_%E125403125415%_))
                                        (_%E125403125415%_)))))
                              (_%E125403125415%_))))
                      (_%E125403125415%_)))))
          (_%E125402125437%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx125359%_)
        (let* ((_%e125360125370%_ _%stx125359%_)
               (_%E125362125374%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125360125370%_)))
               (_%E125361125396%_
                (lambda ()
                  (if (gx#stx-pair? _%e125360125370%_)
                      (let ((_%e125363125378%_
                             (gx#syntax-e _%e125360125370%_)))
                        (let ((_%hd125364125381%_ (##car _%e125363125378%_))
                              (_%tl125365125383%_ (##cdr _%e125363125378%_)))
                          (if (gx#stx-pair? _%tl125365125383%_)
                              (let ((_%e125366125386%_
                                     (gx#syntax-e _%tl125365125383%_)))
                                (let ((_%hd125367125389%_
                                       (##car _%e125366125386%_))
                                      (_%tl125368125391%_
                                       (##cdr _%e125366125386%_)))
                                  (let ((_%e125394%_ _%hd125367125389%_))
                                    (if (gx#stx-null? _%tl125368125391%_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _%e125394%_)
                                                        '()))
                                            (_%E125362125374%_))
                                        (_%E125362125374%_)))))
                              (_%E125362125374%_))))
                      (_%E125362125374%_)))))
          (_%E125361125396%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx125316%_)
        (let* ((_%e125317125327%_ _%stx125316%_)
               (_%E125319125331%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125317125327%_)))
               (_%E125318125355%_
                (lambda ()
                  (if (gx#stx-pair? _%e125317125327%_)
                      (let ((_%e125320125335%_
                             (gx#syntax-e _%e125317125327%_)))
                        (let ((_%hd125321125338%_ (##car _%e125320125335%_))
                              (_%tl125322125340%_ (##cdr _%e125320125335%_)))
                          (if (gx#stx-pair? _%tl125322125340%_)
                              (let ((_%e125323125343%_
                                     (gx#syntax-e _%tl125322125340%_)))
                                (let ((_%hd125324125346%_
                                       (##car _%e125323125343%_))
                                      (_%tl125325125348%_
                                       (##cdr _%e125323125343%_)))
                                  (let* ((_%rator125351%_ _%hd125324125346%_)
                                         (_%args125353%_ _%tl125325125348%_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _%rator125351%_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _%args125353%_)))
                                        (_%E125319125331%_)))))
                              (_%E125319125331%_))))
                      (_%E125319125331%_)))))
          (_%E125318125355%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx125249%_)
        (let* ((_%e125250125266%_ _%stx125249%_)
               (_%E125252125270%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125250125266%_)))
               (_%E125251125312%_
                (lambda ()
                  (if (gx#stx-pair? _%e125250125266%_)
                      (let ((_%e125253125274%_
                             (gx#syntax-e _%e125250125266%_)))
                        (let ((_%hd125254125277%_ (##car _%e125253125274%_))
                              (_%tl125255125279%_ (##cdr _%e125253125274%_)))
                          (if (gx#stx-pair? _%tl125255125279%_)
                              (let ((_%e125256125282%_
                                     (gx#syntax-e _%tl125255125279%_)))
                                (let ((_%hd125257125285%_
                                       (##car _%e125256125282%_))
                                      (_%tl125258125287%_
                                       (##cdr _%e125256125282%_)))
                                  (let ((_%test125290%_ _%hd125257125285%_))
                                    (if (gx#stx-pair? _%tl125258125287%_)
                                        (let ((_%e125259125292%_
                                               (gx#syntax-e
                                                _%tl125258125287%_)))
                                          (let ((_%hd125260125295%_
                                                 (##car _%e125259125292%_))
                                                (_%tl125261125297%_
                                                 (##cdr _%e125259125292%_)))
                                            (let ((_%K125300%_
                                                   _%hd125260125295%_))
                                              (if (gx#stx-pair?
                                                   _%tl125261125297%_)
                                                  (let ((_%e125262125302%_
                                                         (gx#syntax-e
                                                          _%tl125261125297%_)))
                                                    (let ((_%hd125263125305%_
                                                           (##car _%e125262125302%_))
                                                          (_%tl125264125307%_
                                                           (##cdr _%e125262125302%_)))
                                                      (let ((_%E125310%_
                                                             _%hd125263125305%_))
                                                        (if (gx#stx-null?
                                                             _%tl125264125307%_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _%test125290%_)
                                    (cons (gx#core-compile-top-syntax
                                           _%K125300%_)
                                          (cons (gx#core-compile-top-syntax
                                                 _%E125310%_)
                                                '()))))
                        (_%E125252125270%_))
                    (_%E125252125270%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125252125270%_)))))
                                        (_%E125252125270%_)))))
                              (_%E125252125270%_))))
                      (_%E125252125270%_)))))
          (_%E125251125312%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx125208%_)
        (let* ((_%e125209125219%_ _%stx125208%_)
               (_%E125211125223%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125209125219%_)))
               (_%E125210125245%_
                (lambda ()
                  (if (gx#stx-pair? _%e125209125219%_)
                      (let ((_%e125212125227%_
                             (gx#syntax-e _%e125209125219%_)))
                        (let ((_%hd125213125230%_ (##car _%e125212125227%_))
                              (_%tl125214125232%_ (##cdr _%e125212125227%_)))
                          (if (gx#stx-pair? _%tl125214125232%_)
                              (let ((_%e125215125235%_
                                     (gx#syntax-e _%tl125214125232%_)))
                                (let ((_%hd125216125238%_
                                       (##car _%e125215125235%_))
                                      (_%tl125217125240%_
                                       (##cdr _%e125215125235%_)))
                                  (let ((_%id125243%_ _%hd125216125238%_))
                                    (if (gx#stx-null? _%tl125217125240%_)
                                        (if (gx#identifier? _%id125243%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id125243%_)
                                                        '()))
                                            (_%E125211125223%_))
                                        (_%E125211125223%_)))))
                              (_%E125211125223%_))))
                      (_%E125211125223%_)))))
          (_%E125210125245%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx125154%_)
        (let* ((_%e125155125168%_ _%stx125154%_)
               (_%E125157125172%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125155125168%_)))
               (_%E125156125204%_
                (lambda ()
                  (if (gx#stx-pair? _%e125155125168%_)
                      (let ((_%e125158125176%_
                             (gx#syntax-e _%e125155125168%_)))
                        (let ((_%hd125159125179%_ (##car _%e125158125176%_))
                              (_%tl125160125181%_ (##cdr _%e125158125176%_)))
                          (if (gx#stx-pair? _%tl125160125181%_)
                              (let ((_%e125161125184%_
                                     (gx#syntax-e _%tl125160125181%_)))
                                (let ((_%hd125162125187%_
                                       (##car _%e125161125184%_))
                                      (_%tl125163125189%_
                                       (##cdr _%e125161125184%_)))
                                  (let ((_%id125192%_ _%hd125162125187%_))
                                    (if (gx#stx-pair? _%tl125163125189%_)
                                        (let ((_%e125164125194%_
                                               (gx#syntax-e
                                                _%tl125163125189%_)))
                                          (let ((_%hd125165125197%_
                                                 (##car _%e125164125194%_))
                                                (_%tl125166125199%_
                                                 (##cdr _%e125164125194%_)))
                                            (let ((_%expr125202%_
                                                   _%hd125165125197%_))
                                              (if (gx#stx-null?
                                                   _%tl125166125199%_)
                                                  (if (gx#identifier?
                                                       _%id125192%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id125192%_)
                          (cons (gx#core-compile-top-syntax _%expr125202%_)
                                '())))
              (_%E125157125172%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125157125172%_)))))
                                        (_%E125157125172%_)))))
                              (_%E125157125172%_))))
                      (_%E125157125172%_)))))
          (_%E125156125204%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id125148%_)
        (let ((_%$e125150%_ (gx#resolve-identifier__0 _%id125148%_)))
          (if _%$e125150%_
              (##unchecked-structure-ref _%$e125150%_ '1 '#f '#f)
              _%id125148%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd125146%_)
        (if (gx#identifier? _%hd125146%_)
            (gx#core-compile-top-runtime-ref _%hd125146%_)
            '#f)))))
