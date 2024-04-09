(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1712697256)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx126324%_)
        (let* ((_%e126325126332%_ _%stx126324%_)
               (_%E126327126336%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126325126332%_)))
               (_%E126326126350%_
                (lambda ()
                  (if (gx#stx-pair? _%e126325126332%_)
                      (let ((_%e126328126340%_
                             (gx#syntax-e _%e126325126332%_)))
                        (let ((_%hd126329126343%_ (##car _%e126328126340%_))
                              (_%tl126330126345%_ (##cdr _%e126328126340%_)))
                          (let ((_%form126348%_ _%hd126329126343%_))
                            (if '#t
                                (let* ((__self126353
                                        (gx#syntax-local-e__0 _%form126348%_))
                                       (__method126354
                                        (__method-ref
                                         __self126353
                                         'compile-top-syntax)))
                                  (if __method126354
                                      (__method126354
                                       __self126353
                                       _%stx126324%_)
                                      (error '"Missing method"
                                             __self126353
                                             'compile-top-syntax)))
                                (_%E126327126336%_)))))
                      (_%E126327126336%_)))))
          (_%E126326126350%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self126272%_ _%stx126273%_)
        (let* ((_%self126276%_ _%self126272%_)
               (_%self126285126293%_ _%self126276%_)
               (_%E126287126297%_
                (lambda ()
                  (error '"No clause matching"
                         _%self126285126293%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K126288126310%_
                (lambda (_%K126300%_)
                  (let ((_%$e126302%_ (gx#stx-source _%stx126273%_)))
                    (if _%$e126302%_
                        ((lambda (_%g126304126306%_)
                           (gx#stx-wrap-source
                            (_%K126300%_ _%stx126273%_)
                            _%g126304126306%_))
                         _%$e126302%_)
                        (_%K126300%_ _%stx126273%_))))))
          (if '#t
              (let* ((_%e126289126313%_
                      (##unchecked-structure-ref
                       _%self126285126293%_
                       '1
                       '#f
                       '#f))
                     (_%e126290126316%_
                      (##unchecked-structure-ref
                       _%self126285126293%_
                       '2
                       '#f
                       '#f))
                     (_%e126291126319%_
                      (##unchecked-structure-ref
                       _%self126285126293%_
                       '3
                       '#f
                       '#f))
                     (_%K126322%_ _%e126291126319%_))
                (_%K126288126310%_ _%K126322%_))
              (_%E126287126297%_)))))
    (__bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx126146%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx126146%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx126116%_)
        (let* ((_%e126117126124%_ _%stx126116%_)
               (_%E126119126128%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126117126124%_)))
               (_%E126118126142%_
                (lambda ()
                  (if (gx#stx-pair? _%e126117126124%_)
                      (let ((_%e126120126132%_
                             (gx#syntax-e _%e126117126124%_)))
                        (let ((_%hd126121126135%_ (##car _%e126120126132%_))
                              (_%tl126122126137%_ (##cdr _%e126120126132%_)))
                          (let ((_%body126140%_ _%tl126122126137%_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _%body126140%_))
                                (_%E126119126128%_)))))
                      (_%E126119126128%_)))))
          (_%E126118126142%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx126085%_)
        (let* ((_%e126086126093%_ _%stx126085%_)
               (_%E126088126097%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126086126093%_)))
               (_%E126087126112%_
                (lambda ()
                  (if (gx#stx-pair? _%e126086126093%_)
                      (let ((_%e126089126101%_
                             (gx#syntax-e _%e126086126093%_)))
                        (let ((_%hd126090126104%_ (##car _%e126089126101%_))
                              (_%tl126091126106%_ (##cdr _%e126089126101%_)))
                          (let ((_%body126109%_ _%tl126091126106%_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (__call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _%body126109%_))
                                       gx#current-expander-phi
                                       (##fx+ (gx#current-expander-phi) '1)))
                                (_%E126088126097%_)))))
                      (_%E126088126097%_)))))
          (_%E126087126112%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx126055%_)
        (let* ((_%e126056126063%_ _%stx126055%_)
               (_%E126058126067%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126056126063%_)))
               (_%E126057126081%_
                (lambda ()
                  (if (gx#stx-pair? _%e126056126063%_)
                      (let ((_%e126059126071%_
                             (gx#syntax-e _%e126056126063%_)))
                        (let ((_%hd126060126074%_ (##car _%e126059126071%_))
                              (_%tl126061126076%_ (##cdr _%e126059126071%_)))
                          (let ((_%body126079%_ _%tl126061126076%_))
                            (if '#t
                                (cons '%#begin-foreign _%body126079%_)
                                (_%E126058126067%_)))))
                      (_%E126058126067%_)))))
          (_%E126057126081%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx126001%_)
        (let* ((_%e126002126015%_ _%stx126001%_)
               (_%E126004126019%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126002126015%_)))
               (_%E126003126051%_
                (lambda ()
                  (if (gx#stx-pair? _%e126002126015%_)
                      (let ((_%e126005126023%_
                             (gx#syntax-e _%e126002126015%_)))
                        (let ((_%hd126006126026%_ (##car _%e126005126023%_))
                              (_%tl126007126028%_ (##cdr _%e126005126023%_)))
                          (if (gx#stx-pair? _%tl126007126028%_)
                              (let ((_%e126008126031%_
                                     (gx#syntax-e _%tl126007126028%_)))
                                (let ((_%hd126009126034%_
                                       (##car _%e126008126031%_))
                                      (_%tl126010126036%_
                                       (##cdr _%e126008126031%_)))
                                  (let ((_%ann126039%_ _%hd126009126034%_))
                                    (if (gx#stx-pair? _%tl126010126036%_)
                                        (let ((_%e126011126041%_
                                               (gx#syntax-e
                                                _%tl126010126036%_)))
                                          (let ((_%hd126012126044%_
                                                 (##car _%e126011126041%_))
                                                (_%tl126013126046%_
                                                 (##cdr _%e126011126041%_)))
                                            (let ((_%expr126049%_
                                                   _%hd126012126044%_))
                                              (if (gx#stx-null?
                                                   _%tl126013126046%_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _%expr126049%_)
                                                      (_%E126004126019%_))
                                                  (_%E126004126019%_)))))
                                        (_%E126004126019%_)))))
                              (_%E126004126019%_))))
                      (_%E126004126019%_)))))
          (_%E126003126051%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx125971%_)
        (let* ((_%e125972125979%_ _%stx125971%_)
               (_%E125974125983%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125972125979%_)))
               (_%E125973125997%_
                (lambda ()
                  (if (gx#stx-pair? _%e125972125979%_)
                      (let ((_%e125975125987%_
                             (gx#syntax-e _%e125972125979%_)))
                        (let ((_%hd125976125990%_ (##car _%e125975125987%_))
                              (_%tl125977125992%_ (##cdr _%e125975125987%_)))
                          (let ((_%body125995%_ _%tl125977125992%_))
                            (if '#t
                                (cons '%#import _%body125995%_)
                                (_%E125974125983%_)))))
                      (_%E125974125983%_)))))
          (_%E125973125997%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx125928%_)
        (let* ((_%e125929125939%_ _%stx125928%_)
               (_%E125931125943%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125929125939%_)))
               (_%E125930125967%_
                (lambda ()
                  (if (gx#stx-pair? _%e125929125939%_)
                      (let ((_%e125932125947%_
                             (gx#syntax-e _%e125929125939%_)))
                        (let ((_%hd125933125950%_ (##car _%e125932125947%_))
                              (_%tl125934125952%_ (##cdr _%e125932125947%_)))
                          (if (gx#stx-pair? _%tl125934125952%_)
                              (let ((_%e125935125955%_
                                     (gx#syntax-e _%tl125934125952%_)))
                                (let ((_%hd125936125958%_
                                       (##car _%e125935125955%_))
                                      (_%tl125937125960%_
                                       (##cdr _%e125935125955%_)))
                                  (let* ((_%hd125963%_ _%hd125936125958%_)
                                         (_%body125965%_ _%tl125937125960%_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _%hd125963%_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _%body125965%_)))
                                        (_%E125931125943%_)))))
                              (_%E125931125943%_))))
                      (_%E125931125943%_)))))
          (_%E125930125967%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx125898%_)
        (let* ((_%e125899125906%_ _%stx125898%_)
               (_%E125901125910%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125899125906%_)))
               (_%E125900125924%_
                (lambda ()
                  (if (gx#stx-pair? _%e125899125906%_)
                      (let ((_%e125902125914%_
                             (gx#syntax-e _%e125899125906%_)))
                        (let ((_%hd125903125917%_ (##car _%e125902125914%_))
                              (_%tl125904125919%_ (##cdr _%e125902125914%_)))
                          (let ((_%body125922%_ _%tl125904125919%_))
                            (if '#t
                                (cons '%#export _%body125922%_)
                                (_%E125901125910%_)))))
                      (_%E125901125910%_)))))
          (_%E125900125924%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx125868%_)
        (let* ((_%e125869125876%_ _%stx125868%_)
               (_%E125871125880%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125869125876%_)))
               (_%E125870125894%_
                (lambda ()
                  (if (gx#stx-pair? _%e125869125876%_)
                      (let ((_%e125872125884%_
                             (gx#syntax-e _%e125869125876%_)))
                        (let ((_%hd125873125887%_ (##car _%e125872125884%_))
                              (_%tl125874125889%_ (##cdr _%e125872125884%_)))
                          (let ((_%body125892%_ _%tl125874125889%_))
                            (if '#t
                                (cons '%#provide _%body125892%_)
                                (_%E125871125880%_)))))
                      (_%E125871125880%_)))))
          (_%E125870125894%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx125838%_)
        (let* ((_%e125839125846%_ _%stx125838%_)
               (_%E125841125850%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125839125846%_)))
               (_%E125840125864%_
                (lambda ()
                  (if (gx#stx-pair? _%e125839125846%_)
                      (let ((_%e125842125854%_
                             (gx#syntax-e _%e125839125846%_)))
                        (let ((_%hd125843125857%_ (##car _%e125842125854%_))
                              (_%tl125844125859%_ (##cdr _%e125842125854%_)))
                          (let ((_%body125862%_ _%tl125844125859%_))
                            (if '#t
                                (cons '%#extern _%body125862%_)
                                (_%E125841125850%_)))))
                      (_%E125841125850%_)))))
          (_%E125840125864%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx125784%_)
        (let* ((_%e125785125798%_ _%stx125784%_)
               (_%E125787125802%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125785125798%_)))
               (_%E125786125834%_
                (lambda ()
                  (if (gx#stx-pair? _%e125785125798%_)
                      (let ((_%e125788125806%_
                             (gx#syntax-e _%e125785125798%_)))
                        (let ((_%hd125789125809%_ (##car _%e125788125806%_))
                              (_%tl125790125811%_ (##cdr _%e125788125806%_)))
                          (if (gx#stx-pair? _%tl125790125811%_)
                              (let ((_%e125791125814%_
                                     (gx#syntax-e _%tl125790125811%_)))
                                (let ((_%hd125792125817%_
                                       (##car _%e125791125814%_))
                                      (_%tl125793125819%_
                                       (##cdr _%e125791125814%_)))
                                  (let ((_%hd125822%_ _%hd125792125817%_))
                                    (if (gx#stx-pair? _%tl125793125819%_)
                                        (let ((_%e125794125824%_
                                               (gx#syntax-e
                                                _%tl125793125819%_)))
                                          (let ((_%hd125795125827%_
                                                 (##car _%e125794125824%_))
                                                (_%tl125796125829%_
                                                 (##cdr _%e125794125824%_)))
                                            (let ((_%expr125832%_
                                                   _%hd125795125827%_))
                                              (if (gx#stx-null?
                                                   _%tl125796125829%_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _%hd125822%_)
                          (cons (gx#core-compile-top-syntax _%expr125832%_)
                                '())))
              (_%E125787125802%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125787125802%_)))))
                                        (_%E125787125802%_)))))
                              (_%E125787125802%_))))
                      (_%E125787125802%_)))))
          (_%E125786125834%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx125729%_)
        (let* ((_%e125730125743%_ _%stx125729%_)
               (_%E125732125747%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125730125743%_)))
               (_%E125731125780%_
                (lambda ()
                  (if (gx#stx-pair? _%e125730125743%_)
                      (let ((_%e125733125751%_
                             (gx#syntax-e _%e125730125743%_)))
                        (let ((_%hd125734125754%_ (##car _%e125733125751%_))
                              (_%tl125735125756%_ (##cdr _%e125733125751%_)))
                          (if (gx#stx-pair? _%tl125735125756%_)
                              (let ((_%e125736125759%_
                                     (gx#syntax-e _%tl125735125756%_)))
                                (let ((_%hd125737125762%_
                                       (##car _%e125736125759%_))
                                      (_%tl125738125764%_
                                       (##cdr _%e125736125759%_)))
                                  (let ((_%hd125767%_ _%hd125737125762%_))
                                    (if (gx#stx-pair? _%tl125738125764%_)
                                        (let ((_%e125739125769%_
                                               (gx#syntax-e
                                                _%tl125738125764%_)))
                                          (let ((_%hd125740125772%_
                                                 (##car _%e125739125769%_))
                                                (_%tl125741125774%_
                                                 (##cdr _%e125739125769%_)))
                                            (let ((_%expr125777%_
                                                   _%hd125740125772%_))
                                              (if (gx#stx-null?
                                                   _%tl125741125774%_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _%hd125767%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (__call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _%expr125777%_))
                                 gx#current-expander-phi
                                 (##fx+ (gx#current-expander-phi) '1))
                                '())))
              (_%E125732125747%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125732125747%_)))))
                                        (_%E125732125747%_)))))
                              (_%E125732125747%_))))
                      (_%E125732125747%_)))))
          (_%E125731125780%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx125699%_)
        (let* ((_%e125700125707%_ _%stx125699%_)
               (_%E125702125711%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125700125707%_)))
               (_%E125701125725%_
                (lambda ()
                  (if (gx#stx-pair? _%e125700125707%_)
                      (let ((_%e125703125715%_
                             (gx#syntax-e _%e125700125707%_)))
                        (let ((_%hd125704125718%_ (##car _%e125703125715%_))
                              (_%tl125705125720%_ (##cdr _%e125703125715%_)))
                          (let ((_%body125723%_ _%tl125705125720%_))
                            (if '#t
                                (cons '%#define-alias _%body125723%_)
                                (_%E125702125711%_)))))
                      (_%E125702125711%_)))))
          (_%E125701125725%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx125669%_)
        (let* ((_%e125670125677%_ _%stx125669%_)
               (_%E125672125681%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125670125677%_)))
               (_%E125671125695%_
                (lambda ()
                  (if (gx#stx-pair? _%e125670125677%_)
                      (let ((_%e125673125685%_
                             (gx#syntax-e _%e125670125677%_)))
                        (let ((_%hd125674125688%_ (##car _%e125673125685%_))
                              (_%tl125675125690%_ (##cdr _%e125673125685%_)))
                          (let ((_%body125693%_ _%tl125675125690%_))
                            (if '#t
                                (cons '%#define-runtime _%body125693%_)
                                (_%E125672125681%_)))))
                      (_%E125672125681%_)))))
          (_%E125671125695%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx125639%_)
        (let* ((_%e125640125647%_ _%stx125639%_)
               (_%E125642125651%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125640125647%_)))
               (_%E125641125665%_
                (lambda ()
                  (if (gx#stx-pair? _%e125640125647%_)
                      (let ((_%e125643125655%_
                             (gx#syntax-e _%e125640125647%_)))
                        (let ((_%hd125644125658%_ (##car _%e125643125655%_))
                              (_%tl125645125660%_ (##cdr _%e125643125655%_)))
                          (let ((_%decls125663%_ _%tl125645125660%_))
                            (if '#t
                                (cons '%#declare _%decls125663%_)
                                (_%E125642125651%_)))))
                      (_%E125642125651%_)))))
          (_%E125641125665%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx125609%_)
        (let* ((_%e125610125617%_ _%stx125609%_)
               (_%E125612125621%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125610125617%_)))
               (_%E125611125635%_
                (lambda ()
                  (if (gx#stx-pair? _%e125610125617%_)
                      (let ((_%e125613125625%_
                             (gx#syntax-e _%e125610125617%_)))
                        (let ((_%hd125614125628%_ (##car _%e125613125625%_))
                              (_%tl125615125630%_ (##cdr _%e125613125625%_)))
                          (let ((_%clause125633%_ _%tl125615125630%_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _%clause125633%_))
                                (_%E125612125621%_)))))
                      (_%E125612125621%_)))))
          (_%E125611125635%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx125566%_)
        (let* ((_%e125567125577%_ _%stx125566%_)
               (_%E125569125581%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125567125577%_)))
               (_%E125568125605%_
                (lambda ()
                  (if (gx#stx-pair? _%e125567125577%_)
                      (let ((_%e125570125585%_
                             (gx#syntax-e _%e125567125577%_)))
                        (let ((_%hd125571125588%_ (##car _%e125570125585%_))
                              (_%tl125572125590%_ (##cdr _%e125570125585%_)))
                          (let ((_%hd125593%_ _%hd125571125588%_))
                            (if (gx#stx-pair? _%tl125572125590%_)
                                (let ((_%e125573125595%_
                                       (gx#syntax-e _%tl125572125590%_)))
                                  (let ((_%hd125574125598%_
                                         (##car _%e125573125595%_))
                                        (_%tl125575125600%_
                                         (##cdr _%e125573125595%_)))
                                    (let ((_%body125603%_ _%hd125574125598%_))
                                      (if (gx#stx-null? _%tl125575125600%_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _%hd125593%_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _%body125603%_)
                                                          '()))
                                              (_%E125569125581%_))
                                          (_%E125569125581%_)))))
                                (_%E125569125581%_)))))
                      (_%E125569125581%_)))))
          (_%E125568125605%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx125536%_)
        (let* ((_%e125537125544%_ _%stx125536%_)
               (_%E125539125548%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125537125544%_)))
               (_%E125538125562%_
                (lambda ()
                  (if (gx#stx-pair? _%e125537125544%_)
                      (let ((_%e125540125552%_
                             (gx#syntax-e _%e125537125544%_)))
                        (let ((_%hd125541125555%_ (##car _%e125540125552%_))
                              (_%tl125542125557%_ (##cdr _%e125540125552%_)))
                          (let ((_%clauses125560%_ _%tl125542125557%_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _%clauses125560%_))
                                (_%E125539125548%_)))))
                      (_%E125539125548%_)))))
          (_%E125538125562%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx125471%_ _%form125472%_)
        (let* ((_%e125473125486%_ _%stx125471%_)
               (_%E125475125490%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125473125486%_)))
               (_%E125474125522%_
                (lambda ()
                  (if (gx#stx-pair? _%e125473125486%_)
                      (let ((_%e125476125494%_
                             (gx#syntax-e _%e125473125486%_)))
                        (let ((_%hd125477125497%_ (##car _%e125476125494%_))
                              (_%tl125478125499%_ (##cdr _%e125476125494%_)))
                          (if (gx#stx-pair? _%tl125478125499%_)
                              (let ((_%e125479125502%_
                                     (gx#syntax-e _%tl125478125499%_)))
                                (let ((_%hd125480125505%_
                                       (##car _%e125479125502%_))
                                      (_%tl125481125507%_
                                       (##cdr _%e125479125502%_)))
                                  (let ((_%hd125510%_ _%hd125480125505%_))
                                    (if (gx#stx-pair? _%tl125481125507%_)
                                        (let ((_%e125482125512%_
                                               (gx#syntax-e
                                                _%tl125481125507%_)))
                                          (let ((_%hd125483125515%_
                                                 (##car _%e125482125512%_))
                                                (_%tl125484125517%_
                                                 (##cdr _%e125482125512%_)))
                                            (let ((_%body125520%_
                                                   _%hd125483125515%_))
                                              (if (gx#stx-null?
                                                   _%tl125484125517%_)
                                                  (if '#t
                                                      (cons _%form125472%_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _%hd125510%_)
                          (cons (gx#core-compile-top-syntax _%body125520%_)
                                '())))
              (_%E125475125490%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125475125490%_)))))
                                        (_%E125475125490%_)))))
                              (_%E125475125490%_))))
                      (_%E125475125490%_)))))
          (_%E125474125522%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx125529%_)
        (let ((_%form125531%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx125529%_ _%form125531%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g126356_
        (let ((_g126355_ (##length _g126356_)))
          (cond ((##fx= _g126355_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g126356_))
                ((##fx= _g126355_ 2)
                 (apply gx#core-compile-top-let-values%__% _g126356_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g126356_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx125468%_)
        (gx#core-compile-top-let-values%__% _%stx125468%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx125466%_)
        (gx#core-compile-top-let-values%__% _%stx125466%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx125425%_)
        (let* ((_%e125426125436%_ _%stx125425%_)
               (_%E125428125440%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125426125436%_)))
               (_%E125427125462%_
                (lambda ()
                  (if (gx#stx-pair? _%e125426125436%_)
                      (let ((_%e125429125444%_
                             (gx#syntax-e _%e125426125436%_)))
                        (let ((_%hd125430125447%_ (##car _%e125429125444%_))
                              (_%tl125431125449%_ (##cdr _%e125429125444%_)))
                          (if (gx#stx-pair? _%tl125431125449%_)
                              (let ((_%e125432125452%_
                                     (gx#syntax-e _%tl125431125449%_)))
                                (let ((_%hd125433125455%_
                                       (##car _%e125432125452%_))
                                      (_%tl125434125457%_
                                       (##cdr _%e125432125452%_)))
                                  (let ((_%e125460%_ _%hd125433125455%_))
                                    (if (gx#stx-null? _%tl125434125457%_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _%e125460%_)
                                                        '()))
                                            (_%E125428125440%_))
                                        (_%E125428125440%_)))))
                              (_%E125428125440%_))))
                      (_%E125428125440%_)))))
          (_%E125427125462%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx125384%_)
        (let* ((_%e125385125395%_ _%stx125384%_)
               (_%E125387125399%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125385125395%_)))
               (_%E125386125421%_
                (lambda ()
                  (if (gx#stx-pair? _%e125385125395%_)
                      (let ((_%e125388125403%_
                             (gx#syntax-e _%e125385125395%_)))
                        (let ((_%hd125389125406%_ (##car _%e125388125403%_))
                              (_%tl125390125408%_ (##cdr _%e125388125403%_)))
                          (if (gx#stx-pair? _%tl125390125408%_)
                              (let ((_%e125391125411%_
                                     (gx#syntax-e _%tl125390125408%_)))
                                (let ((_%hd125392125414%_
                                       (##car _%e125391125411%_))
                                      (_%tl125393125416%_
                                       (##cdr _%e125391125411%_)))
                                  (let ((_%e125419%_ _%hd125392125414%_))
                                    (if (gx#stx-null? _%tl125393125416%_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _%e125419%_)
                                                        '()))
                                            (_%E125387125399%_))
                                        (_%E125387125399%_)))))
                              (_%E125387125399%_))))
                      (_%E125387125399%_)))))
          (_%E125386125421%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx125341%_)
        (let* ((_%e125342125352%_ _%stx125341%_)
               (_%E125344125356%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125342125352%_)))
               (_%E125343125380%_
                (lambda ()
                  (if (gx#stx-pair? _%e125342125352%_)
                      (let ((_%e125345125360%_
                             (gx#syntax-e _%e125342125352%_)))
                        (let ((_%hd125346125363%_ (##car _%e125345125360%_))
                              (_%tl125347125365%_ (##cdr _%e125345125360%_)))
                          (if (gx#stx-pair? _%tl125347125365%_)
                              (let ((_%e125348125368%_
                                     (gx#syntax-e _%tl125347125365%_)))
                                (let ((_%hd125349125371%_
                                       (##car _%e125348125368%_))
                                      (_%tl125350125373%_
                                       (##cdr _%e125348125368%_)))
                                  (let* ((_%rator125376%_ _%hd125349125371%_)
                                         (_%args125378%_ _%tl125350125373%_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _%rator125376%_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _%args125378%_)))
                                        (_%E125344125356%_)))))
                              (_%E125344125356%_))))
                      (_%E125344125356%_)))))
          (_%E125343125380%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx125274%_)
        (let* ((_%e125275125291%_ _%stx125274%_)
               (_%E125277125295%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125275125291%_)))
               (_%E125276125337%_
                (lambda ()
                  (if (gx#stx-pair? _%e125275125291%_)
                      (let ((_%e125278125299%_
                             (gx#syntax-e _%e125275125291%_)))
                        (let ((_%hd125279125302%_ (##car _%e125278125299%_))
                              (_%tl125280125304%_ (##cdr _%e125278125299%_)))
                          (if (gx#stx-pair? _%tl125280125304%_)
                              (let ((_%e125281125307%_
                                     (gx#syntax-e _%tl125280125304%_)))
                                (let ((_%hd125282125310%_
                                       (##car _%e125281125307%_))
                                      (_%tl125283125312%_
                                       (##cdr _%e125281125307%_)))
                                  (let ((_%test125315%_ _%hd125282125310%_))
                                    (if (gx#stx-pair? _%tl125283125312%_)
                                        (let ((_%e125284125317%_
                                               (gx#syntax-e
                                                _%tl125283125312%_)))
                                          (let ((_%hd125285125320%_
                                                 (##car _%e125284125317%_))
                                                (_%tl125286125322%_
                                                 (##cdr _%e125284125317%_)))
                                            (let ((_%K125325%_
                                                   _%hd125285125320%_))
                                              (if (gx#stx-pair?
                                                   _%tl125286125322%_)
                                                  (let ((_%e125287125327%_
                                                         (gx#syntax-e
                                                          _%tl125286125322%_)))
                                                    (let ((_%hd125288125330%_
                                                           (##car _%e125287125327%_))
                                                          (_%tl125289125332%_
                                                           (##cdr _%e125287125327%_)))
                                                      (let ((_%E125335%_
                                                             _%hd125288125330%_))
                                                        (if (gx#stx-null?
                                                             _%tl125289125332%_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _%test125315%_)
                                    (cons (gx#core-compile-top-syntax
                                           _%K125325%_)
                                          (cons (gx#core-compile-top-syntax
                                                 _%E125335%_)
                                                '()))))
                        (_%E125277125295%_))
                    (_%E125277125295%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125277125295%_)))))
                                        (_%E125277125295%_)))))
                              (_%E125277125295%_))))
                      (_%E125277125295%_)))))
          (_%E125276125337%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx125233%_)
        (let* ((_%e125234125244%_ _%stx125233%_)
               (_%E125236125248%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125234125244%_)))
               (_%E125235125270%_
                (lambda ()
                  (if (gx#stx-pair? _%e125234125244%_)
                      (let ((_%e125237125252%_
                             (gx#syntax-e _%e125234125244%_)))
                        (let ((_%hd125238125255%_ (##car _%e125237125252%_))
                              (_%tl125239125257%_ (##cdr _%e125237125252%_)))
                          (if (gx#stx-pair? _%tl125239125257%_)
                              (let ((_%e125240125260%_
                                     (gx#syntax-e _%tl125239125257%_)))
                                (let ((_%hd125241125263%_
                                       (##car _%e125240125260%_))
                                      (_%tl125242125265%_
                                       (##cdr _%e125240125260%_)))
                                  (let ((_%id125268%_ _%hd125241125263%_))
                                    (if (gx#stx-null? _%tl125242125265%_)
                                        (if (gx#identifier? _%id125268%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id125268%_)
                                                        '()))
                                            (_%E125236125248%_))
                                        (_%E125236125248%_)))))
                              (_%E125236125248%_))))
                      (_%E125236125248%_)))))
          (_%E125235125270%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx125179%_)
        (let* ((_%e125180125193%_ _%stx125179%_)
               (_%E125182125197%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125180125193%_)))
               (_%E125181125229%_
                (lambda ()
                  (if (gx#stx-pair? _%e125180125193%_)
                      (let ((_%e125183125201%_
                             (gx#syntax-e _%e125180125193%_)))
                        (let ((_%hd125184125204%_ (##car _%e125183125201%_))
                              (_%tl125185125206%_ (##cdr _%e125183125201%_)))
                          (if (gx#stx-pair? _%tl125185125206%_)
                              (let ((_%e125186125209%_
                                     (gx#syntax-e _%tl125185125206%_)))
                                (let ((_%hd125187125212%_
                                       (##car _%e125186125209%_))
                                      (_%tl125188125214%_
                                       (##cdr _%e125186125209%_)))
                                  (let ((_%id125217%_ _%hd125187125212%_))
                                    (if (gx#stx-pair? _%tl125188125214%_)
                                        (let ((_%e125189125219%_
                                               (gx#syntax-e
                                                _%tl125188125214%_)))
                                          (let ((_%hd125190125222%_
                                                 (##car _%e125189125219%_))
                                                (_%tl125191125224%_
                                                 (##cdr _%e125189125219%_)))
                                            (let ((_%expr125227%_
                                                   _%hd125190125222%_))
                                              (if (gx#stx-null?
                                                   _%tl125191125224%_)
                                                  (if (gx#identifier?
                                                       _%id125217%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id125217%_)
                          (cons (gx#core-compile-top-syntax _%expr125227%_)
                                '())))
              (_%E125182125197%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125182125197%_)))))
                                        (_%E125182125197%_)))))
                              (_%E125182125197%_))))
                      (_%E125182125197%_)))))
          (_%E125181125229%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id125173%_)
        (let ((_%$e125175%_ (gx#resolve-identifier__0 _%id125173%_)))
          (if _%$e125175%_
              (##unchecked-structure-ref _%$e125175%_ '1 '#f '#f)
              _%id125173%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd125171%_)
        (if (gx#identifier? _%hd125171%_)
            (gx#core-compile-top-runtime-ref _%hd125171%_)
            '#f)))))
