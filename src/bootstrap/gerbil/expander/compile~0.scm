(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1771178565)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx187315%_)
        (let* ((_%e187316187323%_ _%stx187315%_)
               (_%E187318187327%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187316187323%_)))
               (_%E187317187341%_
                (lambda ()
                  (if (gx#stx-pair? _%e187316187323%_)
                      (let ((_%e187319187331%_
                             (gx#syntax-e _%e187316187323%_)))
                        (let ((_%hd187320187334%_ (##car _%e187319187331%_))
                              (_%tl187321187336%_ (##cdr _%e187319187331%_)))
                          (let* ((_%form187339%_ _%hd187320187334%_)
                                 (__self187344
                                  (gx#syntax-local-e__0 _%form187339%_))
                                 (__method187345
                                  (__method-ref
                                   __self187344
                                   'compile-top-syntax)))
                            (if __method187345
                                (__method187345 __self187344 _%stx187315%_)
                                (begin
                                  (error '"Missing method"
                                         __self187344
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%E187318187327%_)))))
          (_%E187317187341%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self187264%_ _%stx187265%_)
        (let* ((_%self187268%_ _%self187264%_)
               (_%self187277187285%_ _%self187268%_)
               (_%E187279187288%_
                (lambda ()
                  (error '"No clause matching"
                         _%self187277187285%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K187280187301%_
                (lambda (_%K187291%_)
                  (let ((_%$e187293%_ (gx#stx-source _%stx187265%_)))
                    (if _%$e187293%_
                        ((lambda (_%g187295187297%_)
                           (gx#stx-wrap-source
                            (_%K187291%_ _%stx187265%_)
                            _%g187295187297%_))
                         _%$e187293%_)
                        (_%K187291%_ _%stx187265%_)))))
               (_%e187281187304%_
                (##unchecked-structure-ref _%self187277187285%_ '1 '#f '#f))
               (_%e187282187307%_
                (##unchecked-structure-ref _%self187277187285%_ '2 '#f '#f))
               (_%e187283187310%_
                (##unchecked-structure-ref _%self187277187285%_ '3 '#f '#f))
               (_%K187313%_ _%e187283187310%_))
          (_%K187280187301%_ _%K187313%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx187138%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx187138%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx187108%_)
        (let* ((_%e187109187116%_ _%stx187108%_)
               (_%E187111187120%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187109187116%_)))
               (_%E187110187134%_
                (lambda ()
                  (if (gx#stx-pair? _%e187109187116%_)
                      (let ((_%e187112187124%_
                             (gx#syntax-e _%e187109187116%_)))
                        (let ((_%hd187113187127%_ (##car _%e187112187124%_))
                              (_%tl187114187129%_ (##cdr _%e187112187124%_)))
                          (let ((_%body187132%_ _%tl187114187129%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body187132%_)))))
                      (_%E187111187120%_)))))
          (_%E187110187134%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx187077%_)
        (let* ((_%e187078187085%_ _%stx187077%_)
               (_%E187080187089%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187078187085%_)))
               (_%E187079187104%_
                (lambda ()
                  (if (gx#stx-pair? _%e187078187085%_)
                      (let ((_%e187081187093%_
                             (gx#syntax-e _%e187078187085%_)))
                        (let ((_%hd187082187096%_ (##car _%e187081187093%_))
                              (_%tl187083187098%_ (##cdr _%e187081187093%_)))
                          (let ((_%body187101%_ _%tl187083187098%_))
                            (cons '%#begin-syntax
                                  (call-with-parameters__1
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body187101%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%E187080187089%_)))))
          (_%E187079187104%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx187047%_)
        (let* ((_%e187048187055%_ _%stx187047%_)
               (_%E187050187059%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187048187055%_)))
               (_%E187049187073%_
                (lambda ()
                  (if (gx#stx-pair? _%e187048187055%_)
                      (let ((_%e187051187063%_
                             (gx#syntax-e _%e187048187055%_)))
                        (let ((_%hd187052187066%_ (##car _%e187051187063%_))
                              (_%tl187053187068%_ (##cdr _%e187051187063%_)))
                          (let ((_%body187071%_ _%tl187053187068%_))
                            (cons '%#begin-foreign _%body187071%_))))
                      (_%E187050187059%_)))))
          (_%E187049187073%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx186993%_)
        (let* ((_%e186994187007%_ _%stx186993%_)
               (_%E186996187011%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186994187007%_)))
               (_%E186995187043%_
                (lambda ()
                  (if (gx#stx-pair? _%e186994187007%_)
                      (let ((_%e186997187015%_
                             (gx#syntax-e _%e186994187007%_)))
                        (let ((_%hd186998187018%_ (##car _%e186997187015%_))
                              (_%tl186999187020%_ (##cdr _%e186997187015%_)))
                          (if (gx#stx-pair? _%tl186999187020%_)
                              (let ((_%e187000187023%_
                                     (gx#syntax-e _%tl186999187020%_)))
                                (let ((_%hd187001187026%_
                                       (##car _%e187000187023%_))
                                      (_%tl187002187028%_
                                       (##cdr _%e187000187023%_)))
                                  (let ((_%ann187031%_ _%hd187001187026%_))
                                    (if (gx#stx-pair? _%tl187002187028%_)
                                        (let ((_%e187003187033%_
                                               (gx#syntax-e
                                                _%tl187002187028%_)))
                                          (let ((_%hd187004187036%_
                                                 (##car _%e187003187033%_))
                                                (_%tl187005187038%_
                                                 (##cdr _%e187003187033%_)))
                                            (let ((_%expr187041%_
                                                   _%hd187004187036%_))
                                              (if (gx#stx-null?
                                                   _%tl187005187038%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr187041%_)
                                                  (_%E186996187011%_)))))
                                        (_%E186996187011%_)))))
                              (_%E186996187011%_))))
                      (_%E186996187011%_)))))
          (_%E186995187043%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx186963%_)
        (let* ((_%e186964186971%_ _%stx186963%_)
               (_%E186966186975%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186964186971%_)))
               (_%E186965186989%_
                (lambda ()
                  (if (gx#stx-pair? _%e186964186971%_)
                      (let ((_%e186967186979%_
                             (gx#syntax-e _%e186964186971%_)))
                        (let ((_%hd186968186982%_ (##car _%e186967186979%_))
                              (_%tl186969186984%_ (##cdr _%e186967186979%_)))
                          (let ((_%body186987%_ _%tl186969186984%_))
                            (cons '%#import _%body186987%_))))
                      (_%E186966186975%_)))))
          (_%E186965186989%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx186920%_)
        (let* ((_%e186921186931%_ _%stx186920%_)
               (_%E186923186935%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186921186931%_)))
               (_%E186922186959%_
                (lambda ()
                  (if (gx#stx-pair? _%e186921186931%_)
                      (let ((_%e186924186939%_
                             (gx#syntax-e _%e186921186931%_)))
                        (let ((_%hd186925186942%_ (##car _%e186924186939%_))
                              (_%tl186926186944%_ (##cdr _%e186924186939%_)))
                          (if (gx#stx-pair? _%tl186926186944%_)
                              (let ((_%e186927186947%_
                                     (gx#syntax-e _%tl186926186944%_)))
                                (let ((_%hd186928186950%_
                                       (##car _%e186927186947%_))
                                      (_%tl186929186952%_
                                       (##cdr _%e186927186947%_)))
                                  (let* ((_%hd186955%_ _%hd186928186950%_)
                                         (_%body186957%_ _%tl186929186952%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd186955%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body186957%_))))))
                              (_%E186923186935%_))))
                      (_%E186923186935%_)))))
          (_%E186922186959%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx186890%_)
        (let* ((_%e186891186898%_ _%stx186890%_)
               (_%E186893186902%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186891186898%_)))
               (_%E186892186916%_
                (lambda ()
                  (if (gx#stx-pair? _%e186891186898%_)
                      (let ((_%e186894186906%_
                             (gx#syntax-e _%e186891186898%_)))
                        (let ((_%hd186895186909%_ (##car _%e186894186906%_))
                              (_%tl186896186911%_ (##cdr _%e186894186906%_)))
                          (let ((_%body186914%_ _%tl186896186911%_))
                            (cons '%#export _%body186914%_))))
                      (_%E186893186902%_)))))
          (_%E186892186916%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx186860%_)
        (let* ((_%e186861186868%_ _%stx186860%_)
               (_%E186863186872%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186861186868%_)))
               (_%E186862186886%_
                (lambda ()
                  (if (gx#stx-pair? _%e186861186868%_)
                      (let ((_%e186864186876%_
                             (gx#syntax-e _%e186861186868%_)))
                        (let ((_%hd186865186879%_ (##car _%e186864186876%_))
                              (_%tl186866186881%_ (##cdr _%e186864186876%_)))
                          (let ((_%body186884%_ _%tl186866186881%_))
                            (cons '%#provide _%body186884%_))))
                      (_%E186863186872%_)))))
          (_%E186862186886%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx186830%_)
        (let* ((_%e186831186838%_ _%stx186830%_)
               (_%E186833186842%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186831186838%_)))
               (_%E186832186856%_
                (lambda ()
                  (if (gx#stx-pair? _%e186831186838%_)
                      (let ((_%e186834186846%_
                             (gx#syntax-e _%e186831186838%_)))
                        (let ((_%hd186835186849%_ (##car _%e186834186846%_))
                              (_%tl186836186851%_ (##cdr _%e186834186846%_)))
                          (let ((_%body186854%_ _%tl186836186851%_))
                            (cons '%#extern _%body186854%_))))
                      (_%E186833186842%_)))))
          (_%E186832186856%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx186776%_)
        (let* ((_%e186777186790%_ _%stx186776%_)
               (_%E186779186794%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186777186790%_)))
               (_%E186778186826%_
                (lambda ()
                  (if (gx#stx-pair? _%e186777186790%_)
                      (let ((_%e186780186798%_
                             (gx#syntax-e _%e186777186790%_)))
                        (let ((_%hd186781186801%_ (##car _%e186780186798%_))
                              (_%tl186782186803%_ (##cdr _%e186780186798%_)))
                          (if (gx#stx-pair? _%tl186782186803%_)
                              (let ((_%e186783186806%_
                                     (gx#syntax-e _%tl186782186803%_)))
                                (let ((_%hd186784186809%_
                                       (##car _%e186783186806%_))
                                      (_%tl186785186811%_
                                       (##cdr _%e186783186806%_)))
                                  (let ((_%hd186814%_ _%hd186784186809%_))
                                    (if (gx#stx-pair? _%tl186785186811%_)
                                        (let ((_%e186786186816%_
                                               (gx#syntax-e
                                                _%tl186785186811%_)))
                                          (let ((_%hd186787186819%_
                                                 (##car _%e186786186816%_))
                                                (_%tl186788186821%_
                                                 (##cdr _%e186786186816%_)))
                                            (let ((_%expr186824%_
                                                   _%hd186787186819%_))
                                              (if (gx#stx-null?
                                                   _%tl186788186821%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd186814%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr186824%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E186779186794%_)))))
                                        (_%E186779186794%_)))))
                              (_%E186779186794%_))))
                      (_%E186779186794%_)))))
          (_%E186778186826%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx186721%_)
        (let* ((_%e186722186735%_ _%stx186721%_)
               (_%E186724186739%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186722186735%_)))
               (_%E186723186772%_
                (lambda ()
                  (if (gx#stx-pair? _%e186722186735%_)
                      (let ((_%e186725186743%_
                             (gx#syntax-e _%e186722186735%_)))
                        (let ((_%hd186726186746%_ (##car _%e186725186743%_))
                              (_%tl186727186748%_ (##cdr _%e186725186743%_)))
                          (if (gx#stx-pair? _%tl186727186748%_)
                              (let ((_%e186728186751%_
                                     (gx#syntax-e _%tl186727186748%_)))
                                (let ((_%hd186729186754%_
                                       (##car _%e186728186751%_))
                                      (_%tl186730186756%_
                                       (##cdr _%e186728186751%_)))
                                  (let ((_%hd186759%_ _%hd186729186754%_))
                                    (if (gx#stx-pair? _%tl186730186756%_)
                                        (let ((_%e186731186761%_
                                               (gx#syntax-e
                                                _%tl186730186756%_)))
                                          (let ((_%hd186732186764%_
                                                 (##car _%e186731186761%_))
                                                (_%tl186733186766%_
                                                 (##cdr _%e186731186761%_)))
                                            (let ((_%expr186769%_
                                                   _%hd186732186764%_))
                                              (if (gx#stx-null?
                                                   _%tl186733186766%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd186759%_
                                                              (cons (call-with-parameters__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr186769%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E186724186739%_)))))
                                        (_%E186724186739%_)))))
                              (_%E186724186739%_))))
                      (_%E186724186739%_)))))
          (_%E186723186772%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx186691%_)
        (let* ((_%e186692186699%_ _%stx186691%_)
               (_%E186694186703%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186692186699%_)))
               (_%E186693186717%_
                (lambda ()
                  (if (gx#stx-pair? _%e186692186699%_)
                      (let ((_%e186695186707%_
                             (gx#syntax-e _%e186692186699%_)))
                        (let ((_%hd186696186710%_ (##car _%e186695186707%_))
                              (_%tl186697186712%_ (##cdr _%e186695186707%_)))
                          (let ((_%body186715%_ _%tl186697186712%_))
                            (cons '%#define-alias _%body186715%_))))
                      (_%E186694186703%_)))))
          (_%E186693186717%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx186661%_)
        (let* ((_%e186662186669%_ _%stx186661%_)
               (_%E186664186673%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186662186669%_)))
               (_%E186663186687%_
                (lambda ()
                  (if (gx#stx-pair? _%e186662186669%_)
                      (let ((_%e186665186677%_
                             (gx#syntax-e _%e186662186669%_)))
                        (let ((_%hd186666186680%_ (##car _%e186665186677%_))
                              (_%tl186667186682%_ (##cdr _%e186665186677%_)))
                          (let ((_%body186685%_ _%tl186667186682%_))
                            (cons '%#define-runtime _%body186685%_))))
                      (_%E186664186673%_)))))
          (_%E186663186687%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx186631%_)
        (let* ((_%e186632186639%_ _%stx186631%_)
               (_%E186634186643%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186632186639%_)))
               (_%E186633186657%_
                (lambda ()
                  (if (gx#stx-pair? _%e186632186639%_)
                      (let ((_%e186635186647%_
                             (gx#syntax-e _%e186632186639%_)))
                        (let ((_%hd186636186650%_ (##car _%e186635186647%_))
                              (_%tl186637186652%_ (##cdr _%e186635186647%_)))
                          (let ((_%decls186655%_ _%tl186637186652%_))
                            (cons '%#declare _%decls186655%_))))
                      (_%E186634186643%_)))))
          (_%E186633186657%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx186601%_)
        (let* ((_%e186602186609%_ _%stx186601%_)
               (_%E186604186613%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186602186609%_)))
               (_%E186603186627%_
                (lambda ()
                  (if (gx#stx-pair? _%e186602186609%_)
                      (let ((_%e186605186617%_
                             (gx#syntax-e _%e186602186609%_)))
                        (let ((_%hd186606186620%_ (##car _%e186605186617%_))
                              (_%tl186607186622%_ (##cdr _%e186605186617%_)))
                          (let ((_%clause186625%_ _%tl186607186622%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause186625%_)))))
                      (_%E186604186613%_)))))
          (_%E186603186627%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx186558%_)
        (let* ((_%e186559186569%_ _%stx186558%_)
               (_%E186561186573%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186559186569%_)))
               (_%E186560186597%_
                (lambda ()
                  (if (gx#stx-pair? _%e186559186569%_)
                      (let ((_%e186562186577%_
                             (gx#syntax-e _%e186559186569%_)))
                        (let ((_%hd186563186580%_ (##car _%e186562186577%_))
                              (_%tl186564186582%_ (##cdr _%e186562186577%_)))
                          (let ((_%hd186585%_ _%hd186563186580%_))
                            (if (gx#stx-pair? _%tl186564186582%_)
                                (let ((_%e186565186587%_
                                       (gx#syntax-e _%tl186564186582%_)))
                                  (let ((_%hd186566186590%_
                                         (##car _%e186565186587%_))
                                        (_%tl186567186592%_
                                         (##cdr _%e186565186587%_)))
                                    (let ((_%body186595%_ _%hd186566186590%_))
                                      (if (gx#stx-null? _%tl186567186592%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd186585%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body186595%_)
                                                      '()))
                                          (_%E186561186573%_)))))
                                (_%E186561186573%_)))))
                      (_%E186561186573%_)))))
          (_%E186560186597%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx186528%_)
        (let* ((_%e186529186536%_ _%stx186528%_)
               (_%E186531186540%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186529186536%_)))
               (_%E186530186554%_
                (lambda ()
                  (if (gx#stx-pair? _%e186529186536%_)
                      (let ((_%e186532186544%_
                             (gx#syntax-e _%e186529186536%_)))
                        (let ((_%hd186533186547%_ (##car _%e186532186544%_))
                              (_%tl186534186549%_ (##cdr _%e186532186544%_)))
                          (let ((_%clauses186552%_ _%tl186534186549%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses186552%_)))))
                      (_%E186531186540%_)))))
          (_%E186530186554%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx186463%_ _%form186464%_)
        (let* ((_%e186465186478%_ _%stx186463%_)
               (_%E186467186482%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186465186478%_)))
               (_%E186466186514%_
                (lambda ()
                  (if (gx#stx-pair? _%e186465186478%_)
                      (let ((_%e186468186486%_
                             (gx#syntax-e _%e186465186478%_)))
                        (let ((_%hd186469186489%_ (##car _%e186468186486%_))
                              (_%tl186470186491%_ (##cdr _%e186468186486%_)))
                          (if (gx#stx-pair? _%tl186470186491%_)
                              (let ((_%e186471186494%_
                                     (gx#syntax-e _%tl186470186491%_)))
                                (let ((_%hd186472186497%_
                                       (##car _%e186471186494%_))
                                      (_%tl186473186499%_
                                       (##cdr _%e186471186494%_)))
                                  (let ((_%hd186502%_ _%hd186472186497%_))
                                    (if (gx#stx-pair? _%tl186473186499%_)
                                        (let ((_%e186474186504%_
                                               (gx#syntax-e
                                                _%tl186473186499%_)))
                                          (let ((_%hd186475186507%_
                                                 (##car _%e186474186504%_))
                                                (_%tl186476186509%_
                                                 (##cdr _%e186474186504%_)))
                                            (let ((_%body186512%_
                                                   _%hd186475186507%_))
                                              (if (gx#stx-null?
                                                   _%tl186476186509%_)
                                                  (cons _%form186464%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd186502%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body186512%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E186467186482%_)))))
                                        (_%E186467186482%_)))))
                              (_%E186467186482%_))))
                      (_%E186467186482%_)))))
          (_%E186466186514%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx186521%_)
        (let ((_%form186523%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx186521%_ _%form186523%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g187346_
        (let ((_g187347_ (##length _g187346_)))
          (cond ((##fx= _g187347_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g187346_))
                ((##fx= _g187347_ 2)
                 (apply gx#core-compile-top-let-values%__% _g187346_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g187346_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx186460%_)
        (gx#core-compile-top-let-values%__% _%stx186460%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx186458%_)
        (gx#core-compile-top-let-values%__% _%stx186458%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx186417%_)
        (let* ((_%e186418186428%_ _%stx186417%_)
               (_%E186420186432%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186418186428%_)))
               (_%E186419186454%_
                (lambda ()
                  (if (gx#stx-pair? _%e186418186428%_)
                      (let ((_%e186421186436%_
                             (gx#syntax-e _%e186418186428%_)))
                        (let ((_%hd186422186439%_ (##car _%e186421186436%_))
                              (_%tl186423186441%_ (##cdr _%e186421186436%_)))
                          (if (gx#stx-pair? _%tl186423186441%_)
                              (let ((_%e186424186444%_
                                     (gx#syntax-e _%tl186423186441%_)))
                                (let ((_%hd186425186447%_
                                       (##car _%e186424186444%_))
                                      (_%tl186426186449%_
                                       (##cdr _%e186424186444%_)))
                                  (let ((_%e186452%_ _%hd186425186447%_))
                                    (if (gx#stx-null? _%tl186426186449%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e186452%_)
                                                    '()))
                                        (_%E186420186432%_)))))
                              (_%E186420186432%_))))
                      (_%E186420186432%_)))))
          (_%E186419186454%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx186376%_)
        (let* ((_%e186377186387%_ _%stx186376%_)
               (_%E186379186391%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186377186387%_)))
               (_%E186378186413%_
                (lambda ()
                  (if (gx#stx-pair? _%e186377186387%_)
                      (let ((_%e186380186395%_
                             (gx#syntax-e _%e186377186387%_)))
                        (let ((_%hd186381186398%_ (##car _%e186380186395%_))
                              (_%tl186382186400%_ (##cdr _%e186380186395%_)))
                          (if (gx#stx-pair? _%tl186382186400%_)
                              (let ((_%e186383186403%_
                                     (gx#syntax-e _%tl186382186400%_)))
                                (let ((_%hd186384186406%_
                                       (##car _%e186383186403%_))
                                      (_%tl186385186408%_
                                       (##cdr _%e186383186403%_)))
                                  (let ((_%e186411%_ _%hd186384186406%_))
                                    (if (gx#stx-null? _%tl186385186408%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e186411%_)
                                                    '()))
                                        (_%E186379186391%_)))))
                              (_%E186379186391%_))))
                      (_%E186379186391%_)))))
          (_%E186378186413%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx186333%_)
        (let* ((_%e186334186344%_ _%stx186333%_)
               (_%E186336186348%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186334186344%_)))
               (_%E186335186372%_
                (lambda ()
                  (if (gx#stx-pair? _%e186334186344%_)
                      (let ((_%e186337186352%_
                             (gx#syntax-e _%e186334186344%_)))
                        (let ((_%hd186338186355%_ (##car _%e186337186352%_))
                              (_%tl186339186357%_ (##cdr _%e186337186352%_)))
                          (if (gx#stx-pair? _%tl186339186357%_)
                              (let ((_%e186340186360%_
                                     (gx#syntax-e _%tl186339186357%_)))
                                (let ((_%hd186341186363%_
                                       (##car _%e186340186360%_))
                                      (_%tl186342186365%_
                                       (##cdr _%e186340186360%_)))
                                  (let* ((_%rator186368%_ _%hd186341186363%_)
                                         (_%args186370%_ _%tl186342186365%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator186368%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args186370%_))))))
                              (_%E186336186348%_))))
                      (_%E186336186348%_)))))
          (_%E186335186372%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx186266%_)
        (let* ((_%e186267186283%_ _%stx186266%_)
               (_%E186269186287%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186267186283%_)))
               (_%E186268186329%_
                (lambda ()
                  (if (gx#stx-pair? _%e186267186283%_)
                      (let ((_%e186270186291%_
                             (gx#syntax-e _%e186267186283%_)))
                        (let ((_%hd186271186294%_ (##car _%e186270186291%_))
                              (_%tl186272186296%_ (##cdr _%e186270186291%_)))
                          (if (gx#stx-pair? _%tl186272186296%_)
                              (let ((_%e186273186299%_
                                     (gx#syntax-e _%tl186272186296%_)))
                                (let ((_%hd186274186302%_
                                       (##car _%e186273186299%_))
                                      (_%tl186275186304%_
                                       (##cdr _%e186273186299%_)))
                                  (let ((_%test186307%_ _%hd186274186302%_))
                                    (if (gx#stx-pair? _%tl186275186304%_)
                                        (let ((_%e186276186309%_
                                               (gx#syntax-e
                                                _%tl186275186304%_)))
                                          (let ((_%hd186277186312%_
                                                 (##car _%e186276186309%_))
                                                (_%tl186278186314%_
                                                 (##cdr _%e186276186309%_)))
                                            (let ((_%K186317%_
                                                   _%hd186277186312%_))
                                              (if (gx#stx-pair?
                                                   _%tl186278186314%_)
                                                  (let ((_%e186279186319%_
                                                         (gx#syntax-e
                                                          _%tl186278186314%_)))
                                                    (let ((_%hd186280186322%_
                                                           (##car _%e186279186319%_))
                                                          (_%tl186281186324%_
                                                           (##cdr _%e186279186319%_)))
                                                      (let ((_%E186327%_
                                                             _%hd186280186322%_))
                                                        (if (gx#stx-null?
                                                             _%tl186281186324%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test186307%_)
                                (cons (gx#core-compile-top-syntax _%K186317%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E186327%_)
                                            '()))))
                    (_%E186269186287%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E186269186287%_)))))
                                        (_%E186269186287%_)))))
                              (_%E186269186287%_))))
                      (_%E186269186287%_)))))
          (_%E186268186329%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx186225%_)
        (let* ((_%e186226186236%_ _%stx186225%_)
               (_%E186228186240%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186226186236%_)))
               (_%E186227186262%_
                (lambda ()
                  (if (gx#stx-pair? _%e186226186236%_)
                      (let ((_%e186229186244%_
                             (gx#syntax-e _%e186226186236%_)))
                        (let ((_%hd186230186247%_ (##car _%e186229186244%_))
                              (_%tl186231186249%_ (##cdr _%e186229186244%_)))
                          (if (gx#stx-pair? _%tl186231186249%_)
                              (let ((_%e186232186252%_
                                     (gx#syntax-e _%tl186231186249%_)))
                                (let ((_%hd186233186255%_
                                       (##car _%e186232186252%_))
                                      (_%tl186234186257%_
                                       (##cdr _%e186232186252%_)))
                                  (let ((_%id186260%_ _%hd186233186255%_))
                                    (if (gx#stx-null? _%tl186234186257%_)
                                        (if (gx#identifier? _%id186260%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id186260%_)
                                                        '()))
                                            (_%E186228186240%_))
                                        (_%E186228186240%_)))))
                              (_%E186228186240%_))))
                      (_%E186228186240%_)))))
          (_%E186227186262%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx186171%_)
        (let* ((_%e186172186185%_ _%stx186171%_)
               (_%E186174186189%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186172186185%_)))
               (_%E186173186221%_
                (lambda ()
                  (if (gx#stx-pair? _%e186172186185%_)
                      (let ((_%e186175186193%_
                             (gx#syntax-e _%e186172186185%_)))
                        (let ((_%hd186176186196%_ (##car _%e186175186193%_))
                              (_%tl186177186198%_ (##cdr _%e186175186193%_)))
                          (if (gx#stx-pair? _%tl186177186198%_)
                              (let ((_%e186178186201%_
                                     (gx#syntax-e _%tl186177186198%_)))
                                (let ((_%hd186179186204%_
                                       (##car _%e186178186201%_))
                                      (_%tl186180186206%_
                                       (##cdr _%e186178186201%_)))
                                  (let ((_%id186209%_ _%hd186179186204%_))
                                    (if (gx#stx-pair? _%tl186180186206%_)
                                        (let ((_%e186181186211%_
                                               (gx#syntax-e
                                                _%tl186180186206%_)))
                                          (let ((_%hd186182186214%_
                                                 (##car _%e186181186211%_))
                                                (_%tl186183186216%_
                                                 (##cdr _%e186181186211%_)))
                                            (let ((_%expr186219%_
                                                   _%hd186182186214%_))
                                              (if (gx#stx-null?
                                                   _%tl186183186216%_)
                                                  (if (gx#identifier?
                                                       _%id186209%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id186209%_)
                          (cons (gx#core-compile-top-syntax _%expr186219%_)
                                '())))
              (_%E186174186189%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E186174186189%_)))))
                                        (_%E186174186189%_)))))
                              (_%E186174186189%_))))
                      (_%E186174186189%_)))))
          (_%E186173186221%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id186165%_)
        (let ((_%$e186167%_ (gx#resolve-identifier__0 _%id186165%_)))
          (if _%$e186167%_
              (##unchecked-structure-ref _%$e186167%_ '1 '#f '#f)
              _%id186165%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd186163%_)
        (if (gx#identifier? _%hd186163%_)
            (gx#core-compile-top-runtime-ref _%hd186163%_)
            '#f)))))
