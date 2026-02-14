(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1771092629)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx186835%_)
        (let* ((_%e186836186843%_ _%stx186835%_)
               (_%E186838186847%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186836186843%_)))
               (_%E186837186861%_
                (lambda ()
                  (if (gx#stx-pair? _%e186836186843%_)
                      (let ((_%e186839186851%_
                             (gx#syntax-e _%e186836186843%_)))
                        (let ((_%hd186840186854%_ (##car _%e186839186851%_))
                              (_%tl186841186856%_ (##cdr _%e186839186851%_)))
                          (let* ((_%form186859%_ _%hd186840186854%_)
                                 (__self186864
                                  (gx#syntax-local-e__0 _%form186859%_))
                                 (__method186865
                                  (__method-ref
                                   __self186864
                                   'compile-top-syntax)))
                            (if __method186865
                                (__method186865 __self186864 _%stx186835%_)
                                (begin
                                  (error '"Missing method"
                                         __self186864
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%E186838186847%_)))))
          (_%E186837186861%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self186784%_ _%stx186785%_)
        (let* ((_%self186788%_ _%self186784%_)
               (_%self186797186805%_ _%self186788%_)
               (_%E186799186808%_
                (lambda ()
                  (error '"No clause matching"
                         _%self186797186805%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K186800186821%_
                (lambda (_%K186811%_)
                  (let ((_%$e186813%_ (gx#stx-source _%stx186785%_)))
                    (if _%$e186813%_
                        ((lambda (_%g186815186817%_)
                           (gx#stx-wrap-source
                            (_%K186811%_ _%stx186785%_)
                            _%g186815186817%_))
                         _%$e186813%_)
                        (_%K186811%_ _%stx186785%_)))))
               (_%e186801186824%_
                (##unchecked-structure-ref _%self186797186805%_ '1 '#f '#f))
               (_%e186802186827%_
                (##unchecked-structure-ref _%self186797186805%_ '2 '#f '#f))
               (_%e186803186830%_
                (##unchecked-structure-ref _%self186797186805%_ '3 '#f '#f))
               (_%K186833%_ _%e186803186830%_))
          (_%K186800186821%_ _%K186833%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx186658%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx186658%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx186628%_)
        (let* ((_%e186629186636%_ _%stx186628%_)
               (_%E186631186640%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186629186636%_)))
               (_%E186630186654%_
                (lambda ()
                  (if (gx#stx-pair? _%e186629186636%_)
                      (let ((_%e186632186644%_
                             (gx#syntax-e _%e186629186636%_)))
                        (let ((_%hd186633186647%_ (##car _%e186632186644%_))
                              (_%tl186634186649%_ (##cdr _%e186632186644%_)))
                          (let ((_%body186652%_ _%tl186634186649%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body186652%_)))))
                      (_%E186631186640%_)))))
          (_%E186630186654%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx186597%_)
        (let* ((_%e186598186605%_ _%stx186597%_)
               (_%E186600186609%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186598186605%_)))
               (_%E186599186624%_
                (lambda ()
                  (if (gx#stx-pair? _%e186598186605%_)
                      (let ((_%e186601186613%_
                             (gx#syntax-e _%e186598186605%_)))
                        (let ((_%hd186602186616%_ (##car _%e186601186613%_))
                              (_%tl186603186618%_ (##cdr _%e186601186613%_)))
                          (let ((_%body186621%_ _%tl186603186618%_))
                            (cons '%#begin-syntax
                                  (call-with-parameters__1
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body186621%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%E186600186609%_)))))
          (_%E186599186624%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx186567%_)
        (let* ((_%e186568186575%_ _%stx186567%_)
               (_%E186570186579%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186568186575%_)))
               (_%E186569186593%_
                (lambda ()
                  (if (gx#stx-pair? _%e186568186575%_)
                      (let ((_%e186571186583%_
                             (gx#syntax-e _%e186568186575%_)))
                        (let ((_%hd186572186586%_ (##car _%e186571186583%_))
                              (_%tl186573186588%_ (##cdr _%e186571186583%_)))
                          (let ((_%body186591%_ _%tl186573186588%_))
                            (cons '%#begin-foreign _%body186591%_))))
                      (_%E186570186579%_)))))
          (_%E186569186593%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx186513%_)
        (let* ((_%e186514186527%_ _%stx186513%_)
               (_%E186516186531%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186514186527%_)))
               (_%E186515186563%_
                (lambda ()
                  (if (gx#stx-pair? _%e186514186527%_)
                      (let ((_%e186517186535%_
                             (gx#syntax-e _%e186514186527%_)))
                        (let ((_%hd186518186538%_ (##car _%e186517186535%_))
                              (_%tl186519186540%_ (##cdr _%e186517186535%_)))
                          (if (gx#stx-pair? _%tl186519186540%_)
                              (let ((_%e186520186543%_
                                     (gx#syntax-e _%tl186519186540%_)))
                                (let ((_%hd186521186546%_
                                       (##car _%e186520186543%_))
                                      (_%tl186522186548%_
                                       (##cdr _%e186520186543%_)))
                                  (let ((_%ann186551%_ _%hd186521186546%_))
                                    (if (gx#stx-pair? _%tl186522186548%_)
                                        (let ((_%e186523186553%_
                                               (gx#syntax-e
                                                _%tl186522186548%_)))
                                          (let ((_%hd186524186556%_
                                                 (##car _%e186523186553%_))
                                                (_%tl186525186558%_
                                                 (##cdr _%e186523186553%_)))
                                            (let ((_%expr186561%_
                                                   _%hd186524186556%_))
                                              (if (gx#stx-null?
                                                   _%tl186525186558%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr186561%_)
                                                  (_%E186516186531%_)))))
                                        (_%E186516186531%_)))))
                              (_%E186516186531%_))))
                      (_%E186516186531%_)))))
          (_%E186515186563%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx186483%_)
        (let* ((_%e186484186491%_ _%stx186483%_)
               (_%E186486186495%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186484186491%_)))
               (_%E186485186509%_
                (lambda ()
                  (if (gx#stx-pair? _%e186484186491%_)
                      (let ((_%e186487186499%_
                             (gx#syntax-e _%e186484186491%_)))
                        (let ((_%hd186488186502%_ (##car _%e186487186499%_))
                              (_%tl186489186504%_ (##cdr _%e186487186499%_)))
                          (let ((_%body186507%_ _%tl186489186504%_))
                            (cons '%#import _%body186507%_))))
                      (_%E186486186495%_)))))
          (_%E186485186509%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx186440%_)
        (let* ((_%e186441186451%_ _%stx186440%_)
               (_%E186443186455%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186441186451%_)))
               (_%E186442186479%_
                (lambda ()
                  (if (gx#stx-pair? _%e186441186451%_)
                      (let ((_%e186444186459%_
                             (gx#syntax-e _%e186441186451%_)))
                        (let ((_%hd186445186462%_ (##car _%e186444186459%_))
                              (_%tl186446186464%_ (##cdr _%e186444186459%_)))
                          (if (gx#stx-pair? _%tl186446186464%_)
                              (let ((_%e186447186467%_
                                     (gx#syntax-e _%tl186446186464%_)))
                                (let ((_%hd186448186470%_
                                       (##car _%e186447186467%_))
                                      (_%tl186449186472%_
                                       (##cdr _%e186447186467%_)))
                                  (let* ((_%hd186475%_ _%hd186448186470%_)
                                         (_%body186477%_ _%tl186449186472%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd186475%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body186477%_))))))
                              (_%E186443186455%_))))
                      (_%E186443186455%_)))))
          (_%E186442186479%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx186410%_)
        (let* ((_%e186411186418%_ _%stx186410%_)
               (_%E186413186422%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186411186418%_)))
               (_%E186412186436%_
                (lambda ()
                  (if (gx#stx-pair? _%e186411186418%_)
                      (let ((_%e186414186426%_
                             (gx#syntax-e _%e186411186418%_)))
                        (let ((_%hd186415186429%_ (##car _%e186414186426%_))
                              (_%tl186416186431%_ (##cdr _%e186414186426%_)))
                          (let ((_%body186434%_ _%tl186416186431%_))
                            (cons '%#export _%body186434%_))))
                      (_%E186413186422%_)))))
          (_%E186412186436%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx186380%_)
        (let* ((_%e186381186388%_ _%stx186380%_)
               (_%E186383186392%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186381186388%_)))
               (_%E186382186406%_
                (lambda ()
                  (if (gx#stx-pair? _%e186381186388%_)
                      (let ((_%e186384186396%_
                             (gx#syntax-e _%e186381186388%_)))
                        (let ((_%hd186385186399%_ (##car _%e186384186396%_))
                              (_%tl186386186401%_ (##cdr _%e186384186396%_)))
                          (let ((_%body186404%_ _%tl186386186401%_))
                            (cons '%#provide _%body186404%_))))
                      (_%E186383186392%_)))))
          (_%E186382186406%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx186350%_)
        (let* ((_%e186351186358%_ _%stx186350%_)
               (_%E186353186362%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186351186358%_)))
               (_%E186352186376%_
                (lambda ()
                  (if (gx#stx-pair? _%e186351186358%_)
                      (let ((_%e186354186366%_
                             (gx#syntax-e _%e186351186358%_)))
                        (let ((_%hd186355186369%_ (##car _%e186354186366%_))
                              (_%tl186356186371%_ (##cdr _%e186354186366%_)))
                          (let ((_%body186374%_ _%tl186356186371%_))
                            (cons '%#extern _%body186374%_))))
                      (_%E186353186362%_)))))
          (_%E186352186376%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx186296%_)
        (let* ((_%e186297186310%_ _%stx186296%_)
               (_%E186299186314%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186297186310%_)))
               (_%E186298186346%_
                (lambda ()
                  (if (gx#stx-pair? _%e186297186310%_)
                      (let ((_%e186300186318%_
                             (gx#syntax-e _%e186297186310%_)))
                        (let ((_%hd186301186321%_ (##car _%e186300186318%_))
                              (_%tl186302186323%_ (##cdr _%e186300186318%_)))
                          (if (gx#stx-pair? _%tl186302186323%_)
                              (let ((_%e186303186326%_
                                     (gx#syntax-e _%tl186302186323%_)))
                                (let ((_%hd186304186329%_
                                       (##car _%e186303186326%_))
                                      (_%tl186305186331%_
                                       (##cdr _%e186303186326%_)))
                                  (let ((_%hd186334%_ _%hd186304186329%_))
                                    (if (gx#stx-pair? _%tl186305186331%_)
                                        (let ((_%e186306186336%_
                                               (gx#syntax-e
                                                _%tl186305186331%_)))
                                          (let ((_%hd186307186339%_
                                                 (##car _%e186306186336%_))
                                                (_%tl186308186341%_
                                                 (##cdr _%e186306186336%_)))
                                            (let ((_%expr186344%_
                                                   _%hd186307186339%_))
                                              (if (gx#stx-null?
                                                   _%tl186308186341%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd186334%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr186344%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E186299186314%_)))))
                                        (_%E186299186314%_)))))
                              (_%E186299186314%_))))
                      (_%E186299186314%_)))))
          (_%E186298186346%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx186241%_)
        (let* ((_%e186242186255%_ _%stx186241%_)
               (_%E186244186259%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186242186255%_)))
               (_%E186243186292%_
                (lambda ()
                  (if (gx#stx-pair? _%e186242186255%_)
                      (let ((_%e186245186263%_
                             (gx#syntax-e _%e186242186255%_)))
                        (let ((_%hd186246186266%_ (##car _%e186245186263%_))
                              (_%tl186247186268%_ (##cdr _%e186245186263%_)))
                          (if (gx#stx-pair? _%tl186247186268%_)
                              (let ((_%e186248186271%_
                                     (gx#syntax-e _%tl186247186268%_)))
                                (let ((_%hd186249186274%_
                                       (##car _%e186248186271%_))
                                      (_%tl186250186276%_
                                       (##cdr _%e186248186271%_)))
                                  (let ((_%hd186279%_ _%hd186249186274%_))
                                    (if (gx#stx-pair? _%tl186250186276%_)
                                        (let ((_%e186251186281%_
                                               (gx#syntax-e
                                                _%tl186250186276%_)))
                                          (let ((_%hd186252186284%_
                                                 (##car _%e186251186281%_))
                                                (_%tl186253186286%_
                                                 (##cdr _%e186251186281%_)))
                                            (let ((_%expr186289%_
                                                   _%hd186252186284%_))
                                              (if (gx#stx-null?
                                                   _%tl186253186286%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd186279%_
                                                              (cons (call-with-parameters__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr186289%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E186244186259%_)))))
                                        (_%E186244186259%_)))))
                              (_%E186244186259%_))))
                      (_%E186244186259%_)))))
          (_%E186243186292%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx186211%_)
        (let* ((_%e186212186219%_ _%stx186211%_)
               (_%E186214186223%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186212186219%_)))
               (_%E186213186237%_
                (lambda ()
                  (if (gx#stx-pair? _%e186212186219%_)
                      (let ((_%e186215186227%_
                             (gx#syntax-e _%e186212186219%_)))
                        (let ((_%hd186216186230%_ (##car _%e186215186227%_))
                              (_%tl186217186232%_ (##cdr _%e186215186227%_)))
                          (let ((_%body186235%_ _%tl186217186232%_))
                            (cons '%#define-alias _%body186235%_))))
                      (_%E186214186223%_)))))
          (_%E186213186237%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx186181%_)
        (let* ((_%e186182186189%_ _%stx186181%_)
               (_%E186184186193%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186182186189%_)))
               (_%E186183186207%_
                (lambda ()
                  (if (gx#stx-pair? _%e186182186189%_)
                      (let ((_%e186185186197%_
                             (gx#syntax-e _%e186182186189%_)))
                        (let ((_%hd186186186200%_ (##car _%e186185186197%_))
                              (_%tl186187186202%_ (##cdr _%e186185186197%_)))
                          (let ((_%body186205%_ _%tl186187186202%_))
                            (cons '%#define-runtime _%body186205%_))))
                      (_%E186184186193%_)))))
          (_%E186183186207%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx186151%_)
        (let* ((_%e186152186159%_ _%stx186151%_)
               (_%E186154186163%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186152186159%_)))
               (_%E186153186177%_
                (lambda ()
                  (if (gx#stx-pair? _%e186152186159%_)
                      (let ((_%e186155186167%_
                             (gx#syntax-e _%e186152186159%_)))
                        (let ((_%hd186156186170%_ (##car _%e186155186167%_))
                              (_%tl186157186172%_ (##cdr _%e186155186167%_)))
                          (let ((_%decls186175%_ _%tl186157186172%_))
                            (cons '%#declare _%decls186175%_))))
                      (_%E186154186163%_)))))
          (_%E186153186177%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx186121%_)
        (let* ((_%e186122186129%_ _%stx186121%_)
               (_%E186124186133%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186122186129%_)))
               (_%E186123186147%_
                (lambda ()
                  (if (gx#stx-pair? _%e186122186129%_)
                      (let ((_%e186125186137%_
                             (gx#syntax-e _%e186122186129%_)))
                        (let ((_%hd186126186140%_ (##car _%e186125186137%_))
                              (_%tl186127186142%_ (##cdr _%e186125186137%_)))
                          (let ((_%clause186145%_ _%tl186127186142%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause186145%_)))))
                      (_%E186124186133%_)))))
          (_%E186123186147%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx186078%_)
        (let* ((_%e186079186089%_ _%stx186078%_)
               (_%E186081186093%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186079186089%_)))
               (_%E186080186117%_
                (lambda ()
                  (if (gx#stx-pair? _%e186079186089%_)
                      (let ((_%e186082186097%_
                             (gx#syntax-e _%e186079186089%_)))
                        (let ((_%hd186083186100%_ (##car _%e186082186097%_))
                              (_%tl186084186102%_ (##cdr _%e186082186097%_)))
                          (let ((_%hd186105%_ _%hd186083186100%_))
                            (if (gx#stx-pair? _%tl186084186102%_)
                                (let ((_%e186085186107%_
                                       (gx#syntax-e _%tl186084186102%_)))
                                  (let ((_%hd186086186110%_
                                         (##car _%e186085186107%_))
                                        (_%tl186087186112%_
                                         (##cdr _%e186085186107%_)))
                                    (let ((_%body186115%_ _%hd186086186110%_))
                                      (if (gx#stx-null? _%tl186087186112%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd186105%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body186115%_)
                                                      '()))
                                          (_%E186081186093%_)))))
                                (_%E186081186093%_)))))
                      (_%E186081186093%_)))))
          (_%E186080186117%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx186048%_)
        (let* ((_%e186049186056%_ _%stx186048%_)
               (_%E186051186060%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186049186056%_)))
               (_%E186050186074%_
                (lambda ()
                  (if (gx#stx-pair? _%e186049186056%_)
                      (let ((_%e186052186064%_
                             (gx#syntax-e _%e186049186056%_)))
                        (let ((_%hd186053186067%_ (##car _%e186052186064%_))
                              (_%tl186054186069%_ (##cdr _%e186052186064%_)))
                          (let ((_%clauses186072%_ _%tl186054186069%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses186072%_)))))
                      (_%E186051186060%_)))))
          (_%E186050186074%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx185983%_ _%form185984%_)
        (let* ((_%e185985185998%_ _%stx185983%_)
               (_%E185987186002%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e185985185998%_)))
               (_%E185986186034%_
                (lambda ()
                  (if (gx#stx-pair? _%e185985185998%_)
                      (let ((_%e185988186006%_
                             (gx#syntax-e _%e185985185998%_)))
                        (let ((_%hd185989186009%_ (##car _%e185988186006%_))
                              (_%tl185990186011%_ (##cdr _%e185988186006%_)))
                          (if (gx#stx-pair? _%tl185990186011%_)
                              (let ((_%e185991186014%_
                                     (gx#syntax-e _%tl185990186011%_)))
                                (let ((_%hd185992186017%_
                                       (##car _%e185991186014%_))
                                      (_%tl185993186019%_
                                       (##cdr _%e185991186014%_)))
                                  (let ((_%hd186022%_ _%hd185992186017%_))
                                    (if (gx#stx-pair? _%tl185993186019%_)
                                        (let ((_%e185994186024%_
                                               (gx#syntax-e
                                                _%tl185993186019%_)))
                                          (let ((_%hd185995186027%_
                                                 (##car _%e185994186024%_))
                                                (_%tl185996186029%_
                                                 (##cdr _%e185994186024%_)))
                                            (let ((_%body186032%_
                                                   _%hd185995186027%_))
                                              (if (gx#stx-null?
                                                   _%tl185996186029%_)
                                                  (cons _%form185984%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd186022%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body186032%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E185987186002%_)))))
                                        (_%E185987186002%_)))))
                              (_%E185987186002%_))))
                      (_%E185987186002%_)))))
          (_%E185986186034%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx186041%_)
        (let ((_%form186043%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx186041%_ _%form186043%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g186866_
        (let ((_g186867_ (##length _g186866_)))
          (cond ((##fx= _g186867_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g186866_))
                ((##fx= _g186867_ 2)
                 (apply gx#core-compile-top-let-values%__% _g186866_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g186866_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx185980%_)
        (gx#core-compile-top-let-values%__% _%stx185980%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx185978%_)
        (gx#core-compile-top-let-values%__% _%stx185978%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx185937%_)
        (let* ((_%e185938185948%_ _%stx185937%_)
               (_%E185940185952%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e185938185948%_)))
               (_%E185939185974%_
                (lambda ()
                  (if (gx#stx-pair? _%e185938185948%_)
                      (let ((_%e185941185956%_
                             (gx#syntax-e _%e185938185948%_)))
                        (let ((_%hd185942185959%_ (##car _%e185941185956%_))
                              (_%tl185943185961%_ (##cdr _%e185941185956%_)))
                          (if (gx#stx-pair? _%tl185943185961%_)
                              (let ((_%e185944185964%_
                                     (gx#syntax-e _%tl185943185961%_)))
                                (let ((_%hd185945185967%_
                                       (##car _%e185944185964%_))
                                      (_%tl185946185969%_
                                       (##cdr _%e185944185964%_)))
                                  (let ((_%e185972%_ _%hd185945185967%_))
                                    (if (gx#stx-null? _%tl185946185969%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e185972%_)
                                                    '()))
                                        (_%E185940185952%_)))))
                              (_%E185940185952%_))))
                      (_%E185940185952%_)))))
          (_%E185939185974%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx185896%_)
        (let* ((_%e185897185907%_ _%stx185896%_)
               (_%E185899185911%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e185897185907%_)))
               (_%E185898185933%_
                (lambda ()
                  (if (gx#stx-pair? _%e185897185907%_)
                      (let ((_%e185900185915%_
                             (gx#syntax-e _%e185897185907%_)))
                        (let ((_%hd185901185918%_ (##car _%e185900185915%_))
                              (_%tl185902185920%_ (##cdr _%e185900185915%_)))
                          (if (gx#stx-pair? _%tl185902185920%_)
                              (let ((_%e185903185923%_
                                     (gx#syntax-e _%tl185902185920%_)))
                                (let ((_%hd185904185926%_
                                       (##car _%e185903185923%_))
                                      (_%tl185905185928%_
                                       (##cdr _%e185903185923%_)))
                                  (let ((_%e185931%_ _%hd185904185926%_))
                                    (if (gx#stx-null? _%tl185905185928%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e185931%_)
                                                    '()))
                                        (_%E185899185911%_)))))
                              (_%E185899185911%_))))
                      (_%E185899185911%_)))))
          (_%E185898185933%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx185853%_)
        (let* ((_%e185854185864%_ _%stx185853%_)
               (_%E185856185868%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e185854185864%_)))
               (_%E185855185892%_
                (lambda ()
                  (if (gx#stx-pair? _%e185854185864%_)
                      (let ((_%e185857185872%_
                             (gx#syntax-e _%e185854185864%_)))
                        (let ((_%hd185858185875%_ (##car _%e185857185872%_))
                              (_%tl185859185877%_ (##cdr _%e185857185872%_)))
                          (if (gx#stx-pair? _%tl185859185877%_)
                              (let ((_%e185860185880%_
                                     (gx#syntax-e _%tl185859185877%_)))
                                (let ((_%hd185861185883%_
                                       (##car _%e185860185880%_))
                                      (_%tl185862185885%_
                                       (##cdr _%e185860185880%_)))
                                  (let* ((_%rator185888%_ _%hd185861185883%_)
                                         (_%args185890%_ _%tl185862185885%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator185888%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args185890%_))))))
                              (_%E185856185868%_))))
                      (_%E185856185868%_)))))
          (_%E185855185892%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx185786%_)
        (let* ((_%e185787185803%_ _%stx185786%_)
               (_%E185789185807%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e185787185803%_)))
               (_%E185788185849%_
                (lambda ()
                  (if (gx#stx-pair? _%e185787185803%_)
                      (let ((_%e185790185811%_
                             (gx#syntax-e _%e185787185803%_)))
                        (let ((_%hd185791185814%_ (##car _%e185790185811%_))
                              (_%tl185792185816%_ (##cdr _%e185790185811%_)))
                          (if (gx#stx-pair? _%tl185792185816%_)
                              (let ((_%e185793185819%_
                                     (gx#syntax-e _%tl185792185816%_)))
                                (let ((_%hd185794185822%_
                                       (##car _%e185793185819%_))
                                      (_%tl185795185824%_
                                       (##cdr _%e185793185819%_)))
                                  (let ((_%test185827%_ _%hd185794185822%_))
                                    (if (gx#stx-pair? _%tl185795185824%_)
                                        (let ((_%e185796185829%_
                                               (gx#syntax-e
                                                _%tl185795185824%_)))
                                          (let ((_%hd185797185832%_
                                                 (##car _%e185796185829%_))
                                                (_%tl185798185834%_
                                                 (##cdr _%e185796185829%_)))
                                            (let ((_%K185837%_
                                                   _%hd185797185832%_))
                                              (if (gx#stx-pair?
                                                   _%tl185798185834%_)
                                                  (let ((_%e185799185839%_
                                                         (gx#syntax-e
                                                          _%tl185798185834%_)))
                                                    (let ((_%hd185800185842%_
                                                           (##car _%e185799185839%_))
                                                          (_%tl185801185844%_
                                                           (##cdr _%e185799185839%_)))
                                                      (let ((_%E185847%_
                                                             _%hd185800185842%_))
                                                        (if (gx#stx-null?
                                                             _%tl185801185844%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test185827%_)
                                (cons (gx#core-compile-top-syntax _%K185837%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E185847%_)
                                            '()))))
                    (_%E185789185807%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E185789185807%_)))))
                                        (_%E185789185807%_)))))
                              (_%E185789185807%_))))
                      (_%E185789185807%_)))))
          (_%E185788185849%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx185745%_)
        (let* ((_%e185746185756%_ _%stx185745%_)
               (_%E185748185760%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e185746185756%_)))
               (_%E185747185782%_
                (lambda ()
                  (if (gx#stx-pair? _%e185746185756%_)
                      (let ((_%e185749185764%_
                             (gx#syntax-e _%e185746185756%_)))
                        (let ((_%hd185750185767%_ (##car _%e185749185764%_))
                              (_%tl185751185769%_ (##cdr _%e185749185764%_)))
                          (if (gx#stx-pair? _%tl185751185769%_)
                              (let ((_%e185752185772%_
                                     (gx#syntax-e _%tl185751185769%_)))
                                (let ((_%hd185753185775%_
                                       (##car _%e185752185772%_))
                                      (_%tl185754185777%_
                                       (##cdr _%e185752185772%_)))
                                  (let ((_%id185780%_ _%hd185753185775%_))
                                    (if (gx#stx-null? _%tl185754185777%_)
                                        (if (gx#identifier? _%id185780%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id185780%_)
                                                        '()))
                                            (_%E185748185760%_))
                                        (_%E185748185760%_)))))
                              (_%E185748185760%_))))
                      (_%E185748185760%_)))))
          (_%E185747185782%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx185691%_)
        (let* ((_%e185692185705%_ _%stx185691%_)
               (_%E185694185709%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e185692185705%_)))
               (_%E185693185741%_
                (lambda ()
                  (if (gx#stx-pair? _%e185692185705%_)
                      (let ((_%e185695185713%_
                             (gx#syntax-e _%e185692185705%_)))
                        (let ((_%hd185696185716%_ (##car _%e185695185713%_))
                              (_%tl185697185718%_ (##cdr _%e185695185713%_)))
                          (if (gx#stx-pair? _%tl185697185718%_)
                              (let ((_%e185698185721%_
                                     (gx#syntax-e _%tl185697185718%_)))
                                (let ((_%hd185699185724%_
                                       (##car _%e185698185721%_))
                                      (_%tl185700185726%_
                                       (##cdr _%e185698185721%_)))
                                  (let ((_%id185729%_ _%hd185699185724%_))
                                    (if (gx#stx-pair? _%tl185700185726%_)
                                        (let ((_%e185701185731%_
                                               (gx#syntax-e
                                                _%tl185700185726%_)))
                                          (let ((_%hd185702185734%_
                                                 (##car _%e185701185731%_))
                                                (_%tl185703185736%_
                                                 (##cdr _%e185701185731%_)))
                                            (let ((_%expr185739%_
                                                   _%hd185702185734%_))
                                              (if (gx#stx-null?
                                                   _%tl185703185736%_)
                                                  (if (gx#identifier?
                                                       _%id185729%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id185729%_)
                          (cons (gx#core-compile-top-syntax _%expr185739%_)
                                '())))
              (_%E185694185709%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E185694185709%_)))))
                                        (_%E185694185709%_)))))
                              (_%E185694185709%_))))
                      (_%E185694185709%_)))))
          (_%E185693185741%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id185685%_)
        (let ((_%$e185687%_ (gx#resolve-identifier__0 _%id185685%_)))
          (if _%$e185687%_
              (##unchecked-structure-ref _%$e185687%_ '1 '#f '#f)
              _%id185685%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd185683%_)
        (if (gx#identifier? _%hd185683%_)
            (gx#core-compile-top-runtime-ref _%hd185683%_)
            '#f)))))
