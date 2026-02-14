(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1771093449)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx186839%_)
        (let* ((_%e186840186847%_ _%stx186839%_)
               (_%E186842186851%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186840186847%_)))
               (_%E186841186865%_
                (lambda ()
                  (if (gx#stx-pair? _%e186840186847%_)
                      (let ((_%e186843186855%_
                             (gx#syntax-e _%e186840186847%_)))
                        (let ((_%hd186844186858%_ (##car _%e186843186855%_))
                              (_%tl186845186860%_ (##cdr _%e186843186855%_)))
                          (let* ((_%form186863%_ _%hd186844186858%_)
                                 (__self186868
                                  (gx#syntax-local-e__0 _%form186863%_))
                                 (__method186869
                                  (__method-ref
                                   __self186868
                                   'compile-top-syntax)))
                            (if __method186869
                                (__method186869 __self186868 _%stx186839%_)
                                (begin
                                  (error '"Missing method"
                                         __self186868
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%E186842186851%_)))))
          (_%E186841186865%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self186788%_ _%stx186789%_)
        (let* ((_%self186792%_ _%self186788%_)
               (_%self186801186809%_ _%self186792%_)
               (_%E186803186812%_
                (lambda ()
                  (error '"No clause matching"
                         _%self186801186809%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K186804186825%_
                (lambda (_%K186815%_)
                  (let ((_%$e186817%_ (gx#stx-source _%stx186789%_)))
                    (if _%$e186817%_
                        ((lambda (_%g186819186821%_)
                           (gx#stx-wrap-source
                            (_%K186815%_ _%stx186789%_)
                            _%g186819186821%_))
                         _%$e186817%_)
                        (_%K186815%_ _%stx186789%_)))))
               (_%e186805186828%_
                (##unchecked-structure-ref _%self186801186809%_ '1 '#f '#f))
               (_%e186806186831%_
                (##unchecked-structure-ref _%self186801186809%_ '2 '#f '#f))
               (_%e186807186834%_
                (##unchecked-structure-ref _%self186801186809%_ '3 '#f '#f))
               (_%K186837%_ _%e186807186834%_))
          (_%K186804186825%_ _%K186837%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx186662%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx186662%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx186632%_)
        (let* ((_%e186633186640%_ _%stx186632%_)
               (_%E186635186644%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186633186640%_)))
               (_%E186634186658%_
                (lambda ()
                  (if (gx#stx-pair? _%e186633186640%_)
                      (let ((_%e186636186648%_
                             (gx#syntax-e _%e186633186640%_)))
                        (let ((_%hd186637186651%_ (##car _%e186636186648%_))
                              (_%tl186638186653%_ (##cdr _%e186636186648%_)))
                          (let ((_%body186656%_ _%tl186638186653%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body186656%_)))))
                      (_%E186635186644%_)))))
          (_%E186634186658%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx186601%_)
        (let* ((_%e186602186609%_ _%stx186601%_)
               (_%E186604186613%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186602186609%_)))
               (_%E186603186628%_
                (lambda ()
                  (if (gx#stx-pair? _%e186602186609%_)
                      (let ((_%e186605186617%_
                             (gx#syntax-e _%e186602186609%_)))
                        (let ((_%hd186606186620%_ (##car _%e186605186617%_))
                              (_%tl186607186622%_ (##cdr _%e186605186617%_)))
                          (let ((_%body186625%_ _%tl186607186622%_))
                            (cons '%#begin-syntax
                                  (call-with-parameters__1
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body186625%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%E186604186613%_)))))
          (_%E186603186628%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx186571%_)
        (let* ((_%e186572186579%_ _%stx186571%_)
               (_%E186574186583%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186572186579%_)))
               (_%E186573186597%_
                (lambda ()
                  (if (gx#stx-pair? _%e186572186579%_)
                      (let ((_%e186575186587%_
                             (gx#syntax-e _%e186572186579%_)))
                        (let ((_%hd186576186590%_ (##car _%e186575186587%_))
                              (_%tl186577186592%_ (##cdr _%e186575186587%_)))
                          (let ((_%body186595%_ _%tl186577186592%_))
                            (cons '%#begin-foreign _%body186595%_))))
                      (_%E186574186583%_)))))
          (_%E186573186597%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx186517%_)
        (let* ((_%e186518186531%_ _%stx186517%_)
               (_%E186520186535%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186518186531%_)))
               (_%E186519186567%_
                (lambda ()
                  (if (gx#stx-pair? _%e186518186531%_)
                      (let ((_%e186521186539%_
                             (gx#syntax-e _%e186518186531%_)))
                        (let ((_%hd186522186542%_ (##car _%e186521186539%_))
                              (_%tl186523186544%_ (##cdr _%e186521186539%_)))
                          (if (gx#stx-pair? _%tl186523186544%_)
                              (let ((_%e186524186547%_
                                     (gx#syntax-e _%tl186523186544%_)))
                                (let ((_%hd186525186550%_
                                       (##car _%e186524186547%_))
                                      (_%tl186526186552%_
                                       (##cdr _%e186524186547%_)))
                                  (let ((_%ann186555%_ _%hd186525186550%_))
                                    (if (gx#stx-pair? _%tl186526186552%_)
                                        (let ((_%e186527186557%_
                                               (gx#syntax-e
                                                _%tl186526186552%_)))
                                          (let ((_%hd186528186560%_
                                                 (##car _%e186527186557%_))
                                                (_%tl186529186562%_
                                                 (##cdr _%e186527186557%_)))
                                            (let ((_%expr186565%_
                                                   _%hd186528186560%_))
                                              (if (gx#stx-null?
                                                   _%tl186529186562%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr186565%_)
                                                  (_%E186520186535%_)))))
                                        (_%E186520186535%_)))))
                              (_%E186520186535%_))))
                      (_%E186520186535%_)))))
          (_%E186519186567%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx186487%_)
        (let* ((_%e186488186495%_ _%stx186487%_)
               (_%E186490186499%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186488186495%_)))
               (_%E186489186513%_
                (lambda ()
                  (if (gx#stx-pair? _%e186488186495%_)
                      (let ((_%e186491186503%_
                             (gx#syntax-e _%e186488186495%_)))
                        (let ((_%hd186492186506%_ (##car _%e186491186503%_))
                              (_%tl186493186508%_ (##cdr _%e186491186503%_)))
                          (let ((_%body186511%_ _%tl186493186508%_))
                            (cons '%#import _%body186511%_))))
                      (_%E186490186499%_)))))
          (_%E186489186513%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx186444%_)
        (let* ((_%e186445186455%_ _%stx186444%_)
               (_%E186447186459%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186445186455%_)))
               (_%E186446186483%_
                (lambda ()
                  (if (gx#stx-pair? _%e186445186455%_)
                      (let ((_%e186448186463%_
                             (gx#syntax-e _%e186445186455%_)))
                        (let ((_%hd186449186466%_ (##car _%e186448186463%_))
                              (_%tl186450186468%_ (##cdr _%e186448186463%_)))
                          (if (gx#stx-pair? _%tl186450186468%_)
                              (let ((_%e186451186471%_
                                     (gx#syntax-e _%tl186450186468%_)))
                                (let ((_%hd186452186474%_
                                       (##car _%e186451186471%_))
                                      (_%tl186453186476%_
                                       (##cdr _%e186451186471%_)))
                                  (let* ((_%hd186479%_ _%hd186452186474%_)
                                         (_%body186481%_ _%tl186453186476%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd186479%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body186481%_))))))
                              (_%E186447186459%_))))
                      (_%E186447186459%_)))))
          (_%E186446186483%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx186414%_)
        (let* ((_%e186415186422%_ _%stx186414%_)
               (_%E186417186426%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186415186422%_)))
               (_%E186416186440%_
                (lambda ()
                  (if (gx#stx-pair? _%e186415186422%_)
                      (let ((_%e186418186430%_
                             (gx#syntax-e _%e186415186422%_)))
                        (let ((_%hd186419186433%_ (##car _%e186418186430%_))
                              (_%tl186420186435%_ (##cdr _%e186418186430%_)))
                          (let ((_%body186438%_ _%tl186420186435%_))
                            (cons '%#export _%body186438%_))))
                      (_%E186417186426%_)))))
          (_%E186416186440%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx186384%_)
        (let* ((_%e186385186392%_ _%stx186384%_)
               (_%E186387186396%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186385186392%_)))
               (_%E186386186410%_
                (lambda ()
                  (if (gx#stx-pair? _%e186385186392%_)
                      (let ((_%e186388186400%_
                             (gx#syntax-e _%e186385186392%_)))
                        (let ((_%hd186389186403%_ (##car _%e186388186400%_))
                              (_%tl186390186405%_ (##cdr _%e186388186400%_)))
                          (let ((_%body186408%_ _%tl186390186405%_))
                            (cons '%#provide _%body186408%_))))
                      (_%E186387186396%_)))))
          (_%E186386186410%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx186354%_)
        (let* ((_%e186355186362%_ _%stx186354%_)
               (_%E186357186366%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186355186362%_)))
               (_%E186356186380%_
                (lambda ()
                  (if (gx#stx-pair? _%e186355186362%_)
                      (let ((_%e186358186370%_
                             (gx#syntax-e _%e186355186362%_)))
                        (let ((_%hd186359186373%_ (##car _%e186358186370%_))
                              (_%tl186360186375%_ (##cdr _%e186358186370%_)))
                          (let ((_%body186378%_ _%tl186360186375%_))
                            (cons '%#extern _%body186378%_))))
                      (_%E186357186366%_)))))
          (_%E186356186380%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx186300%_)
        (let* ((_%e186301186314%_ _%stx186300%_)
               (_%E186303186318%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186301186314%_)))
               (_%E186302186350%_
                (lambda ()
                  (if (gx#stx-pair? _%e186301186314%_)
                      (let ((_%e186304186322%_
                             (gx#syntax-e _%e186301186314%_)))
                        (let ((_%hd186305186325%_ (##car _%e186304186322%_))
                              (_%tl186306186327%_ (##cdr _%e186304186322%_)))
                          (if (gx#stx-pair? _%tl186306186327%_)
                              (let ((_%e186307186330%_
                                     (gx#syntax-e _%tl186306186327%_)))
                                (let ((_%hd186308186333%_
                                       (##car _%e186307186330%_))
                                      (_%tl186309186335%_
                                       (##cdr _%e186307186330%_)))
                                  (let ((_%hd186338%_ _%hd186308186333%_))
                                    (if (gx#stx-pair? _%tl186309186335%_)
                                        (let ((_%e186310186340%_
                                               (gx#syntax-e
                                                _%tl186309186335%_)))
                                          (let ((_%hd186311186343%_
                                                 (##car _%e186310186340%_))
                                                (_%tl186312186345%_
                                                 (##cdr _%e186310186340%_)))
                                            (let ((_%expr186348%_
                                                   _%hd186311186343%_))
                                              (if (gx#stx-null?
                                                   _%tl186312186345%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd186338%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr186348%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E186303186318%_)))))
                                        (_%E186303186318%_)))))
                              (_%E186303186318%_))))
                      (_%E186303186318%_)))))
          (_%E186302186350%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx186245%_)
        (let* ((_%e186246186259%_ _%stx186245%_)
               (_%E186248186263%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186246186259%_)))
               (_%E186247186296%_
                (lambda ()
                  (if (gx#stx-pair? _%e186246186259%_)
                      (let ((_%e186249186267%_
                             (gx#syntax-e _%e186246186259%_)))
                        (let ((_%hd186250186270%_ (##car _%e186249186267%_))
                              (_%tl186251186272%_ (##cdr _%e186249186267%_)))
                          (if (gx#stx-pair? _%tl186251186272%_)
                              (let ((_%e186252186275%_
                                     (gx#syntax-e _%tl186251186272%_)))
                                (let ((_%hd186253186278%_
                                       (##car _%e186252186275%_))
                                      (_%tl186254186280%_
                                       (##cdr _%e186252186275%_)))
                                  (let ((_%hd186283%_ _%hd186253186278%_))
                                    (if (gx#stx-pair? _%tl186254186280%_)
                                        (let ((_%e186255186285%_
                                               (gx#syntax-e
                                                _%tl186254186280%_)))
                                          (let ((_%hd186256186288%_
                                                 (##car _%e186255186285%_))
                                                (_%tl186257186290%_
                                                 (##cdr _%e186255186285%_)))
                                            (let ((_%expr186293%_
                                                   _%hd186256186288%_))
                                              (if (gx#stx-null?
                                                   _%tl186257186290%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd186283%_
                                                              (cons (call-with-parameters__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr186293%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E186248186263%_)))))
                                        (_%E186248186263%_)))))
                              (_%E186248186263%_))))
                      (_%E186248186263%_)))))
          (_%E186247186296%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx186215%_)
        (let* ((_%e186216186223%_ _%stx186215%_)
               (_%E186218186227%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186216186223%_)))
               (_%E186217186241%_
                (lambda ()
                  (if (gx#stx-pair? _%e186216186223%_)
                      (let ((_%e186219186231%_
                             (gx#syntax-e _%e186216186223%_)))
                        (let ((_%hd186220186234%_ (##car _%e186219186231%_))
                              (_%tl186221186236%_ (##cdr _%e186219186231%_)))
                          (let ((_%body186239%_ _%tl186221186236%_))
                            (cons '%#define-alias _%body186239%_))))
                      (_%E186218186227%_)))))
          (_%E186217186241%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx186185%_)
        (let* ((_%e186186186193%_ _%stx186185%_)
               (_%E186188186197%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186186186193%_)))
               (_%E186187186211%_
                (lambda ()
                  (if (gx#stx-pair? _%e186186186193%_)
                      (let ((_%e186189186201%_
                             (gx#syntax-e _%e186186186193%_)))
                        (let ((_%hd186190186204%_ (##car _%e186189186201%_))
                              (_%tl186191186206%_ (##cdr _%e186189186201%_)))
                          (let ((_%body186209%_ _%tl186191186206%_))
                            (cons '%#define-runtime _%body186209%_))))
                      (_%E186188186197%_)))))
          (_%E186187186211%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx186155%_)
        (let* ((_%e186156186163%_ _%stx186155%_)
               (_%E186158186167%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186156186163%_)))
               (_%E186157186181%_
                (lambda ()
                  (if (gx#stx-pair? _%e186156186163%_)
                      (let ((_%e186159186171%_
                             (gx#syntax-e _%e186156186163%_)))
                        (let ((_%hd186160186174%_ (##car _%e186159186171%_))
                              (_%tl186161186176%_ (##cdr _%e186159186171%_)))
                          (let ((_%decls186179%_ _%tl186161186176%_))
                            (cons '%#declare _%decls186179%_))))
                      (_%E186158186167%_)))))
          (_%E186157186181%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx186125%_)
        (let* ((_%e186126186133%_ _%stx186125%_)
               (_%E186128186137%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186126186133%_)))
               (_%E186127186151%_
                (lambda ()
                  (if (gx#stx-pair? _%e186126186133%_)
                      (let ((_%e186129186141%_
                             (gx#syntax-e _%e186126186133%_)))
                        (let ((_%hd186130186144%_ (##car _%e186129186141%_))
                              (_%tl186131186146%_ (##cdr _%e186129186141%_)))
                          (let ((_%clause186149%_ _%tl186131186146%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause186149%_)))))
                      (_%E186128186137%_)))))
          (_%E186127186151%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx186082%_)
        (let* ((_%e186083186093%_ _%stx186082%_)
               (_%E186085186097%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186083186093%_)))
               (_%E186084186121%_
                (lambda ()
                  (if (gx#stx-pair? _%e186083186093%_)
                      (let ((_%e186086186101%_
                             (gx#syntax-e _%e186083186093%_)))
                        (let ((_%hd186087186104%_ (##car _%e186086186101%_))
                              (_%tl186088186106%_ (##cdr _%e186086186101%_)))
                          (let ((_%hd186109%_ _%hd186087186104%_))
                            (if (gx#stx-pair? _%tl186088186106%_)
                                (let ((_%e186089186111%_
                                       (gx#syntax-e _%tl186088186106%_)))
                                  (let ((_%hd186090186114%_
                                         (##car _%e186089186111%_))
                                        (_%tl186091186116%_
                                         (##cdr _%e186089186111%_)))
                                    (let ((_%body186119%_ _%hd186090186114%_))
                                      (if (gx#stx-null? _%tl186091186116%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd186109%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body186119%_)
                                                      '()))
                                          (_%E186085186097%_)))))
                                (_%E186085186097%_)))))
                      (_%E186085186097%_)))))
          (_%E186084186121%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx186052%_)
        (let* ((_%e186053186060%_ _%stx186052%_)
               (_%E186055186064%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186053186060%_)))
               (_%E186054186078%_
                (lambda ()
                  (if (gx#stx-pair? _%e186053186060%_)
                      (let ((_%e186056186068%_
                             (gx#syntax-e _%e186053186060%_)))
                        (let ((_%hd186057186071%_ (##car _%e186056186068%_))
                              (_%tl186058186073%_ (##cdr _%e186056186068%_)))
                          (let ((_%clauses186076%_ _%tl186058186073%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses186076%_)))))
                      (_%E186055186064%_)))))
          (_%E186054186078%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx185987%_ _%form185988%_)
        (let* ((_%e185989186002%_ _%stx185987%_)
               (_%E185991186006%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e185989186002%_)))
               (_%E185990186038%_
                (lambda ()
                  (if (gx#stx-pair? _%e185989186002%_)
                      (let ((_%e185992186010%_
                             (gx#syntax-e _%e185989186002%_)))
                        (let ((_%hd185993186013%_ (##car _%e185992186010%_))
                              (_%tl185994186015%_ (##cdr _%e185992186010%_)))
                          (if (gx#stx-pair? _%tl185994186015%_)
                              (let ((_%e185995186018%_
                                     (gx#syntax-e _%tl185994186015%_)))
                                (let ((_%hd185996186021%_
                                       (##car _%e185995186018%_))
                                      (_%tl185997186023%_
                                       (##cdr _%e185995186018%_)))
                                  (let ((_%hd186026%_ _%hd185996186021%_))
                                    (if (gx#stx-pair? _%tl185997186023%_)
                                        (let ((_%e185998186028%_
                                               (gx#syntax-e
                                                _%tl185997186023%_)))
                                          (let ((_%hd185999186031%_
                                                 (##car _%e185998186028%_))
                                                (_%tl186000186033%_
                                                 (##cdr _%e185998186028%_)))
                                            (let ((_%body186036%_
                                                   _%hd185999186031%_))
                                              (if (gx#stx-null?
                                                   _%tl186000186033%_)
                                                  (cons _%form185988%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd186026%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body186036%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E185991186006%_)))))
                                        (_%E185991186006%_)))))
                              (_%E185991186006%_))))
                      (_%E185991186006%_)))))
          (_%E185990186038%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx186045%_)
        (let ((_%form186047%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx186045%_ _%form186047%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g186870_
        (let ((_g186871_ (##length _g186870_)))
          (cond ((##fx= _g186871_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g186870_))
                ((##fx= _g186871_ 2)
                 (apply gx#core-compile-top-let-values%__% _g186870_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g186870_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx185984%_)
        (gx#core-compile-top-let-values%__% _%stx185984%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx185982%_)
        (gx#core-compile-top-let-values%__% _%stx185982%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx185941%_)
        (let* ((_%e185942185952%_ _%stx185941%_)
               (_%E185944185956%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e185942185952%_)))
               (_%E185943185978%_
                (lambda ()
                  (if (gx#stx-pair? _%e185942185952%_)
                      (let ((_%e185945185960%_
                             (gx#syntax-e _%e185942185952%_)))
                        (let ((_%hd185946185963%_ (##car _%e185945185960%_))
                              (_%tl185947185965%_ (##cdr _%e185945185960%_)))
                          (if (gx#stx-pair? _%tl185947185965%_)
                              (let ((_%e185948185968%_
                                     (gx#syntax-e _%tl185947185965%_)))
                                (let ((_%hd185949185971%_
                                       (##car _%e185948185968%_))
                                      (_%tl185950185973%_
                                       (##cdr _%e185948185968%_)))
                                  (let ((_%e185976%_ _%hd185949185971%_))
                                    (if (gx#stx-null? _%tl185950185973%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e185976%_)
                                                    '()))
                                        (_%E185944185956%_)))))
                              (_%E185944185956%_))))
                      (_%E185944185956%_)))))
          (_%E185943185978%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx185900%_)
        (let* ((_%e185901185911%_ _%stx185900%_)
               (_%E185903185915%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e185901185911%_)))
               (_%E185902185937%_
                (lambda ()
                  (if (gx#stx-pair? _%e185901185911%_)
                      (let ((_%e185904185919%_
                             (gx#syntax-e _%e185901185911%_)))
                        (let ((_%hd185905185922%_ (##car _%e185904185919%_))
                              (_%tl185906185924%_ (##cdr _%e185904185919%_)))
                          (if (gx#stx-pair? _%tl185906185924%_)
                              (let ((_%e185907185927%_
                                     (gx#syntax-e _%tl185906185924%_)))
                                (let ((_%hd185908185930%_
                                       (##car _%e185907185927%_))
                                      (_%tl185909185932%_
                                       (##cdr _%e185907185927%_)))
                                  (let ((_%e185935%_ _%hd185908185930%_))
                                    (if (gx#stx-null? _%tl185909185932%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e185935%_)
                                                    '()))
                                        (_%E185903185915%_)))))
                              (_%E185903185915%_))))
                      (_%E185903185915%_)))))
          (_%E185902185937%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx185857%_)
        (let* ((_%e185858185868%_ _%stx185857%_)
               (_%E185860185872%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e185858185868%_)))
               (_%E185859185896%_
                (lambda ()
                  (if (gx#stx-pair? _%e185858185868%_)
                      (let ((_%e185861185876%_
                             (gx#syntax-e _%e185858185868%_)))
                        (let ((_%hd185862185879%_ (##car _%e185861185876%_))
                              (_%tl185863185881%_ (##cdr _%e185861185876%_)))
                          (if (gx#stx-pair? _%tl185863185881%_)
                              (let ((_%e185864185884%_
                                     (gx#syntax-e _%tl185863185881%_)))
                                (let ((_%hd185865185887%_
                                       (##car _%e185864185884%_))
                                      (_%tl185866185889%_
                                       (##cdr _%e185864185884%_)))
                                  (let* ((_%rator185892%_ _%hd185865185887%_)
                                         (_%args185894%_ _%tl185866185889%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator185892%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args185894%_))))))
                              (_%E185860185872%_))))
                      (_%E185860185872%_)))))
          (_%E185859185896%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx185790%_)
        (let* ((_%e185791185807%_ _%stx185790%_)
               (_%E185793185811%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e185791185807%_)))
               (_%E185792185853%_
                (lambda ()
                  (if (gx#stx-pair? _%e185791185807%_)
                      (let ((_%e185794185815%_
                             (gx#syntax-e _%e185791185807%_)))
                        (let ((_%hd185795185818%_ (##car _%e185794185815%_))
                              (_%tl185796185820%_ (##cdr _%e185794185815%_)))
                          (if (gx#stx-pair? _%tl185796185820%_)
                              (let ((_%e185797185823%_
                                     (gx#syntax-e _%tl185796185820%_)))
                                (let ((_%hd185798185826%_
                                       (##car _%e185797185823%_))
                                      (_%tl185799185828%_
                                       (##cdr _%e185797185823%_)))
                                  (let ((_%test185831%_ _%hd185798185826%_))
                                    (if (gx#stx-pair? _%tl185799185828%_)
                                        (let ((_%e185800185833%_
                                               (gx#syntax-e
                                                _%tl185799185828%_)))
                                          (let ((_%hd185801185836%_
                                                 (##car _%e185800185833%_))
                                                (_%tl185802185838%_
                                                 (##cdr _%e185800185833%_)))
                                            (let ((_%K185841%_
                                                   _%hd185801185836%_))
                                              (if (gx#stx-pair?
                                                   _%tl185802185838%_)
                                                  (let ((_%e185803185843%_
                                                         (gx#syntax-e
                                                          _%tl185802185838%_)))
                                                    (let ((_%hd185804185846%_
                                                           (##car _%e185803185843%_))
                                                          (_%tl185805185848%_
                                                           (##cdr _%e185803185843%_)))
                                                      (let ((_%E185851%_
                                                             _%hd185804185846%_))
                                                        (if (gx#stx-null?
                                                             _%tl185805185848%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test185831%_)
                                (cons (gx#core-compile-top-syntax _%K185841%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E185851%_)
                                            '()))))
                    (_%E185793185811%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E185793185811%_)))))
                                        (_%E185793185811%_)))))
                              (_%E185793185811%_))))
                      (_%E185793185811%_)))))
          (_%E185792185853%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx185749%_)
        (let* ((_%e185750185760%_ _%stx185749%_)
               (_%E185752185764%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e185750185760%_)))
               (_%E185751185786%_
                (lambda ()
                  (if (gx#stx-pair? _%e185750185760%_)
                      (let ((_%e185753185768%_
                             (gx#syntax-e _%e185750185760%_)))
                        (let ((_%hd185754185771%_ (##car _%e185753185768%_))
                              (_%tl185755185773%_ (##cdr _%e185753185768%_)))
                          (if (gx#stx-pair? _%tl185755185773%_)
                              (let ((_%e185756185776%_
                                     (gx#syntax-e _%tl185755185773%_)))
                                (let ((_%hd185757185779%_
                                       (##car _%e185756185776%_))
                                      (_%tl185758185781%_
                                       (##cdr _%e185756185776%_)))
                                  (let ((_%id185784%_ _%hd185757185779%_))
                                    (if (gx#stx-null? _%tl185758185781%_)
                                        (if (gx#identifier? _%id185784%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id185784%_)
                                                        '()))
                                            (_%E185752185764%_))
                                        (_%E185752185764%_)))))
                              (_%E185752185764%_))))
                      (_%E185752185764%_)))))
          (_%E185751185786%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx185695%_)
        (let* ((_%e185696185709%_ _%stx185695%_)
               (_%E185698185713%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e185696185709%_)))
               (_%E185697185745%_
                (lambda ()
                  (if (gx#stx-pair? _%e185696185709%_)
                      (let ((_%e185699185717%_
                             (gx#syntax-e _%e185696185709%_)))
                        (let ((_%hd185700185720%_ (##car _%e185699185717%_))
                              (_%tl185701185722%_ (##cdr _%e185699185717%_)))
                          (if (gx#stx-pair? _%tl185701185722%_)
                              (let ((_%e185702185725%_
                                     (gx#syntax-e _%tl185701185722%_)))
                                (let ((_%hd185703185728%_
                                       (##car _%e185702185725%_))
                                      (_%tl185704185730%_
                                       (##cdr _%e185702185725%_)))
                                  (let ((_%id185733%_ _%hd185703185728%_))
                                    (if (gx#stx-pair? _%tl185704185730%_)
                                        (let ((_%e185705185735%_
                                               (gx#syntax-e
                                                _%tl185704185730%_)))
                                          (let ((_%hd185706185738%_
                                                 (##car _%e185705185735%_))
                                                (_%tl185707185740%_
                                                 (##cdr _%e185705185735%_)))
                                            (let ((_%expr185743%_
                                                   _%hd185706185738%_))
                                              (if (gx#stx-null?
                                                   _%tl185707185740%_)
                                                  (if (gx#identifier?
                                                       _%id185733%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id185733%_)
                          (cons (gx#core-compile-top-syntax _%expr185743%_)
                                '())))
              (_%E185698185713%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E185698185713%_)))))
                                        (_%E185698185713%_)))))
                              (_%E185698185713%_))))
                      (_%E185698185713%_)))))
          (_%E185697185745%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id185689%_)
        (let ((_%$e185691%_ (gx#resolve-identifier__0 _%id185689%_)))
          (if _%$e185691%_
              (##unchecked-structure-ref _%$e185691%_ '1 '#f '#f)
              _%id185689%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd185687%_)
        (if (gx#identifier? _%hd185687%_)
            (gx#core-compile-top-runtime-ref _%hd185687%_)
            '#f)))))
