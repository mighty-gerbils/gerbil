(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1771025401)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx186245%_)
        (let* ((_%e186246186253%_ _%stx186245%_)
               (_%E186248186257%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186246186253%_)))
               (_%E186247186271%_
                (lambda ()
                  (if (gx#stx-pair? _%e186246186253%_)
                      (let ((_%e186249186261%_
                             (gx#syntax-e _%e186246186253%_)))
                        (let ((_%hd186250186264%_ (##car _%e186249186261%_))
                              (_%tl186251186266%_ (##cdr _%e186249186261%_)))
                          (let* ((_%form186269%_ _%hd186250186264%_)
                                 (__self186274
                                  (gx#syntax-local-e__0 _%form186269%_))
                                 (__method186275
                                  (__method-ref
                                   __self186274
                                   'compile-top-syntax)))
                            (if __method186275
                                (__method186275 __self186274 _%stx186245%_)
                                (begin
                                  (error '"Missing method"
                                         __self186274
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%E186248186257%_)))))
          (_%E186247186271%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self186194%_ _%stx186195%_)
        (let* ((_%self186198%_ _%self186194%_)
               (_%self186207186215%_ _%self186198%_)
               (_%E186209186218%_
                (lambda ()
                  (error '"No clause matching"
                         _%self186207186215%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K186210186231%_
                (lambda (_%K186221%_)
                  (let ((_%$e186223%_ (gx#stx-source _%stx186195%_)))
                    (if _%$e186223%_
                        ((lambda (_%g186225186227%_)
                           (gx#stx-wrap-source
                            (_%K186221%_ _%stx186195%_)
                            _%g186225186227%_))
                         _%$e186223%_)
                        (_%K186221%_ _%stx186195%_)))))
               (_%e186211186234%_
                (##unchecked-structure-ref _%self186207186215%_ '1 '#f '#f))
               (_%e186212186237%_
                (##unchecked-structure-ref _%self186207186215%_ '2 '#f '#f))
               (_%e186213186240%_
                (##unchecked-structure-ref _%self186207186215%_ '3 '#f '#f))
               (_%K186243%_ _%e186213186240%_))
          (_%K186210186231%_ _%K186243%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx186068%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx186068%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx186038%_)
        (let* ((_%e186039186046%_ _%stx186038%_)
               (_%E186041186050%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186039186046%_)))
               (_%E186040186064%_
                (lambda ()
                  (if (gx#stx-pair? _%e186039186046%_)
                      (let ((_%e186042186054%_
                             (gx#syntax-e _%e186039186046%_)))
                        (let ((_%hd186043186057%_ (##car _%e186042186054%_))
                              (_%tl186044186059%_ (##cdr _%e186042186054%_)))
                          (let ((_%body186062%_ _%tl186044186059%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body186062%_)))))
                      (_%E186041186050%_)))))
          (_%E186040186064%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx186007%_)
        (let* ((_%e186008186015%_ _%stx186007%_)
               (_%E186010186019%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186008186015%_)))
               (_%E186009186034%_
                (lambda ()
                  (if (gx#stx-pair? _%e186008186015%_)
                      (let ((_%e186011186023%_
                             (gx#syntax-e _%e186008186015%_)))
                        (let ((_%hd186012186026%_ (##car _%e186011186023%_))
                              (_%tl186013186028%_ (##cdr _%e186011186023%_)))
                          (let ((_%body186031%_ _%tl186013186028%_))
                            (cons '%#begin-syntax
                                  (call-with-parameters__1
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body186031%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%E186010186019%_)))))
          (_%E186009186034%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx185977%_)
        (let* ((_%e185978185985%_ _%stx185977%_)
               (_%E185980185989%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e185978185985%_)))
               (_%E185979186003%_
                (lambda ()
                  (if (gx#stx-pair? _%e185978185985%_)
                      (let ((_%e185981185993%_
                             (gx#syntax-e _%e185978185985%_)))
                        (let ((_%hd185982185996%_ (##car _%e185981185993%_))
                              (_%tl185983185998%_ (##cdr _%e185981185993%_)))
                          (let ((_%body186001%_ _%tl185983185998%_))
                            (cons '%#begin-foreign _%body186001%_))))
                      (_%E185980185989%_)))))
          (_%E185979186003%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx185923%_)
        (let* ((_%e185924185937%_ _%stx185923%_)
               (_%E185926185941%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e185924185937%_)))
               (_%E185925185973%_
                (lambda ()
                  (if (gx#stx-pair? _%e185924185937%_)
                      (let ((_%e185927185945%_
                             (gx#syntax-e _%e185924185937%_)))
                        (let ((_%hd185928185948%_ (##car _%e185927185945%_))
                              (_%tl185929185950%_ (##cdr _%e185927185945%_)))
                          (if (gx#stx-pair? _%tl185929185950%_)
                              (let ((_%e185930185953%_
                                     (gx#syntax-e _%tl185929185950%_)))
                                (let ((_%hd185931185956%_
                                       (##car _%e185930185953%_))
                                      (_%tl185932185958%_
                                       (##cdr _%e185930185953%_)))
                                  (let ((_%ann185961%_ _%hd185931185956%_))
                                    (if (gx#stx-pair? _%tl185932185958%_)
                                        (let ((_%e185933185963%_
                                               (gx#syntax-e
                                                _%tl185932185958%_)))
                                          (let ((_%hd185934185966%_
                                                 (##car _%e185933185963%_))
                                                (_%tl185935185968%_
                                                 (##cdr _%e185933185963%_)))
                                            (let ((_%expr185971%_
                                                   _%hd185934185966%_))
                                              (if (gx#stx-null?
                                                   _%tl185935185968%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr185971%_)
                                                  (_%E185926185941%_)))))
                                        (_%E185926185941%_)))))
                              (_%E185926185941%_))))
                      (_%E185926185941%_)))))
          (_%E185925185973%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx185893%_)
        (let* ((_%e185894185901%_ _%stx185893%_)
               (_%E185896185905%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e185894185901%_)))
               (_%E185895185919%_
                (lambda ()
                  (if (gx#stx-pair? _%e185894185901%_)
                      (let ((_%e185897185909%_
                             (gx#syntax-e _%e185894185901%_)))
                        (let ((_%hd185898185912%_ (##car _%e185897185909%_))
                              (_%tl185899185914%_ (##cdr _%e185897185909%_)))
                          (let ((_%body185917%_ _%tl185899185914%_))
                            (cons '%#import _%body185917%_))))
                      (_%E185896185905%_)))))
          (_%E185895185919%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx185850%_)
        (let* ((_%e185851185861%_ _%stx185850%_)
               (_%E185853185865%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e185851185861%_)))
               (_%E185852185889%_
                (lambda ()
                  (if (gx#stx-pair? _%e185851185861%_)
                      (let ((_%e185854185869%_
                             (gx#syntax-e _%e185851185861%_)))
                        (let ((_%hd185855185872%_ (##car _%e185854185869%_))
                              (_%tl185856185874%_ (##cdr _%e185854185869%_)))
                          (if (gx#stx-pair? _%tl185856185874%_)
                              (let ((_%e185857185877%_
                                     (gx#syntax-e _%tl185856185874%_)))
                                (let ((_%hd185858185880%_
                                       (##car _%e185857185877%_))
                                      (_%tl185859185882%_
                                       (##cdr _%e185857185877%_)))
                                  (let* ((_%hd185885%_ _%hd185858185880%_)
                                         (_%body185887%_ _%tl185859185882%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd185885%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body185887%_))))))
                              (_%E185853185865%_))))
                      (_%E185853185865%_)))))
          (_%E185852185889%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx185820%_)
        (let* ((_%e185821185828%_ _%stx185820%_)
               (_%E185823185832%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e185821185828%_)))
               (_%E185822185846%_
                (lambda ()
                  (if (gx#stx-pair? _%e185821185828%_)
                      (let ((_%e185824185836%_
                             (gx#syntax-e _%e185821185828%_)))
                        (let ((_%hd185825185839%_ (##car _%e185824185836%_))
                              (_%tl185826185841%_ (##cdr _%e185824185836%_)))
                          (let ((_%body185844%_ _%tl185826185841%_))
                            (cons '%#export _%body185844%_))))
                      (_%E185823185832%_)))))
          (_%E185822185846%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx185790%_)
        (let* ((_%e185791185798%_ _%stx185790%_)
               (_%E185793185802%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e185791185798%_)))
               (_%E185792185816%_
                (lambda ()
                  (if (gx#stx-pair? _%e185791185798%_)
                      (let ((_%e185794185806%_
                             (gx#syntax-e _%e185791185798%_)))
                        (let ((_%hd185795185809%_ (##car _%e185794185806%_))
                              (_%tl185796185811%_ (##cdr _%e185794185806%_)))
                          (let ((_%body185814%_ _%tl185796185811%_))
                            (cons '%#provide _%body185814%_))))
                      (_%E185793185802%_)))))
          (_%E185792185816%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx185760%_)
        (let* ((_%e185761185768%_ _%stx185760%_)
               (_%E185763185772%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e185761185768%_)))
               (_%E185762185786%_
                (lambda ()
                  (if (gx#stx-pair? _%e185761185768%_)
                      (let ((_%e185764185776%_
                             (gx#syntax-e _%e185761185768%_)))
                        (let ((_%hd185765185779%_ (##car _%e185764185776%_))
                              (_%tl185766185781%_ (##cdr _%e185764185776%_)))
                          (let ((_%body185784%_ _%tl185766185781%_))
                            (cons '%#extern _%body185784%_))))
                      (_%E185763185772%_)))))
          (_%E185762185786%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx185706%_)
        (let* ((_%e185707185720%_ _%stx185706%_)
               (_%E185709185724%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e185707185720%_)))
               (_%E185708185756%_
                (lambda ()
                  (if (gx#stx-pair? _%e185707185720%_)
                      (let ((_%e185710185728%_
                             (gx#syntax-e _%e185707185720%_)))
                        (let ((_%hd185711185731%_ (##car _%e185710185728%_))
                              (_%tl185712185733%_ (##cdr _%e185710185728%_)))
                          (if (gx#stx-pair? _%tl185712185733%_)
                              (let ((_%e185713185736%_
                                     (gx#syntax-e _%tl185712185733%_)))
                                (let ((_%hd185714185739%_
                                       (##car _%e185713185736%_))
                                      (_%tl185715185741%_
                                       (##cdr _%e185713185736%_)))
                                  (let ((_%hd185744%_ _%hd185714185739%_))
                                    (if (gx#stx-pair? _%tl185715185741%_)
                                        (let ((_%e185716185746%_
                                               (gx#syntax-e
                                                _%tl185715185741%_)))
                                          (let ((_%hd185717185749%_
                                                 (##car _%e185716185746%_))
                                                (_%tl185718185751%_
                                                 (##cdr _%e185716185746%_)))
                                            (let ((_%expr185754%_
                                                   _%hd185717185749%_))
                                              (if (gx#stx-null?
                                                   _%tl185718185751%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd185744%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr185754%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E185709185724%_)))))
                                        (_%E185709185724%_)))))
                              (_%E185709185724%_))))
                      (_%E185709185724%_)))))
          (_%E185708185756%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx185651%_)
        (let* ((_%e185652185665%_ _%stx185651%_)
               (_%E185654185669%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e185652185665%_)))
               (_%E185653185702%_
                (lambda ()
                  (if (gx#stx-pair? _%e185652185665%_)
                      (let ((_%e185655185673%_
                             (gx#syntax-e _%e185652185665%_)))
                        (let ((_%hd185656185676%_ (##car _%e185655185673%_))
                              (_%tl185657185678%_ (##cdr _%e185655185673%_)))
                          (if (gx#stx-pair? _%tl185657185678%_)
                              (let ((_%e185658185681%_
                                     (gx#syntax-e _%tl185657185678%_)))
                                (let ((_%hd185659185684%_
                                       (##car _%e185658185681%_))
                                      (_%tl185660185686%_
                                       (##cdr _%e185658185681%_)))
                                  (let ((_%hd185689%_ _%hd185659185684%_))
                                    (if (gx#stx-pair? _%tl185660185686%_)
                                        (let ((_%e185661185691%_
                                               (gx#syntax-e
                                                _%tl185660185686%_)))
                                          (let ((_%hd185662185694%_
                                                 (##car _%e185661185691%_))
                                                (_%tl185663185696%_
                                                 (##cdr _%e185661185691%_)))
                                            (let ((_%expr185699%_
                                                   _%hd185662185694%_))
                                              (if (gx#stx-null?
                                                   _%tl185663185696%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd185689%_
                                                              (cons (call-with-parameters__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr185699%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E185654185669%_)))))
                                        (_%E185654185669%_)))))
                              (_%E185654185669%_))))
                      (_%E185654185669%_)))))
          (_%E185653185702%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx185621%_)
        (let* ((_%e185622185629%_ _%stx185621%_)
               (_%E185624185633%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e185622185629%_)))
               (_%E185623185647%_
                (lambda ()
                  (if (gx#stx-pair? _%e185622185629%_)
                      (let ((_%e185625185637%_
                             (gx#syntax-e _%e185622185629%_)))
                        (let ((_%hd185626185640%_ (##car _%e185625185637%_))
                              (_%tl185627185642%_ (##cdr _%e185625185637%_)))
                          (let ((_%body185645%_ _%tl185627185642%_))
                            (cons '%#define-alias _%body185645%_))))
                      (_%E185624185633%_)))))
          (_%E185623185647%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx185591%_)
        (let* ((_%e185592185599%_ _%stx185591%_)
               (_%E185594185603%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e185592185599%_)))
               (_%E185593185617%_
                (lambda ()
                  (if (gx#stx-pair? _%e185592185599%_)
                      (let ((_%e185595185607%_
                             (gx#syntax-e _%e185592185599%_)))
                        (let ((_%hd185596185610%_ (##car _%e185595185607%_))
                              (_%tl185597185612%_ (##cdr _%e185595185607%_)))
                          (let ((_%body185615%_ _%tl185597185612%_))
                            (cons '%#define-runtime _%body185615%_))))
                      (_%E185594185603%_)))))
          (_%E185593185617%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx185561%_)
        (let* ((_%e185562185569%_ _%stx185561%_)
               (_%E185564185573%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e185562185569%_)))
               (_%E185563185587%_
                (lambda ()
                  (if (gx#stx-pair? _%e185562185569%_)
                      (let ((_%e185565185577%_
                             (gx#syntax-e _%e185562185569%_)))
                        (let ((_%hd185566185580%_ (##car _%e185565185577%_))
                              (_%tl185567185582%_ (##cdr _%e185565185577%_)))
                          (let ((_%decls185585%_ _%tl185567185582%_))
                            (cons '%#declare _%decls185585%_))))
                      (_%E185564185573%_)))))
          (_%E185563185587%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx185531%_)
        (let* ((_%e185532185539%_ _%stx185531%_)
               (_%E185534185543%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e185532185539%_)))
               (_%E185533185557%_
                (lambda ()
                  (if (gx#stx-pair? _%e185532185539%_)
                      (let ((_%e185535185547%_
                             (gx#syntax-e _%e185532185539%_)))
                        (let ((_%hd185536185550%_ (##car _%e185535185547%_))
                              (_%tl185537185552%_ (##cdr _%e185535185547%_)))
                          (let ((_%clause185555%_ _%tl185537185552%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause185555%_)))))
                      (_%E185534185543%_)))))
          (_%E185533185557%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx185488%_)
        (let* ((_%e185489185499%_ _%stx185488%_)
               (_%E185491185503%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e185489185499%_)))
               (_%E185490185527%_
                (lambda ()
                  (if (gx#stx-pair? _%e185489185499%_)
                      (let ((_%e185492185507%_
                             (gx#syntax-e _%e185489185499%_)))
                        (let ((_%hd185493185510%_ (##car _%e185492185507%_))
                              (_%tl185494185512%_ (##cdr _%e185492185507%_)))
                          (let ((_%hd185515%_ _%hd185493185510%_))
                            (if (gx#stx-pair? _%tl185494185512%_)
                                (let ((_%e185495185517%_
                                       (gx#syntax-e _%tl185494185512%_)))
                                  (let ((_%hd185496185520%_
                                         (##car _%e185495185517%_))
                                        (_%tl185497185522%_
                                         (##cdr _%e185495185517%_)))
                                    (let ((_%body185525%_ _%hd185496185520%_))
                                      (if (gx#stx-null? _%tl185497185522%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd185515%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body185525%_)
                                                      '()))
                                          (_%E185491185503%_)))))
                                (_%E185491185503%_)))))
                      (_%E185491185503%_)))))
          (_%E185490185527%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx185458%_)
        (let* ((_%e185459185466%_ _%stx185458%_)
               (_%E185461185470%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e185459185466%_)))
               (_%E185460185484%_
                (lambda ()
                  (if (gx#stx-pair? _%e185459185466%_)
                      (let ((_%e185462185474%_
                             (gx#syntax-e _%e185459185466%_)))
                        (let ((_%hd185463185477%_ (##car _%e185462185474%_))
                              (_%tl185464185479%_ (##cdr _%e185462185474%_)))
                          (let ((_%clauses185482%_ _%tl185464185479%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses185482%_)))))
                      (_%E185461185470%_)))))
          (_%E185460185484%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx185393%_ _%form185394%_)
        (let* ((_%e185395185408%_ _%stx185393%_)
               (_%E185397185412%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e185395185408%_)))
               (_%E185396185444%_
                (lambda ()
                  (if (gx#stx-pair? _%e185395185408%_)
                      (let ((_%e185398185416%_
                             (gx#syntax-e _%e185395185408%_)))
                        (let ((_%hd185399185419%_ (##car _%e185398185416%_))
                              (_%tl185400185421%_ (##cdr _%e185398185416%_)))
                          (if (gx#stx-pair? _%tl185400185421%_)
                              (let ((_%e185401185424%_
                                     (gx#syntax-e _%tl185400185421%_)))
                                (let ((_%hd185402185427%_
                                       (##car _%e185401185424%_))
                                      (_%tl185403185429%_
                                       (##cdr _%e185401185424%_)))
                                  (let ((_%hd185432%_ _%hd185402185427%_))
                                    (if (gx#stx-pair? _%tl185403185429%_)
                                        (let ((_%e185404185434%_
                                               (gx#syntax-e
                                                _%tl185403185429%_)))
                                          (let ((_%hd185405185437%_
                                                 (##car _%e185404185434%_))
                                                (_%tl185406185439%_
                                                 (##cdr _%e185404185434%_)))
                                            (let ((_%body185442%_
                                                   _%hd185405185437%_))
                                              (if (gx#stx-null?
                                                   _%tl185406185439%_)
                                                  (cons _%form185394%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd185432%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body185442%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E185397185412%_)))))
                                        (_%E185397185412%_)))))
                              (_%E185397185412%_))))
                      (_%E185397185412%_)))))
          (_%E185396185444%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx185451%_)
        (let ((_%form185453%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx185451%_ _%form185453%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g186276_
        (let ((_g186277_ (##length _g186276_)))
          (cond ((##fx= _g186277_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g186276_))
                ((##fx= _g186277_ 2)
                 (apply gx#core-compile-top-let-values%__% _g186276_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g186276_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx185390%_)
        (gx#core-compile-top-let-values%__% _%stx185390%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx185388%_)
        (gx#core-compile-top-let-values%__% _%stx185388%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx185347%_)
        (let* ((_%e185348185358%_ _%stx185347%_)
               (_%E185350185362%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e185348185358%_)))
               (_%E185349185384%_
                (lambda ()
                  (if (gx#stx-pair? _%e185348185358%_)
                      (let ((_%e185351185366%_
                             (gx#syntax-e _%e185348185358%_)))
                        (let ((_%hd185352185369%_ (##car _%e185351185366%_))
                              (_%tl185353185371%_ (##cdr _%e185351185366%_)))
                          (if (gx#stx-pair? _%tl185353185371%_)
                              (let ((_%e185354185374%_
                                     (gx#syntax-e _%tl185353185371%_)))
                                (let ((_%hd185355185377%_
                                       (##car _%e185354185374%_))
                                      (_%tl185356185379%_
                                       (##cdr _%e185354185374%_)))
                                  (let ((_%e185382%_ _%hd185355185377%_))
                                    (if (gx#stx-null? _%tl185356185379%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e185382%_)
                                                    '()))
                                        (_%E185350185362%_)))))
                              (_%E185350185362%_))))
                      (_%E185350185362%_)))))
          (_%E185349185384%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx185306%_)
        (let* ((_%e185307185317%_ _%stx185306%_)
               (_%E185309185321%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e185307185317%_)))
               (_%E185308185343%_
                (lambda ()
                  (if (gx#stx-pair? _%e185307185317%_)
                      (let ((_%e185310185325%_
                             (gx#syntax-e _%e185307185317%_)))
                        (let ((_%hd185311185328%_ (##car _%e185310185325%_))
                              (_%tl185312185330%_ (##cdr _%e185310185325%_)))
                          (if (gx#stx-pair? _%tl185312185330%_)
                              (let ((_%e185313185333%_
                                     (gx#syntax-e _%tl185312185330%_)))
                                (let ((_%hd185314185336%_
                                       (##car _%e185313185333%_))
                                      (_%tl185315185338%_
                                       (##cdr _%e185313185333%_)))
                                  (let ((_%e185341%_ _%hd185314185336%_))
                                    (if (gx#stx-null? _%tl185315185338%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e185341%_)
                                                    '()))
                                        (_%E185309185321%_)))))
                              (_%E185309185321%_))))
                      (_%E185309185321%_)))))
          (_%E185308185343%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx185263%_)
        (let* ((_%e185264185274%_ _%stx185263%_)
               (_%E185266185278%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e185264185274%_)))
               (_%E185265185302%_
                (lambda ()
                  (if (gx#stx-pair? _%e185264185274%_)
                      (let ((_%e185267185282%_
                             (gx#syntax-e _%e185264185274%_)))
                        (let ((_%hd185268185285%_ (##car _%e185267185282%_))
                              (_%tl185269185287%_ (##cdr _%e185267185282%_)))
                          (if (gx#stx-pair? _%tl185269185287%_)
                              (let ((_%e185270185290%_
                                     (gx#syntax-e _%tl185269185287%_)))
                                (let ((_%hd185271185293%_
                                       (##car _%e185270185290%_))
                                      (_%tl185272185295%_
                                       (##cdr _%e185270185290%_)))
                                  (let* ((_%rator185298%_ _%hd185271185293%_)
                                         (_%args185300%_ _%tl185272185295%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator185298%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args185300%_))))))
                              (_%E185266185278%_))))
                      (_%E185266185278%_)))))
          (_%E185265185302%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx185196%_)
        (let* ((_%e185197185213%_ _%stx185196%_)
               (_%E185199185217%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e185197185213%_)))
               (_%E185198185259%_
                (lambda ()
                  (if (gx#stx-pair? _%e185197185213%_)
                      (let ((_%e185200185221%_
                             (gx#syntax-e _%e185197185213%_)))
                        (let ((_%hd185201185224%_ (##car _%e185200185221%_))
                              (_%tl185202185226%_ (##cdr _%e185200185221%_)))
                          (if (gx#stx-pair? _%tl185202185226%_)
                              (let ((_%e185203185229%_
                                     (gx#syntax-e _%tl185202185226%_)))
                                (let ((_%hd185204185232%_
                                       (##car _%e185203185229%_))
                                      (_%tl185205185234%_
                                       (##cdr _%e185203185229%_)))
                                  (let ((_%test185237%_ _%hd185204185232%_))
                                    (if (gx#stx-pair? _%tl185205185234%_)
                                        (let ((_%e185206185239%_
                                               (gx#syntax-e
                                                _%tl185205185234%_)))
                                          (let ((_%hd185207185242%_
                                                 (##car _%e185206185239%_))
                                                (_%tl185208185244%_
                                                 (##cdr _%e185206185239%_)))
                                            (let ((_%K185247%_
                                                   _%hd185207185242%_))
                                              (if (gx#stx-pair?
                                                   _%tl185208185244%_)
                                                  (let ((_%e185209185249%_
                                                         (gx#syntax-e
                                                          _%tl185208185244%_)))
                                                    (let ((_%hd185210185252%_
                                                           (##car _%e185209185249%_))
                                                          (_%tl185211185254%_
                                                           (##cdr _%e185209185249%_)))
                                                      (let ((_%E185257%_
                                                             _%hd185210185252%_))
                                                        (if (gx#stx-null?
                                                             _%tl185211185254%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test185237%_)
                                (cons (gx#core-compile-top-syntax _%K185247%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E185257%_)
                                            '()))))
                    (_%E185199185217%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E185199185217%_)))))
                                        (_%E185199185217%_)))))
                              (_%E185199185217%_))))
                      (_%E185199185217%_)))))
          (_%E185198185259%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx185155%_)
        (let* ((_%e185156185166%_ _%stx185155%_)
               (_%E185158185170%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e185156185166%_)))
               (_%E185157185192%_
                (lambda ()
                  (if (gx#stx-pair? _%e185156185166%_)
                      (let ((_%e185159185174%_
                             (gx#syntax-e _%e185156185166%_)))
                        (let ((_%hd185160185177%_ (##car _%e185159185174%_))
                              (_%tl185161185179%_ (##cdr _%e185159185174%_)))
                          (if (gx#stx-pair? _%tl185161185179%_)
                              (let ((_%e185162185182%_
                                     (gx#syntax-e _%tl185161185179%_)))
                                (let ((_%hd185163185185%_
                                       (##car _%e185162185182%_))
                                      (_%tl185164185187%_
                                       (##cdr _%e185162185182%_)))
                                  (let ((_%id185190%_ _%hd185163185185%_))
                                    (if (gx#stx-null? _%tl185164185187%_)
                                        (if (gx#identifier? _%id185190%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id185190%_)
                                                        '()))
                                            (_%E185158185170%_))
                                        (_%E185158185170%_)))))
                              (_%E185158185170%_))))
                      (_%E185158185170%_)))))
          (_%E185157185192%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx185101%_)
        (let* ((_%e185102185115%_ _%stx185101%_)
               (_%E185104185119%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e185102185115%_)))
               (_%E185103185151%_
                (lambda ()
                  (if (gx#stx-pair? _%e185102185115%_)
                      (let ((_%e185105185123%_
                             (gx#syntax-e _%e185102185115%_)))
                        (let ((_%hd185106185126%_ (##car _%e185105185123%_))
                              (_%tl185107185128%_ (##cdr _%e185105185123%_)))
                          (if (gx#stx-pair? _%tl185107185128%_)
                              (let ((_%e185108185131%_
                                     (gx#syntax-e _%tl185107185128%_)))
                                (let ((_%hd185109185134%_
                                       (##car _%e185108185131%_))
                                      (_%tl185110185136%_
                                       (##cdr _%e185108185131%_)))
                                  (let ((_%id185139%_ _%hd185109185134%_))
                                    (if (gx#stx-pair? _%tl185110185136%_)
                                        (let ((_%e185111185141%_
                                               (gx#syntax-e
                                                _%tl185110185136%_)))
                                          (let ((_%hd185112185144%_
                                                 (##car _%e185111185141%_))
                                                (_%tl185113185146%_
                                                 (##cdr _%e185111185141%_)))
                                            (let ((_%expr185149%_
                                                   _%hd185112185144%_))
                                              (if (gx#stx-null?
                                                   _%tl185113185146%_)
                                                  (if (gx#identifier?
                                                       _%id185139%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id185139%_)
                          (cons (gx#core-compile-top-syntax _%expr185149%_)
                                '())))
              (_%E185104185119%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E185104185119%_)))))
                                        (_%E185104185119%_)))))
                              (_%E185104185119%_))))
                      (_%E185104185119%_)))))
          (_%E185103185151%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id185095%_)
        (let ((_%$e185097%_ (gx#resolve-identifier__0 _%id185095%_)))
          (if _%$e185097%_
              (##unchecked-structure-ref _%$e185097%_ '1 '#f '#f)
              _%id185095%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd185093%_)
        (if (gx#identifier? _%hd185093%_)
            (gx#core-compile-top-runtime-ref _%hd185093%_)
            '#f)))))
