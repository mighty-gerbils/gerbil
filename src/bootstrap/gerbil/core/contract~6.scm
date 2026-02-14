(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~Using[1]#_g283050_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g283051_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g283052_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g283055_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g283056_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g283059_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g283060_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g283061_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g283062_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g283066_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g283067_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g283068_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g283069_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g283073_|
    (##structure
     gx#syntax-quote::t
     '%%ref-dotted
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/contract~Using[:0:]#using|
      (lambda (_%stx234605%_)
        (let* ((_%__stx276388276389%_ _%stx234605%_)
               (_%g234614234823%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx276388276389%_))))
          (let ((_%__kont276391276392%_
                 (lambda (_%g234616235715%_
                          _%g234617235717%_
                          _%g234618235718%_
                          _%g234619235719%_
                          _%g234620235720%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%g234620235720%_
                                     (cons _%g234619235719%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%g234620235720%_
                                                       (cons _%g234618235718%_
                                                             (cons _%g234617235717%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g235763235766%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g235764235769%_)
                  (cons _%g235763235766%_ _%g235764235769%_))
                '()
                _%g234616235715%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont276395276396%_
                 (lambda (_%g234648235561%_
                          _%g234649235563%_
                          _%g234650235564%_
                          _%g234651235565%_
                          _%g234652235566%_
                          _%g234653235567%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%g234653235567%_
                                     (cons _%g234652235566%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%g234653235567%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              ':~)
                                                             (cons _%g234651235565%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'using)
                                                             (cons (cons _%g234653235567%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g234650235564%_
                                       (cons _%g234649235563%_ '())))
                           (foldr (lambda (_%g235611235614%_ _%g235612235617%_)
                                    (cons _%g235611235614%_ _%g235612235617%_))
                                  '()
                                  _%g234648235561%_)))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont276399276400%_
                 (lambda (_%g234687235380%_
                          _%g234688235382%_
                          _%g234689235383%_
                          _%g234690235384%_)
                   (let ((_%meta235421%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx234605%_
                             _%g234688235382%_))))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/contract~InterfaceInfo#interface-info::t
                            _%meta235421%_))
                         (cons (gx#datum->syntax '#f 'with-interface)
                               (cons (cons _%g234690235384%_
                                           (cons _%g234689235383%_
                                                 (cons _%g234688235382%_ '())))
                                     (foldr (lambda (_%g235425235428%_
                                                     _%g235426235431%_)
                                              (cons _%g235425235428%_
                                                    _%g235426235431%_))
                                            '()
                                            _%g234687235380%_)))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/mop~MOP-2#class-type-info::t
                                _%meta235421%_))
                             (cons (gx#datum->syntax '#f 'with-class)
                                   (cons (cons _%g234690235384%_
                                               (cons _%g234689235383%_
                                                     (cons _%g234688235382%_
                                                           '())))
                                         (foldr (lambda (_%g235435235438%_
                                                         _%g235436235441%_)
                                                  (cons _%g235435235438%_
                                                        _%g235436235441%_))
                                                '()
                                                _%g234687235380%_)))
                             (gx#raise-syntax-error
                              '#f
                              '"unexpected type; must be a class type or interface"
                              _%stx234605%_
                              _%g234688235382%_
                              _%meta235421%_))))))
                (_%__kont276403276404%_
                 (lambda (_%g234715235260%_
                          _%g234716235262%_
                          _%g234717235263%_)
                   (cons (gx#datum->syntax '#f 'with-contract)
                         (cons (cons _%g234717235263%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%g234716235262%_ '())))
                               (foldr (lambda (_%g235286235289%_
                                               _%g235287235292%_)
                                        (cons _%g235286235289%_
                                              _%g235287235292%_))
                                      '()
                                      _%g234715235260%_)))))
                (_%__kont276407276408%_
                 (lambda (_%g234742235120%_
                          _%g234743235122%_
                          _%g234744235123%_
                          _%g234745235124%_
                          _%g234746235125%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%g234746235125%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%g234745235124%_ '())))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%g234746235125%_
                                                       (cons _%g234744235123%_
                                                             (cons _%g234743235122%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g235166235169%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g235167235172%_)
                  (cons _%g235166235169%_ _%g235167235172%_))
                '()
                _%g234742235120%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont276411276412%_
                 (lambda (_%g234777234980%_
                          _%g234778234982%_
                          _%g234779234983%_
                          _%g234780234984%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%g234780234984%_ _%g234779234983%_)
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons _%g234778234982%_
                                                 (foldr (lambda (_%g235006235009%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g235007235012%_)
                  (cons _%g235006235009%_ _%g235007235012%_))
                '()
                _%g234777234980%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont276415276416%_
                 (lambda (_%g234802234878%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g234896234899%_
                                               _%g234897234902%_)
                                        (cons _%g234896234899%_
                                              _%g234897234902%_))
                                      '()
                                      _%g234802234878%_))))))
            (let* ((_%__match276721276722%_
                    (lambda (_%e234803234830%_
                             _%hd234804234834%_
                             _%tl234805234837%_
                             _%e234806234840%_
                             _%hd234807234844%_
                             _%tl234808234847%_
                             _%__splice276417276418%_
                             _%target234809234850%_
                             _%tl234811234853%_)
                      (letrec ((_%loop234812234856%_
                                (lambda (_%hd234810234860%_
                                         _%body234816234863%_)
                                  (if (gx#stx-pair? _%hd234810234860%_)
                                      (let ((_%e234813234865%_
                                             (gx#syntax-e _%hd234810234860%_)))
                                        (let ((_%lp-tl234815234872%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e234813234865%_)))
                                              (_%lp-hd234814234869%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e234813234865%_))))
                                          (_%loop234812234856%_
                                           _%lp-tl234815234872%_
                                           (cons _%lp-hd234814234869%_
                                                 _%body234816234863%_))))
                                      (let ((_%body234817234875%_
                                             (reverse _%body234816234863%_)))
                                        (_%__kont276415276416%_
                                         _%body234817234875%_))))))
                        (_%loop234812234856%_ _%target234809234850%_ '()))))
                   (_%__match276699276700%_
                    (lambda (_%e234781234912%_
                             _%hd234782234916%_
                             _%tl234783234919%_
                             _%e234784234922%_
                             _%hd234785234926%_
                             _%tl234786234929%_
                             _%e234787234932%_
                             _%hd234788234936%_
                             _%tl234789234939%_
                             _%e234790234942%_
                             _%hd234791234946%_
                             _%tl234792234949%_
                             _%__splice276413276414%_
                             _%target234793234952%_
                             _%tl234795234955%_)
                      (letrec ((_%loop234796234958%_
                                (lambda (_%hd234794234962%_
                                         _%body234800234965%_)
                                  (if (gx#stx-pair? _%hd234794234962%_)
                                      (let ((_%e234797234967%_
                                             (gx#syntax-e _%hd234794234962%_)))
                                        (let ((_%lp-tl234799234974%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e234797234967%_)))
                                              (_%lp-hd234798234971%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e234797234967%_))))
                                          (_%loop234796234958%_
                                           _%lp-tl234799234974%_
                                           (cons _%lp-hd234798234971%_
                                                 _%body234800234965%_))))
                                      (let ((_%body234801234977%_
                                             (reverse _%body234800234965%_)))
                                        (let ((_%g234777234980%_
                                               _%body234801234977%_)
                                              (_%g234778234982%_
                                               _%tl234789234939%_)
                                              (_%g234779234983%_
                                               _%tl234792234949%_)
                                              (_%g234780234984%_
                                               _%hd234791234946%_))
                                          (if (gx#identifier?
                                               _%g234780234984%_)
                                              (_%__kont276411276412%_
                                               _%g234777234980%_
                                               _%g234778234982%_
                                               _%g234779234983%_
                                               _%g234780234984%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g234614234823%_)))))))))
                        (_%loop234796234958%_ _%target234793234952%_ '()))))
                   (_%__match276685276686%_
                    (lambda (_%e234781234912%_
                             _%hd234782234916%_
                             _%tl234783234919%_
                             _%e234784234922%_
                             _%hd234785234926%_
                             _%tl234786234929%_
                             _%e234787234932%_
                             _%hd234788234936%_
                             _%tl234789234939%_)
                      (if (gx#stx-pair? _%hd234788234936%_)
                          (let ((_%e234790234942%_
                                 (gx#syntax-e _%hd234788234936%_)))
                            (let ((_%tl234792234949%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e234790234942%_)))
                                  (_%hd234791234946%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e234790234942%_))))
                              (if (gx#stx-pair/null? _%tl234786234929%_)
                                  (let ((_%__splice276413276414%_
                                         (gx#syntax-split-splice->vector
                                          _%tl234786234929%_
                                          '0)))
                                    (let ((_%tl234795234955%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice276413276414%_
                                              '1)))
                                          (_%target234793234952%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice276413276414%_
                                              '0))))
                                      (if (gx#stx-null? _%tl234795234955%_)
                                          (_%__match276699276700%_
                                           _%e234781234912%_
                                           _%hd234782234916%_
                                           _%tl234783234919%_
                                           _%e234784234922%_
                                           _%hd234785234926%_
                                           _%tl234786234929%_
                                           _%e234787234932%_
                                           _%hd234788234936%_
                                           _%tl234789234939%_
                                           _%e234790234942%_
                                           _%hd234791234946%_
                                           _%tl234792234949%_
                                           _%__splice276413276414%_
                                           _%target234793234952%_
                                           _%tl234795234955%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g234614234823%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g234614234823%_)))))
                          (let () (declare (not safe)) (_%g234614234823%_)))))
                   (_%__match276667276668%_
                    (lambda (_%e234747235022%_
                             _%hd234748235026%_
                             _%tl234749235029%_
                             _%e234750235032%_
                             _%hd234751235036%_
                             _%tl234752235039%_
                             _%e234753235042%_
                             _%hd234754235046%_
                             _%tl234755235049%_
                             _%e234756235052%_
                             _%hd234757235056%_
                             _%tl234758235059%_
                             _%e234759235062%_
                             _%hd234760235066%_
                             _%tl234761235069%_
                             _%e234762235072%_
                             _%hd234763235076%_
                             _%tl234764235079%_
                             _%e234765235082%_
                             _%hd234766235086%_
                             _%tl234767235089%_
                             _%__splice276409276410%_
                             _%target234768235092%_
                             _%tl234770235095%_)
                      (letrec ((_%loop234771235098%_
                                (lambda (_%hd234769235102%_
                                         _%body234775235105%_)
                                  (if (gx#stx-pair? _%hd234769235102%_)
                                      (let ((_%e234772235107%_
                                             (gx#syntax-e _%hd234769235102%_)))
                                        (let ((_%lp-tl234774235114%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e234772235107%_)))
                                              (_%lp-hd234773235111%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e234772235107%_))))
                                          (_%loop234771235098%_
                                           _%lp-tl234774235114%_
                                           (cons _%lp-hd234773235111%_
                                                 _%body234775235105%_))))
                                      (let ((_%body234776235117%_
                                             (reverse _%body234775235105%_)))
                                        (let ((_%g234742235120%_
                                               _%body234776235117%_)
                                              (_%g234743235122%_
                                               _%hd234766235086%_)
                                              (_%g234744235123%_
                                               _%hd234763235076%_)
                                              (_%g234745235124%_
                                               _%hd234760235066%_)
                                              (_%g234746235125%_
                                               _%hd234754235046%_))
                                          (if (and (gx#identifier?
                                                    _%g234746235125%_)
                                                   (gx#identifier?
                                                    _%g234743235122%_)
                                                   (gx#identifier?
                                                    _%g234744235123%_)
                                                   (or (gx#free-identifier=?
                                                        _%g234744235123%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g234744235123%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g234744235123%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g234744235123%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont276407276408%_
                                               _%g234742235120%_
                                               _%g234743235122%_
                                               _%g234744235123%_
                                               _%g234745235124%_
                                               _%g234746235125%_)
                                              (_%__match276685276686%_
                                               _%e234747235022%_
                                               _%hd234748235026%_
                                               _%tl234749235029%_
                                               _%e234750235032%_
                                               _%hd234751235036%_
                                               _%tl234752235039%_
                                               _%e234753235042%_
                                               _%hd234754235046%_
                                               _%tl234755235049%_))))))))
                        (_%loop234771235098%_ _%target234768235092%_ '()))))
                   (_%__match276611276612%_
                    (lambda (_%e234718235182%_
                             _%hd234719235186%_
                             _%tl234720235189%_
                             _%e234721235192%_
                             _%hd234722235196%_
                             _%tl234723235199%_
                             _%e234724235202%_
                             _%hd234725235206%_
                             _%tl234726235209%_
                             _%e234727235212%_
                             _%hd234728235216%_
                             _%tl234729235219%_
                             _%e234730235222%_
                             _%hd234731235226%_
                             _%tl234732235229%_
                             _%__splice276405276406%_
                             _%target234733235232%_
                             _%tl234735235235%_)
                      (letrec ((_%loop234736235238%_
                                (lambda (_%hd234734235242%_
                                         _%body234740235245%_)
                                  (if (gx#stx-pair? _%hd234734235242%_)
                                      (let ((_%e234737235247%_
                                             (gx#syntax-e _%hd234734235242%_)))
                                        (let ((_%lp-tl234739235254%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e234737235247%_)))
                                              (_%lp-hd234738235251%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e234737235247%_))))
                                          (_%loop234736235238%_
                                           _%lp-tl234739235254%_
                                           (cons _%lp-hd234738235251%_
                                                 _%body234740235245%_))))
                                      (let ((_%body234741235257%_
                                             (reverse _%body234740235245%_)))
                                        (let ((_%g234715235260%_
                                               _%body234741235257%_)
                                              (_%g234716235262%_
                                               _%hd234731235226%_)
                                              (_%g234717235263%_
                                               _%hd234725235206%_))
                                          (if (gx#identifier?
                                               _%g234717235263%_)
                                              (_%__kont276403276404%_
                                               _%g234715235260%_
                                               _%g234716235262%_
                                               _%g234717235263%_)
                                              (_%__match276685276686%_
                                               _%e234718235182%_
                                               _%hd234719235186%_
                                               _%tl234720235189%_
                                               _%e234721235192%_
                                               _%hd234722235196%_
                                               _%tl234723235199%_
                                               _%e234724235202%_
                                               _%hd234725235206%_
                                               _%tl234726235209%_))))))))
                        (_%loop234736235238%_ _%target234733235232%_ '()))))
                   (_%__match276591276592%_
                    (lambda (_%e234718235182%_
                             _%hd234719235186%_
                             _%tl234720235189%_
                             _%e234721235192%_
                             _%hd234722235196%_
                             _%tl234723235199%_
                             _%e234724235202%_
                             _%hd234725235206%_
                             _%tl234726235209%_
                             _%e234727235212%_
                             _%hd234728235216%_
                             _%tl234729235219%_)
                      (if (gx#identifier? _%hd234728235216%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g283050_|
                               _%hd234728235216%_)
                              (if (gx#stx-pair? _%tl234729235219%_)
                                  (let ((_%e234730235222%_
                                         (gx#syntax-e _%tl234729235219%_)))
                                    (let ((_%tl234732235229%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e234730235222%_)))
                                          (_%hd234731235226%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e234730235222%_))))
                                      (if (gx#stx-null? _%tl234732235229%_)
                                          (if (gx#stx-pair/null?
                                               _%tl234723235199%_)
                                              (let ((_%__splice276405276406%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl234723235199%_
                                                      '0)))
                                                (let ((_%tl234735235235%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice276405276406%_
                                                          '1)))
                                                      (_%target234733235232%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice276405276406%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl234735235235%_)
                                                      (_%__match276611276612%_
                                                       _%e234718235182%_
                                                       _%hd234719235186%_
                                                       _%tl234720235189%_
                                                       _%e234721235192%_
                                                       _%hd234722235196%_
                                                       _%tl234723235199%_
                                                       _%e234724235202%_
                                                       _%hd234725235206%_
                                                       _%tl234726235209%_
                                                       _%e234727235212%_
                                                       _%hd234728235216%_
                                                       _%tl234729235219%_
                                                       _%e234730235222%_
                                                       _%hd234731235226%_
                                                       _%tl234732235229%_
                                                       _%__splice276405276406%_
                                                       _%target234733235232%_
                                                       _%tl234735235235%_)
                                                      (if (gx#stx-pair?
                                                           _%hd234725235206%_)
                                                          (let ((_%e234790234942%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd234725235206%_)))
                    (let ((_%tl234792234949%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e234790234942%_)))
                          (_%hd234791234946%_
                           (let ()
                             (declare (not safe))
                             (##car _%e234790234942%_))))
                      (let () (declare (not safe)) (_%g234614234823%_))))
                  (let () (declare (not safe)) (_%g234614234823%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd234725235206%_)
                                                  (let ((_%e234790234942%_
                                                         (gx#syntax-e
                                                          _%hd234725235206%_)))
                                                    (let ((_%tl234792234949%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e234790234942%_)))
                                                          (_%hd234791234946%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e234790234942%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g234614234823%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g234614234823%_))))
                                          (if (gx#stx-pair? _%tl234732235229%_)
                                              (let ((_%e234762235072%_
                                                     (gx#syntax-e
                                                      _%tl234732235229%_)))
                                                (let ((_%tl234764235079%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e234762235072%_)))
                                                      (_%hd234763235076%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e234762235072%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl234764235079%_)
                                                      (let ((_%e234765235082%_
                                                             (gx#syntax-e
                                                              _%tl234764235079%_)))
                                                        (let ((_%tl234767235089%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e234765235082%_)))
                      (_%hd234766235086%_
                       (let ()
                         (declare (not safe))
                         (##car _%e234765235082%_))))
                  (if (gx#stx-null? _%tl234767235089%_)
                      (if (gx#stx-pair/null? _%tl234723235199%_)
                          (let ((_%__splice276409276410%_
                                 (gx#syntax-split-splice->vector
                                  _%tl234723235199%_
                                  '0)))
                            (let ((_%tl234770235095%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice276409276410%_
                                      '1)))
                                  (_%target234768235092%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice276409276410%_
                                      '0))))
                              (if (gx#stx-null? _%tl234770235095%_)
                                  (_%__match276667276668%_
                                   _%e234718235182%_
                                   _%hd234719235186%_
                                   _%tl234720235189%_
                                   _%e234721235192%_
                                   _%hd234722235196%_
                                   _%tl234723235199%_
                                   _%e234724235202%_
                                   _%hd234725235206%_
                                   _%tl234726235209%_
                                   _%e234727235212%_
                                   _%hd234728235216%_
                                   _%tl234729235219%_
                                   _%e234730235222%_
                                   _%hd234731235226%_
                                   _%tl234732235229%_
                                   _%e234762235072%_
                                   _%hd234763235076%_
                                   _%tl234764235079%_
                                   _%e234765235082%_
                                   _%hd234766235086%_
                                   _%tl234767235089%_
                                   _%__splice276409276410%_
                                   _%target234768235092%_
                                   _%tl234770235095%_)
                                  (if (gx#stx-pair? _%hd234725235206%_)
                                      (let ((_%e234790234942%_
                                             (gx#syntax-e _%hd234725235206%_)))
                                        (let ((_%tl234792234949%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e234790234942%_)))
                                              (_%hd234791234946%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e234790234942%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g234614234823%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g234614234823%_))))))
                          (if (gx#stx-pair? _%hd234725235206%_)
                              (let ((_%e234790234942%_
                                     (gx#syntax-e _%hd234725235206%_)))
                                (let ((_%tl234792234949%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e234790234942%_)))
                                      (_%hd234791234946%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e234790234942%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g234614234823%_))))
                              (let ()
                                (declare (not safe))
                                (_%g234614234823%_))))
                      (if (gx#stx-pair? _%hd234725235206%_)
                          (let ((_%e234790234942%_
                                 (gx#syntax-e _%hd234725235206%_)))
                            (let ((_%tl234792234949%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e234790234942%_)))
                                  (_%hd234791234946%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e234790234942%_))))
                              (if (gx#stx-pair/null? _%tl234723235199%_)
                                  (let ((_%__splice276413276414%_
                                         (gx#syntax-split-splice->vector
                                          _%tl234723235199%_
                                          '0)))
                                    (let ((_%tl234795234955%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice276413276414%_
                                              '1)))
                                          (_%target234793234952%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice276413276414%_
                                              '0))))
                                      (if (gx#stx-null? _%tl234795234955%_)
                                          (_%__match276699276700%_
                                           _%e234718235182%_
                                           _%hd234719235186%_
                                           _%tl234720235189%_
                                           _%e234721235192%_
                                           _%hd234722235196%_
                                           _%tl234723235199%_
                                           _%e234724235202%_
                                           _%hd234725235206%_
                                           _%tl234726235209%_
                                           _%e234790234942%_
                                           _%hd234791234946%_
                                           _%tl234792234949%_
                                           _%__splice276413276414%_
                                           _%target234793234952%_
                                           _%tl234795234955%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g234614234823%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g234614234823%_)))))
                          (let () (declare (not safe)) (_%g234614234823%_))))))
              (if (gx#stx-pair? _%hd234725235206%_)
                  (let ((_%e234790234942%_ (gx#syntax-e _%hd234725235206%_)))
                    (let ((_%tl234792234949%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e234790234942%_)))
                          (_%hd234791234946%_
                           (let ()
                             (declare (not safe))
                             (##car _%e234790234942%_))))
                      (if (gx#stx-pair/null? _%tl234723235199%_)
                          (let ((_%__splice276413276414%_
                                 (gx#syntax-split-splice->vector
                                  _%tl234723235199%_
                                  '0)))
                            (let ((_%tl234795234955%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice276413276414%_
                                      '1)))
                                  (_%target234793234952%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice276413276414%_
                                      '0))))
                              (if (gx#stx-null? _%tl234795234955%_)
                                  (_%__match276699276700%_
                                   _%e234718235182%_
                                   _%hd234719235186%_
                                   _%tl234720235189%_
                                   _%e234721235192%_
                                   _%hd234722235196%_
                                   _%tl234723235199%_
                                   _%e234724235202%_
                                   _%hd234725235206%_
                                   _%tl234726235209%_
                                   _%e234790234942%_
                                   _%hd234791234946%_
                                   _%tl234792234949%_
                                   _%__splice276413276414%_
                                   _%target234793234952%_
                                   _%tl234795234955%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g234614234823%_)))))
                          (let () (declare (not safe)) (_%g234614234823%_)))))
                  (let () (declare (not safe)) (_%g234614234823%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd234725235206%_)
                                                  (let ((_%e234790234942%_
                                                         (gx#syntax-e
                                                          _%hd234725235206%_)))
                                                    (let ((_%tl234792234949%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e234790234942%_)))
                                                          (_%hd234791234946%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e234790234942%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl234723235199%_)
                                                          (let ((_%__splice276413276414%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector
                          _%tl234723235199%_
                          '0)))
                    (let ((_%tl234795234955%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice276413276414%_ '1)))
                          (_%target234793234952%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice276413276414%_ '0))))
                      (if (gx#stx-null? _%tl234795234955%_)
                          (_%__match276699276700%_
                           _%e234718235182%_
                           _%hd234719235186%_
                           _%tl234720235189%_
                           _%e234721235192%_
                           _%hd234722235196%_
                           _%tl234723235199%_
                           _%e234724235202%_
                           _%hd234725235206%_
                           _%tl234726235209%_
                           _%e234790234942%_
                           _%hd234791234946%_
                           _%tl234792234949%_
                           _%__splice276413276414%_
                           _%target234793234952%_
                           _%tl234795234955%_)
                          (let () (declare (not safe)) (_%g234614234823%_)))))
                  (let () (declare (not safe)) (_%g234614234823%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g234614234823%_)))))))
                                  (if (gx#stx-pair? _%hd234725235206%_)
                                      (let ((_%e234790234942%_
                                             (gx#syntax-e _%hd234725235206%_)))
                                        (let ((_%tl234792234949%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e234790234942%_)))
                                              (_%hd234791234946%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e234790234942%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl234723235199%_)
                                              (let ((_%__splice276413276414%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl234723235199%_
                                                      '0)))
                                                (let ((_%tl234795234955%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice276413276414%_
                                                          '1)))
                                                      (_%target234793234952%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice276413276414%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl234795234955%_)
                                                      (_%__match276699276700%_
                                                       _%e234718235182%_
                                                       _%hd234719235186%_
                                                       _%tl234720235189%_
                                                       _%e234721235192%_
                                                       _%hd234722235196%_
                                                       _%tl234723235199%_
                                                       _%e234724235202%_
                                                       _%hd234725235206%_
                                                       _%tl234726235209%_
                                                       _%e234790234942%_
                                                       _%hd234791234946%_
                                                       _%tl234792234949%_
                                                       _%__splice276413276414%_
                                                       _%target234793234952%_
                                                       _%tl234795234955%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g234614234823%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g234614234823%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g234614234823%_))))
                              (if (gx#stx-pair? _%hd234725235206%_)
                                  (let ((_%e234790234942%_
                                         (gx#syntax-e _%hd234725235206%_)))
                                    (let ((_%tl234792234949%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e234790234942%_)))
                                          (_%hd234791234946%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e234790234942%_))))
                                      (if (gx#stx-pair/null?
                                           _%tl234723235199%_)
                                          (let ((_%__splice276413276414%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl234723235199%_
                                                  '0)))
                                            (let ((_%tl234795234955%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice276413276414%_
                                                      '1)))
                                                  (_%target234793234952%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice276413276414%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl234795234955%_)
                                                  (_%__match276699276700%_
                                                   _%e234718235182%_
                                                   _%hd234719235186%_
                                                   _%tl234720235189%_
                                                   _%e234721235192%_
                                                   _%hd234722235196%_
                                                   _%tl234723235199%_
                                                   _%e234724235202%_
                                                   _%hd234725235206%_
                                                   _%tl234726235209%_
                                                   _%e234790234942%_
                                                   _%hd234791234946%_
                                                   _%tl234792234949%_
                                                   _%__splice276413276414%_
                                                   _%target234793234952%_
                                                   _%tl234795234955%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g234614234823%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g234614234823%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g234614234823%_))))
                          (if (gx#stx-pair? _%hd234725235206%_)
                              (let ((_%e234790234942%_
                                     (gx#syntax-e _%hd234725235206%_)))
                                (let ((_%tl234792234949%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e234790234942%_)))
                                      (_%hd234791234946%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e234790234942%_))))
                                  (if (gx#stx-pair/null? _%tl234723235199%_)
                                      (let ((_%__splice276413276414%_
                                             (gx#syntax-split-splice->vector
                                              _%tl234723235199%_
                                              '0)))
                                        (let ((_%tl234795234955%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice276413276414%_
                                                  '1)))
                                              (_%target234793234952%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice276413276414%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl234795234955%_)
                                              (_%__match276699276700%_
                                               _%e234718235182%_
                                               _%hd234719235186%_
                                               _%tl234720235189%_
                                               _%e234721235192%_
                                               _%hd234722235196%_
                                               _%tl234723235199%_
                                               _%e234724235202%_
                                               _%hd234725235206%_
                                               _%tl234726235209%_
                                               _%e234790234942%_
                                               _%hd234791234946%_
                                               _%tl234792234949%_
                                               _%__splice276413276414%_
                                               _%target234793234952%_
                                               _%tl234795234955%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g234614234823%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g234614234823%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g234614234823%_))))))
                   (_%__match276567276568%_
                    (lambda (_%e234691235302%_
                             _%hd234692235306%_
                             _%tl234693235309%_
                             _%e234694235312%_
                             _%hd234695235316%_
                             _%tl234696235319%_
                             _%e234697235322%_
                             _%hd234698235326%_
                             _%tl234699235329%_
                             _%e234700235332%_
                             _%hd234701235336%_
                             _%tl234702235339%_
                             _%e234703235342%_
                             _%hd234704235346%_
                             _%tl234705235349%_
                             _%__splice276401276402%_
                             _%target234706235352%_
                             _%tl234708235355%_)
                      (letrec ((_%loop234709235358%_
                                (lambda (_%hd234707235362%_
                                         _%body234713235365%_)
                                  (if (gx#stx-pair? _%hd234707235362%_)
                                      (let ((_%e234710235367%_
                                             (gx#syntax-e _%hd234707235362%_)))
                                        (let ((_%lp-tl234712235374%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e234710235367%_)))
                                              (_%lp-hd234711235371%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e234710235367%_))))
                                          (_%loop234709235358%_
                                           _%lp-tl234712235374%_
                                           (cons _%lp-hd234711235371%_
                                                 _%body234713235365%_))))
                                      (let ((_%body234714235377%_
                                             (reverse _%body234713235365%_)))
                                        (let ((_%g234687235380%_
                                               _%body234714235377%_)
                                              (_%g234688235382%_
                                               _%hd234704235346%_)
                                              (_%g234689235383%_
                                               _%hd234701235336%_)
                                              (_%g234690235384%_
                                               _%hd234698235326%_))
                                          (if (and (gx#identifier?
                                                    _%g234690235384%_)
                                                   (gx#identifier?
                                                    _%g234688235382%_)
                                                   (gx#identifier?
                                                    _%g234689235383%_)
                                                   (or (gx#free-identifier=?
                                                        _%g234689235383%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g234689235383%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g234689235383%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g234689235383%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont276399276400%_
                                               _%g234687235380%_
                                               _%g234688235382%_
                                               _%g234689235383%_
                                               _%g234690235384%_)
                                              (_%__match276591276592%_
                                               _%e234691235302%_
                                               _%hd234692235306%_
                                               _%tl234693235309%_
                                               _%e234694235312%_
                                               _%hd234695235316%_
                                               _%tl234696235319%_
                                               _%e234697235322%_
                                               _%hd234698235326%_
                                               _%tl234699235329%_
                                               _%e234700235332%_
                                               _%hd234701235336%_
                                               _%tl234702235339%_))))))))
                        (_%loop234709235358%_ _%target234706235352%_ '()))))
                   (_%__match276527276528%_
                    (lambda (_%e234654235453%_
                             _%hd234655235457%_
                             _%tl234656235460%_
                             _%e234657235463%_
                             _%hd234658235467%_
                             _%tl234659235470%_
                             _%e234660235473%_
                             _%hd234661235477%_
                             _%tl234662235480%_
                             _%e234663235483%_
                             _%hd234664235487%_
                             _%tl234665235490%_
                             _%e234666235493%_
                             _%hd234667235497%_
                             _%tl234668235500%_
                             _%e234669235503%_
                             _%hd234670235507%_
                             _%tl234671235510%_
                             _%e234672235513%_
                             _%hd234673235517%_
                             _%tl234674235520%_
                             _%e234675235523%_
                             _%hd234676235527%_
                             _%tl234677235530%_
                             _%__splice276397276398%_
                             _%target234678235533%_
                             _%tl234680235536%_)
                      (letrec ((_%loop234681235539%_
                                (lambda (_%hd234679235543%_
                                         _%body234685235546%_)
                                  (if (gx#stx-pair? _%hd234679235543%_)
                                      (let ((_%e234682235548%_
                                             (gx#syntax-e _%hd234679235543%_)))
                                        (let ((_%lp-tl234684235555%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e234682235548%_)))
                                              (_%lp-hd234683235552%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e234682235548%_))))
                                          (_%loop234681235539%_
                                           _%lp-tl234684235555%_
                                           (cons _%lp-hd234683235552%_
                                                 _%body234685235546%_))))
                                      (let ((_%body234686235558%_
                                             (reverse _%body234685235546%_)))
                                        (let ((_%g234648235561%_
                                               _%body234686235558%_)
                                              (_%g234649235563%_
                                               _%hd234676235527%_)
                                              (_%g234650235564%_
                                               _%hd234673235517%_)
                                              (_%g234651235565%_
                                               _%hd234670235507%_)
                                              (_%g234652235566%_
                                               _%hd234664235487%_)
                                              (_%g234653235567%_
                                               _%hd234661235477%_))
                                          (if (and (gx#identifier?
                                                    _%g234653235567%_)
                                                   (gx#identifier?
                                                    _%g234649235563%_)
                                                   (gx#identifier?
                                                    _%g234650235564%_)
                                                   (or (gx#free-identifier=?
                                                        _%g234650235564%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g234650235564%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g234650235564%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g234650235564%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont276395276396%_
                                               _%g234648235561%_
                                               _%g234649235563%_
                                               _%g234650235564%_
                                               _%g234651235565%_
                                               _%g234652235566%_
                                               _%g234653235567%_)
                                              (_%__match276591276592%_
                                               _%e234654235453%_
                                               _%hd234655235457%_
                                               _%tl234656235460%_
                                               _%e234657235463%_
                                               _%hd234658235467%_
                                               _%tl234659235470%_
                                               _%e234660235473%_
                                               _%hd234661235477%_
                                               _%tl234662235480%_
                                               _%e234663235483%_
                                               _%hd234664235487%_
                                               _%tl234665235490%_))))))))
                        (_%loop234681235539%_ _%target234678235533%_ '()))))
                   (_%__match276495276496%_
                    (lambda (_%e234654235453%_
                             _%hd234655235457%_
                             _%tl234656235460%_
                             _%e234657235463%_
                             _%hd234658235467%_
                             _%tl234659235470%_
                             _%e234660235473%_
                             _%hd234661235477%_
                             _%tl234662235480%_
                             _%e234663235483%_
                             _%hd234664235487%_
                             _%tl234665235490%_
                             _%e234666235493%_
                             _%hd234667235497%_
                             _%tl234668235500%_)
                      (if (gx#identifier? _%hd234667235497%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g283051_|
                               _%hd234667235497%_)
                              (if (gx#stx-pair? _%tl234668235500%_)
                                  (let ((_%e234669235503%_
                                         (gx#syntax-e _%tl234668235500%_)))
                                    (let ((_%tl234671235510%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e234669235503%_)))
                                          (_%hd234670235507%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e234669235503%_))))
                                      (if (gx#stx-pair? _%tl234671235510%_)
                                          (let ((_%e234672235513%_
                                                 (gx#syntax-e
                                                  _%tl234671235510%_)))
                                            (let ((_%tl234674235520%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e234672235513%_)))
                                                  (_%hd234673235517%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e234672235513%_))))
                                              (if (gx#stx-pair?
                                                   _%tl234674235520%_)
                                                  (let ((_%e234675235523%_
                                                         (gx#syntax-e
                                                          _%tl234674235520%_)))
                                                    (let ((_%tl234677235530%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e234675235523%_)))
                                                          (_%hd234676235527%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e234675235523%_))))
                                                      (if (gx#stx-null?
                                                           _%tl234677235530%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl234659235470%_)
                                                              (let ((_%__splice276397276398%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl234659235470%_
                              '0)))
                        (let ((_%tl234680235536%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice276397276398%_ '1)))
                              (_%target234678235533%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice276397276398%_ '0))))
                          (if (gx#stx-null? _%tl234680235536%_)
                              (_%__match276527276528%_
                               _%e234654235453%_
                               _%hd234655235457%_
                               _%tl234656235460%_
                               _%e234657235463%_
                               _%hd234658235467%_
                               _%tl234659235470%_
                               _%e234660235473%_
                               _%hd234661235477%_
                               _%tl234662235480%_
                               _%e234663235483%_
                               _%hd234664235487%_
                               _%tl234665235490%_
                               _%e234666235493%_
                               _%hd234667235497%_
                               _%tl234668235500%_
                               _%e234669235503%_
                               _%hd234670235507%_
                               _%tl234671235510%_
                               _%e234672235513%_
                               _%hd234673235517%_
                               _%tl234674235520%_
                               _%e234675235523%_
                               _%hd234676235527%_
                               _%tl234677235530%_
                               _%__splice276397276398%_
                               _%target234678235533%_
                               _%tl234680235536%_)
                              (if (gx#stx-pair? _%hd234661235477%_)
                                  (let ((_%e234790234942%_
                                         (gx#syntax-e _%hd234661235477%_)))
                                    (let ((_%tl234792234949%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e234790234942%_)))
                                          (_%hd234791234946%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e234790234942%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g234614234823%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g234614234823%_))))))
                      (if (gx#stx-pair? _%hd234661235477%_)
                          (let ((_%e234790234942%_
                                 (gx#syntax-e _%hd234661235477%_)))
                            (let ((_%tl234792234949%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e234790234942%_)))
                                  (_%hd234791234946%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e234790234942%_))))
                              (let ()
                                (declare (not safe))
                                (_%g234614234823%_))))
                          (let () (declare (not safe)) (_%g234614234823%_))))
                  (if (gx#stx-pair? _%hd234661235477%_)
                      (let ((_%e234790234942%_
                             (gx#syntax-e _%hd234661235477%_)))
                        (let ((_%tl234792234949%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e234790234942%_)))
                              (_%hd234791234946%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e234790234942%_))))
                          (if (gx#stx-pair/null? _%tl234659235470%_)
                              (let ((_%__splice276413276414%_
                                     (gx#syntax-split-splice->vector
                                      _%tl234659235470%_
                                      '0)))
                                (let ((_%tl234795234955%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice276413276414%_
                                          '1)))
                                      (_%target234793234952%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice276413276414%_
                                          '0))))
                                  (if (gx#stx-null? _%tl234795234955%_)
                                      (_%__match276699276700%_
                                       _%e234654235453%_
                                       _%hd234655235457%_
                                       _%tl234656235460%_
                                       _%e234657235463%_
                                       _%hd234658235467%_
                                       _%tl234659235470%_
                                       _%e234660235473%_
                                       _%hd234661235477%_
                                       _%tl234662235480%_
                                       _%e234790234942%_
                                       _%hd234791234946%_
                                       _%tl234792234949%_
                                       _%__splice276413276414%_
                                       _%target234793234952%_
                                       _%tl234795234955%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g234614234823%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g234614234823%_)))))
                      (let () (declare (not safe)) (_%g234614234823%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#identifier?
                                                       _%hd234664235487%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g283050_|
                                                           _%hd234664235487%_)
                                                          (if (gx#stx-null?
                                                               _%tl234674235520%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl234659235470%_)
                          (let ((_%__splice276409276410%_
                                 (gx#syntax-split-splice->vector
                                  _%tl234659235470%_
                                  '0)))
                            (let ((_%tl234770235095%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice276409276410%_
                                      '1)))
                                  (_%target234768235092%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice276409276410%_
                                      '0))))
                              (if (gx#stx-null? _%tl234770235095%_)
                                  (_%__match276667276668%_
                                   _%e234654235453%_
                                   _%hd234655235457%_
                                   _%tl234656235460%_
                                   _%e234657235463%_
                                   _%hd234658235467%_
                                   _%tl234659235470%_
                                   _%e234660235473%_
                                   _%hd234661235477%_
                                   _%tl234662235480%_
                                   _%e234663235483%_
                                   _%hd234664235487%_
                                   _%tl234665235490%_
                                   _%e234666235493%_
                                   _%hd234667235497%_
                                   _%tl234668235500%_
                                   _%e234669235503%_
                                   _%hd234670235507%_
                                   _%tl234671235510%_
                                   _%e234672235513%_
                                   _%hd234673235517%_
                                   _%tl234674235520%_
                                   _%__splice276409276410%_
                                   _%target234768235092%_
                                   _%tl234770235095%_)
                                  (if (gx#stx-pair? _%hd234661235477%_)
                                      (let ((_%e234790234942%_
                                             (gx#syntax-e _%hd234661235477%_)))
                                        (let ((_%tl234792234949%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e234790234942%_)))
                                              (_%hd234791234946%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e234790234942%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g234614234823%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g234614234823%_))))))
                          (if (gx#stx-pair? _%hd234661235477%_)
                              (let ((_%e234790234942%_
                                     (gx#syntax-e _%hd234661235477%_)))
                                (let ((_%tl234792234949%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e234790234942%_)))
                                      (_%hd234791234946%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e234790234942%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g234614234823%_))))
                              (let ()
                                (declare (not safe))
                                (_%g234614234823%_))))
                      (if (gx#stx-pair? _%hd234661235477%_)
                          (let ((_%e234790234942%_
                                 (gx#syntax-e _%hd234661235477%_)))
                            (let ((_%tl234792234949%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e234790234942%_)))
                                  (_%hd234791234946%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e234790234942%_))))
                              (if (gx#stx-pair/null? _%tl234659235470%_)
                                  (let ((_%__splice276413276414%_
                                         (gx#syntax-split-splice->vector
                                          _%tl234659235470%_
                                          '0)))
                                    (let ((_%tl234795234955%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice276413276414%_
                                              '1)))
                                          (_%target234793234952%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice276413276414%_
                                              '0))))
                                      (if (gx#stx-null? _%tl234795234955%_)
                                          (_%__match276699276700%_
                                           _%e234654235453%_
                                           _%hd234655235457%_
                                           _%tl234656235460%_
                                           _%e234657235463%_
                                           _%hd234658235467%_
                                           _%tl234659235470%_
                                           _%e234660235473%_
                                           _%hd234661235477%_
                                           _%tl234662235480%_
                                           _%e234790234942%_
                                           _%hd234791234946%_
                                           _%tl234792234949%_
                                           _%__splice276413276414%_
                                           _%target234793234952%_
                                           _%tl234795234955%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g234614234823%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g234614234823%_)))))
                          (let () (declare (not safe)) (_%g234614234823%_))))
                  (if (gx#stx-pair? _%hd234661235477%_)
                      (let ((_%e234790234942%_
                             (gx#syntax-e _%hd234661235477%_)))
                        (let ((_%tl234792234949%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e234790234942%_)))
                              (_%hd234791234946%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e234790234942%_))))
                          (if (gx#stx-pair/null? _%tl234659235470%_)
                              (let ((_%__splice276413276414%_
                                     (gx#syntax-split-splice->vector
                                      _%tl234659235470%_
                                      '0)))
                                (let ((_%tl234795234955%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice276413276414%_
                                          '1)))
                                      (_%target234793234952%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice276413276414%_
                                          '0))))
                                  (if (gx#stx-null? _%tl234795234955%_)
                                      (_%__match276699276700%_
                                       _%e234654235453%_
                                       _%hd234655235457%_
                                       _%tl234656235460%_
                                       _%e234657235463%_
                                       _%hd234658235467%_
                                       _%tl234659235470%_
                                       _%e234660235473%_
                                       _%hd234661235477%_
                                       _%tl234662235480%_
                                       _%e234790234942%_
                                       _%hd234791234946%_
                                       _%tl234792234949%_
                                       _%__splice276413276414%_
                                       _%target234793234952%_
                                       _%tl234795234955%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g234614234823%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g234614234823%_)))))
                      (let () (declare (not safe)) (_%g234614234823%_))))
              (if (gx#stx-pair? _%hd234661235477%_)
                  (let ((_%e234790234942%_ (gx#syntax-e _%hd234661235477%_)))
                    (let ((_%tl234792234949%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e234790234942%_)))
                          (_%hd234791234946%_
                           (let ()
                             (declare (not safe))
                             (##car _%e234790234942%_))))
                      (if (gx#stx-pair/null? _%tl234659235470%_)
                          (let ((_%__splice276413276414%_
                                 (gx#syntax-split-splice->vector
                                  _%tl234659235470%_
                                  '0)))
                            (let ((_%tl234795234955%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice276413276414%_
                                      '1)))
                                  (_%target234793234952%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice276413276414%_
                                      '0))))
                              (if (gx#stx-null? _%tl234795234955%_)
                                  (_%__match276699276700%_
                                   _%e234654235453%_
                                   _%hd234655235457%_
                                   _%tl234656235460%_
                                   _%e234657235463%_
                                   _%hd234658235467%_
                                   _%tl234659235470%_
                                   _%e234660235473%_
                                   _%hd234661235477%_
                                   _%tl234662235480%_
                                   _%e234790234942%_
                                   _%hd234791234946%_
                                   _%tl234792234949%_
                                   _%__splice276413276414%_
                                   _%target234793234952%_
                                   _%tl234795234955%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g234614234823%_)))))
                          (let () (declare (not safe)) (_%g234614234823%_)))))
                  (let () (declare (not safe)) (_%g234614234823%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd234661235477%_)
                                              (let ((_%e234790234942%_
                                                     (gx#syntax-e
                                                      _%hd234661235477%_)))
                                                (let ((_%tl234792234949%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e234790234942%_)))
                                                      (_%hd234791234946%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e234790234942%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl234659235470%_)
                                                      (let ((_%__splice276413276414%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl234659235470%_
                                                              '0)))
                                                        (let ((_%tl234795234955%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice276413276414%_ '1)))
                      (_%target234793234952%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice276413276414%_ '0))))
                  (if (gx#stx-null? _%tl234795234955%_)
                      (_%__match276699276700%_
                       _%e234654235453%_
                       _%hd234655235457%_
                       _%tl234656235460%_
                       _%e234657235463%_
                       _%hd234658235467%_
                       _%tl234659235470%_
                       _%e234660235473%_
                       _%hd234661235477%_
                       _%tl234662235480%_
                       _%e234790234942%_
                       _%hd234791234946%_
                       _%tl234792234949%_
                       _%__splice276413276414%_
                       _%target234793234952%_
                       _%tl234795234955%_)
                      (let () (declare (not safe)) (_%g234614234823%_)))))
              (let () (declare (not safe)) (_%g234614234823%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g234614234823%_))))))
                                  (if (gx#stx-null? _%tl234668235500%_)
                                      (if (gx#stx-pair/null?
                                           _%tl234659235470%_)
                                          (let ((_%__splice276401276402%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl234659235470%_
                                                  '0)))
                                            (let ((_%tl234708235355%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice276401276402%_
                                                      '1)))
                                                  (_%target234706235352%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice276401276402%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl234708235355%_)
                                                  (_%__match276567276568%_
                                                   _%e234654235453%_
                                                   _%hd234655235457%_
                                                   _%tl234656235460%_
                                                   _%e234657235463%_
                                                   _%hd234658235467%_
                                                   _%tl234659235470%_
                                                   _%e234660235473%_
                                                   _%hd234661235477%_
                                                   _%tl234662235480%_
                                                   _%e234663235483%_
                                                   _%hd234664235487%_
                                                   _%tl234665235490%_
                                                   _%e234666235493%_
                                                   _%hd234667235497%_
                                                   _%tl234668235500%_
                                                   _%__splice276401276402%_
                                                   _%target234706235352%_
                                                   _%tl234708235355%_)
                                                  (if (gx#stx-pair?
                                                       _%hd234661235477%_)
                                                      (let ((_%e234790234942%_
                                                             (gx#syntax-e
                                                              _%hd234661235477%_)))
                                                        (let ((_%tl234792234949%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e234790234942%_)))
                      (_%hd234791234946%_
                       (let ()
                         (declare (not safe))
                         (##car _%e234790234942%_))))
                  (let () (declare (not safe)) (_%g234614234823%_))))
              (let () (declare (not safe)) (_%g234614234823%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd234661235477%_)
                                              (let ((_%e234790234942%_
                                                     (gx#syntax-e
                                                      _%hd234661235477%_)))
                                                (let ((_%tl234792234949%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e234790234942%_)))
                                                      (_%hd234791234946%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e234790234942%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g234614234823%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g234614234823%_))))
                                      (if (gx#stx-pair? _%hd234661235477%_)
                                          (let ((_%e234790234942%_
                                                 (gx#syntax-e
                                                  _%hd234661235477%_)))
                                            (let ((_%tl234792234949%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e234790234942%_)))
                                                  (_%hd234791234946%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e234790234942%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl234659235470%_)
                                                  (let ((_%__splice276413276414%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl234659235470%_
                                                          '0)))
                                                    (let ((_%tl234795234955%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice276413276414%_
                                                              '1)))
                                                          (_%target234793234952%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice276413276414%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl234795234955%_)
                                                          (_%__match276699276700%_
                                                           _%e234654235453%_
                                                           _%hd234655235457%_
                                                           _%tl234656235460%_
                                                           _%e234657235463%_
                                                           _%hd234658235467%_
                                                           _%tl234659235470%_
                                                           _%e234660235473%_
                                                           _%hd234661235477%_
                                                           _%tl234662235480%_
                                                           _%e234790234942%_
                                                           _%hd234791234946%_
                                                           _%tl234792234949%_
                                                           _%__splice276413276414%_
                                                           _%target234793234952%_
                                                           _%tl234795234955%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g234614234823%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g234614234823%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g234614234823%_)))))
                              (if (gx#stx-null? _%tl234668235500%_)
                                  (if (gx#stx-pair/null? _%tl234659235470%_)
                                      (let ((_%__splice276401276402%_
                                             (gx#syntax-split-splice->vector
                                              _%tl234659235470%_
                                              '0)))
                                        (let ((_%tl234708235355%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice276401276402%_
                                                  '1)))
                                              (_%target234706235352%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice276401276402%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl234708235355%_)
                                              (_%__match276567276568%_
                                               _%e234654235453%_
                                               _%hd234655235457%_
                                               _%tl234656235460%_
                                               _%e234657235463%_
                                               _%hd234658235467%_
                                               _%tl234659235470%_
                                               _%e234660235473%_
                                               _%hd234661235477%_
                                               _%tl234662235480%_
                                               _%e234663235483%_
                                               _%hd234664235487%_
                                               _%tl234665235490%_
                                               _%e234666235493%_
                                               _%hd234667235497%_
                                               _%tl234668235500%_
                                               _%__splice276401276402%_
                                               _%target234706235352%_
                                               _%tl234708235355%_)
                                              (if (gx#stx-pair?
                                                   _%hd234661235477%_)
                                                  (let ((_%e234790234942%_
                                                         (gx#syntax-e
                                                          _%hd234661235477%_)))
                                                    (let ((_%tl234792234949%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e234790234942%_)))
                                                          (_%hd234791234946%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e234790234942%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g234614234823%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g234614234823%_))))))
                                      (if (gx#stx-pair? _%hd234661235477%_)
                                          (let ((_%e234790234942%_
                                                 (gx#syntax-e
                                                  _%hd234661235477%_)))
                                            (let ((_%tl234792234949%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e234790234942%_)))
                                                  (_%hd234791234946%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e234790234942%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g234614234823%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g234614234823%_))))
                                  (if (gx#identifier? _%hd234664235487%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g283050_|
                                           _%hd234664235487%_)
                                          (if (gx#stx-pair? _%tl234668235500%_)
                                              (let ((_%e234762235072%_
                                                     (gx#syntax-e
                                                      _%tl234668235500%_)))
                                                (let ((_%tl234764235079%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e234762235072%_)))
                                                      (_%hd234763235076%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e234762235072%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl234764235079%_)
                                                      (let ((_%e234765235082%_
                                                             (gx#syntax-e
                                                              _%tl234764235079%_)))
                                                        (let ((_%tl234767235089%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e234765235082%_)))
                      (_%hd234766235086%_
                       (let ()
                         (declare (not safe))
                         (##car _%e234765235082%_))))
                  (if (gx#stx-null? _%tl234767235089%_)
                      (if (gx#stx-pair/null? _%tl234659235470%_)
                          (let ((_%__splice276409276410%_
                                 (gx#syntax-split-splice->vector
                                  _%tl234659235470%_
                                  '0)))
                            (let ((_%tl234770235095%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice276409276410%_
                                      '1)))
                                  (_%target234768235092%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice276409276410%_
                                      '0))))
                              (if (gx#stx-null? _%tl234770235095%_)
                                  (_%__match276667276668%_
                                   _%e234654235453%_
                                   _%hd234655235457%_
                                   _%tl234656235460%_
                                   _%e234657235463%_
                                   _%hd234658235467%_
                                   _%tl234659235470%_
                                   _%e234660235473%_
                                   _%hd234661235477%_
                                   _%tl234662235480%_
                                   _%e234663235483%_
                                   _%hd234664235487%_
                                   _%tl234665235490%_
                                   _%e234666235493%_
                                   _%hd234667235497%_
                                   _%tl234668235500%_
                                   _%e234762235072%_
                                   _%hd234763235076%_
                                   _%tl234764235079%_
                                   _%e234765235082%_
                                   _%hd234766235086%_
                                   _%tl234767235089%_
                                   _%__splice276409276410%_
                                   _%target234768235092%_
                                   _%tl234770235095%_)
                                  (if (gx#stx-pair? _%hd234661235477%_)
                                      (let ((_%e234790234942%_
                                             (gx#syntax-e _%hd234661235477%_)))
                                        (let ((_%tl234792234949%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e234790234942%_)))
                                              (_%hd234791234946%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e234790234942%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g234614234823%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g234614234823%_))))))
                          (if (gx#stx-pair? _%hd234661235477%_)
                              (let ((_%e234790234942%_
                                     (gx#syntax-e _%hd234661235477%_)))
                                (let ((_%tl234792234949%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e234790234942%_)))
                                      (_%hd234791234946%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e234790234942%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g234614234823%_))))
                              (let ()
                                (declare (not safe))
                                (_%g234614234823%_))))
                      (if (gx#stx-pair? _%hd234661235477%_)
                          (let ((_%e234790234942%_
                                 (gx#syntax-e _%hd234661235477%_)))
                            (let ((_%tl234792234949%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e234790234942%_)))
                                  (_%hd234791234946%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e234790234942%_))))
                              (if (gx#stx-pair/null? _%tl234659235470%_)
                                  (let ((_%__splice276413276414%_
                                         (gx#syntax-split-splice->vector
                                          _%tl234659235470%_
                                          '0)))
                                    (let ((_%tl234795234955%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice276413276414%_
                                              '1)))
                                          (_%target234793234952%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice276413276414%_
                                              '0))))
                                      (if (gx#stx-null? _%tl234795234955%_)
                                          (_%__match276699276700%_
                                           _%e234654235453%_
                                           _%hd234655235457%_
                                           _%tl234656235460%_
                                           _%e234657235463%_
                                           _%hd234658235467%_
                                           _%tl234659235470%_
                                           _%e234660235473%_
                                           _%hd234661235477%_
                                           _%tl234662235480%_
                                           _%e234790234942%_
                                           _%hd234791234946%_
                                           _%tl234792234949%_
                                           _%__splice276413276414%_
                                           _%target234793234952%_
                                           _%tl234795234955%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g234614234823%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g234614234823%_)))))
                          (let () (declare (not safe)) (_%g234614234823%_))))))
              (if (gx#stx-pair? _%hd234661235477%_)
                  (let ((_%e234790234942%_ (gx#syntax-e _%hd234661235477%_)))
                    (let ((_%tl234792234949%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e234790234942%_)))
                          (_%hd234791234946%_
                           (let ()
                             (declare (not safe))
                             (##car _%e234790234942%_))))
                      (if (gx#stx-pair/null? _%tl234659235470%_)
                          (let ((_%__splice276413276414%_
                                 (gx#syntax-split-splice->vector
                                  _%tl234659235470%_
                                  '0)))
                            (let ((_%tl234795234955%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice276413276414%_
                                      '1)))
                                  (_%target234793234952%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice276413276414%_
                                      '0))))
                              (if (gx#stx-null? _%tl234795234955%_)
                                  (_%__match276699276700%_
                                   _%e234654235453%_
                                   _%hd234655235457%_
                                   _%tl234656235460%_
                                   _%e234657235463%_
                                   _%hd234658235467%_
                                   _%tl234659235470%_
                                   _%e234660235473%_
                                   _%hd234661235477%_
                                   _%tl234662235480%_
                                   _%e234790234942%_
                                   _%hd234791234946%_
                                   _%tl234792234949%_
                                   _%__splice276413276414%_
                                   _%target234793234952%_
                                   _%tl234795234955%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g234614234823%_)))))
                          (let () (declare (not safe)) (_%g234614234823%_)))))
                  (let () (declare (not safe)) (_%g234614234823%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd234661235477%_)
                                                  (let ((_%e234790234942%_
                                                         (gx#syntax-e
                                                          _%hd234661235477%_)))
                                                    (let ((_%tl234792234949%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e234790234942%_)))
                                                          (_%hd234791234946%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e234790234942%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl234659235470%_)
                                                          (let ((_%__splice276413276414%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector
                          _%tl234659235470%_
                          '0)))
                    (let ((_%tl234795234955%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice276413276414%_ '1)))
                          (_%target234793234952%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice276413276414%_ '0))))
                      (if (gx#stx-null? _%tl234795234955%_)
                          (_%__match276699276700%_
                           _%e234654235453%_
                           _%hd234655235457%_
                           _%tl234656235460%_
                           _%e234657235463%_
                           _%hd234658235467%_
                           _%tl234659235470%_
                           _%e234660235473%_
                           _%hd234661235477%_
                           _%tl234662235480%_
                           _%e234790234942%_
                           _%hd234791234946%_
                           _%tl234792234949%_
                           _%__splice276413276414%_
                           _%target234793234952%_
                           _%tl234795234955%_)
                          (let () (declare (not safe)) (_%g234614234823%_)))))
                  (let () (declare (not safe)) (_%g234614234823%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g234614234823%_))))
                                          (if (gx#stx-pair? _%hd234661235477%_)
                                              (let ((_%e234790234942%_
                                                     (gx#syntax-e
                                                      _%hd234661235477%_)))
                                                (let ((_%tl234792234949%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e234790234942%_)))
                                                      (_%hd234791234946%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e234790234942%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl234659235470%_)
                                                      (let ((_%__splice276413276414%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl234659235470%_
                                                              '0)))
                                                        (let ((_%tl234795234955%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice276413276414%_ '1)))
                      (_%target234793234952%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice276413276414%_ '0))))
                  (if (gx#stx-null? _%tl234795234955%_)
                      (_%__match276699276700%_
                       _%e234654235453%_
                       _%hd234655235457%_
                       _%tl234656235460%_
                       _%e234657235463%_
                       _%hd234658235467%_
                       _%tl234659235470%_
                       _%e234660235473%_
                       _%hd234661235477%_
                       _%tl234662235480%_
                       _%e234790234942%_
                       _%hd234791234946%_
                       _%tl234792234949%_
                       _%__splice276413276414%_
                       _%target234793234952%_
                       _%tl234795234955%_)
                      (let () (declare (not safe)) (_%g234614234823%_)))))
              (let () (declare (not safe)) (_%g234614234823%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g234614234823%_))))
                                      (if (gx#stx-pair? _%hd234661235477%_)
                                          (let ((_%e234790234942%_
                                                 (gx#syntax-e
                                                  _%hd234661235477%_)))
                                            (let ((_%tl234792234949%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e234790234942%_)))
                                                  (_%hd234791234946%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e234790234942%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl234659235470%_)
                                                  (let ((_%__splice276413276414%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl234659235470%_
                                                          '0)))
                                                    (let ((_%tl234795234955%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice276413276414%_
                                                              '1)))
                                                          (_%target234793234952%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice276413276414%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl234795234955%_)
                                                          (_%__match276699276700%_
                                                           _%e234654235453%_
                                                           _%hd234655235457%_
                                                           _%tl234656235460%_
                                                           _%e234657235463%_
                                                           _%hd234658235467%_
                                                           _%tl234659235470%_
                                                           _%e234660235473%_
                                                           _%hd234661235477%_
                                                           _%tl234662235480%_
                                                           _%e234790234942%_
                                                           _%hd234791234946%_
                                                           _%tl234792234949%_
                                                           _%__splice276413276414%_
                                                           _%target234793234952%_
                                                           _%tl234795234955%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g234614234823%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g234614234823%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g234614234823%_))))))
                          (if (gx#stx-null? _%tl234668235500%_)
                              (if (gx#stx-pair/null? _%tl234659235470%_)
                                  (let ((_%__splice276401276402%_
                                         (gx#syntax-split-splice->vector
                                          _%tl234659235470%_
                                          '0)))
                                    (let ((_%tl234708235355%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice276401276402%_
                                              '1)))
                                          (_%target234706235352%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice276401276402%_
                                              '0))))
                                      (if (gx#stx-null? _%tl234708235355%_)
                                          (_%__match276567276568%_
                                           _%e234654235453%_
                                           _%hd234655235457%_
                                           _%tl234656235460%_
                                           _%e234657235463%_
                                           _%hd234658235467%_
                                           _%tl234659235470%_
                                           _%e234660235473%_
                                           _%hd234661235477%_
                                           _%tl234662235480%_
                                           _%e234663235483%_
                                           _%hd234664235487%_
                                           _%tl234665235490%_
                                           _%e234666235493%_
                                           _%hd234667235497%_
                                           _%tl234668235500%_
                                           _%__splice276401276402%_
                                           _%target234706235352%_
                                           _%tl234708235355%_)
                                          (if (gx#stx-pair? _%hd234661235477%_)
                                              (let ((_%e234790234942%_
                                                     (gx#syntax-e
                                                      _%hd234661235477%_)))
                                                (let ((_%tl234792234949%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e234790234942%_)))
                                                      (_%hd234791234946%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e234790234942%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g234614234823%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g234614234823%_))))))
                                  (if (gx#stx-pair? _%hd234661235477%_)
                                      (let ((_%e234790234942%_
                                             (gx#syntax-e _%hd234661235477%_)))
                                        (let ((_%tl234792234949%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e234790234942%_)))
                                              (_%hd234791234946%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e234790234942%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g234614234823%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g234614234823%_))))
                              (if (gx#identifier? _%hd234664235487%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g283050_|
                                       _%hd234664235487%_)
                                      (if (gx#stx-pair? _%tl234668235500%_)
                                          (let ((_%e234762235072%_
                                                 (gx#syntax-e
                                                  _%tl234668235500%_)))
                                            (let ((_%tl234764235079%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e234762235072%_)))
                                                  (_%hd234763235076%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e234762235072%_))))
                                              (if (gx#stx-pair?
                                                   _%tl234764235079%_)
                                                  (let ((_%e234765235082%_
                                                         (gx#syntax-e
                                                          _%tl234764235079%_)))
                                                    (let ((_%tl234767235089%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e234765235082%_)))
                                                          (_%hd234766235086%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e234765235082%_))))
                                                      (if (gx#stx-null?
                                                           _%tl234767235089%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl234659235470%_)
                                                              (let ((_%__splice276409276410%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl234659235470%_
                              '0)))
                        (let ((_%tl234770235095%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice276409276410%_ '1)))
                              (_%target234768235092%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice276409276410%_ '0))))
                          (if (gx#stx-null? _%tl234770235095%_)
                              (_%__match276667276668%_
                               _%e234654235453%_
                               _%hd234655235457%_
                               _%tl234656235460%_
                               _%e234657235463%_
                               _%hd234658235467%_
                               _%tl234659235470%_
                               _%e234660235473%_
                               _%hd234661235477%_
                               _%tl234662235480%_
                               _%e234663235483%_
                               _%hd234664235487%_
                               _%tl234665235490%_
                               _%e234666235493%_
                               _%hd234667235497%_
                               _%tl234668235500%_
                               _%e234762235072%_
                               _%hd234763235076%_
                               _%tl234764235079%_
                               _%e234765235082%_
                               _%hd234766235086%_
                               _%tl234767235089%_
                               _%__splice276409276410%_
                               _%target234768235092%_
                               _%tl234770235095%_)
                              (if (gx#stx-pair? _%hd234661235477%_)
                                  (let ((_%e234790234942%_
                                         (gx#syntax-e _%hd234661235477%_)))
                                    (let ((_%tl234792234949%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e234790234942%_)))
                                          (_%hd234791234946%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e234790234942%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g234614234823%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g234614234823%_))))))
                      (if (gx#stx-pair? _%hd234661235477%_)
                          (let ((_%e234790234942%_
                                 (gx#syntax-e _%hd234661235477%_)))
                            (let ((_%tl234792234949%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e234790234942%_)))
                                  (_%hd234791234946%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e234790234942%_))))
                              (let ()
                                (declare (not safe))
                                (_%g234614234823%_))))
                          (let () (declare (not safe)) (_%g234614234823%_))))
                  (if (gx#stx-pair? _%hd234661235477%_)
                      (let ((_%e234790234942%_
                             (gx#syntax-e _%hd234661235477%_)))
                        (let ((_%tl234792234949%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e234790234942%_)))
                              (_%hd234791234946%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e234790234942%_))))
                          (if (gx#stx-pair/null? _%tl234659235470%_)
                              (let ((_%__splice276413276414%_
                                     (gx#syntax-split-splice->vector
                                      _%tl234659235470%_
                                      '0)))
                                (let ((_%tl234795234955%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice276413276414%_
                                          '1)))
                                      (_%target234793234952%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice276413276414%_
                                          '0))))
                                  (if (gx#stx-null? _%tl234795234955%_)
                                      (_%__match276699276700%_
                                       _%e234654235453%_
                                       _%hd234655235457%_
                                       _%tl234656235460%_
                                       _%e234657235463%_
                                       _%hd234658235467%_
                                       _%tl234659235470%_
                                       _%e234660235473%_
                                       _%hd234661235477%_
                                       _%tl234662235480%_
                                       _%e234790234942%_
                                       _%hd234791234946%_
                                       _%tl234792234949%_
                                       _%__splice276413276414%_
                                       _%target234793234952%_
                                       _%tl234795234955%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g234614234823%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g234614234823%_)))))
                      (let () (declare (not safe)) (_%g234614234823%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd234661235477%_)
                                                      (let ((_%e234790234942%_
                                                             (gx#syntax-e
                                                              _%hd234661235477%_)))
                                                        (let ((_%tl234792234949%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e234790234942%_)))
                      (_%hd234791234946%_
                       (let ()
                         (declare (not safe))
                         (##car _%e234790234942%_))))
                  (if (gx#stx-pair/null? _%tl234659235470%_)
                      (let ((_%__splice276413276414%_
                             (gx#syntax-split-splice->vector
                              _%tl234659235470%_
                              '0)))
                        (let ((_%tl234795234955%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice276413276414%_ '1)))
                              (_%target234793234952%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice276413276414%_ '0))))
                          (if (gx#stx-null? _%tl234795234955%_)
                              (_%__match276699276700%_
                               _%e234654235453%_
                               _%hd234655235457%_
                               _%tl234656235460%_
                               _%e234657235463%_
                               _%hd234658235467%_
                               _%tl234659235470%_
                               _%e234660235473%_
                               _%hd234661235477%_
                               _%tl234662235480%_
                               _%e234790234942%_
                               _%hd234791234946%_
                               _%tl234792234949%_
                               _%__splice276413276414%_
                               _%target234793234952%_
                               _%tl234795234955%_)
                              (let ()
                                (declare (not safe))
                                (_%g234614234823%_)))))
                      (let () (declare (not safe)) (_%g234614234823%_)))))
              (let () (declare (not safe)) (_%g234614234823%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd234661235477%_)
                                              (let ((_%e234790234942%_
                                                     (gx#syntax-e
                                                      _%hd234661235477%_)))
                                                (let ((_%tl234792234949%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e234790234942%_)))
                                                      (_%hd234791234946%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e234790234942%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl234659235470%_)
                                                      (let ((_%__splice276413276414%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl234659235470%_
                                                              '0)))
                                                        (let ((_%tl234795234955%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice276413276414%_ '1)))
                      (_%target234793234952%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice276413276414%_ '0))))
                  (if (gx#stx-null? _%tl234795234955%_)
                      (_%__match276699276700%_
                       _%e234654235453%_
                       _%hd234655235457%_
                       _%tl234656235460%_
                       _%e234657235463%_
                       _%hd234658235467%_
                       _%tl234659235470%_
                       _%e234660235473%_
                       _%hd234661235477%_
                       _%tl234662235480%_
                       _%e234790234942%_
                       _%hd234791234946%_
                       _%tl234792234949%_
                       _%__splice276413276414%_
                       _%target234793234952%_
                       _%tl234795234955%_)
                      (let () (declare (not safe)) (_%g234614234823%_)))))
              (let () (declare (not safe)) (_%g234614234823%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g234614234823%_))))
                                      (if (gx#stx-pair? _%hd234661235477%_)
                                          (let ((_%e234790234942%_
                                                 (gx#syntax-e
                                                  _%hd234661235477%_)))
                                            (let ((_%tl234792234949%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e234790234942%_)))
                                                  (_%hd234791234946%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e234790234942%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl234659235470%_)
                                                  (let ((_%__splice276413276414%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl234659235470%_
                                                          '0)))
                                                    (let ((_%tl234795234955%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice276413276414%_
                                                              '1)))
                                                          (_%target234793234952%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice276413276414%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl234795234955%_)
                                                          (_%__match276699276700%_
                                                           _%e234654235453%_
                                                           _%hd234655235457%_
                                                           _%tl234656235460%_
                                                           _%e234657235463%_
                                                           _%hd234658235467%_
                                                           _%tl234659235470%_
                                                           _%e234660235473%_
                                                           _%hd234661235477%_
                                                           _%tl234662235480%_
                                                           _%e234790234942%_
                                                           _%hd234791234946%_
                                                           _%tl234792234949%_
                                                           _%__splice276413276414%_
                                                           _%target234793234952%_
                                                           _%tl234795234955%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g234614234823%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g234614234823%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g234614234823%_))))
                                  (if (gx#stx-pair? _%hd234661235477%_)
                                      (let ((_%e234790234942%_
                                             (gx#syntax-e _%hd234661235477%_)))
                                        (let ((_%tl234792234949%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e234790234942%_)))
                                              (_%hd234791234946%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e234790234942%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl234659235470%_)
                                              (let ((_%__splice276413276414%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl234659235470%_
                                                      '0)))
                                                (let ((_%tl234795234955%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice276413276414%_
                                                          '1)))
                                                      (_%target234793234952%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice276413276414%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl234795234955%_)
                                                      (_%__match276699276700%_
                                                       _%e234654235453%_
                                                       _%hd234655235457%_
                                                       _%tl234656235460%_
                                                       _%e234657235463%_
                                                       _%hd234658235467%_
                                                       _%tl234659235470%_
                                                       _%e234660235473%_
                                                       _%hd234661235477%_
                                                       _%tl234662235480%_
                                                       _%e234790234942%_
                                                       _%hd234791234946%_
                                                       _%tl234792234949%_
                                                       _%__splice276413276414%_
                                                       _%target234793234952%_
                                                       _%tl234795234955%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g234614234823%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g234614234823%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g234614234823%_))))))))
                   (_%__match276465276466%_
                    (lambda (_%e234621235627%_
                             _%hd234622235631%_
                             _%tl234623235634%_
                             _%e234624235637%_
                             _%hd234625235641%_
                             _%tl234626235644%_
                             _%e234627235647%_
                             _%hd234628235651%_
                             _%tl234629235654%_
                             _%e234630235657%_
                             _%hd234631235661%_
                             _%tl234632235664%_
                             _%e234633235667%_
                             _%hd234634235671%_
                             _%tl234635235674%_
                             _%e234636235677%_
                             _%hd234637235681%_
                             _%tl234638235684%_
                             _%__splice276393276394%_
                             _%target234639235687%_
                             _%tl234641235690%_)
                      (letrec ((_%loop234642235693%_
                                (lambda (_%hd234640235697%_
                                         _%body234646235700%_)
                                  (if (gx#stx-pair? _%hd234640235697%_)
                                      (let ((_%e234643235702%_
                                             (gx#syntax-e _%hd234640235697%_)))
                                        (let ((_%lp-tl234645235709%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e234643235702%_)))
                                              (_%lp-hd234644235706%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e234643235702%_))))
                                          (_%loop234642235693%_
                                           _%lp-tl234645235709%_
                                           (cons _%lp-hd234644235706%_
                                                 _%body234646235700%_))))
                                      (let ((_%body234647235712%_
                                             (reverse _%body234646235700%_)))
                                        (let ((_%g234616235715%_
                                               _%body234647235712%_)
                                              (_%g234617235717%_
                                               _%hd234637235681%_)
                                              (_%g234618235718%_
                                               _%hd234634235671%_)
                                              (_%g234619235719%_
                                               _%hd234631235661%_)
                                              (_%g234620235720%_
                                               _%hd234628235651%_))
                                          (if (and (gx#identifier?
                                                    _%g234620235720%_)
                                                   (gx#identifier?
                                                    _%g234618235718%_)
                                                   (or (gx#free-identifier=?
                                                        _%g234618235718%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g234618235718%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g234618235718%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g234618235718%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':~))
                                                       (gx#free-identifier=?
                                                        _%g234618235718%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont276391276392%_
                                               _%g234616235715%_
                                               _%g234617235717%_
                                               _%g234618235718%_
                                               _%g234619235719%_
                                               _%g234620235720%_)
                                              (_%__match276495276496%_
                                               _%e234621235627%_
                                               _%hd234622235631%_
                                               _%tl234623235634%_
                                               _%e234624235637%_
                                               _%hd234625235641%_
                                               _%tl234626235644%_
                                               _%e234627235647%_
                                               _%hd234628235651%_
                                               _%tl234629235654%_
                                               _%e234630235657%_
                                               _%hd234631235661%_
                                               _%tl234632235664%_
                                               _%e234633235667%_
                                               _%hd234634235671%_
                                               _%tl234635235674%_))))))))
                        (_%loop234642235693%_ _%target234639235687%_ '())))))
              (if (gx#stx-pair? _%__stx276388276389%_)
                  (let ((_%e234621235627%_
                         (gx#syntax-e _%__stx276388276389%_)))
                    (let ((_%tl234623235634%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e234621235627%_)))
                          (_%hd234622235631%_
                           (let ()
                             (declare (not safe))
                             (##car _%e234621235627%_))))
                      (if (gx#stx-pair? _%tl234623235634%_)
                          (let ((_%e234624235637%_
                                 (gx#syntax-e _%tl234623235634%_)))
                            (let ((_%tl234626235644%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e234624235637%_)))
                                  (_%hd234625235641%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e234624235637%_))))
                              (if (gx#stx-pair? _%hd234625235641%_)
                                  (let ((_%e234627235647%_
                                         (gx#syntax-e _%hd234625235641%_)))
                                    (let ((_%tl234629235654%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e234627235647%_)))
                                          (_%hd234628235651%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e234627235647%_))))
                                      (if (gx#stx-pair? _%tl234629235654%_)
                                          (let ((_%e234630235657%_
                                                 (gx#syntax-e
                                                  _%tl234629235654%_)))
                                            (let ((_%tl234632235664%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e234630235657%_)))
                                                  (_%hd234631235661%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e234630235657%_))))
                                              (if (gx#stx-pair?
                                                   _%tl234632235664%_)
                                                  (let ((_%e234633235667%_
                                                         (gx#syntax-e
                                                          _%tl234632235664%_)))
                                                    (let ((_%tl234635235674%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e234633235667%_)))
                                                          (_%hd234634235671%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e234633235667%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl234635235674%_)
                                                          (let ((_%e234636235677%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl234635235674%_)))
                    (let ((_%tl234638235684%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e234636235677%_)))
                          (_%hd234637235681%_
                           (let ()
                             (declare (not safe))
                             (##car _%e234636235677%_))))
                      (if (gx#stx-null? _%tl234638235684%_)
                          (if (gx#stx-pair/null? _%tl234626235644%_)
                              (let ((_%__splice276393276394%_
                                     (gx#syntax-split-splice->vector
                                      _%tl234626235644%_
                                      '0)))
                                (let ((_%tl234641235690%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice276393276394%_
                                          '1)))
                                      (_%target234639235687%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice276393276394%_
                                          '0))))
                                  (if (gx#stx-null? _%tl234641235690%_)
                                      (_%__match276465276466%_
                                       _%e234621235627%_
                                       _%hd234622235631%_
                                       _%tl234623235634%_
                                       _%e234624235637%_
                                       _%hd234625235641%_
                                       _%tl234626235644%_
                                       _%e234627235647%_
                                       _%hd234628235651%_
                                       _%tl234629235654%_
                                       _%e234630235657%_
                                       _%hd234631235661%_
                                       _%tl234632235664%_
                                       _%e234633235667%_
                                       _%hd234634235671%_
                                       _%tl234635235674%_
                                       _%e234636235677%_
                                       _%hd234637235681%_
                                       _%tl234638235684%_
                                       _%__splice276393276394%_
                                       _%target234639235687%_
                                       _%tl234641235690%_)
                                      (if (gx#stx-pair? _%hd234628235651%_)
                                          (let ((_%e234790234942%_
                                                 (gx#syntax-e
                                                  _%hd234628235651%_)))
                                            (let ((_%tl234792234949%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e234790234942%_)))
                                                  (_%hd234791234946%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e234790234942%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g234614234823%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g234614234823%_))))))
                              (if (gx#stx-pair? _%hd234628235651%_)
                                  (let ((_%e234790234942%_
                                         (gx#syntax-e _%hd234628235651%_)))
                                    (let ((_%tl234792234949%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e234790234942%_)))
                                          (_%hd234791234946%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e234790234942%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g234614234823%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g234614234823%_))))
                          (if (gx#identifier? _%hd234634235671%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/contract~Using[1]#_g283051_|
                                   _%hd234634235671%_)
                                  (if (gx#stx-pair? _%tl234638235684%_)
                                      (let ((_%e234672235513%_
                                             (gx#syntax-e _%tl234638235684%_)))
                                        (let ((_%tl234674235520%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e234672235513%_)))
                                              (_%hd234673235517%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e234672235513%_))))
                                          (if (gx#stx-pair? _%tl234674235520%_)
                                              (let ((_%e234675235523%_
                                                     (gx#syntax-e
                                                      _%tl234674235520%_)))
                                                (let ((_%tl234677235530%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e234675235523%_)))
                                                      (_%hd234676235527%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e234675235523%_))))
                                                  (if (gx#stx-null?
                                                       _%tl234677235530%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl234626235644%_)
                                                          (let ((_%__splice276397276398%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector
                          _%tl234626235644%_
                          '0)))
                    (let ((_%tl234680235536%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice276397276398%_ '1)))
                          (_%target234678235533%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice276397276398%_ '0))))
                      (if (gx#stx-null? _%tl234680235536%_)
                          (_%__match276527276528%_
                           _%e234621235627%_
                           _%hd234622235631%_
                           _%tl234623235634%_
                           _%e234624235637%_
                           _%hd234625235641%_
                           _%tl234626235644%_
                           _%e234627235647%_
                           _%hd234628235651%_
                           _%tl234629235654%_
                           _%e234630235657%_
                           _%hd234631235661%_
                           _%tl234632235664%_
                           _%e234633235667%_
                           _%hd234634235671%_
                           _%tl234635235674%_
                           _%e234636235677%_
                           _%hd234637235681%_
                           _%tl234638235684%_
                           _%e234672235513%_
                           _%hd234673235517%_
                           _%tl234674235520%_
                           _%e234675235523%_
                           _%hd234676235527%_
                           _%tl234677235530%_
                           _%__splice276397276398%_
                           _%target234678235533%_
                           _%tl234680235536%_)
                          (if (gx#stx-pair? _%hd234628235651%_)
                              (let ((_%e234790234942%_
                                     (gx#syntax-e _%hd234628235651%_)))
                                (let ((_%tl234792234949%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e234790234942%_)))
                                      (_%hd234791234946%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e234790234942%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g234614234823%_))))
                              (let ()
                                (declare (not safe))
                                (_%g234614234823%_))))))
                  (if (gx#stx-pair? _%hd234628235651%_)
                      (let ((_%e234790234942%_
                             (gx#syntax-e _%hd234628235651%_)))
                        (let ((_%tl234792234949%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e234790234942%_)))
                              (_%hd234791234946%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e234790234942%_))))
                          (let () (declare (not safe)) (_%g234614234823%_))))
                      (let () (declare (not safe)) (_%g234614234823%_))))
              (if (gx#stx-pair? _%hd234628235651%_)
                  (let ((_%e234790234942%_ (gx#syntax-e _%hd234628235651%_)))
                    (let ((_%tl234792234949%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e234790234942%_)))
                          (_%hd234791234946%_
                           (let ()
                             (declare (not safe))
                             (##car _%e234790234942%_))))
                      (if (gx#stx-pair/null? _%tl234626235644%_)
                          (let ((_%__splice276413276414%_
                                 (gx#syntax-split-splice->vector
                                  _%tl234626235644%_
                                  '0)))
                            (let ((_%tl234795234955%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice276413276414%_
                                      '1)))
                                  (_%target234793234952%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice276413276414%_
                                      '0))))
                              (if (gx#stx-null? _%tl234795234955%_)
                                  (_%__match276699276700%_
                                   _%e234621235627%_
                                   _%hd234622235631%_
                                   _%tl234623235634%_
                                   _%e234624235637%_
                                   _%hd234625235641%_
                                   _%tl234626235644%_
                                   _%e234627235647%_
                                   _%hd234628235651%_
                                   _%tl234629235654%_
                                   _%e234790234942%_
                                   _%hd234791234946%_
                                   _%tl234792234949%_
                                   _%__splice276413276414%_
                                   _%target234793234952%_
                                   _%tl234795234955%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g234614234823%_)))))
                          (let () (declare (not safe)) (_%g234614234823%_)))))
                  (let () (declare (not safe)) (_%g234614234823%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#identifier?
                                                   _%hd234631235661%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~Using[1]#_g283050_|
                                                       _%hd234631235661%_)
                                                      (if (gx#stx-null?
                                                           _%tl234674235520%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl234626235644%_)
                                                              (let ((_%__splice276409276410%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl234626235644%_
                              '0)))
                        (let ((_%tl234770235095%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice276409276410%_ '1)))
                              (_%target234768235092%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice276409276410%_ '0))))
                          (if (gx#stx-null? _%tl234770235095%_)
                              (_%__match276667276668%_
                               _%e234621235627%_
                               _%hd234622235631%_
                               _%tl234623235634%_
                               _%e234624235637%_
                               _%hd234625235641%_
                               _%tl234626235644%_
                               _%e234627235647%_
                               _%hd234628235651%_
                               _%tl234629235654%_
                               _%e234630235657%_
                               _%hd234631235661%_
                               _%tl234632235664%_
                               _%e234633235667%_
                               _%hd234634235671%_
                               _%tl234635235674%_
                               _%e234636235677%_
                               _%hd234637235681%_
                               _%tl234638235684%_
                               _%e234672235513%_
                               _%hd234673235517%_
                               _%tl234674235520%_
                               _%__splice276409276410%_
                               _%target234768235092%_
                               _%tl234770235095%_)
                              (if (gx#stx-pair? _%hd234628235651%_)
                                  (let ((_%e234790234942%_
                                         (gx#syntax-e _%hd234628235651%_)))
                                    (let ((_%tl234792234949%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e234790234942%_)))
                                          (_%hd234791234946%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e234790234942%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g234614234823%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g234614234823%_))))))
                      (if (gx#stx-pair? _%hd234628235651%_)
                          (let ((_%e234790234942%_
                                 (gx#syntax-e _%hd234628235651%_)))
                            (let ((_%tl234792234949%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e234790234942%_)))
                                  (_%hd234791234946%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e234790234942%_))))
                              (let ()
                                (declare (not safe))
                                (_%g234614234823%_))))
                          (let () (declare (not safe)) (_%g234614234823%_))))
                  (if (gx#stx-pair? _%hd234628235651%_)
                      (let ((_%e234790234942%_
                             (gx#syntax-e _%hd234628235651%_)))
                        (let ((_%tl234792234949%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e234790234942%_)))
                              (_%hd234791234946%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e234790234942%_))))
                          (if (gx#stx-pair/null? _%tl234626235644%_)
                              (let ((_%__splice276413276414%_
                                     (gx#syntax-split-splice->vector
                                      _%tl234626235644%_
                                      '0)))
                                (let ((_%tl234795234955%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice276413276414%_
                                          '1)))
                                      (_%target234793234952%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice276413276414%_
                                          '0))))
                                  (if (gx#stx-null? _%tl234795234955%_)
                                      (_%__match276699276700%_
                                       _%e234621235627%_
                                       _%hd234622235631%_
                                       _%tl234623235634%_
                                       _%e234624235637%_
                                       _%hd234625235641%_
                                       _%tl234626235644%_
                                       _%e234627235647%_
                                       _%hd234628235651%_
                                       _%tl234629235654%_
                                       _%e234790234942%_
                                       _%hd234791234946%_
                                       _%tl234792234949%_
                                       _%__splice276413276414%_
                                       _%target234793234952%_
                                       _%tl234795234955%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g234614234823%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g234614234823%_)))))
                      (let () (declare (not safe)) (_%g234614234823%_))))
              (if (gx#stx-pair? _%hd234628235651%_)
                  (let ((_%e234790234942%_ (gx#syntax-e _%hd234628235651%_)))
                    (let ((_%tl234792234949%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e234790234942%_)))
                          (_%hd234791234946%_
                           (let ()
                             (declare (not safe))
                             (##car _%e234790234942%_))))
                      (if (gx#stx-pair/null? _%tl234626235644%_)
                          (let ((_%__splice276413276414%_
                                 (gx#syntax-split-splice->vector
                                  _%tl234626235644%_
                                  '0)))
                            (let ((_%tl234795234955%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice276413276414%_
                                      '1)))
                                  (_%target234793234952%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice276413276414%_
                                      '0))))
                              (if (gx#stx-null? _%tl234795234955%_)
                                  (_%__match276699276700%_
                                   _%e234621235627%_
                                   _%hd234622235631%_
                                   _%tl234623235634%_
                                   _%e234624235637%_
                                   _%hd234625235641%_
                                   _%tl234626235644%_
                                   _%e234627235647%_
                                   _%hd234628235651%_
                                   _%tl234629235654%_
                                   _%e234790234942%_
                                   _%hd234791234946%_
                                   _%tl234792234949%_
                                   _%__splice276413276414%_
                                   _%target234793234952%_
                                   _%tl234795234955%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g234614234823%_)))))
                          (let () (declare (not safe)) (_%g234614234823%_)))))
                  (let () (declare (not safe)) (_%g234614234823%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd234628235651%_)
                                                      (let ((_%e234790234942%_
                                                             (gx#syntax-e
                                                              _%hd234628235651%_)))
                                                        (let ((_%tl234792234949%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e234790234942%_)))
                      (_%hd234791234946%_
                       (let ()
                         (declare (not safe))
                         (##car _%e234790234942%_))))
                  (if (gx#stx-pair/null? _%tl234626235644%_)
                      (let ((_%__splice276413276414%_
                             (gx#syntax-split-splice->vector
                              _%tl234626235644%_
                              '0)))
                        (let ((_%tl234795234955%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice276413276414%_ '1)))
                              (_%target234793234952%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice276413276414%_ '0))))
                          (if (gx#stx-null? _%tl234795234955%_)
                              (_%__match276699276700%_
                               _%e234621235627%_
                               _%hd234622235631%_
                               _%tl234623235634%_
                               _%e234624235637%_
                               _%hd234625235641%_
                               _%tl234626235644%_
                               _%e234627235647%_
                               _%hd234628235651%_
                               _%tl234629235654%_
                               _%e234790234942%_
                               _%hd234791234946%_
                               _%tl234792234949%_
                               _%__splice276413276414%_
                               _%target234793234952%_
                               _%tl234795234955%_)
                              (let ()
                                (declare (not safe))
                                (_%g234614234823%_)))))
                      (let () (declare (not safe)) (_%g234614234823%_)))))
              (let () (declare (not safe)) (_%g234614234823%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _%hd234628235651%_)
                                          (let ((_%e234790234942%_
                                                 (gx#syntax-e
                                                  _%hd234628235651%_)))
                                            (let ((_%tl234792234949%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e234790234942%_)))
                                                  (_%hd234791234946%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e234790234942%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl234626235644%_)
                                                  (let ((_%__splice276413276414%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl234626235644%_
                                                          '0)))
                                                    (let ((_%tl234795234955%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice276413276414%_
                                                              '1)))
                                                          (_%target234793234952%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice276413276414%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl234795234955%_)
                                                          (_%__match276699276700%_
                                                           _%e234621235627%_
                                                           _%hd234622235631%_
                                                           _%tl234623235634%_
                                                           _%e234624235637%_
                                                           _%hd234625235641%_
                                                           _%tl234626235644%_
                                                           _%e234627235647%_
                                                           _%hd234628235651%_
                                                           _%tl234629235654%_
                                                           _%e234790234942%_
                                                           _%hd234791234946%_
                                                           _%tl234792234949%_
                                                           _%__splice276413276414%_
                                                           _%target234793234952%_
                                                           _%tl234795234955%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g234614234823%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g234614234823%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g234614234823%_))))
                                  (if (gx#identifier? _%hd234631235661%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g283050_|
                                           _%hd234631235661%_)
                                          (if (gx#stx-pair? _%tl234638235684%_)
                                              (let ((_%e234765235082%_
                                                     (gx#syntax-e
                                                      _%tl234638235684%_)))
                                                (let ((_%tl234767235089%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e234765235082%_)))
                                                      (_%hd234766235086%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e234765235082%_))))
                                                  (if (gx#stx-null?
                                                       _%tl234767235089%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl234626235644%_)
                                                          (let ((_%__splice276409276410%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector
                          _%tl234626235644%_
                          '0)))
                    (let ((_%tl234770235095%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice276409276410%_ '1)))
                          (_%target234768235092%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice276409276410%_ '0))))
                      (if (gx#stx-null? _%tl234770235095%_)
                          (_%__match276667276668%_
                           _%e234621235627%_
                           _%hd234622235631%_
                           _%tl234623235634%_
                           _%e234624235637%_
                           _%hd234625235641%_
                           _%tl234626235644%_
                           _%e234627235647%_
                           _%hd234628235651%_
                           _%tl234629235654%_
                           _%e234630235657%_
                           _%hd234631235661%_
                           _%tl234632235664%_
                           _%e234633235667%_
                           _%hd234634235671%_
                           _%tl234635235674%_
                           _%e234636235677%_
                           _%hd234637235681%_
                           _%tl234638235684%_
                           _%e234765235082%_
                           _%hd234766235086%_
                           _%tl234767235089%_
                           _%__splice276409276410%_
                           _%target234768235092%_
                           _%tl234770235095%_)
                          (if (gx#stx-pair? _%hd234628235651%_)
                              (let ((_%e234790234942%_
                                     (gx#syntax-e _%hd234628235651%_)))
                                (let ((_%tl234792234949%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e234790234942%_)))
                                      (_%hd234791234946%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e234790234942%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g234614234823%_))))
                              (let ()
                                (declare (not safe))
                                (_%g234614234823%_))))))
                  (if (gx#stx-pair? _%hd234628235651%_)
                      (let ((_%e234790234942%_
                             (gx#syntax-e _%hd234628235651%_)))
                        (let ((_%tl234792234949%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e234790234942%_)))
                              (_%hd234791234946%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e234790234942%_))))
                          (let () (declare (not safe)) (_%g234614234823%_))))
                      (let () (declare (not safe)) (_%g234614234823%_))))
              (if (gx#stx-pair? _%hd234628235651%_)
                  (let ((_%e234790234942%_ (gx#syntax-e _%hd234628235651%_)))
                    (let ((_%tl234792234949%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e234790234942%_)))
                          (_%hd234791234946%_
                           (let ()
                             (declare (not safe))
                             (##car _%e234790234942%_))))
                      (if (gx#stx-pair/null? _%tl234626235644%_)
                          (let ((_%__splice276413276414%_
                                 (gx#syntax-split-splice->vector
                                  _%tl234626235644%_
                                  '0)))
                            (let ((_%tl234795234955%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice276413276414%_
                                      '1)))
                                  (_%target234793234952%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice276413276414%_
                                      '0))))
                              (if (gx#stx-null? _%tl234795234955%_)
                                  (_%__match276699276700%_
                                   _%e234621235627%_
                                   _%hd234622235631%_
                                   _%tl234623235634%_
                                   _%e234624235637%_
                                   _%hd234625235641%_
                                   _%tl234626235644%_
                                   _%e234627235647%_
                                   _%hd234628235651%_
                                   _%tl234629235654%_
                                   _%e234790234942%_
                                   _%hd234791234946%_
                                   _%tl234792234949%_
                                   _%__splice276413276414%_
                                   _%target234793234952%_
                                   _%tl234795234955%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g234614234823%_)))))
                          (let () (declare (not safe)) (_%g234614234823%_)))))
                  (let () (declare (not safe)) (_%g234614234823%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd234628235651%_)
                                                  (let ((_%e234790234942%_
                                                         (gx#syntax-e
                                                          _%hd234628235651%_)))
                                                    (let ((_%tl234792234949%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e234790234942%_)))
                                                          (_%hd234791234946%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e234790234942%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl234626235644%_)
                                                          (let ((_%__splice276413276414%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector
                          _%tl234626235644%_
                          '0)))
                    (let ((_%tl234795234955%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice276413276414%_ '1)))
                          (_%target234793234952%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice276413276414%_ '0))))
                      (if (gx#stx-null? _%tl234795234955%_)
                          (_%__match276699276700%_
                           _%e234621235627%_
                           _%hd234622235631%_
                           _%tl234623235634%_
                           _%e234624235637%_
                           _%hd234625235641%_
                           _%tl234626235644%_
                           _%e234627235647%_
                           _%hd234628235651%_
                           _%tl234629235654%_
                           _%e234790234942%_
                           _%hd234791234946%_
                           _%tl234792234949%_
                           _%__splice276413276414%_
                           _%target234793234952%_
                           _%tl234795234955%_)
                          (let () (declare (not safe)) (_%g234614234823%_)))))
                  (let () (declare (not safe)) (_%g234614234823%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g234614234823%_))))
                                          (if (gx#stx-pair? _%hd234628235651%_)
                                              (let ((_%e234790234942%_
                                                     (gx#syntax-e
                                                      _%hd234628235651%_)))
                                                (let ((_%tl234792234949%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e234790234942%_)))
                                                      (_%hd234791234946%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e234790234942%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl234626235644%_)
                                                      (let ((_%__splice276413276414%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl234626235644%_
                                                              '0)))
                                                        (let ((_%tl234795234955%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice276413276414%_ '1)))
                      (_%target234793234952%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice276413276414%_ '0))))
                  (if (gx#stx-null? _%tl234795234955%_)
                      (_%__match276699276700%_
                       _%e234621235627%_
                       _%hd234622235631%_
                       _%tl234623235634%_
                       _%e234624235637%_
                       _%hd234625235641%_
                       _%tl234626235644%_
                       _%e234627235647%_
                       _%hd234628235651%_
                       _%tl234629235654%_
                       _%e234790234942%_
                       _%hd234791234946%_
                       _%tl234792234949%_
                       _%__splice276413276414%_
                       _%target234793234952%_
                       _%tl234795234955%_)
                      (let () (declare (not safe)) (_%g234614234823%_)))))
              (let () (declare (not safe)) (_%g234614234823%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g234614234823%_))))
                                      (if (gx#stx-pair? _%hd234628235651%_)
                                          (let ((_%e234790234942%_
                                                 (gx#syntax-e
                                                  _%hd234628235651%_)))
                                            (let ((_%tl234792234949%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e234790234942%_)))
                                                  (_%hd234791234946%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e234790234942%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl234626235644%_)
                                                  (let ((_%__splice276413276414%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl234626235644%_
                                                          '0)))
                                                    (let ((_%tl234795234955%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice276413276414%_
                                                              '1)))
                                                          (_%target234793234952%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice276413276414%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl234795234955%_)
                                                          (_%__match276699276700%_
                                                           _%e234621235627%_
                                                           _%hd234622235631%_
                                                           _%tl234623235634%_
                                                           _%e234624235637%_
                                                           _%hd234625235641%_
                                                           _%tl234626235644%_
                                                           _%e234627235647%_
                                                           _%hd234628235651%_
                                                           _%tl234629235654%_
                                                           _%e234790234942%_
                                                           _%hd234791234946%_
                                                           _%tl234792234949%_
                                                           _%__splice276413276414%_
                                                           _%target234793234952%_
                                                           _%tl234795234955%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g234614234823%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g234614234823%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g234614234823%_)))))
                              (if (gx#identifier? _%hd234631235661%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g283050_|
                                       _%hd234631235661%_)
                                      (if (gx#stx-pair? _%tl234638235684%_)
                                          (let ((_%e234765235082%_
                                                 (gx#syntax-e
                                                  _%tl234638235684%_)))
                                            (let ((_%tl234767235089%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e234765235082%_)))
                                                  (_%hd234766235086%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e234765235082%_))))
                                              (if (gx#stx-null?
                                                   _%tl234767235089%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl234626235644%_)
                                                      (let ((_%__splice276409276410%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl234626235644%_
                                                              '0)))
                                                        (let ((_%tl234770235095%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice276409276410%_ '1)))
                      (_%target234768235092%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice276409276410%_ '0))))
                  (if (gx#stx-null? _%tl234770235095%_)
                      (_%__match276667276668%_
                       _%e234621235627%_
                       _%hd234622235631%_
                       _%tl234623235634%_
                       _%e234624235637%_
                       _%hd234625235641%_
                       _%tl234626235644%_
                       _%e234627235647%_
                       _%hd234628235651%_
                       _%tl234629235654%_
                       _%e234630235657%_
                       _%hd234631235661%_
                       _%tl234632235664%_
                       _%e234633235667%_
                       _%hd234634235671%_
                       _%tl234635235674%_
                       _%e234636235677%_
                       _%hd234637235681%_
                       _%tl234638235684%_
                       _%e234765235082%_
                       _%hd234766235086%_
                       _%tl234767235089%_
                       _%__splice276409276410%_
                       _%target234768235092%_
                       _%tl234770235095%_)
                      (if (gx#stx-pair? _%hd234628235651%_)
                          (let ((_%e234790234942%_
                                 (gx#syntax-e _%hd234628235651%_)))
                            (let ((_%tl234792234949%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e234790234942%_)))
                                  (_%hd234791234946%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e234790234942%_))))
                              (let ()
                                (declare (not safe))
                                (_%g234614234823%_))))
                          (let () (declare (not safe)) (_%g234614234823%_))))))
              (if (gx#stx-pair? _%hd234628235651%_)
                  (let ((_%e234790234942%_ (gx#syntax-e _%hd234628235651%_)))
                    (let ((_%tl234792234949%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e234790234942%_)))
                          (_%hd234791234946%_
                           (let ()
                             (declare (not safe))
                             (##car _%e234790234942%_))))
                      (let () (declare (not safe)) (_%g234614234823%_))))
                  (let () (declare (not safe)) (_%g234614234823%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd234628235651%_)
                                                      (let ((_%e234790234942%_
                                                             (gx#syntax-e
                                                              _%hd234628235651%_)))
                                                        (let ((_%tl234792234949%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e234790234942%_)))
                      (_%hd234791234946%_
                       (let ()
                         (declare (not safe))
                         (##car _%e234790234942%_))))
                  (if (gx#stx-pair/null? _%tl234626235644%_)
                      (let ((_%__splice276413276414%_
                             (gx#syntax-split-splice->vector
                              _%tl234626235644%_
                              '0)))
                        (let ((_%tl234795234955%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice276413276414%_ '1)))
                              (_%target234793234952%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice276413276414%_ '0))))
                          (if (gx#stx-null? _%tl234795234955%_)
                              (_%__match276699276700%_
                               _%e234621235627%_
                               _%hd234622235631%_
                               _%tl234623235634%_
                               _%e234624235637%_
                               _%hd234625235641%_
                               _%tl234626235644%_
                               _%e234627235647%_
                               _%hd234628235651%_
                               _%tl234629235654%_
                               _%e234790234942%_
                               _%hd234791234946%_
                               _%tl234792234949%_
                               _%__splice276413276414%_
                               _%target234793234952%_
                               _%tl234795234955%_)
                              (let ()
                                (declare (not safe))
                                (_%g234614234823%_)))))
                      (let () (declare (not safe)) (_%g234614234823%_)))))
              (let () (declare (not safe)) (_%g234614234823%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd234628235651%_)
                                              (let ((_%e234790234942%_
                                                     (gx#syntax-e
                                                      _%hd234628235651%_)))
                                                (let ((_%tl234792234949%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e234790234942%_)))
                                                      (_%hd234791234946%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e234790234942%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl234626235644%_)
                                                      (let ((_%__splice276413276414%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl234626235644%_
                                                              '0)))
                                                        (let ((_%tl234795234955%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice276413276414%_ '1)))
                      (_%target234793234952%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice276413276414%_ '0))))
                  (if (gx#stx-null? _%tl234795234955%_)
                      (_%__match276699276700%_
                       _%e234621235627%_
                       _%hd234622235631%_
                       _%tl234623235634%_
                       _%e234624235637%_
                       _%hd234625235641%_
                       _%tl234626235644%_
                       _%e234627235647%_
                       _%hd234628235651%_
                       _%tl234629235654%_
                       _%e234790234942%_
                       _%hd234791234946%_
                       _%tl234792234949%_
                       _%__splice276413276414%_
                       _%target234793234952%_
                       _%tl234795234955%_)
                      (let () (declare (not safe)) (_%g234614234823%_)))))
              (let () (declare (not safe)) (_%g234614234823%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g234614234823%_))))
                                      (if (gx#stx-pair? _%hd234628235651%_)
                                          (let ((_%e234790234942%_
                                                 (gx#syntax-e
                                                  _%hd234628235651%_)))
                                            (let ((_%tl234792234949%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e234790234942%_)))
                                                  (_%hd234791234946%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e234790234942%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl234626235644%_)
                                                  (let ((_%__splice276413276414%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl234626235644%_
                                                          '0)))
                                                    (let ((_%tl234795234955%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice276413276414%_
                                                              '1)))
                                                          (_%target234793234952%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice276413276414%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl234795234955%_)
                                                          (_%__match276699276700%_
                                                           _%e234621235627%_
                                                           _%hd234622235631%_
                                                           _%tl234623235634%_
                                                           _%e234624235637%_
                                                           _%hd234625235641%_
                                                           _%tl234626235644%_
                                                           _%e234627235647%_
                                                           _%hd234628235651%_
                                                           _%tl234629235654%_
                                                           _%e234790234942%_
                                                           _%hd234791234946%_
                                                           _%tl234792234949%_
                                                           _%__splice276413276414%_
                                                           _%target234793234952%_
                                                           _%tl234795234955%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g234614234823%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g234614234823%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g234614234823%_))))
                                  (if (gx#stx-pair? _%hd234628235651%_)
                                      (let ((_%e234790234942%_
                                             (gx#syntax-e _%hd234628235651%_)))
                                        (let ((_%tl234792234949%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e234790234942%_)))
                                              (_%hd234791234946%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e234790234942%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl234626235644%_)
                                              (let ((_%__splice276413276414%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl234626235644%_
                                                      '0)))
                                                (let ((_%tl234795234955%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice276413276414%_
                                                          '1)))
                                                      (_%target234793234952%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice276413276414%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl234795234955%_)
                                                      (_%__match276699276700%_
                                                       _%e234621235627%_
                                                       _%hd234622235631%_
                                                       _%tl234623235634%_
                                                       _%e234624235637%_
                                                       _%hd234625235641%_
                                                       _%tl234626235644%_
                                                       _%e234627235647%_
                                                       _%hd234628235651%_
                                                       _%tl234629235654%_
                                                       _%e234790234942%_
                                                       _%hd234791234946%_
                                                       _%tl234792234949%_
                                                       _%__splice276413276414%_
                                                       _%target234793234952%_
                                                       _%tl234795234955%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g234614234823%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g234614234823%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g234614234823%_))))))))
                  (if (gx#stx-null? _%tl234635235674%_)
                      (if (gx#stx-pair/null? _%tl234626235644%_)
                          (let ((_%__splice276401276402%_
                                 (gx#syntax-split-splice->vector
                                  _%tl234626235644%_
                                  '0)))
                            (let ((_%tl234708235355%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice276401276402%_
                                      '1)))
                                  (_%target234706235352%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice276401276402%_
                                      '0))))
                              (if (gx#stx-null? _%tl234708235355%_)
                                  (_%__match276567276568%_
                                   _%e234621235627%_
                                   _%hd234622235631%_
                                   _%tl234623235634%_
                                   _%e234624235637%_
                                   _%hd234625235641%_
                                   _%tl234626235644%_
                                   _%e234627235647%_
                                   _%hd234628235651%_
                                   _%tl234629235654%_
                                   _%e234630235657%_
                                   _%hd234631235661%_
                                   _%tl234632235664%_
                                   _%e234633235667%_
                                   _%hd234634235671%_
                                   _%tl234635235674%_
                                   _%__splice276401276402%_
                                   _%target234706235352%_
                                   _%tl234708235355%_)
                                  (if (gx#stx-pair? _%hd234628235651%_)
                                      (let ((_%e234790234942%_
                                             (gx#syntax-e _%hd234628235651%_)))
                                        (let ((_%tl234792234949%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e234790234942%_)))
                                              (_%hd234791234946%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e234790234942%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g234614234823%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g234614234823%_))))))
                          (if (gx#stx-pair? _%hd234628235651%_)
                              (let ((_%e234790234942%_
                                     (gx#syntax-e _%hd234628235651%_)))
                                (let ((_%tl234792234949%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e234790234942%_)))
                                      (_%hd234791234946%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e234790234942%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g234614234823%_))))
                              (let ()
                                (declare (not safe))
                                (_%g234614234823%_))))
                      (if (gx#stx-pair? _%hd234628235651%_)
                          (let ((_%e234790234942%_
                                 (gx#syntax-e _%hd234628235651%_)))
                            (let ((_%tl234792234949%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e234790234942%_)))
                                  (_%hd234791234946%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e234790234942%_))))
                              (if (gx#stx-pair/null? _%tl234626235644%_)
                                  (let ((_%__splice276413276414%_
                                         (gx#syntax-split-splice->vector
                                          _%tl234626235644%_
                                          '0)))
                                    (let ((_%tl234795234955%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice276413276414%_
                                              '1)))
                                          (_%target234793234952%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice276413276414%_
                                              '0))))
                                      (if (gx#stx-null? _%tl234795234955%_)
                                          (_%__match276699276700%_
                                           _%e234621235627%_
                                           _%hd234622235631%_
                                           _%tl234623235634%_
                                           _%e234624235637%_
                                           _%hd234625235641%_
                                           _%tl234626235644%_
                                           _%e234627235647%_
                                           _%hd234628235651%_
                                           _%tl234629235654%_
                                           _%e234790234942%_
                                           _%hd234791234946%_
                                           _%tl234792234949%_
                                           _%__splice276413276414%_
                                           _%target234793234952%_
                                           _%tl234795234955%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g234614234823%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g234614234823%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g234614234823%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd234628235651%_)
                                                      (let ((_%e234790234942%_
                                                             (gx#syntax-e
                                                              _%hd234628235651%_)))
                                                        (let ((_%tl234792234949%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e234790234942%_)))
                      (_%hd234791234946%_
                       (let ()
                         (declare (not safe))
                         (##car _%e234790234942%_))))
                  (if (gx#stx-pair/null? _%tl234626235644%_)
                      (let ((_%__splice276413276414%_
                             (gx#syntax-split-splice->vector
                              _%tl234626235644%_
                              '0)))
                        (let ((_%tl234795234955%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice276413276414%_ '1)))
                              (_%target234793234952%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice276413276414%_ '0))))
                          (if (gx#stx-null? _%tl234795234955%_)
                              (_%__match276699276700%_
                               _%e234621235627%_
                               _%hd234622235631%_
                               _%tl234623235634%_
                               _%e234624235637%_
                               _%hd234625235641%_
                               _%tl234626235644%_
                               _%e234627235647%_
                               _%hd234628235651%_
                               _%tl234629235654%_
                               _%e234790234942%_
                               _%hd234791234946%_
                               _%tl234792234949%_
                               _%__splice276413276414%_
                               _%target234793234952%_
                               _%tl234795234955%_)
                              (let ()
                                (declare (not safe))
                                (_%g234614234823%_)))))
                      (let () (declare (not safe)) (_%g234614234823%_)))))
              (let () (declare (not safe)) (_%g234614234823%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd234628235651%_)
                                              (let ((_%e234790234942%_
                                                     (gx#syntax-e
                                                      _%hd234628235651%_)))
                                                (let ((_%tl234792234949%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e234790234942%_)))
                                                      (_%hd234791234946%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e234790234942%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl234626235644%_)
                                                      (let ((_%__splice276413276414%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl234626235644%_
                                                              '0)))
                                                        (let ((_%tl234795234955%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice276413276414%_ '1)))
                      (_%target234793234952%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice276413276414%_ '0))))
                  (if (gx#stx-null? _%tl234795234955%_)
                      (_%__match276699276700%_
                       _%e234621235627%_
                       _%hd234622235631%_
                       _%tl234623235634%_
                       _%e234624235637%_
                       _%hd234625235641%_
                       _%tl234626235644%_
                       _%e234627235647%_
                       _%hd234628235651%_
                       _%tl234629235654%_
                       _%e234790234942%_
                       _%hd234791234946%_
                       _%tl234792234949%_
                       _%__splice276413276414%_
                       _%target234793234952%_
                       _%tl234795234955%_)
                      (let () (declare (not safe)) (_%g234614234823%_)))))
              (let () (declare (not safe)) (_%g234614234823%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g234614234823%_))))))
                                  (if (gx#stx-null? _%hd234625235641%_)
                                      (if (gx#stx-pair/null?
                                           _%tl234626235644%_)
                                          (let ((_%__splice276417276418%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl234626235644%_
                                                  '0)))
                                            (let ((_%tl234811234853%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice276417276418%_
                                                      '1)))
                                                  (_%target234809234850%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice276417276418%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl234811234853%_)
                                                  (_%__match276721276722%_
                                                   _%e234621235627%_
                                                   _%hd234622235631%_
                                                   _%tl234623235634%_
                                                   _%e234624235637%_
                                                   _%hd234625235641%_
                                                   _%tl234626235644%_
                                                   _%__splice276417276418%_
                                                   _%target234809234850%_
                                                   _%tl234811234853%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g234614234823%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g234614234823%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g234614234823%_))))))
                          (let () (declare (not safe)) (_%g234614234823%_)))))
                  (let () (declare (not safe)) (_%g234614234823%_))))))))
    (define |gerbil/core/contract~Using[:0:]#with-contract|
      (lambda (_%$stx235783%_)
        (let* ((_%g235787235821%_
                (lambda (_%g235788235817%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g235788235817%_)))
               (_%g235786235942%_
                (lambda (_%g235788235825%_)
                  (if (gx#stx-pair? _%g235788235825%_)
                      (let ((_%e235792235828%_
                             (gx#syntax-e _%g235788235825%_)))
                        (let ((_%hd235793235832%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e235792235828%_)))
                              (_%tl235794235835%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e235792235828%_))))
                          (if (gx#stx-pair? _%tl235794235835%_)
                              (let ((_%e235795235838%_
                                     (gx#syntax-e _%tl235794235835%_)))
                                (let ((_%hd235796235842%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e235795235838%_)))
                                      (_%tl235797235845%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e235795235838%_))))
                                  (if (gx#stx-pair? _%hd235796235842%_)
                                      (let ((_%e235798235848%_
                                             (gx#syntax-e _%hd235796235842%_)))
                                        (let ((_%hd235799235852%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e235798235848%_)))
                                              (_%tl235800235855%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e235798235848%_))))
                                          (if (gx#stx-pair? _%tl235800235855%_)
                                              (let ((_%e235801235858%_
                                                     (gx#syntax-e
                                                      _%tl235800235855%_)))
                                                (let ((_%hd235802235862%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e235801235858%_)))
                                                      (_%tl235803235865%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e235801235858%_))))
                                                  (if (gx#identifier?
                                                       _%hd235802235862%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g283052_|
                                                           _%hd235802235862%_)
                                                          (if (gx#stx-pair?
                                                               _%tl235803235865%_)
                                                              (let ((_%e235804235868%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl235803235865%_)))
                        (let ((_%hd235805235872%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e235804235868%_)))
                              (_%tl235806235875%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e235804235868%_))))
                          (if (gx#stx-null? _%tl235806235875%_)
                              (if (gx#stx-pair/null? _%tl235797235845%_)
                                  (let ((_g283053_
                                         (gx#syntax-split-splice
                                          _%tl235797235845%_
                                          '0)))
                                    (begin
                                      (let ((_g283054_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g283053_)
                                                   (##values-length _g283053_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g283054_ 2)))
                                            (error "Context expects 2 values"
                                                   _g283054_)))
                                      (let ((_%target235807235878%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g283053_ 0)))
                                            (_%tl235809235881%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g283053_ 1))))
                                        (if (gx#stx-null? _%tl235809235881%_)
                                            (letrec ((_%loop235810235884%_
                                                      (lambda (_%hd235808235888%_
                                                               _%body235814235891%_)
                                                        (if (gx#stx-pair?
                                                             _%hd235808235888%_)
                                                            (let ((_%e235811235893%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd235808235888%_)))
                      (let ((_%lp-hd235812235897%_
                             (let ()
                               (declare (not safe))
                               (##car _%e235811235893%_)))
                            (_%lp-tl235813235900%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e235811235893%_))))
                        (_%loop235810235884%_
                         _%lp-tl235813235900%_
                         (cons _%lp-hd235812235897%_ _%body235814235891%_))))
                    (let ((_%body235815235903%_
                           (reverse _%body235814235891%_)))
                      ((lambda (_%g235789235906%_
                                _%g235790235908%_
                                _%g235791235909%_)
                         (if (gx#identifier? _%g235791235909%_)
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons _%g235790235908%_
                                               (cons _%g235791235909%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons '()
                                                           (foldr (lambda (_%g235933235936%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%g235934235939%_)
                            (cons _%g235933235936%_ _%g235934235939%_))
                          '()
                          _%g235789235906%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'contract-violation!)
                                                           (cons _%g235791235909%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g235790235908%_
                               (cons _%g235791235909%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (_%g235787235821%_ _%g235788235825%_)))
                       _%body235815235903%_
                       _%hd235805235872%_
                       _%hd235799235852%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop235810235884%_
                                               _%target235807235878%_
                                               '()))
                                            (_%g235787235821%_
                                             _%g235788235825%_)))))
                                  (_%g235787235821%_ _%g235788235825%_))
                              (_%g235787235821%_ _%g235788235825%_))))
                      (_%g235787235821%_ _%g235788235825%_))
                  (_%g235787235821%_ _%g235788235825%_))
              (_%g235787235821%_ _%g235788235825%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g235787235821%_
                                               _%g235788235825%_))))
                                      (_%g235787235821%_ _%g235788235825%_))))
                              (_%g235787235821%_ _%g235788235825%_))))
                      (_%g235787235821%_ _%g235788235825%_)))))
          (_%g235786235942%_ _%$stx235783%_))))
    (define |gerbil/core/contract~Using[1]#!class-slot-type|
      (lambda (_%klass236506%_ _%slot236508%_)
        (let ((_%$e236510%_
               (let ((__obj282856 _%klass236506%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj282856
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj282856 '19 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj282856
                      'slot-types)))))
          (if _%$e236510%_
              ((lambda (_%slot-types236514%_)
                 (agetq _%slot236508%_ _%slot-types236514%_))
               _%$e236510%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-default|
      (lambda (_%klass236487%_ _%slot236489%_)
        (let ((_%$e236491%_
               (let ((__obj282857 _%klass236487%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj282857
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj282857 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj282857
                      'slot-defaults)))))
          (if _%$e236491%_
              ((lambda (_%slot-defaults236495%_)
                 (let ((_%$e236498%_
                        (agetq _%slot236489%_ _%slot-defaults236495%_)))
                   (if _%$e236498%_
                       (gx#syntax-local-introduce _%$e236498%_)
                       '#f)))
               _%$e236491%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-contract|
      (lambda (_%klass236468%_ _%slot236470%_)
        (let ((_%$e236472%_
               (let ((__obj282858 _%klass236468%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj282858
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj282858 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj282858
                      'slot-defaults)))))
          (if _%$e236472%_
              ((lambda (_%slot-defaults236476%_)
                 (let ((_%$e236479%_
                        (agetq _%slot236470%_ _%slot-defaults236476%_)))
                   (if _%$e236479%_
                       (gx#syntax-local-introduce _%$e236479%_)
                       '#f)))
               _%$e236472%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
      (lambda (_%klass236237%_ _%slot236239%_)
        (let ((_%contract236240236242%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass236237%_
                _%slot236239%_)))
          (if _%contract236240236242%_
              (let* ((_%contract236245%_ _%contract236240236242%_)
                     (_%__stx276724276725%_ _%contract236245%_)
                     (_%g236250236287%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx276724276725%_))))
                (let ((_%__kont276727276728%_
                       (lambda (_%g236252236437%_ _%g236253236439%_)
                         (not (gx#free-identifier=?
                               _%g236253236439%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont276729276730%_
                       (lambda (_%g236260236377%_
                                _%g236261236379%_
                                _%g236262236380%_)
                         (not (gx#free-identifier=?
                               _%g236261236379%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont276731276732%_
                       (lambda (_%g236275236314%_) '#f)))
                  (let* ((_%__match276777276778%_
                          (lambda (_%e236263236337%_
                                   _%hd236264236341%_
                                   _%tl236265236344%_
                                   _%e236266236347%_
                                   _%hd236267236351%_
                                   _%tl236268236354%_
                                   _%e236269236357%_
                                   _%hd236270236361%_
                                   _%tl236271236364%_
                                   _%e236272236367%_
                                   _%hd236273236371%_
                                   _%tl236274236374%_)
                            (let ((_%g236260236377%_ _%hd236273236371%_)
                                  (_%g236261236379%_ _%hd236270236361%_)
                                  (_%g236262236380%_ _%hd236267236351%_))
                              (if (and (gx#identifier? _%g236261236379%_)
                                       (or (gx#free-identifier=?
                                            _%g236261236379%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g236261236379%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g236261236379%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g236261236379%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont276729276730%_
                                   _%g236260236377%_
                                   _%g236261236379%_
                                   _%g236262236380%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g236250236287%_))))))
                         (_%__match276747276748%_
                          (lambda (_%e236254236417%_
                                   _%hd236255236421%_
                                   _%tl236256236424%_
                                   _%e236257236427%_
                                   _%hd236258236431%_
                                   _%tl236259236434%_)
                            (let ((_%g236252236437%_ _%hd236258236431%_)
                                  (_%g236253236439%_ _%hd236255236421%_))
                              (if (and (gx#identifier? _%g236253236439%_)
                                       (or (gx#free-identifier=?
                                            _%g236253236439%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g236253236439%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g236253236439%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g236253236439%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont276727276728%_
                                   _%g236252236437%_
                                   _%g236253236439%_)
                                  (if (gx#identifier? _%hd236255236421%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g283055_|
                                           _%hd236255236421%_)
                                          (_%__kont276731276732%_
                                           _%hd236258236431%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g236250236287%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g236250236287%_))))))))
                    (if (gx#stx-pair? _%__stx276724276725%_)
                        (let ((_%e236254236417%_
                               (gx#syntax-e _%__stx276724276725%_)))
                          (let ((_%tl236256236424%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e236254236417%_)))
                                (_%hd236255236421%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e236254236417%_))))
                            (if (gx#stx-pair? _%tl236256236424%_)
                                (let ((_%e236257236427%_
                                       (gx#syntax-e _%tl236256236424%_)))
                                  (let ((_%tl236259236434%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e236257236427%_)))
                                        (_%hd236258236431%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e236257236427%_))))
                                    (if (gx#stx-null? _%tl236259236434%_)
                                        (_%__match276747276748%_
                                         _%e236254236417%_
                                         _%hd236255236421%_
                                         _%tl236256236424%_
                                         _%e236257236427%_
                                         _%hd236258236431%_
                                         _%tl236259236434%_)
                                        (if (gx#identifier? _%hd236255236421%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g283055_|
                                                 _%hd236255236421%_)
                                                (if (gx#stx-pair?
                                                     _%tl236259236434%_)
                                                    (let ((_%e236269236357%_
                                                           (gx#syntax-e
                                                            _%tl236259236434%_)))
                                                      (let ((_%tl236271236364%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e236269236357%_)))
                    (_%hd236270236361%_
                     (let () (declare (not safe)) (##car _%e236269236357%_))))
                (if (gx#stx-pair? _%tl236271236364%_)
                    (let ((_%e236272236367%_ (gx#syntax-e _%tl236271236364%_)))
                      (let ((_%tl236274236374%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e236272236367%_)))
                            (_%hd236273236371%_
                             (let ()
                               (declare (not safe))
                               (##car _%e236272236367%_))))
                        (if (gx#stx-null? _%tl236274236374%_)
                            (_%__match276777276778%_
                             _%e236254236417%_
                             _%hd236255236421%_
                             _%tl236256236424%_
                             _%e236257236427%_
                             _%hd236258236431%_
                             _%tl236259236434%_
                             _%e236269236357%_
                             _%hd236270236361%_
                             _%tl236271236364%_
                             _%e236272236367%_
                             _%hd236273236371%_
                             _%tl236274236374%_)
                            (let ()
                              (declare (not safe))
                              (_%g236250236287%_)))))
                    (let () (declare (not safe)) (_%g236250236287%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g236250236287%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g236250236287%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g236250236287%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g236250236287%_)))))
                        (let () (declare (not safe)) (_%g236250236287%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
      (lambda (_%klass236006%_ _%slot236008%_)
        (let ((_%contract236009236011%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass236006%_
                _%slot236008%_)))
          (if _%contract236009236011%_
              (let* ((_%contract236014%_ _%contract236009236011%_)
                     (_%__stx276798276799%_ _%contract236014%_)
                     (_%g236019236056%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx276798276799%_))))
                (let ((_%__kont276801276802%_
                       (lambda (_%g236021236206%_ _%g236022236208%_)
                         (not (gx#free-identifier=?
                               _%g236022236208%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont276803276804%_
                       (lambda (_%g236029236146%_
                                _%g236030236148%_
                                _%g236031236149%_)
                         '#t))
                      (_%__kont276805276806%_
                       (lambda (_%g236044236083%_) '#t)))
                  (let* ((_%__match276851276852%_
                          (lambda (_%e236032236106%_
                                   _%hd236033236110%_
                                   _%tl236034236113%_
                                   _%e236035236116%_
                                   _%hd236036236120%_
                                   _%tl236037236123%_
                                   _%e236038236126%_
                                   _%hd236039236130%_
                                   _%tl236040236133%_
                                   _%e236041236136%_
                                   _%hd236042236140%_
                                   _%tl236043236143%_)
                            (let ((_%g236029236146%_ _%hd236042236140%_)
                                  (_%g236030236148%_ _%hd236039236130%_)
                                  (_%g236031236149%_ _%hd236036236120%_))
                              (if (and (gx#identifier? _%g236030236148%_)
                                       (or (gx#free-identifier=?
                                            _%g236030236148%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g236030236148%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g236030236148%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g236030236148%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont276803276804%_
                                   _%g236029236146%_
                                   _%g236030236148%_
                                   _%g236031236149%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g236019236056%_))))))
                         (_%__match276821276822%_
                          (lambda (_%e236023236186%_
                                   _%hd236024236190%_
                                   _%tl236025236193%_
                                   _%e236026236196%_
                                   _%hd236027236200%_
                                   _%tl236028236203%_)
                            (let ((_%g236021236206%_ _%hd236027236200%_)
                                  (_%g236022236208%_ _%hd236024236190%_))
                              (if (and (gx#identifier? _%g236022236208%_)
                                       (or (gx#free-identifier=?
                                            _%g236022236208%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g236022236208%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g236022236208%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g236022236208%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont276801276802%_
                                   _%g236021236206%_
                                   _%g236022236208%_)
                                  (if (gx#identifier? _%hd236024236190%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g283056_|
                                           _%hd236024236190%_)
                                          (_%__kont276805276806%_
                                           _%hd236027236200%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g236019236056%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g236019236056%_))))))))
                    (if (gx#stx-pair? _%__stx276798276799%_)
                        (let ((_%e236023236186%_
                               (gx#syntax-e _%__stx276798276799%_)))
                          (let ((_%tl236025236193%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e236023236186%_)))
                                (_%hd236024236190%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e236023236186%_))))
                            (if (gx#stx-pair? _%tl236025236193%_)
                                (let ((_%e236026236196%_
                                       (gx#syntax-e _%tl236025236193%_)))
                                  (let ((_%tl236028236203%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e236026236196%_)))
                                        (_%hd236027236200%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e236026236196%_))))
                                    (if (gx#stx-null? _%tl236028236203%_)
                                        (_%__match276821276822%_
                                         _%e236023236186%_
                                         _%hd236024236190%_
                                         _%tl236025236193%_
                                         _%e236026236196%_
                                         _%hd236027236200%_
                                         _%tl236028236203%_)
                                        (if (gx#identifier? _%hd236024236190%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g283056_|
                                                 _%hd236024236190%_)
                                                (if (gx#stx-pair?
                                                     _%tl236028236203%_)
                                                    (let ((_%e236038236126%_
                                                           (gx#syntax-e
                                                            _%tl236028236203%_)))
                                                      (let ((_%tl236040236133%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e236038236126%_)))
                    (_%hd236039236130%_
                     (let () (declare (not safe)) (##car _%e236038236126%_))))
                (if (gx#stx-pair? _%tl236040236133%_)
                    (let ((_%e236041236136%_ (gx#syntax-e _%tl236040236133%_)))
                      (let ((_%tl236043236143%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e236041236136%_)))
                            (_%hd236042236140%_
                             (let ()
                               (declare (not safe))
                               (##car _%e236041236136%_))))
                        (if (gx#stx-null? _%tl236043236143%_)
                            (_%__match276851276852%_
                             _%e236023236186%_
                             _%hd236024236190%_
                             _%tl236025236193%_
                             _%e236026236196%_
                             _%hd236027236200%_
                             _%tl236028236203%_
                             _%e236038236126%_
                             _%hd236039236130%_
                             _%tl236040236133%_
                             _%e236041236136%_
                             _%hd236042236140%_
                             _%tl236043236143%_)
                            (let ()
                              (declare (not safe))
                              (_%g236019236056%_)))))
                    (let () (declare (not safe)) (_%g236019236056%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g236019236056%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g236019236056%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g236019236056%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g236019236056%_)))))
                        (let () (declare (not safe)) (_%g236019236056%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#dotted-identifier?|
      (lambda (_%id235993%_)
        (if (gx#identifier? _%id235993%_)
            (let* ((_%str235996%_ (symbol->string (gx#stx-e _%id235993%_)))
                   (_%index235998236000%_ (string-index _%str235996%_ '#\.)))
              (if _%index235998236000%_
                  (let ((_%index236003%_ _%index235998236000%_))
                    (if (let ()
                          (declare (not safe))
                          (##fx> _%index236003%_ '0))
                        (not (ormap string-empty?
                                    (string-split _%str235996%_ '#\.)))
                        '#f))
                  '#f))
            '#f)))
    (define |gerbil/core/contract~Using[1]#split-dotted-identifier|
      (lambda (_%stx235986%_ _%id235988%_)
        (let ((_%parts235990%_
               (string-split (symbol->string (gx#stx-e _%id235988%_)) '#\.)))
          (if (find string-empty? _%parts235990%_)
              (gx#raise-syntax-error
               '#f
               '"bad dotted identifier"
               _%stx235986%_
               _%id235988%_)
              (cons (gx#stx-identifier _%id235988%_ (car _%parts235990%_))
                    (map string->symbol (cdr _%parts235990%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-accessor|
      (lambda (_%stx235967%_ _%klass-or-id235969%_ _%slot235970%_)
        (let* ((_%klass235972%_
                (if (gx#identifier? _%klass-or-id235969%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx235967%_
                       _%klass-or-id235969%_))
                    _%klass-or-id235969%_))
               (_%accessors235975%_
                (let ((__obj282859 _%klass235972%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj282859
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj282859 '17 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj282859
                       'unchecked-accessors))))
               (_%$e235980%_ (agetq _%slot235970%_ _%accessors235975%_)))
          (if _%$e235980%_
              _%$e235980%_
              (gx#raise-syntax-error
               '#f
               '"no accessor for slot"
               _%stx235967%_
               _%klass235972%_
               _%slot235970%_)))))
    (define |gerbil/core/contract~Using[1]#get-slot-mutator|
      (lambda (_%stx235947%_
               _%klass-or-id235949%_
               _%slot235950%_
               _%checked?235951%_)
        (let* ((_%klass235953%_
                (if (gx#identifier? _%klass-or-id235949%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx235947%_
                       _%klass-or-id235949%_))
                    _%klass-or-id235949%_))
               (_%mutators235956%_
                (if _%checked?235951%_
                    (let ((__obj282860 _%klass235953%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj282860
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             __obj282860
                             '16
                             '#f
                             '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj282860
                           'mutators)))
                    (let ((__obj282861 _%klass235953%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj282861
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             __obj282861
                             '18
                             '#f
                             '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj282861
                           'unchecked-mutators)))))
               (_%$e235961%_ (agetq _%slot235950%_ _%mutators235956%_)))
          (if _%$e235961%_
              _%$e235961%_
              (gx#raise-syntax-error
               '#f
               '"no mutator for slot"
               _%stx235947%_
               _%klass235953%_
               _%slot235950%_)))))
    (define |gerbil/core/contract~Using[:0:]#with-class|
      (lambda (_%stx236519%_)
        (letrec ((_%expand-body236522%_
                  (lambda (_%klass237420%_
                           _%var237422%_
                           _%Type237423%_
                           _%body237424%_
                           _%checked?237425%_)
                    (let* ((_%g237427237471%_
                            (lambda (_%g237428237467%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g237428237467%_)))
                           (_%g237426237626%_
                            (lambda (_%g237428237475%_)
                              (if (gx#stx-pair? _%g237428237475%_)
                                  (let ((_%e237436237478%_
                                         (gx#syntax-e _%g237428237475%_)))
                                    (let ((_%hd237437237482%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e237436237478%_)))
                                          (_%tl237438237485%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e237436237478%_))))
                                      (if (gx#stx-pair? _%tl237438237485%_)
                                          (let ((_%e237439237488%_
                                                 (gx#syntax-e
                                                  _%tl237438237485%_)))
                                            (let ((_%hd237440237492%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e237439237488%_)))
                                                  (_%tl237441237495%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e237439237488%_))))
                                              (if (gx#stx-pair?
                                                   _%tl237441237495%_)
                                                  (let ((_%e237442237498%_
                                                         (gx#syntax-e
                                                          _%tl237441237495%_)))
                                                    (let ((_%hd237443237502%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e237442237498%_)))
                                                          (_%tl237444237505%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e237442237498%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl237444237505%_)
                                                          (let ((_%e237445237508%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl237444237505%_)))
                    (let ((_%hd237446237512%_
                           (let ()
                             (declare (not safe))
                             (##car _%e237445237508%_)))
                          (_%tl237447237515%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e237445237508%_))))
                      (if (gx#stx-pair? _%tl237447237515%_)
                          (let ((_%e237448237518%_
                                 (gx#syntax-e _%tl237447237515%_)))
                            (let ((_%hd237449237522%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e237448237518%_)))
                                  (_%tl237450237525%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e237448237518%_))))
                              (if (gx#stx-pair? _%tl237450237525%_)
                                  (let ((_%e237451237528%_
                                         (gx#syntax-e _%tl237450237525%_)))
                                    (let ((_%hd237452237532%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e237451237528%_)))
                                          (_%tl237453237535%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e237451237528%_))))
                                      (if (gx#stx-pair? _%tl237453237535%_)
                                          (let ((_%e237454237538%_
                                                 (gx#syntax-e
                                                  _%tl237453237535%_)))
                                            (let ((_%hd237455237542%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e237454237538%_)))
                                                  (_%tl237456237545%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e237454237538%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd237455237542%_)
                                                  (let ((_g283057_
                                                         (gx#syntax-split-splice
                                                          _%hd237455237542%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g283058_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g283057_)
                           (##values-length _g283057_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g283058_ 2)))
                    (error "Context expects 2 values" _g283058_)))
              (let ((_%target237457237548%_
                     (let () (declare (not safe)) (##values-ref _g283057_ 0)))
                    (_%tl237459237551%_
                     (let () (declare (not safe)) (##values-ref _g283057_ 1))))
                (if (gx#stx-null? _%tl237459237551%_)
                    (letrec ((_%loop237460237554%_
                              (lambda (_%hd237458237558%_ _%body237464237561%_)
                                (if (gx#stx-pair? _%hd237458237558%_)
                                    (let ((_%e237461237563%_
                                           (gx#syntax-e _%hd237458237558%_)))
                                      (let ((_%lp-hd237462237567%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e237461237563%_)))
                                            (_%lp-tl237463237570%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e237461237563%_))))
                                        (_%loop237460237554%_
                                         _%lp-tl237463237570%_
                                         (cons _%lp-hd237462237567%_
                                               _%body237464237561%_))))
                                    (let ((_%body237465237573%_
                                           (reverse _%body237464237561%_)))
                                      (if (gx#stx-null? _%tl237456237545%_)
                                          ((lambda (_%g237429237576%_
                                                    _%g237430237578%_
                                                    _%g237431237579%_
                                                    _%g237432237580%_
                                                    _%g237433237581%_
                                                    _%g237434237582%_
                                                    _%g237435237583%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%g237433237581%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%g237434237582%_ '()))
                                         (cons _%g237433237581%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%g237435237583%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%g237433237581%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%g237432237580%_ '()))
                               (cons _%g237431237579%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%g237430237578%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g237617237620%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g237618237623%_)
                      (cons _%g237617237620%_ _%g237618237623%_))
                    '()
                    _%g237429237576%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body237465237573%_
                                           _%hd237452237532%_
                                           _%hd237449237522%_
                                           _%hd237446237512%_
                                           _%hd237443237502%_
                                           _%hd237440237492%_
                                           _%hd237437237482%_)
                                          (_%g237427237471%_
                                           _%g237428237475%_)))))))
                      (_%loop237460237554%_ _%target237457237548%_ '()))
                    (_%g237427237471%_ _%g237428237475%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g237427237471%_
                                                   _%g237428237475%_))))
                                          (_%g237427237471%_
                                           _%g237428237475%_))))
                                  (_%g237427237471%_ _%g237428237475%_))))
                          (_%g237427237471%_ _%g237428237475%_))))
                  (_%g237427237471%_ _%g237428237475%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g237427237471%_
                                                   _%g237428237475%_))))
                                          (_%g237427237471%_
                                           _%g237428237475%_))))
                                  (_%g237427237471%_ _%g237428237475%_)))))
                      (_%g237426237626%_
                       (list (gx#syntax-local-introduce '@@type)
                             (let ((__obj282862 _%klass237420%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj282862
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj282862
                                      '3
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj282862
                                    'type-descriptor)))
                             _%var237422%_
                             _%klass237420%_
                             _%checked?237425%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body237424%_)))))
                 (_%expand236524%_
                  (lambda (_%var237312%_
                           _%Type237314%_
                           _%body237315%_
                           _%checked?237316%_
                           _%checked-mutators?237317%_
                           _%maybe?237318%_)
                    (let* ((_%klass237320%_
                            (gx#syntax-local-value _%Type237314%_ false))
                           (_%expr-body237327%_
                            (_%expand-body236522%_
                             _%klass237320%_
                             _%var237312%_
                             _%Type237314%_
                             _%body237315%_
                             (let ((_%$e237323%_ _%checked?237316%_))
                               (if _%$e237323%_
                                   _%$e237323%_
                                   _%checked-mutators?237317%_)))))
                      (if _%checked?237316%_
                          (let* ((_%g237332237351%_
                                  (lambda (_%g237333237347%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g237333237347%_)))
                                 (_%g237331237413%_
                                  (lambda (_%g237333237355%_)
                                    (if (gx#stx-pair? _%g237333237355%_)
                                        (let ((_%e237337237358%_
                                               (gx#syntax-e
                                                _%g237333237355%_)))
                                          (let ((_%hd237338237362%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e237337237358%_)))
                                                (_%tl237339237365%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e237337237358%_))))
                                            (if (gx#stx-pair?
                                                 _%tl237339237365%_)
                                                (let ((_%e237340237368%_
                                                       (gx#syntax-e
                                                        _%tl237339237365%_)))
                                                  (let ((_%hd237341237372%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e237340237368%_)))
                                                        (_%tl237342237375%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e237340237368%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl237342237375%_)
                                                        (let ((_%e237343237378%_
                                                               (gx#syntax-e
                                                                _%tl237342237375%_)))
                                                          (let ((_%hd237344237382%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%e237343237378%_)))
                        (_%tl237345237385%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e237343237378%_))))
                    (if (gx#stx-null? _%tl237345237385%_)
                        ((lambda (_%g237334237388%_
                                  _%g237335237390%_
                                  _%g237336237391%_)
                           (cons (gx#datum->syntax '#f 'with-contract)
                                 (cons (cons _%g237335237390%_
                                             (cons (gx#datum->syntax '#f ':~)
                                                   (cons _%g237336237391%_
                                                         '())))
                                       (cons _%g237334237388%_ '()))))
                         _%hd237344237382%_
                         _%hd237341237372%_
                         _%hd237338237362%_)
                        (_%g237332237351%_ _%g237333237355%_))))
                (_%g237332237351%_ _%g237333237355%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g237332237351%_
                                                 _%g237333237355%_))))
                                        (_%g237332237351%_
                                         _%g237333237355%_)))))
                            (_%g237331237413%_
                             (list (let ((_%instance?237417%_
                                          (let ((__obj282863 _%klass237320%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj282863
                                                   'gerbil.core#class-type-info::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj282863
                                                   '14
                                                   '#f
                                                   '#f))
                                                (class-slot-ref
                                                 gerbil/core/mop~MOP-2#class-type-info::t
                                                 __obj282863
                                                 'predicate)))))
                                     (if _%maybe?237318%_
                                         (cons '?
                                               (cons (cons 'or
                                                           (cons 'not
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%instance?237417%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         _%instance?237417%_))
                                   _%var237312%_
                                   _%expr-body237327%_)))
                          _%expr-body237327%_)))))
          (let* ((_%__stx276872276873%_ _%stx236519%_)
                 (_%g236530236673%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx276872276873%_))))
            (let ((_%__kont276875276876%_
                   (lambda (_%g236532237240%_
                            _%g236533237242%_
                            _%g236534237243%_
                            _%g236535237244%_)
                     (let* ((_%g237269237277%_
                             (lambda (_%g237270237273%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g237270237273%_)))
                            (_%g237268237304%_
                             (lambda (_%g237270237281%_)
                               ((lambda (_%g237271237284%_)
                                  (cons (gx#datum->syntax '#f 'with-class)
                                        (cons (cons _%g236535237244%_
                                                    (cons _%g236534237243%_
                                                          (cons _%g237271237284%_
                                                                '())))
                                              (foldr (lambda (_%g237295237298%_
                                                              _%g237296237301%_)
                                                       (cons _%g237295237298%_
                                                             _%g237296237301%_))
                                                     '()
                                                     _%g236532237240%_))))
                                _%g237270237281%_))))
                       (_%g237268237304%_
                        (let ((__obj282864
                               (gx#syntax-local-value _%g236533237242%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj282864
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj282864
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj282864
                               'identifier)))))))
                  (_%__kont276879276880%_
                   (lambda (_%g236560237120%_
                            _%g236561237122%_
                            _%g236562237123%_)
                     (_%expand236524%_
                      _%g236562237123%_
                      _%g236561237122%_
                      (foldr (lambda (_%g237146237149%_ _%g237147237152%_)
                               (cons _%g237146237149%_ _%g237147237152%_))
                             '()
                             _%g236560237120%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont276883276884%_
                   (lambda (_%g236587237000%_
                            _%g236588237002%_
                            _%g236589237003%_)
                     (_%expand236524%_
                      _%g236589237003%_
                      _%g236588237002%_
                      (foldr (lambda (_%g237026237029%_ _%g237027237032%_)
                               (cons _%g237026237029%_ _%g237027237032%_))
                             '()
                             _%g236587237000%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont276887276888%_
                   (lambda (_%g236614236880%_
                            _%g236615236882%_
                            _%g236616236883%_)
                     (_%expand236524%_
                      _%g236616236883%_
                      _%g236615236882%_
                      (foldr (lambda (_%g236906236909%_ _%g236907236912%_)
                               (cons _%g236906236909%_ _%g236907236912%_))
                             '()
                             _%g236614236880%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont276891276892%_
                   (lambda (_%g236641236758%_
                            _%g236642236760%_
                            _%g236643236761%_)
                     (_%expand236524%_
                      _%g236643236761%_
                      _%g236642236760%_
                      (foldr (lambda (_%g236786236789%_ _%g236787236792%_)
                               (cons _%g236786236789%_ _%g236787236792%_))
                             '()
                             _%g236641236758%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match277111277112%_
                      (lambda (_%e236644236680%_
                               _%hd236645236684%_
                               _%tl236646236687%_
                               _%e236647236690%_
                               _%hd236648236694%_
                               _%tl236649236697%_
                               _%e236650236700%_
                               _%hd236651236704%_
                               _%tl236652236707%_
                               _%e236653236710%_
                               _%hd236654236714%_
                               _%tl236655236717%_
                               _%e236656236720%_
                               _%hd236657236724%_
                               _%tl236658236727%_
                               _%__splice276893276894%_
                               _%target236659236730%_
                               _%tl236661236733%_)
                        (letrec ((_%loop236662236736%_
                                  (lambda (_%hd236660236740%_
                                           _%body236666236743%_)
                                    (if (gx#stx-pair? _%hd236660236740%_)
                                        (let ((_%e236663236745%_
                                               (gx#syntax-e
                                                _%hd236660236740%_)))
                                          (let ((_%lp-tl236665236752%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e236663236745%_)))
                                                (_%lp-hd236664236749%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e236663236745%_))))
                                            (_%loop236662236736%_
                                             _%lp-tl236665236752%_
                                             (cons _%lp-hd236664236749%_
                                                   _%body236666236743%_))))
                                        (let ((_%body236667236755%_
                                               (reverse _%body236666236743%_)))
                                          (let ((_%g236641236758%_
                                                 _%body236667236755%_)
                                                (_%g236642236760%_
                                                 _%hd236657236724%_)
                                                (_%g236643236761%_
                                                 _%hd236651236704%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g236642236760%_))
                                                (_%__kont276891276892%_
                                                 _%g236641236758%_
                                                 _%g236642236760%_
                                                 _%g236643236761%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g236530236673%_)))))))))
                          (_%loop236662236736%_ _%target236659236730%_ '()))))
                     (_%__match277067277068%_
                      (lambda (_%e236617236802%_
                               _%hd236618236806%_
                               _%tl236619236809%_
                               _%e236620236812%_
                               _%hd236621236816%_
                               _%tl236622236819%_
                               _%e236623236822%_
                               _%hd236624236826%_
                               _%tl236625236829%_
                               _%e236626236832%_
                               _%hd236627236836%_
                               _%tl236628236839%_
                               _%e236629236842%_
                               _%hd236630236846%_
                               _%tl236631236849%_
                               _%__splice276889276890%_
                               _%target236632236852%_
                               _%tl236634236855%_)
                        (letrec ((_%loop236635236858%_
                                  (lambda (_%hd236633236862%_
                                           _%body236639236865%_)
                                    (if (gx#stx-pair? _%hd236633236862%_)
                                        (let ((_%e236636236867%_
                                               (gx#syntax-e
                                                _%hd236633236862%_)))
                                          (let ((_%lp-tl236638236874%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e236636236867%_)))
                                                (_%lp-hd236637236871%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e236636236867%_))))
                                            (_%loop236635236858%_
                                             _%lp-tl236638236874%_
                                             (cons _%lp-hd236637236871%_
                                                   _%body236639236865%_))))
                                        (let ((_%body236640236877%_
                                               (reverse _%body236639236865%_)))
                                          (let ((_%g236614236880%_
                                                 _%body236640236877%_)
                                                (_%g236615236882%_
                                                 _%hd236630236846%_)
                                                (_%g236616236883%_
                                                 _%hd236624236826%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g236615236882%_))
                                                (_%__kont276887276888%_
                                                 _%g236614236880%_
                                                 _%g236615236882%_
                                                 _%g236616236883%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g236530236673%_)))))))))
                          (_%loop236635236858%_ _%target236632236852%_ '()))))
                     (_%__match277023277024%_
                      (lambda (_%e236590236922%_
                               _%hd236591236926%_
                               _%tl236592236929%_
                               _%e236593236932%_
                               _%hd236594236936%_
                               _%tl236595236939%_
                               _%e236596236942%_
                               _%hd236597236946%_
                               _%tl236598236949%_
                               _%e236599236952%_
                               _%hd236600236956%_
                               _%tl236601236959%_
                               _%e236602236962%_
                               _%hd236603236966%_
                               _%tl236604236969%_
                               _%__splice276885276886%_
                               _%target236605236972%_
                               _%tl236607236975%_)
                        (letrec ((_%loop236608236978%_
                                  (lambda (_%hd236606236982%_
                                           _%body236612236985%_)
                                    (if (gx#stx-pair? _%hd236606236982%_)
                                        (let ((_%e236609236987%_
                                               (gx#syntax-e
                                                _%hd236606236982%_)))
                                          (let ((_%lp-tl236611236994%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e236609236987%_)))
                                                (_%lp-hd236610236991%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e236609236987%_))))
                                            (_%loop236608236978%_
                                             _%lp-tl236611236994%_
                                             (cons _%lp-hd236610236991%_
                                                   _%body236612236985%_))))
                                        (let ((_%body236613236997%_
                                               (reverse _%body236612236985%_)))
                                          (let ((_%g236587237000%_
                                                 _%body236613236997%_)
                                                (_%g236588237002%_
                                                 _%hd236603236966%_)
                                                (_%g236589237003%_
                                                 _%hd236597236946%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g236588237002%_))
                                                (_%__kont276883276884%_
                                                 _%g236587237000%_
                                                 _%g236588237002%_
                                                 _%g236589237003%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g236530236673%_)))))))))
                          (_%loop236608236978%_ _%target236605236972%_ '()))))
                     (_%__match276979276980%_
                      (lambda (_%e236563237042%_
                               _%hd236564237046%_
                               _%tl236565237049%_
                               _%e236566237052%_
                               _%hd236567237056%_
                               _%tl236568237059%_
                               _%e236569237062%_
                               _%hd236570237066%_
                               _%tl236571237069%_
                               _%e236572237072%_
                               _%hd236573237076%_
                               _%tl236574237079%_
                               _%e236575237082%_
                               _%hd236576237086%_
                               _%tl236577237089%_
                               _%__splice276881276882%_
                               _%target236578237092%_
                               _%tl236580237095%_)
                        (letrec ((_%loop236581237098%_
                                  (lambda (_%hd236579237102%_
                                           _%body236585237105%_)
                                    (if (gx#stx-pair? _%hd236579237102%_)
                                        (let ((_%e236582237107%_
                                               (gx#syntax-e
                                                _%hd236579237102%_)))
                                          (let ((_%lp-tl236584237114%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e236582237107%_)))
                                                (_%lp-hd236583237111%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e236582237107%_))))
                                            (_%loop236581237098%_
                                             _%lp-tl236584237114%_
                                             (cons _%lp-hd236583237111%_
                                                   _%body236585237105%_))))
                                        (let ((_%body236586237117%_
                                               (reverse _%body236585237105%_)))
                                          (let ((_%g236560237120%_
                                                 _%body236586237117%_)
                                                (_%g236561237122%_
                                                 _%hd236576237086%_)
                                                (_%g236562237123%_
                                                 _%hd236570237066%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g236561237122%_))
                                                (_%__kont276879276880%_
                                                 _%g236560237120%_
                                                 _%g236561237122%_
                                                 _%g236562237123%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g236530236673%_)))))))))
                          (_%loop236581237098%_ _%target236578237092%_ '()))))
                     (_%__match276959276960%_
                      (lambda (_%e236563237042%_
                               _%hd236564237046%_
                               _%tl236565237049%_
                               _%e236566237052%_
                               _%hd236567237056%_
                               _%tl236568237059%_
                               _%e236569237062%_
                               _%hd236570237066%_
                               _%tl236571237069%_
                               _%e236572237072%_
                               _%hd236573237076%_
                               _%tl236574237079%_)
                        (if (gx#identifier? _%hd236573237076%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g283059_|
                                 _%hd236573237076%_)
                                (if (gx#stx-pair? _%tl236574237079%_)
                                    (let ((_%e236575237082%_
                                           (gx#syntax-e _%tl236574237079%_)))
                                      (let ((_%tl236577237089%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e236575237082%_)))
                                            (_%hd236576237086%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e236575237082%_))))
                                        (if (gx#stx-null? _%tl236577237089%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl236568237059%_)
                                                (let ((_%__splice276881276882%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl236568237059%_
                                                        '0)))
                                                  (let ((_%tl236580237095%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice276881276882%_
                                                            '1)))
                                                        (_%target236578237092%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice276881276882%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl236580237095%_)
                                                        (_%__match276979276980%_
                                                         _%e236563237042%_
                                                         _%hd236564237046%_
                                                         _%tl236565237049%_
                                                         _%e236566237052%_
                                                         _%hd236567237056%_
                                                         _%tl236568237059%_
                                                         _%e236569237062%_
                                                         _%hd236570237066%_
                                                         _%tl236571237069%_
                                                         _%e236572237072%_
                                                         _%hd236573237076%_
                                                         _%tl236574237079%_
                                                         _%e236575237082%_
                                                         _%hd236576237086%_
                                                         _%tl236577237089%_
                                                         _%__splice276881276882%_
                                                         _%target236578237092%_
                                                         _%tl236580237095%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g236530236673%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g236530236673%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g236530236673%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g236530236673%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g283060_|
                                     _%hd236573237076%_)
                                    (if (gx#stx-pair? _%tl236574237079%_)
                                        (let ((_%e236602236962%_
                                               (gx#syntax-e
                                                _%tl236574237079%_)))
                                          (let ((_%tl236604236969%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e236602236962%_)))
                                                (_%hd236603236966%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e236602236962%_))))
                                            (if (gx#stx-null?
                                                 _%tl236604236969%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl236568237059%_)
                                                    (let ((_%__splice276885276886%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl236568237059%_
                                                            '0)))
                                                      (let ((_%tl236607236975%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice276885276886%_ '1)))
                    (_%target236605236972%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice276885276886%_ '0))))
                (if (gx#stx-null? _%tl236607236975%_)
                    (_%__match277023277024%_
                     _%e236563237042%_
                     _%hd236564237046%_
                     _%tl236565237049%_
                     _%e236566237052%_
                     _%hd236567237056%_
                     _%tl236568237059%_
                     _%e236569237062%_
                     _%hd236570237066%_
                     _%tl236571237069%_
                     _%e236572237072%_
                     _%hd236573237076%_
                     _%tl236574237079%_
                     _%e236602236962%_
                     _%hd236603236966%_
                     _%tl236604236969%_
                     _%__splice276885276886%_
                     _%target236605236972%_
                     _%tl236607236975%_)
                    (let () (declare (not safe)) (_%g236530236673%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g236530236673%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g236530236673%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g236530236673%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g283061_|
                                         _%hd236573237076%_)
                                        (if (gx#stx-pair? _%tl236574237079%_)
                                            (let ((_%e236629236842%_
                                                   (gx#syntax-e
                                                    _%tl236574237079%_)))
                                              (let ((_%tl236631236849%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e236629236842%_)))
                                                    (_%hd236630236846%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e236629236842%_))))
                                                (if (gx#stx-null?
                                                     _%tl236631236849%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl236568237059%_)
                                                        (let ((_%__splice276889276890%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl236568237059%_
                                                                '0)))
                                                          (let ((_%tl236634236855%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice276889276890%_ '1)))
                        (_%target236632236852%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice276889276890%_ '0))))
                    (if (gx#stx-null? _%tl236634236855%_)
                        (_%__match277067277068%_
                         _%e236563237042%_
                         _%hd236564237046%_
                         _%tl236565237049%_
                         _%e236566237052%_
                         _%hd236567237056%_
                         _%tl236568237059%_
                         _%e236569237062%_
                         _%hd236570237066%_
                         _%tl236571237069%_
                         _%e236572237072%_
                         _%hd236573237076%_
                         _%tl236574237079%_
                         _%e236629236842%_
                         _%hd236630236846%_
                         _%tl236631236849%_
                         _%__splice276889276890%_
                         _%target236632236852%_
                         _%tl236634236855%_)
                        (let () (declare (not safe)) (_%g236530236673%_)))))
                (let () (declare (not safe)) (_%g236530236673%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g236530236673%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g236530236673%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g283062_|
                                             _%hd236573237076%_)
                                            (if (gx#stx-pair?
                                                 _%tl236574237079%_)
                                                (let ((_%e236656236720%_
                                                       (gx#syntax-e
                                                        _%tl236574237079%_)))
                                                  (let ((_%tl236658236727%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e236656236720%_)))
                                                        (_%hd236657236724%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e236656236720%_))))
                                                    (if (gx#stx-null?
                                                         _%tl236658236727%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl236568237059%_)
                                                            (let ((_%__splice276893276894%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%tl236568237059%_
                            '0)))
                      (let ((_%tl236661236733%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice276893276894%_ '1)))
                            (_%target236659236730%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice276893276894%_ '0))))
                        (if (gx#stx-null? _%tl236661236733%_)
                            (_%__match277111277112%_
                             _%e236563237042%_
                             _%hd236564237046%_
                             _%tl236565237049%_
                             _%e236566237052%_
                             _%hd236567237056%_
                             _%tl236568237059%_
                             _%e236569237062%_
                             _%hd236570237066%_
                             _%tl236571237069%_
                             _%e236572237072%_
                             _%hd236573237076%_
                             _%tl236574237079%_
                             _%e236656236720%_
                             _%hd236657236724%_
                             _%tl236658236727%_
                             _%__splice276893276894%_
                             _%target236659236730%_
                             _%tl236661236733%_)
                            (let ()
                              (declare (not safe))
                              (_%g236530236673%_)))))
                    (let () (declare (not safe)) (_%g236530236673%_)))
                (let () (declare (not safe)) (_%g236530236673%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g236530236673%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g236530236673%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g236530236673%_)))))
                     (_%__match276935276936%_
                      (lambda (_%e236536237162%_
                               _%hd236537237166%_
                               _%tl236538237169%_
                               _%e236539237172%_
                               _%hd236540237176%_
                               _%tl236541237179%_
                               _%e236542237182%_
                               _%hd236543237186%_
                               _%tl236544237189%_
                               _%e236545237192%_
                               _%hd236546237196%_
                               _%tl236547237199%_
                               _%e236548237202%_
                               _%hd236549237206%_
                               _%tl236550237209%_
                               _%__splice276877276878%_
                               _%target236551237212%_
                               _%tl236553237215%_)
                        (letrec ((_%loop236554237218%_
                                  (lambda (_%hd236552237222%_
                                           _%body236558237225%_)
                                    (if (gx#stx-pair? _%hd236552237222%_)
                                        (let ((_%e236555237227%_
                                               (gx#syntax-e
                                                _%hd236552237222%_)))
                                          (let ((_%lp-tl236557237234%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e236555237227%_)))
                                                (_%lp-hd236556237231%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e236555237227%_))))
                                            (_%loop236554237218%_
                                             _%lp-tl236557237234%_
                                             (cons _%lp-hd236556237231%_
                                                   _%body236558237225%_))))
                                        (let ((_%body236559237237%_
                                               (reverse _%body236558237225%_)))
                                          (let ((_%g236532237240%_
                                                 _%body236559237237%_)
                                                (_%g236533237242%_
                                                 _%hd236549237206%_)
                                                (_%g236534237243%_
                                                 _%hd236546237196%_)
                                                (_%g236535237244%_
                                                 _%hd236543237186%_))
                                            (if (let ((__tmp283063
                                                       (gx#syntax-local-value
                                                        _%g236533237242%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp283063))
                                                (_%__kont276875276876%_
                                                 _%g236532237240%_
                                                 _%g236533237242%_
                                                 _%g236534237243%_
                                                 _%g236535237244%_)
                                                (_%__match276959276960%_
                                                 _%e236536237162%_
                                                 _%hd236537237166%_
                                                 _%tl236538237169%_
                                                 _%e236539237172%_
                                                 _%hd236540237176%_
                                                 _%tl236541237179%_
                                                 _%e236542237182%_
                                                 _%hd236543237186%_
                                                 _%tl236544237189%_
                                                 _%e236545237192%_
                                                 _%hd236546237196%_
                                                 _%tl236547237199%_))))))))
                          (_%loop236554237218%_ _%target236551237212%_ '())))))
                (if (gx#stx-pair? _%__stx276872276873%_)
                    (let ((_%e236536237162%_
                           (gx#syntax-e _%__stx276872276873%_)))
                      (let ((_%tl236538237169%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e236536237162%_)))
                            (_%hd236537237166%_
                             (let ()
                               (declare (not safe))
                               (##car _%e236536237162%_))))
                        (if (gx#stx-pair? _%tl236538237169%_)
                            (let ((_%e236539237172%_
                                   (gx#syntax-e _%tl236538237169%_)))
                              (let ((_%tl236541237179%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e236539237172%_)))
                                    (_%hd236540237176%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e236539237172%_))))
                                (if (gx#stx-pair? _%hd236540237176%_)
                                    (let ((_%e236542237182%_
                                           (gx#syntax-e _%hd236540237176%_)))
                                      (let ((_%tl236544237189%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e236542237182%_)))
                                            (_%hd236543237186%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e236542237182%_))))
                                        (if (gx#stx-pair? _%tl236544237189%_)
                                            (let ((_%e236545237192%_
                                                   (gx#syntax-e
                                                    _%tl236544237189%_)))
                                              (let ((_%tl236547237199%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e236545237192%_)))
                                                    (_%hd236546237196%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e236545237192%_))))
                                                (if (gx#stx-pair?
                                                     _%tl236547237199%_)
                                                    (let ((_%e236548237202%_
                                                           (gx#syntax-e
                                                            _%tl236547237199%_)))
                                                      (let ((_%tl236550237209%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e236548237202%_)))
                    (_%hd236549237206%_
                     (let () (declare (not safe)) (##car _%e236548237202%_))))
                (if (gx#stx-null? _%tl236550237209%_)
                    (if (gx#stx-pair/null? _%tl236541237179%_)
                        (let ((_%__splice276877276878%_
                               (gx#syntax-split-splice->vector
                                _%tl236541237179%_
                                '0)))
                          (let ((_%tl236553237215%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice276877276878%_ '1)))
                                (_%target236551237212%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice276877276878%_
                                    '0))))
                            (if (gx#stx-null? _%tl236553237215%_)
                                (_%__match276935276936%_
                                 _%e236536237162%_
                                 _%hd236537237166%_
                                 _%tl236538237169%_
                                 _%e236539237172%_
                                 _%hd236540237176%_
                                 _%tl236541237179%_
                                 _%e236542237182%_
                                 _%hd236543237186%_
                                 _%tl236544237189%_
                                 _%e236545237192%_
                                 _%hd236546237196%_
                                 _%tl236547237199%_
                                 _%e236548237202%_
                                 _%hd236549237206%_
                                 _%tl236550237209%_
                                 _%__splice276877276878%_
                                 _%target236551237212%_
                                 _%tl236553237215%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g236530236673%_)))))
                        (let () (declare (not safe)) (_%g236530236673%_)))
                    (let () (declare (not safe)) (_%g236530236673%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g236530236673%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g236530236673%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g236530236673%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g236530236673%_)))))
                    (let () (declare (not safe)) (_%g236530236673%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#with-interface|
      (lambda (_%stx237636%_)
        (letrec ((_%expand-body237639%_
                  (lambda (_%var238630%_
                           _%Interface238632%_
                           _%body238633%_
                           _%checked?238634%_)
                    (let* ((_%type238636%_
                            (let ()
                              (declare (not safe))
                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                               _%stx237636%_
                               _%Interface238632%_)))
                           (_%g238639238683%_
                            (lambda (_%g238640238679%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g238640238679%_)))
                           (_%g238638238839%_
                            (lambda (_%g238640238687%_)
                              (if (gx#stx-pair? _%g238640238687%_)
                                  (let ((_%e238648238690%_
                                         (gx#syntax-e _%g238640238687%_)))
                                    (let ((_%hd238649238694%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e238648238690%_)))
                                          (_%tl238650238697%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e238648238690%_))))
                                      (if (gx#stx-pair? _%tl238650238697%_)
                                          (let ((_%e238651238700%_
                                                 (gx#syntax-e
                                                  _%tl238650238697%_)))
                                            (let ((_%hd238652238704%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e238651238700%_)))
                                                  (_%tl238653238707%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e238651238700%_))))
                                              (if (gx#stx-pair?
                                                   _%tl238653238707%_)
                                                  (let ((_%e238654238710%_
                                                         (gx#syntax-e
                                                          _%tl238653238707%_)))
                                                    (let ((_%hd238655238714%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e238654238710%_)))
                                                          (_%tl238656238717%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e238654238710%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl238656238717%_)
                                                          (let ((_%e238657238720%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl238656238717%_)))
                    (let ((_%hd238658238724%_
                           (let ()
                             (declare (not safe))
                             (##car _%e238657238720%_)))
                          (_%tl238659238727%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e238657238720%_))))
                      (if (gx#stx-pair? _%tl238659238727%_)
                          (let ((_%e238660238730%_
                                 (gx#syntax-e _%tl238659238727%_)))
                            (let ((_%hd238661238734%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e238660238730%_)))
                                  (_%tl238662238737%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e238660238730%_))))
                              (if (gx#stx-pair? _%tl238662238737%_)
                                  (let ((_%e238663238740%_
                                         (gx#syntax-e _%tl238662238737%_)))
                                    (let ((_%hd238664238744%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e238663238740%_)))
                                          (_%tl238665238747%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e238663238740%_))))
                                      (if (gx#stx-pair? _%tl238665238747%_)
                                          (let ((_%e238666238750%_
                                                 (gx#syntax-e
                                                  _%tl238665238747%_)))
                                            (let ((_%hd238667238754%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e238666238750%_)))
                                                  (_%tl238668238757%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e238666238750%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd238667238754%_)
                                                  (let ((_g283064_
                                                         (gx#syntax-split-splice
                                                          _%hd238667238754%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g283065_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g283064_)
                           (##values-length _g283064_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g283065_ 2)))
                    (error "Context expects 2 values" _g283065_)))
              (let ((_%target238669238760%_
                     (let () (declare (not safe)) (##values-ref _g283064_ 0)))
                    (_%tl238671238763%_
                     (let () (declare (not safe)) (##values-ref _g283064_ 1))))
                (if (gx#stx-null? _%tl238671238763%_)
                    (letrec ((_%loop238672238766%_
                              (lambda (_%hd238670238770%_ _%body238676238773%_)
                                (if (gx#stx-pair? _%hd238670238770%_)
                                    (let ((_%e238673238775%_
                                           (gx#syntax-e _%hd238670238770%_)))
                                      (let ((_%lp-hd238674238779%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e238673238775%_)))
                                            (_%lp-tl238675238782%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e238673238775%_))))
                                        (_%loop238672238766%_
                                         _%lp-tl238675238782%_
                                         (cons _%lp-hd238674238779%_
                                               _%body238676238773%_))))
                                    (let ((_%body238677238785%_
                                           (reverse _%body238676238773%_)))
                                      (if (gx#stx-null? _%tl238668238757%_)
                                          ((lambda (_%g238641238788%_
                                                    _%g238642238790%_
                                                    _%g238643238791%_
                                                    _%g238644238792%_
                                                    _%g238645238793%_
                                                    _%g238646238794%_
                                                    _%g238647238795%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%g238644238792%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%g238645238793%_ '()))
                                         (cons _%g238644238792%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%g238647238795%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%g238644238792%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%g238646238794%_ '()))
                               (cons _%g238643238791%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%g238642238790%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g238830238833%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g238831238836%_)
                      (cons _%g238830238833%_ _%g238831238836%_))
                    '()
                    _%g238641238788%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body238677238785%_
                                           _%hd238664238744%_
                                           _%hd238661238734%_
                                           _%hd238658238724%_
                                           _%hd238655238714%_
                                           _%hd238652238704%_
                                           _%hd238649238694%_)
                                          (_%g238639238683%_
                                           _%g238640238687%_)))))))
                      (_%loop238672238766%_ _%target238669238760%_ '()))
                    (_%g238639238683%_ _%g238640238687%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g238639238683%_
                                                   _%g238640238687%_))))
                                          (_%g238639238683%_
                                           _%g238640238687%_))))
                                  (_%g238639238683%_ _%g238640238687%_))))
                          (_%g238639238683%_ _%g238640238687%_))))
                  (_%g238639238683%_ _%g238640238687%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g238639238683%_
                                                   _%g238640238687%_))))
                                          (_%g238639238683%_
                                           _%g238640238687%_))))
                                  (_%g238639238683%_ _%g238640238687%_)))))
                      (_%g238638238839%_
                       (list (gx#syntax-local-introduce '@@type)
                             _%type238636%_
                             (let ((__obj282865 _%type238636%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj282865
                                      'gerbil.core#runtime-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj282865
                                      '3
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#runtime-type-info::t
                                    __obj282865
                                    'type-descriptor)))
                             _%var238630%_
                             _%checked?238634%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body238633%_)))))
                 (_%expand237641%_
                  (lambda (_%var238429%_
                           _%Interface238431%_
                           _%body238432%_
                           _%checked?238433%_
                           _%checked-methods?238434%_
                           _%maybe?238435%_)
                    (let* ((_%g238437238445%_
                            (lambda (_%g238438238441%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g238438238441%_)))
                           (_%g238436238622%_
                            (lambda (_%g238438238449%_)
                              ((lambda (_%g238439238452%_)
                                 (if _%checked?238433%_
                                     (if _%maybe?238435%_
                                         (let* ((_%g238464238479%_
                                                 (lambda (_%g238465238475%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g238465238475%_)))
                                                (_%g238463238525%_
                                                 (lambda (_%g238465238483%_)
                                                   (if (gx#stx-pair?
                                                        _%g238465238483%_)
                                                       (let ((_%e238468238486%_
                                                              (gx#syntax-e
                                                               _%g238465238483%_)))
                                                         (let ((_%hd238469238490%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e238468238486%_)))
                       (_%tl238470238493%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e238468238486%_))))
                   (if (gx#stx-pair? _%tl238470238493%_)
                       (let ((_%e238471238496%_
                              (gx#syntax-e _%tl238470238493%_)))
                         (let ((_%hd238472238500%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e238471238496%_)))
                               (_%tl238473238503%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e238471238496%_))))
                           (if (gx#stx-null? _%tl238473238503%_)
                               ((lambda (_%g238466238506%_ _%g238467238508%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%g238467238508%_
                                                    (cons (cons _%g238466238506%_
                                                                (cons _%g238467238508%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons _%g238467238508%_
                                                                (cons _%g238439238452%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'nil-dereference!)
                                          (cons _%g238467238508%_ '()))
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                                _%hd238472238500%_
                                _%hd238469238490%_)
                               (_%g238464238479%_ _%g238465238483%_))))
                       (_%g238464238479%_ _%g238465238483%_))))
               (_%g238464238479%_ _%g238465238483%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g238463238525%_
                                            (list _%var238429%_
                                                  _%Interface238431%_)))
                                         (let* ((_%g238529238544%_
                                                 (lambda (_%g238530238540%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g238530238540%_)))
                                                (_%g238528238588%_
                                                 (lambda (_%g238530238548%_)
                                                   (if (gx#stx-pair?
                                                        _%g238530238548%_)
                                                       (let ((_%e238533238551%_
                                                              (gx#syntax-e
                                                               _%g238530238548%_)))
                                                         (let ((_%hd238534238555%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e238533238551%_)))
                       (_%tl238535238558%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e238533238551%_))))
                   (if (gx#stx-pair? _%tl238535238558%_)
                       (let ((_%e238536238561%_
                              (gx#syntax-e _%tl238535238558%_)))
                         (let ((_%hd238537238565%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e238536238561%_)))
                               (_%tl238538238568%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e238536238561%_))))
                           (if (gx#stx-null? _%tl238538238568%_)
                               ((lambda (_%g238531238571%_ _%g238532238573%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%g238532238573%_
                                                    (cons (cons _%g238531238571%_
                                                                (cons _%g238532238573%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%g238439238452%_ '()))))
                                _%hd238537238565%_
                                _%hd238534238555%_)
                               (_%g238529238544%_ _%g238530238548%_))))
                       (_%g238529238544%_ _%g238530238548%_))))
               (_%g238529238544%_ _%g238530238548%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g238528238588%_
                                            (list _%var238429%_
                                                  _%Interface238431%_))))
                                     (if _%maybe?238435%_
                                         (let* ((_%g238592238600%_
                                                 (lambda (_%g238593238596%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g238593238596%_)))
                                                (_%g238591238618%_
                                                 (lambda (_%g238593238604%_)
                                                   ((lambda (_%g238594238607%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons _%g238594238607%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%g238439238452%_
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'nil-dereference!)
                                            (cons _%g238594238607%_ '()))
                                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g238593238604%_))))
                                           (_%g238591238618%_ _%var238429%_))
                                         _%g238439238452%_)))
                               _%g238438238449%_))))
                      (_%g238436238622%_
                       (_%expand-body237639%_
                        _%var238429%_
                        _%Interface238431%_
                        _%body238432%_
                        (let ((_%$e238626%_ _%checked?238433%_))
                          (if _%$e238626%_
                              _%$e238626%_
                              _%checked-methods?238434%_))))))))
          (let* ((_%__stx277114277115%_ _%stx237636%_)
                 (_%g237647237790%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx277114277115%_))))
            (let ((_%__kont277117277118%_
                   (lambda (_%g237649238357%_
                            _%g237650238359%_
                            _%g237651238360%_
                            _%g237652238361%_)
                     (let* ((_%g238386238394%_
                             (lambda (_%g238387238390%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g238387238390%_)))
                            (_%g238385238421%_
                             (lambda (_%g238387238398%_)
                               ((lambda (_%g238388238401%_)
                                  (cons (gx#datum->syntax '#f 'with-interface)
                                        (cons (cons _%g237652238361%_
                                                    (cons _%g237651238360%_
                                                          (cons _%g238388238401%_
                                                                '())))
                                              (foldr (lambda (_%g238412238415%_
                                                              _%g238413238418%_)
                                                       (cons _%g238412238415%_
                                                             _%g238413238418%_))
                                                     '()
                                                     _%g237649238357%_))))
                                _%g238387238398%_))))
                       (_%g238385238421%_
                        (let ((__obj282866
                               (gx#syntax-local-value _%g237650238359%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj282866
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj282866
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj282866
                               'identifier)))))))
                  (_%__kont277121277122%_
                   (lambda (_%g237677238237%_
                            _%g237678238239%_
                            _%g237679238240%_)
                     (_%expand237641%_
                      _%g237679238240%_
                      _%g237678238239%_
                      (foldr (lambda (_%g238263238266%_ _%g238264238269%_)
                               (cons _%g238263238266%_ _%g238264238269%_))
                             '()
                             _%g237677238237%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont277125277126%_
                   (lambda (_%g237704238117%_
                            _%g237705238119%_
                            _%g237706238120%_)
                     (_%expand237641%_
                      _%g237706238120%_
                      _%g237705238119%_
                      (foldr (lambda (_%g238143238146%_ _%g238144238149%_)
                               (cons _%g238143238146%_ _%g238144238149%_))
                             '()
                             _%g237704238117%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont277129277130%_
                   (lambda (_%g237731237997%_
                            _%g237732237999%_
                            _%g237733238000%_)
                     (_%expand237641%_
                      _%g237733238000%_
                      _%g237732237999%_
                      (foldr (lambda (_%g238023238026%_ _%g238024238029%_)
                               (cons _%g238023238026%_ _%g238024238029%_))
                             '()
                             _%g237731237997%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont277133277134%_
                   (lambda (_%g237758237875%_
                            _%g237759237877%_
                            _%g237760237878%_)
                     (_%expand237641%_
                      _%g237760237878%_
                      _%g237759237877%_
                      (foldr (lambda (_%g237903237906%_ _%g237904237909%_)
                               (cons _%g237903237906%_ _%g237904237909%_))
                             '()
                             _%g237758237875%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match277353277354%_
                      (lambda (_%e237761237797%_
                               _%hd237762237801%_
                               _%tl237763237804%_
                               _%e237764237807%_
                               _%hd237765237811%_
                               _%tl237766237814%_
                               _%e237767237817%_
                               _%hd237768237821%_
                               _%tl237769237824%_
                               _%e237770237827%_
                               _%hd237771237831%_
                               _%tl237772237834%_
                               _%e237773237837%_
                               _%hd237774237841%_
                               _%tl237775237844%_
                               _%__splice277135277136%_
                               _%target237776237847%_
                               _%tl237778237850%_)
                        (letrec ((_%loop237779237853%_
                                  (lambda (_%hd237777237857%_
                                           _%body237783237860%_)
                                    (if (gx#stx-pair? _%hd237777237857%_)
                                        (let ((_%e237780237862%_
                                               (gx#syntax-e
                                                _%hd237777237857%_)))
                                          (let ((_%lp-tl237782237869%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e237780237862%_)))
                                                (_%lp-hd237781237866%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e237780237862%_))))
                                            (_%loop237779237853%_
                                             _%lp-tl237782237869%_
                                             (cons _%lp-hd237781237866%_
                                                   _%body237783237860%_))))
                                        (let ((_%body237784237872%_
                                               (reverse _%body237783237860%_)))
                                          (let ((_%g237758237875%_
                                                 _%body237784237872%_)
                                                (_%g237759237877%_
                                                 _%hd237774237841%_)
                                                (_%g237760237878%_
                                                 _%hd237768237821%_))
                                            (if (and (gx#identifier?
                                                      _%g237760237878%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g237759237877%_)))
                                                (_%__kont277133277134%_
                                                 _%g237758237875%_
                                                 _%g237759237877%_
                                                 _%g237760237878%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g237647237790%_)))))))))
                          (_%loop237779237853%_ _%target237776237847%_ '()))))
                     (_%__match277309277310%_
                      (lambda (_%e237734237919%_
                               _%hd237735237923%_
                               _%tl237736237926%_
                               _%e237737237929%_
                               _%hd237738237933%_
                               _%tl237739237936%_
                               _%e237740237939%_
                               _%hd237741237943%_
                               _%tl237742237946%_
                               _%e237743237949%_
                               _%hd237744237953%_
                               _%tl237745237956%_
                               _%e237746237959%_
                               _%hd237747237963%_
                               _%tl237748237966%_
                               _%__splice277131277132%_
                               _%target237749237969%_
                               _%tl237751237972%_)
                        (letrec ((_%loop237752237975%_
                                  (lambda (_%hd237750237979%_
                                           _%body237756237982%_)
                                    (if (gx#stx-pair? _%hd237750237979%_)
                                        (let ((_%e237753237984%_
                                               (gx#syntax-e
                                                _%hd237750237979%_)))
                                          (let ((_%lp-tl237755237991%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e237753237984%_)))
                                                (_%lp-hd237754237988%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e237753237984%_))))
                                            (_%loop237752237975%_
                                             _%lp-tl237755237991%_
                                             (cons _%lp-hd237754237988%_
                                                   _%body237756237982%_))))
                                        (let ((_%body237757237994%_
                                               (reverse _%body237756237982%_)))
                                          (let ((_%g237731237997%_
                                                 _%body237757237994%_)
                                                (_%g237732237999%_
                                                 _%hd237747237963%_)
                                                (_%g237733238000%_
                                                 _%hd237741237943%_))
                                            (if (and (gx#identifier?
                                                      _%g237733238000%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g237732237999%_)))
                                                (_%__kont277129277130%_
                                                 _%g237731237997%_
                                                 _%g237732237999%_
                                                 _%g237733238000%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g237647237790%_)))))))))
                          (_%loop237752237975%_ _%target237749237969%_ '()))))
                     (_%__match277265277266%_
                      (lambda (_%e237707238039%_
                               _%hd237708238043%_
                               _%tl237709238046%_
                               _%e237710238049%_
                               _%hd237711238053%_
                               _%tl237712238056%_
                               _%e237713238059%_
                               _%hd237714238063%_
                               _%tl237715238066%_
                               _%e237716238069%_
                               _%hd237717238073%_
                               _%tl237718238076%_
                               _%e237719238079%_
                               _%hd237720238083%_
                               _%tl237721238086%_
                               _%__splice277127277128%_
                               _%target237722238089%_
                               _%tl237724238092%_)
                        (letrec ((_%loop237725238095%_
                                  (lambda (_%hd237723238099%_
                                           _%body237729238102%_)
                                    (if (gx#stx-pair? _%hd237723238099%_)
                                        (let ((_%e237726238104%_
                                               (gx#syntax-e
                                                _%hd237723238099%_)))
                                          (let ((_%lp-tl237728238111%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e237726238104%_)))
                                                (_%lp-hd237727238108%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e237726238104%_))))
                                            (_%loop237725238095%_
                                             _%lp-tl237728238111%_
                                             (cons _%lp-hd237727238108%_
                                                   _%body237729238102%_))))
                                        (let ((_%body237730238114%_
                                               (reverse _%body237729238102%_)))
                                          (let ((_%g237704238117%_
                                                 _%body237730238114%_)
                                                (_%g237705238119%_
                                                 _%hd237720238083%_)
                                                (_%g237706238120%_
                                                 _%hd237714238063%_))
                                            (if (and (gx#identifier?
                                                      _%g237706238120%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g237705238119%_)))
                                                (_%__kont277125277126%_
                                                 _%g237704238117%_
                                                 _%g237705238119%_
                                                 _%g237706238120%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g237647237790%_)))))))))
                          (_%loop237725238095%_ _%target237722238089%_ '()))))
                     (_%__match277221277222%_
                      (lambda (_%e237680238159%_
                               _%hd237681238163%_
                               _%tl237682238166%_
                               _%e237683238169%_
                               _%hd237684238173%_
                               _%tl237685238176%_
                               _%e237686238179%_
                               _%hd237687238183%_
                               _%tl237688238186%_
                               _%e237689238189%_
                               _%hd237690238193%_
                               _%tl237691238196%_
                               _%e237692238199%_
                               _%hd237693238203%_
                               _%tl237694238206%_
                               _%__splice277123277124%_
                               _%target237695238209%_
                               _%tl237697238212%_)
                        (letrec ((_%loop237698238215%_
                                  (lambda (_%hd237696238219%_
                                           _%body237702238222%_)
                                    (if (gx#stx-pair? _%hd237696238219%_)
                                        (let ((_%e237699238224%_
                                               (gx#syntax-e
                                                _%hd237696238219%_)))
                                          (let ((_%lp-tl237701238231%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e237699238224%_)))
                                                (_%lp-hd237700238228%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e237699238224%_))))
                                            (_%loop237698238215%_
                                             _%lp-tl237701238231%_
                                             (cons _%lp-hd237700238228%_
                                                   _%body237702238222%_))))
                                        (let ((_%body237703238234%_
                                               (reverse _%body237702238222%_)))
                                          (let ((_%g237677238237%_
                                                 _%body237703238234%_)
                                                (_%g237678238239%_
                                                 _%hd237693238203%_)
                                                (_%g237679238240%_
                                                 _%hd237687238183%_))
                                            (if (and (gx#identifier?
                                                      _%g237679238240%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g237678238239%_)))
                                                (_%__kont277121277122%_
                                                 _%g237677238237%_
                                                 _%g237678238239%_
                                                 _%g237679238240%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g237647237790%_)))))))))
                          (_%loop237698238215%_ _%target237695238209%_ '()))))
                     (_%__match277201277202%_
                      (lambda (_%e237680238159%_
                               _%hd237681238163%_
                               _%tl237682238166%_
                               _%e237683238169%_
                               _%hd237684238173%_
                               _%tl237685238176%_
                               _%e237686238179%_
                               _%hd237687238183%_
                               _%tl237688238186%_
                               _%e237689238189%_
                               _%hd237690238193%_
                               _%tl237691238196%_)
                        (if (gx#identifier? _%hd237690238193%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g283066_|
                                 _%hd237690238193%_)
                                (if (gx#stx-pair? _%tl237691238196%_)
                                    (let ((_%e237692238199%_
                                           (gx#syntax-e _%tl237691238196%_)))
                                      (let ((_%tl237694238206%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e237692238199%_)))
                                            (_%hd237693238203%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e237692238199%_))))
                                        (if (gx#stx-null? _%tl237694238206%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl237685238176%_)
                                                (let ((_%__splice277123277124%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl237685238176%_
                                                        '0)))
                                                  (let ((_%tl237697238212%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice277123277124%_
                                                            '1)))
                                                        (_%target237695238209%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice277123277124%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl237697238212%_)
                                                        (_%__match277221277222%_
                                                         _%e237680238159%_
                                                         _%hd237681238163%_
                                                         _%tl237682238166%_
                                                         _%e237683238169%_
                                                         _%hd237684238173%_
                                                         _%tl237685238176%_
                                                         _%e237686238179%_
                                                         _%hd237687238183%_
                                                         _%tl237688238186%_
                                                         _%e237689238189%_
                                                         _%hd237690238193%_
                                                         _%tl237691238196%_
                                                         _%e237692238199%_
                                                         _%hd237693238203%_
                                                         _%tl237694238206%_
                                                         _%__splice277123277124%_
                                                         _%target237695238209%_
                                                         _%tl237697238212%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g237647237790%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g237647237790%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g237647237790%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g237647237790%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g283067_|
                                     _%hd237690238193%_)
                                    (if (gx#stx-pair? _%tl237691238196%_)
                                        (let ((_%e237719238079%_
                                               (gx#syntax-e
                                                _%tl237691238196%_)))
                                          (let ((_%tl237721238086%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e237719238079%_)))
                                                (_%hd237720238083%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e237719238079%_))))
                                            (if (gx#stx-null?
                                                 _%tl237721238086%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl237685238176%_)
                                                    (let ((_%__splice277127277128%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl237685238176%_
                                                            '0)))
                                                      (let ((_%tl237724238092%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice277127277128%_ '1)))
                    (_%target237722238089%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice277127277128%_ '0))))
                (if (gx#stx-null? _%tl237724238092%_)
                    (_%__match277265277266%_
                     _%e237680238159%_
                     _%hd237681238163%_
                     _%tl237682238166%_
                     _%e237683238169%_
                     _%hd237684238173%_
                     _%tl237685238176%_
                     _%e237686238179%_
                     _%hd237687238183%_
                     _%tl237688238186%_
                     _%e237689238189%_
                     _%hd237690238193%_
                     _%tl237691238196%_
                     _%e237719238079%_
                     _%hd237720238083%_
                     _%tl237721238086%_
                     _%__splice277127277128%_
                     _%target237722238089%_
                     _%tl237724238092%_)
                    (let () (declare (not safe)) (_%g237647237790%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g237647237790%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g237647237790%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g237647237790%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g283068_|
                                         _%hd237690238193%_)
                                        (if (gx#stx-pair? _%tl237691238196%_)
                                            (let ((_%e237746237959%_
                                                   (gx#syntax-e
                                                    _%tl237691238196%_)))
                                              (let ((_%tl237748237966%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e237746237959%_)))
                                                    (_%hd237747237963%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e237746237959%_))))
                                                (if (gx#stx-null?
                                                     _%tl237748237966%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl237685238176%_)
                                                        (let ((_%__splice277131277132%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl237685238176%_
                                                                '0)))
                                                          (let ((_%tl237751237972%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice277131277132%_ '1)))
                        (_%target237749237969%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice277131277132%_ '0))))
                    (if (gx#stx-null? _%tl237751237972%_)
                        (_%__match277309277310%_
                         _%e237680238159%_
                         _%hd237681238163%_
                         _%tl237682238166%_
                         _%e237683238169%_
                         _%hd237684238173%_
                         _%tl237685238176%_
                         _%e237686238179%_
                         _%hd237687238183%_
                         _%tl237688238186%_
                         _%e237689238189%_
                         _%hd237690238193%_
                         _%tl237691238196%_
                         _%e237746237959%_
                         _%hd237747237963%_
                         _%tl237748237966%_
                         _%__splice277131277132%_
                         _%target237749237969%_
                         _%tl237751237972%_)
                        (let () (declare (not safe)) (_%g237647237790%_)))))
                (let () (declare (not safe)) (_%g237647237790%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g237647237790%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g237647237790%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g283069_|
                                             _%hd237690238193%_)
                                            (if (gx#stx-pair?
                                                 _%tl237691238196%_)
                                                (let ((_%e237773237837%_
                                                       (gx#syntax-e
                                                        _%tl237691238196%_)))
                                                  (let ((_%tl237775237844%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e237773237837%_)))
                                                        (_%hd237774237841%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e237773237837%_))))
                                                    (if (gx#stx-null?
                                                         _%tl237775237844%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl237685238176%_)
                                                            (let ((_%__splice277135277136%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%tl237685238176%_
                            '0)))
                      (let ((_%tl237778237850%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice277135277136%_ '1)))
                            (_%target237776237847%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice277135277136%_ '0))))
                        (if (gx#stx-null? _%tl237778237850%_)
                            (_%__match277353277354%_
                             _%e237680238159%_
                             _%hd237681238163%_
                             _%tl237682238166%_
                             _%e237683238169%_
                             _%hd237684238173%_
                             _%tl237685238176%_
                             _%e237686238179%_
                             _%hd237687238183%_
                             _%tl237688238186%_
                             _%e237689238189%_
                             _%hd237690238193%_
                             _%tl237691238196%_
                             _%e237773237837%_
                             _%hd237774237841%_
                             _%tl237775237844%_
                             _%__splice277135277136%_
                             _%target237776237847%_
                             _%tl237778237850%_)
                            (let ()
                              (declare (not safe))
                              (_%g237647237790%_)))))
                    (let () (declare (not safe)) (_%g237647237790%_)))
                (let () (declare (not safe)) (_%g237647237790%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g237647237790%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g237647237790%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g237647237790%_)))))
                     (_%__match277177277178%_
                      (lambda (_%e237653238279%_
                               _%hd237654238283%_
                               _%tl237655238286%_
                               _%e237656238289%_
                               _%hd237657238293%_
                               _%tl237658238296%_
                               _%e237659238299%_
                               _%hd237660238303%_
                               _%tl237661238306%_
                               _%e237662238309%_
                               _%hd237663238313%_
                               _%tl237664238316%_
                               _%e237665238319%_
                               _%hd237666238323%_
                               _%tl237667238326%_
                               _%__splice277119277120%_
                               _%target237668238329%_
                               _%tl237670238332%_)
                        (letrec ((_%loop237671238335%_
                                  (lambda (_%hd237669238339%_
                                           _%body237675238342%_)
                                    (if (gx#stx-pair? _%hd237669238339%_)
                                        (let ((_%e237672238344%_
                                               (gx#syntax-e
                                                _%hd237669238339%_)))
                                          (let ((_%lp-tl237674238351%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e237672238344%_)))
                                                (_%lp-hd237673238348%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e237672238344%_))))
                                            (_%loop237671238335%_
                                             _%lp-tl237674238351%_
                                             (cons _%lp-hd237673238348%_
                                                   _%body237675238342%_))))
                                        (let ((_%body237676238354%_
                                               (reverse _%body237675238342%_)))
                                          (let ((_%g237649238357%_
                                                 _%body237676238354%_)
                                                (_%g237650238359%_
                                                 _%hd237666238323%_)
                                                (_%g237651238360%_
                                                 _%hd237663238313%_)
                                                (_%g237652238361%_
                                                 _%hd237660238303%_))
                                            (if (let ((__tmp283070
                                                       (gx#syntax-local-value
                                                        _%g237650238359%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp283070))
                                                (_%__kont277117277118%_
                                                 _%g237649238357%_
                                                 _%g237650238359%_
                                                 _%g237651238360%_
                                                 _%g237652238361%_)
                                                (_%__match277201277202%_
                                                 _%e237653238279%_
                                                 _%hd237654238283%_
                                                 _%tl237655238286%_
                                                 _%e237656238289%_
                                                 _%hd237657238293%_
                                                 _%tl237658238296%_
                                                 _%e237659238299%_
                                                 _%hd237660238303%_
                                                 _%tl237661238306%_
                                                 _%e237662238309%_
                                                 _%hd237663238313%_
                                                 _%tl237664238316%_))))))))
                          (_%loop237671238335%_ _%target237668238329%_ '())))))
                (if (gx#stx-pair? _%__stx277114277115%_)
                    (let ((_%e237653238279%_
                           (gx#syntax-e _%__stx277114277115%_)))
                      (let ((_%tl237655238286%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e237653238279%_)))
                            (_%hd237654238283%_
                             (let ()
                               (declare (not safe))
                               (##car _%e237653238279%_))))
                        (if (gx#stx-pair? _%tl237655238286%_)
                            (let ((_%e237656238289%_
                                   (gx#syntax-e _%tl237655238286%_)))
                              (let ((_%tl237658238296%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e237656238289%_)))
                                    (_%hd237657238293%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e237656238289%_))))
                                (if (gx#stx-pair? _%hd237657238293%_)
                                    (let ((_%e237659238299%_
                                           (gx#syntax-e _%hd237657238293%_)))
                                      (let ((_%tl237661238306%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e237659238299%_)))
                                            (_%hd237660238303%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e237659238299%_))))
                                        (if (gx#stx-pair? _%tl237661238306%_)
                                            (let ((_%e237662238309%_
                                                   (gx#syntax-e
                                                    _%tl237661238306%_)))
                                              (let ((_%tl237664238316%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e237662238309%_)))
                                                    (_%hd237663238313%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e237662238309%_))))
                                                (if (gx#stx-pair?
                                                     _%tl237664238316%_)
                                                    (let ((_%e237665238319%_
                                                           (gx#syntax-e
                                                            _%tl237664238316%_)))
                                                      (let ((_%tl237667238326%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e237665238319%_)))
                    (_%hd237666238323%_
                     (let () (declare (not safe)) (##car _%e237665238319%_))))
                (if (gx#stx-null? _%tl237667238326%_)
                    (if (gx#stx-pair/null? _%tl237658238296%_)
                        (let ((_%__splice277119277120%_
                               (gx#syntax-split-splice->vector
                                _%tl237658238296%_
                                '0)))
                          (let ((_%tl237670238332%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice277119277120%_ '1)))
                                (_%target237668238329%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice277119277120%_
                                    '0))))
                            (if (gx#stx-null? _%tl237670238332%_)
                                (_%__match277177277178%_
                                 _%e237653238279%_
                                 _%hd237654238283%_
                                 _%tl237655238286%_
                                 _%e237656238289%_
                                 _%hd237657238293%_
                                 _%tl237658238296%_
                                 _%e237659238299%_
                                 _%hd237660238303%_
                                 _%tl237661238306%_
                                 _%e237662238309%_
                                 _%hd237663238313%_
                                 _%tl237664238316%_
                                 _%e237665238319%_
                                 _%hd237666238323%_
                                 _%tl237667238326%_
                                 _%__splice277119277120%_
                                 _%target237668238329%_
                                 _%tl237670238332%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g237647237790%_)))))
                        (let () (declare (not safe)) (_%g237647237790%_)))
                    (let () (declare (not safe)) (_%g237647237790%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g237647237790%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g237647237790%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g237647237790%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g237647237790%_)))))
                    (let () (declare (not safe)) (_%g237647237790%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#%%app-dotted|
      (lambda (_%stx238849%_)
        (let* ((_%__stx277356277357%_ _%stx238849%_)
               (_%g238854238914%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx277356277357%_))))
          (let ((_%__kont277359277360%_
                 (lambda (_%g238856239470%_ _%g238857239472%_)
                   (cons (gx#datum->syntax '#f '%%app-dotted)
                         (cons (cons (gx#datum->syntax '#f '%%ref-dotted)
                                     (cons _%g238857239472%_ '()))
                               (foldr (lambda (_%g239488239491%_
                                               _%g239489239494%_)
                                        (cons _%g239488239491%_
                                              _%g239489239494%_))
                                      '()
                                      _%g238856239470%_)))))
                (_%__kont277363277364%_
                 (lambda (_%g238873239058%_ _%g238874239060%_)
                   (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                        _%g238874239060%_)
                       (let* ((_%g239080239087%_
                               (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                                _%stx238849%_
                                _%g238874239060%_))
                              (_%E239082239093%_
                               (lambda ()
                                 (error '"No clause matching"
                                        _%g239080239087%_
                                        '([var . parts]))
                                 (void)))
                              (_%K239083239391%_
                               (lambda (_%parts239097%_ _%var239099%_)
                                 (let ((_%$e239101%_
                                        (let ()
                                          (declare (not safe))
                                          (gerbil/core/contract~TypeEnv#type-env-lookup
                                           _%var239099%_))))
                                   (if _%$e239101%_
                                       ((lambda (_%te239105%_)
                                          (let _%loop239108%_ ((_%parts239111%_
                                                                _%parts239097%_)
                                                               (_%type239113%_
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%te239105%_
                         '2
                         gerbil/core/contract~TypeEnv#type-env::t
                         '#f))
                       (_%object239114%_ _%var239099%_)
                       (_%checked-method?239115%_
                        (##direct-structure-ref
                         _%te239105%_
                         '3
                         gerbil/core/contract~TypeEnv#type-env::t
                         '#f))
                       (_%nil-check?239116%_ '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let* ((_%parts239117239125%_
                                                    _%parts239111%_)
                                                   (_%else239119239186%_
                                                    (lambda ()
                                                      (let* ((_%g239137239145%_
                                                              (lambda (_%g239138239141%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g239138239141%_)))
                     (_%g239136239182%_
                      (lambda (_%g239138239149%_)
                        ((lambda (_%g239139239152%_)
                           (cons (gx#datum->syntax '#f '%%app)
                                 (cons _%g239139239152%_
                                       (foldr (lambda (_%g239173239176%_
                                                       _%g239174239179%_)
                                                (cons _%g239173239176%_
                                                      _%g239174239179%_))
                                              '()
                                              _%g238873239058%_))))
                         _%g239138239149%_))))
                (_%g239136239182%_ _%object239114%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K239121239365%_
                                                    (lambda (_%rest239190%_
                                                             _%part239192%_)
                                                      (if (and (not _%nil-check?239116%_)
                                                               (let ((__tmp283071
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (symbol->string _%part239192%_)))
                         (declare (not safe))
                         (##string-prefix? '"?" __tmp283071)))
                  (let ((_%str239196%_ (symbol->string _%part239192%_)))
                    (_%loop239108%_
                     (cons (let ((__tmp283072
                                  (substring
                                   _%str239196%_
                                   '1
                                   (string-length _%str239196%_))))
                             (declare (not safe))
                             (##string->symbol __tmp283072))
                           _%rest239190%_)
                     _%type239113%_
                     _%object239114%_
                     _%checked-method?239115%_
                     '#t))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/mop~MOP-2#class-type-info::t
                         _%type239113%_))
                      (let* ((_%g239201239216%_
                              (lambda (_%g239202239212%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g239202239212%_)))
                             (_%g239200239285%_
                              (lambda (_%g239202239220%_)
                                (if (gx#stx-pair? _%g239202239220%_)
                                    (let ((_%e239205239223%_
                                           (gx#syntax-e _%g239202239220%_)))
                                      (let ((_%hd239206239227%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e239205239223%_)))
                                            (_%tl239207239230%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e239205239223%_))))
                                        (if (gx#stx-pair? _%tl239207239230%_)
                                            (let ((_%e239208239233%_
                                                   (gx#syntax-e
                                                    _%tl239207239230%_)))
                                              (let ((_%hd239209239237%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e239208239233%_)))
                                                    (_%tl239210239240%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e239208239233%_))))
                                                (if (gx#stx-null?
                                                     _%tl239210239240%_)
                                                    ((lambda (_%g239203239243%_
                                                              _%g239204239245%_)
                                                       (if (null? _%rest239190%_)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '%%app)
                         (cons (cons _%g239203239243%_
                                     (cons _%g239204239245%_ '()))
                               (foldr (lambda (_%g239264239267%_
                                               _%g239265239270%_)
                                        (cons _%g239264239267%_
                                              _%g239265239270%_))
                                      '()
                                      _%g238873239058%_)))
                   (let ((_%$e239273%_
                          (|gerbil/core/contract~Using[1]#!class-slot-type|
                           _%type239113%_
                           _%part239192%_)))
                     (if _%$e239273%_
                         ((lambda (_%slot-type239277%_)
                            (let ((_%slot-type239280%_
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                      _%stx238849%_
                                      _%slot-type239277%_))))
                              (_%loop239108%_
                               _%rest239190%_
                               _%slot-type239280%_
                               (cons _%g239203239243%_
                                     (cons _%g239204239245%_ '()))
                               (|gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
                                _%type239113%_
                                _%part239192%_)
                               '#f)))
                          _%$e239273%_)
                         (gx#raise-syntax-error
                          '#f
                          '"unresolved dotted reference; unknown type for slot"
                          _%stx238849%_
                          _%g238874239060%_
                          _%part239192%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd239209239237%_
                                                     _%hd239206239227%_)
                                                    (_%g239201239216%_
                                                     _%g239202239220%_))))
                                            (_%g239201239216%_
                                             _%g239202239220%_))))
                                    (_%g239201239216%_ _%g239202239220%_)))))
                        (_%g239200239285%_
                         (list (if _%nil-check?239116%_
                                   (cons 'check-nil!
                                         (cons _%object239114%_ '()))
                                   _%object239114%_)
                               (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                _%stx238849%_
                                _%type239113%_
                                _%part239192%_))))
                      (if (let ()
                            (declare (not safe))
                            (class-instance?
                             gerbil/core/contract~InterfaceInfo#interface-info::t
                             _%type239113%_))
                          (if (null? _%rest239190%_)
                              (let* ((_%g239291239306%_
                                      (lambda (_%g239292239302%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g239292239302%_)))
                                     (_%g239290239359%_
                                      (lambda (_%g239292239310%_)
                                        (if (gx#stx-pair? _%g239292239310%_)
                                            (let ((_%e239295239313%_
                                                   (gx#syntax-e
                                                    _%g239292239310%_)))
                                              (let ((_%hd239296239317%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e239295239313%_)))
                                                    (_%tl239297239320%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e239295239313%_))))
                                                (if (gx#stx-pair?
                                                     _%tl239297239320%_)
                                                    (let ((_%e239298239323%_
                                                           (gx#syntax-e
                                                            _%tl239297239320%_)))
                                                      (let ((_%hd239299239327%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e239298239323%_)))
                    (_%tl239300239330%_
                     (let () (declare (not safe)) (##cdr _%e239298239323%_))))
                (if (gx#stx-null? _%tl239300239330%_)
                    ((lambda (_%g239293239333%_ _%g239294239335%_)
                       (cons _%g239293239333%_
                             (cons _%g239294239335%_
                                   (foldr (lambda (_%g239350239353%_
                                                   _%g239351239356%_)
                                            (cons _%g239350239353%_
                                                  _%g239351239356%_))
                                          '()
                                          _%g238873239058%_))))
                     _%hd239299239327%_
                     _%hd239296239317%_)
                    (_%g239291239306%_ _%g239292239310%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g239291239306%_
                                                     _%g239292239310%_))))
                                            (_%g239291239306%_
                                             _%g239292239310%_)))))
                                (_%g239290239359%_
                                 (list (if _%nil-check?239116%_
                                           (cons 'check-nil!
                                                 (cons _%object239114%_ '()))
                                           _%object239114%_)
                                       (gx#stx-identifier
                                        _%g238874239060%_
                                        (if _%checked-method?239115%_ '"" '"&")
                                        (let ((__obj282867 _%type239113%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj282867
                                                 'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj282867
                                                 '2
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj282867
                                               'name)))
                                        '"-"
                                        _%part239192%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"illegal dotted reference; interface has no slots"
                               _%stx238849%_
                               _%g238874239060%_
                               _%part239192%_))
                          (gx#raise-syntax-error
                           '#f
                           '"unexpected type"
                           _%stx238849%_
                           _%type239113%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (pair? _%parts239117239125%_)
                                                  (let ((_%hd239122239369%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%parts239117239125%_)))
                                                        (_%tl239123239372%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%parts239117239125%_))))
                                                    (let* ((_%part239375%_
                                                            _%hd239122239369%_)
                                                           (_%rest239378%_
                                                            _%tl239123239372%_))
                                                      (_%K239121239365%_
                                                       _%rest239378%_
                                                       _%part239375%_)))
                                                  (_%else239119239186%_)))))
                                        _%$e239101%_)
                                       (cons (gx#datum->syntax '#f '%%app)
                                             (cons _%g238874239060%_
                                                   (foldr (lambda (_%g239382239385%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g239383239388%_)
                    (cons _%g239382239385%_ _%g239383239388%_))
                  '()
                  _%g238873239058%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (if (pair? _%g239080239087%_)
                             (let ((_%hd239084239395%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%g239080239087%_)))
                                   (_%tl239085239398%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%g239080239087%_))))
                               (let* ((_%var239401%_ _%hd239084239395%_)
                                      (_%parts239404%_ _%tl239085239398%_))
                                 (_%K239083239391%_
                                  _%parts239404%_
                                  _%var239401%_)))
                             (_%E239082239093%_)))
                       (cons (gx#datum->syntax '#f '%%app)
                             (cons _%g238874239060%_
                                   (foldr (lambda (_%g239406239409%_
                                                   _%g239407239412%_)
                                            (cons _%g239406239409%_
                                                  _%g239407239412%_))
                                          '()
                                          _%g238873239058%_))))))
                (_%__kont277367277368%_
                 (lambda (_%g238896238959%_)
                   (cons (gx#datum->syntax '#f '%%app)
                         (foldr (lambda (_%g238974238977%_ _%g238975238980%_)
                                  (cons _%g238974238977%_ _%g238975238980%_))
                                '()
                                _%g238896238959%_)))))
            (let* ((_%__match277443277444%_
                    (lambda (_%e238897238921%_
                             _%hd238898238925%_
                             _%tl238899238928%_
                             _%__splice277369277370%_
                             _%target238900238931%_
                             _%tl238902238934%_)
                      (letrec ((_%loop238903238937%_
                                (lambda (_%hd238901238941%_
                                         _%arg238907238944%_)
                                  (if (gx#stx-pair? _%hd238901238941%_)
                                      (let ((_%e238904238946%_
                                             (gx#syntax-e _%hd238901238941%_)))
                                        (let ((_%lp-tl238906238953%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e238904238946%_)))
                                              (_%lp-hd238905238950%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e238904238946%_))))
                                          (_%loop238903238937%_
                                           _%lp-tl238906238953%_
                                           (cons _%lp-hd238905238950%_
                                                 _%arg238907238944%_))))
                                      (let ((_%arg238908238956%_
                                             (reverse _%arg238907238944%_)))
                                        (_%__kont277367277368%_
                                         _%arg238908238956%_))))))
                        (_%loop238903238937%_ _%target238900238931%_ '()))))
                   (_%__match277429277430%_
                    (lambda (_%e238875238990%_
                             _%hd238876238994%_
                             _%tl238877238997%_
                             _%e238878239000%_
                             _%hd238879239004%_
                             _%tl238880239007%_
                             _%e238881239010%_
                             _%hd238882239014%_
                             _%tl238883239017%_
                             _%e238884239020%_
                             _%hd238885239024%_
                             _%tl238886239027%_
                             _%__splice277365277366%_
                             _%target238887239030%_
                             _%tl238889239033%_)
                      (letrec ((_%loop238890239036%_
                                (lambda (_%hd238888239040%_
                                         _%rand238894239043%_)
                                  (if (gx#stx-pair? _%hd238888239040%_)
                                      (let ((_%e238891239045%_
                                             (gx#syntax-e _%hd238888239040%_)))
                                        (let ((_%lp-tl238893239052%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e238891239045%_)))
                                              (_%lp-hd238892239049%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e238891239045%_))))
                                          (_%loop238890239036%_
                                           _%lp-tl238893239052%_
                                           (cons _%lp-hd238892239049%_
                                                 _%rand238894239043%_))))
                                      (let ((_%rand238895239055%_
                                             (reverse _%rand238894239043%_)))
                                        (_%__kont277363277364%_
                                         _%rand238895239055%_
                                         _%hd238885239024%_))))))
                        (_%loop238890239036%_ _%target238887239030%_ '()))))
                   (_%__match277403277404%_
                    (lambda (_%e238875238990%_
                             _%hd238876238994%_
                             _%tl238877238997%_
                             _%e238878239000%_
                             _%hd238879239004%_
                             _%tl238880239007%_)
                      (if (gx#stx-pair? _%hd238879239004%_)
                          (let ((_%e238881239010%_
                                 (gx#syntax-e _%hd238879239004%_)))
                            (let ((_%tl238883239017%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e238881239010%_)))
                                  (_%hd238882239014%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e238881239010%_))))
                              (if (gx#identifier? _%hd238882239014%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g283073_|
                                       _%hd238882239014%_)
                                      (if (gx#stx-pair? _%tl238883239017%_)
                                          (let ((_%e238884239020%_
                                                 (gx#syntax-e
                                                  _%tl238883239017%_)))
                                            (let ((_%tl238886239027%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e238884239020%_)))
                                                  (_%hd238885239024%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e238884239020%_))))
                                              (if (gx#stx-null?
                                                   _%tl238886239027%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl238880239007%_)
                                                      (let ((_%__splice277365277366%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl238880239007%_
                                                              '0)))
                                                        (let ((_%tl238889239033%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice277365277366%_ '1)))
                      (_%target238887239030%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice277365277366%_ '0))))
                  (if (gx#stx-null? _%tl238889239033%_)
                      (_%__match277429277430%_
                       _%e238875238990%_
                       _%hd238876238994%_
                       _%tl238877238997%_
                       _%e238878239000%_
                       _%hd238879239004%_
                       _%tl238880239007%_
                       _%e238881239010%_
                       _%hd238882239014%_
                       _%tl238883239017%_
                       _%e238884239020%_
                       _%hd238885239024%_
                       _%tl238886239027%_
                       _%__splice277365277366%_
                       _%target238887239030%_
                       _%tl238889239033%_)
                      (if (gx#stx-pair/null? _%tl238877238997%_)
                          (let ((_%__splice277369277370%_
                                 (gx#syntax-split-splice->vector
                                  _%tl238877238997%_
                                  '0)))
                            (let ((_%tl238902238934%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice277369277370%_
                                      '1)))
                                  (_%target238900238931%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice277369277370%_
                                      '0))))
                              (if (gx#stx-null? _%tl238902238934%_)
                                  (_%__match277443277444%_
                                   _%e238875238990%_
                                   _%hd238876238994%_
                                   _%tl238877238997%_
                                   _%__splice277369277370%_
                                   _%target238900238931%_
                                   _%tl238902238934%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g238854238914%_)))))
                          (let () (declare (not safe)) (_%g238854238914%_))))))
              (if (gx#stx-pair/null? _%tl238877238997%_)
                  (let ((_%__splice277369277370%_
                         (gx#syntax-split-splice->vector
                          _%tl238877238997%_
                          '0)))
                    (let ((_%tl238902238934%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice277369277370%_ '1)))
                          (_%target238900238931%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice277369277370%_ '0))))
                      (if (gx#stx-null? _%tl238902238934%_)
                          (_%__match277443277444%_
                           _%e238875238990%_
                           _%hd238876238994%_
                           _%tl238877238997%_
                           _%__splice277369277370%_
                           _%target238900238931%_
                           _%tl238902238934%_)
                          (let () (declare (not safe)) (_%g238854238914%_)))))
                  (let () (declare (not safe)) (_%g238854238914%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl238877238997%_)
                                                      (let ((_%__splice277369277370%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl238877238997%_
                                                              '0)))
                                                        (let ((_%tl238902238934%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice277369277370%_ '1)))
                      (_%target238900238931%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice277369277370%_ '0))))
                  (if (gx#stx-null? _%tl238902238934%_)
                      (_%__match277443277444%_
                       _%e238875238990%_
                       _%hd238876238994%_
                       _%tl238877238997%_
                       _%__splice277369277370%_
                       _%target238900238931%_
                       _%tl238902238934%_)
                      (let () (declare (not safe)) (_%g238854238914%_)))))
              (let () (declare (not safe)) (_%g238854238914%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl238877238997%_)
                                              (let ((_%__splice277369277370%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl238877238997%_
                                                      '0)))
                                                (let ((_%tl238902238934%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice277369277370%_
                                                          '1)))
                                                      (_%target238900238931%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice277369277370%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl238902238934%_)
                                                      (_%__match277443277444%_
                                                       _%e238875238990%_
                                                       _%hd238876238994%_
                                                       _%tl238877238997%_
                                                       _%__splice277369277370%_
                                                       _%target238900238931%_
                                                       _%tl238902238934%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g238854238914%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g238854238914%_))))
                                      (if (gx#stx-pair/null?
                                           _%tl238877238997%_)
                                          (let ((_%__splice277369277370%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl238877238997%_
                                                  '0)))
                                            (let ((_%tl238902238934%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice277369277370%_
                                                      '1)))
                                                  (_%target238900238931%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice277369277370%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl238902238934%_)
                                                  (_%__match277443277444%_
                                                   _%e238875238990%_
                                                   _%hd238876238994%_
                                                   _%tl238877238997%_
                                                   _%__splice277369277370%_
                                                   _%target238900238931%_
                                                   _%tl238902238934%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g238854238914%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g238854238914%_))))
                                  (if (gx#stx-pair/null? _%tl238877238997%_)
                                      (let ((_%__splice277369277370%_
                                             (gx#syntax-split-splice->vector
                                              _%tl238877238997%_
                                              '0)))
                                        (let ((_%tl238902238934%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice277369277370%_
                                                  '1)))
                                              (_%target238900238931%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice277369277370%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl238902238934%_)
                                              (_%__match277443277444%_
                                               _%e238875238990%_
                                               _%hd238876238994%_
                                               _%tl238877238997%_
                                               _%__splice277369277370%_
                                               _%target238900238931%_
                                               _%tl238902238934%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g238854238914%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g238854238914%_))))))
                          (if (gx#stx-pair/null? _%tl238877238997%_)
                              (let ((_%__splice277369277370%_
                                     (gx#syntax-split-splice->vector
                                      _%tl238877238997%_
                                      '0)))
                                (let ((_%tl238902238934%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice277369277370%_
                                          '1)))
                                      (_%target238900238931%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice277369277370%_
                                          '0))))
                                  (if (gx#stx-null? _%tl238902238934%_)
                                      (_%__match277443277444%_
                                       _%e238875238990%_
                                       _%hd238876238994%_
                                       _%tl238877238997%_
                                       _%__splice277369277370%_
                                       _%target238900238931%_
                                       _%tl238902238934%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g238854238914%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g238854238914%_))))))
                   (_%__match277391277392%_
                    (lambda (_%e238858239422%_
                             _%hd238859239426%_
                             _%tl238860239429%_
                             _%e238861239432%_
                             _%hd238862239436%_
                             _%tl238863239439%_
                             _%__splice277361277362%_
                             _%target238864239442%_
                             _%tl238866239445%_)
                      (letrec ((_%loop238867239448%_
                                (lambda (_%hd238865239452%_
                                         _%rand238871239455%_)
                                  (if (gx#stx-pair? _%hd238865239452%_)
                                      (let ((_%e238868239457%_
                                             (gx#syntax-e _%hd238865239452%_)))
                                        (let ((_%lp-tl238870239464%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e238868239457%_)))
                                              (_%lp-hd238869239461%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e238868239457%_))))
                                          (_%loop238867239448%_
                                           _%lp-tl238870239464%_
                                           (cons _%lp-hd238869239461%_
                                                 _%rand238871239455%_))))
                                      (let ((_%rand238872239467%_
                                             (reverse _%rand238871239455%_)))
                                        (let ((_%g238856239470%_
                                               _%rand238872239467%_)
                                              (_%g238857239472%_
                                               _%hd238862239436%_))
                                          (if (gx#identifier?
                                               _%g238857239472%_)
                                              (_%__kont277359277360%_
                                               _%g238856239470%_
                                               _%g238857239472%_)
                                              (_%__match277403277404%_
                                               _%e238858239422%_
                                               _%hd238859239426%_
                                               _%tl238860239429%_
                                               _%e238861239432%_
                                               _%hd238862239436%_
                                               _%tl238863239439%_))))))))
                        (_%loop238867239448%_ _%target238864239442%_ '())))))
              (if (gx#stx-pair? _%__stx277356277357%_)
                  (let ((_%e238858239422%_
                         (gx#syntax-e _%__stx277356277357%_)))
                    (let ((_%tl238860239429%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e238858239422%_)))
                          (_%hd238859239426%_
                           (let ()
                             (declare (not safe))
                             (##car _%e238858239422%_))))
                      (if (gx#stx-pair? _%tl238860239429%_)
                          (let ((_%e238861239432%_
                                 (gx#syntax-e _%tl238860239429%_)))
                            (let ((_%tl238863239439%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e238861239432%_)))
                                  (_%hd238862239436%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e238861239432%_))))
                              (if (gx#stx-pair/null? _%tl238863239439%_)
                                  (let ((_%__splice277361277362%_
                                         (gx#syntax-split-splice->vector
                                          _%tl238863239439%_
                                          '0)))
                                    (let ((_%tl238866239445%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice277361277362%_
                                              '1)))
                                          (_%target238864239442%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice277361277362%_
                                              '0))))
                                      (if (gx#stx-null? _%tl238866239445%_)
                                          (_%__match277391277392%_
                                           _%e238858239422%_
                                           _%hd238859239426%_
                                           _%tl238860239429%_
                                           _%e238861239432%_
                                           _%hd238862239436%_
                                           _%tl238863239439%_
                                           _%__splice277361277362%_
                                           _%target238864239442%_
                                           _%tl238866239445%_)
                                          (if (gx#stx-pair? _%hd238862239436%_)
                                              (let ((_%e238881239010%_
                                                     (gx#syntax-e
                                                      _%hd238862239436%_)))
                                                (let ((_%tl238883239017%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e238881239010%_)))
                                                      (_%hd238882239014%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e238881239010%_))))
                                                  (if (gx#identifier?
                                                       _%hd238882239014%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g283073_|
                                                           _%hd238882239014%_)
                                                          (if (gx#stx-pair?
                                                               _%tl238883239017%_)
                                                              (let ((_%e238884239020%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl238883239017%_)))
                        (let ((_%tl238886239027%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e238884239020%_)))
                              (_%hd238885239024%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e238884239020%_))))
                          (if (gx#stx-pair/null? _%tl238860239429%_)
                              (let ((_%__splice277369277370%_
                                     (gx#syntax-split-splice->vector
                                      _%tl238860239429%_
                                      '0)))
                                (let ((_%tl238902238934%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice277369277370%_
                                          '1)))
                                      (_%target238900238931%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice277369277370%_
                                          '0))))
                                  (if (gx#stx-null? _%tl238902238934%_)
                                      (_%__match277443277444%_
                                       _%e238858239422%_
                                       _%hd238859239426%_
                                       _%tl238860239429%_
                                       _%__splice277369277370%_
                                       _%target238900238931%_
                                       _%tl238902238934%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g238854238914%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g238854238914%_)))))
                      (if (gx#stx-pair/null? _%tl238860239429%_)
                          (let ((_%__splice277369277370%_
                                 (gx#syntax-split-splice->vector
                                  _%tl238860239429%_
                                  '0)))
                            (let ((_%tl238902238934%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice277369277370%_
                                      '1)))
                                  (_%target238900238931%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice277369277370%_
                                      '0))))
                              (if (gx#stx-null? _%tl238902238934%_)
                                  (_%__match277443277444%_
                                   _%e238858239422%_
                                   _%hd238859239426%_
                                   _%tl238860239429%_
                                   _%__splice277369277370%_
                                   _%target238900238931%_
                                   _%tl238902238934%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g238854238914%_)))))
                          (let () (declare (not safe)) (_%g238854238914%_))))
                  (if (gx#stx-pair/null? _%tl238860239429%_)
                      (let ((_%__splice277369277370%_
                             (gx#syntax-split-splice->vector
                              _%tl238860239429%_
                              '0)))
                        (let ((_%tl238902238934%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice277369277370%_ '1)))
                              (_%target238900238931%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice277369277370%_ '0))))
                          (if (gx#stx-null? _%tl238902238934%_)
                              (_%__match277443277444%_
                               _%e238858239422%_
                               _%hd238859239426%_
                               _%tl238860239429%_
                               _%__splice277369277370%_
                               _%target238900238931%_
                               _%tl238902238934%_)
                              (let ()
                                (declare (not safe))
                                (_%g238854238914%_)))))
                      (let () (declare (not safe)) (_%g238854238914%_))))
              (if (gx#stx-pair/null? _%tl238860239429%_)
                  (let ((_%__splice277369277370%_
                         (gx#syntax-split-splice->vector
                          _%tl238860239429%_
                          '0)))
                    (let ((_%tl238902238934%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice277369277370%_ '1)))
                          (_%target238900238931%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice277369277370%_ '0))))
                      (if (gx#stx-null? _%tl238902238934%_)
                          (_%__match277443277444%_
                           _%e238858239422%_
                           _%hd238859239426%_
                           _%tl238860239429%_
                           _%__splice277369277370%_
                           _%target238900238931%_
                           _%tl238902238934%_)
                          (let () (declare (not safe)) (_%g238854238914%_)))))
                  (let () (declare (not safe)) (_%g238854238914%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl238860239429%_)
                                                  (let ((_%__splice277369277370%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl238860239429%_
                                                          '0)))
                                                    (let ((_%tl238902238934%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice277369277370%_
                                                              '1)))
                                                          (_%target238900238931%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice277369277370%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl238902238934%_)
                                                          (_%__match277443277444%_
                                                           _%e238858239422%_
                                                           _%hd238859239426%_
                                                           _%tl238860239429%_
                                                           _%__splice277369277370%_
                                                           _%target238900238931%_
                                                           _%tl238902238934%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g238854238914%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g238854238914%_)))))))
                                  (if (gx#stx-pair? _%hd238862239436%_)
                                      (let ((_%e238881239010%_
                                             (gx#syntax-e _%hd238862239436%_)))
                                        (let ((_%tl238883239017%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e238881239010%_)))
                                              (_%hd238882239014%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e238881239010%_))))
                                          (if (gx#identifier?
                                               _%hd238882239014%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~Using[1]#_g283073_|
                                                   _%hd238882239014%_)
                                                  (if (gx#stx-pair?
                                                       _%tl238883239017%_)
                                                      (let ((_%e238884239020%_
                                                             (gx#syntax-e
                                                              _%tl238883239017%_)))
                                                        (let ((_%tl238886239027%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e238884239020%_)))
                      (_%hd238885239024%_
                       (let ()
                         (declare (not safe))
                         (##car _%e238884239020%_))))
                  (if (gx#stx-pair/null? _%tl238860239429%_)
                      (let ((_%__splice277369277370%_
                             (gx#syntax-split-splice->vector
                              _%tl238860239429%_
                              '0)))
                        (let ((_%tl238902238934%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice277369277370%_ '1)))
                              (_%target238900238931%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice277369277370%_ '0))))
                          (if (gx#stx-null? _%tl238902238934%_)
                              (_%__match277443277444%_
                               _%e238858239422%_
                               _%hd238859239426%_
                               _%tl238860239429%_
                               _%__splice277369277370%_
                               _%target238900238931%_
                               _%tl238902238934%_)
                              (let ()
                                (declare (not safe))
                                (_%g238854238914%_)))))
                      (let () (declare (not safe)) (_%g238854238914%_)))))
              (if (gx#stx-pair/null? _%tl238860239429%_)
                  (let ((_%__splice277369277370%_
                         (gx#syntax-split-splice->vector
                          _%tl238860239429%_
                          '0)))
                    (let ((_%tl238902238934%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice277369277370%_ '1)))
                          (_%target238900238931%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice277369277370%_ '0))))
                      (if (gx#stx-null? _%tl238902238934%_)
                          (_%__match277443277444%_
                           _%e238858239422%_
                           _%hd238859239426%_
                           _%tl238860239429%_
                           _%__splice277369277370%_
                           _%target238900238931%_
                           _%tl238902238934%_)
                          (let () (declare (not safe)) (_%g238854238914%_)))))
                  (let () (declare (not safe)) (_%g238854238914%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl238860239429%_)
                                                      (let ((_%__splice277369277370%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl238860239429%_
                                                              '0)))
                                                        (let ((_%tl238902238934%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice277369277370%_ '1)))
                      (_%target238900238931%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice277369277370%_ '0))))
                  (if (gx#stx-null? _%tl238902238934%_)
                      (_%__match277443277444%_
                       _%e238858239422%_
                       _%hd238859239426%_
                       _%tl238860239429%_
                       _%__splice277369277370%_
                       _%target238900238931%_
                       _%tl238902238934%_)
                      (let () (declare (not safe)) (_%g238854238914%_)))))
              (let () (declare (not safe)) (_%g238854238914%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl238860239429%_)
                                                  (let ((_%__splice277369277370%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl238860239429%_
                                                          '0)))
                                                    (let ((_%tl238902238934%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice277369277370%_
                                                              '1)))
                                                          (_%target238900238931%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice277369277370%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl238902238934%_)
                                                          (_%__match277443277444%_
                                                           _%e238858239422%_
                                                           _%hd238859239426%_
                                                           _%tl238860239429%_
                                                           _%__splice277369277370%_
                                                           _%target238900238931%_
                                                           _%tl238902238934%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g238854238914%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g238854238914%_))))))
                                      (if (gx#stx-pair/null?
                                           _%tl238860239429%_)
                                          (let ((_%__splice277369277370%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl238860239429%_
                                                  '0)))
                                            (let ((_%tl238902238934%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice277369277370%_
                                                      '1)))
                                                  (_%target238900238931%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice277369277370%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl238902238934%_)
                                                  (_%__match277443277444%_
                                                   _%e238858239422%_
                                                   _%hd238859239426%_
                                                   _%tl238860239429%_
                                                   _%__splice277369277370%_
                                                   _%target238900238931%_
                                                   _%tl238902238934%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g238854238914%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g238854238914%_)))))))
                          (if (gx#stx-pair/null? _%tl238860239429%_)
                              (let ((_%__splice277369277370%_
                                     (gx#syntax-split-splice->vector
                                      _%tl238860239429%_
                                      '0)))
                                (let ((_%tl238902238934%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice277369277370%_
                                          '1)))
                                      (_%target238900238931%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice277369277370%_
                                          '0))))
                                  (if (gx#stx-null? _%tl238902238934%_)
                                      (_%__match277443277444%_
                                       _%e238858239422%_
                                       _%hd238859239426%_
                                       _%tl238860239429%_
                                       _%__splice277369277370%_
                                       _%target238900238931%_
                                       _%tl238902238934%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g238854238914%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g238854238914%_))))))
                  (let () (declare (not safe)) (_%g238854238914%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%ref-dotted|
      (lambda (_%stx239504%_)
        (let* ((_%__stx277446277447%_ _%stx239504%_)
               (_%g239508239529%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx277446277447%_))))
          (let ((_%__kont277449277450%_
                 (lambda (_%g239510239597%_)
                   (let* ((_%g239609239616%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx239504%_
                            _%g239510239597%_))
                          (_%E239611239622%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g239609239616%_
                                    '([var . parts]))
                             (void)))
                          (_%K239612239838%_
                           (lambda (_%parts239626%_ _%var239628%_)
                             (let ((_%$e239630%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var239628%_))))
                               (if _%$e239630%_
                                   ((lambda (_%te239634%_)
                                      (let _%loop239637%_ ((_%parts239640%_
                                                            _%parts239626%_)
                                                           (_%type239642%_
                                                            (##direct-structure-ref
                                                             _%te239634%_
                                                             '2
                                                             gerbil/core/contract~TypeEnv#type-env::t
                                                             '#f))
                                                           (_%object239643%_
                                                            _%var239628%_)
                                                           (_%nil-check?239644%_
                                                            '#f))
                                        (let* ((_%parts239645239653%_
                                                _%parts239640%_)
                                               (_%else239647239665%_
                                                (lambda () _%object239643%_))
                                               (_%K239649239820%_
                                                (lambda (_%rest239669%_
                                                         _%part239671%_)
                                                  (if (and (not _%nil-check?239644%_)
                                                           (let ((__tmp283074
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part239671%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp283074)))
              (let ((_%str239675%_ (symbol->string _%part239671%_)))
                (_%loop239637%_
                 (cons (let ((__tmp283075
                              (substring
                               _%str239675%_
                               '1
                               (string-length _%str239675%_))))
                         (declare (not safe))
                         (##string->symbol __tmp283075))
                       _%rest239669%_)
                 _%type239642%_
                 _%object239643%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type239642%_))
                  (let* ((_%g239680239695%_
                          (lambda (_%g239681239691%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g239681239691%_)))
                         (_%g239679239812%_
                          (lambda (_%g239681239699%_)
                            (if (gx#stx-pair? _%g239681239699%_)
                                (let ((_%e239684239702%_
                                       (gx#syntax-e _%g239681239699%_)))
                                  (let ((_%hd239685239706%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e239684239702%_)))
                                        (_%tl239686239709%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e239684239702%_))))
                                    (if (gx#stx-pair? _%tl239686239709%_)
                                        (let ((_%e239687239712%_
                                               (gx#syntax-e
                                                _%tl239686239709%_)))
                                          (let ((_%hd239688239716%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e239687239712%_)))
                                                (_%tl239689239719%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e239687239712%_))))
                                            (if (gx#stx-null?
                                                 _%tl239689239719%_)
                                                ((lambda (_%g239682239722%_
                                                          _%g239683239724%_)
                                                   (if (null? _%rest239669%_)
                                                       (let ((_%$e239754%_
                                                              (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                               _%type239642%_
                                                               _%part239671%_)))
                                                         (if _%$e239754%_
                                                             ((lambda (_%slot-type239758%_)
                                                                (let* ((_%g239761239769%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g239762239765%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g239762239765%_)))
                               (_%g239760239792%_
                                (lambda (_%g239762239773%_)
                                  ((lambda (_%g239763239776%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'begin-annotation)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '@type)
                                                       (cons _%g239763239776%_
                                                             '()))
                                                 (cons (cons _%g239682239722%_
                                                             (cons _%g239683239724%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%g239762239773%_))))
                          (_%g239760239792%_
                           (let ()
                             (declare (not safe))
                             (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                              _%stx239504%_
                              _%slot-type239758%_)))))
                      _%$e239754%_)
                     (if _%nil-check?239644%_
                         (cons _%g239682239722%_
                               (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                           (cons _%g239683239724%_ '()))
                                     '()))
                         (cons _%g239682239722%_
                               (cons _%g239683239724%_ '())))))
               (let ((_%$e239800%_
                      (|gerbil/core/contract~Using[1]#!class-slot-type|
                       _%type239642%_
                       _%part239671%_)))
                 (if _%$e239800%_
                     ((lambda (_%type239804%_)
                        (let ((_%type239807%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                  _%stx239504%_
                                  _%type239804%_))))
                          (if _%nil-check?239644%_
                              (_%loop239637%_
                               _%rest239669%_
                               _%type239807%_
                               (cons _%g239682239722%_
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'check-nil!)
                                                 (cons _%g239683239724%_ '()))
                                           '()))
                               '#f)
                              (_%loop239637%_
                               _%rest239669%_
                               _%type239807%_
                               (cons _%g239682239722%_
                                     (cons _%g239683239724%_ '()))
                               '#f))))
                      _%$e239800%_)
                     (gx#raise-syntax-error
                      '#f
                      '"unresolved dotted reference; unknown type for slot"
                      _%stx239504%_
                      _%g239510239597%_
                      _%part239671%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd239688239716%_
                                                 _%hd239685239706%_)
                                                (_%g239680239695%_
                                                 _%g239681239699%_))))
                                        (_%g239680239695%_
                                         _%g239681239699%_))))
                                (_%g239680239695%_ _%g239681239699%_)))))
                    (_%g239679239812%_
                     (list (if _%nil-check?239644%_
                               (cons 'check-nil! (cons _%object239643%_ '()))
                               _%object239643%_)
                           (|gerbil/core/contract~Using[1]#get-slot-accessor|
                            _%stx239504%_
                            _%type239642%_
                            _%part239671%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type239642%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx239504%_
                       _%type239642%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (pair? _%parts239645239653%_)
                                              (let ((_%hd239650239824%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts239645239653%_)))
                                                    (_%tl239651239827%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts239645239653%_))))
                                                (let* ((_%part239830%_
                                                        _%hd239650239824%_)
                                                       (_%rest239833%_
                                                        _%tl239651239827%_))
                                                  (_%K239649239820%_
                                                   _%rest239833%_
                                                   _%part239830%_)))
                                              (_%else239647239665%_)))))
                                    _%$e239630%_)
                                   (cons (gx#datum->syntax '#f '%%ref)
                                         (cons _%g239510239597%_ '())))))))
                     (if (pair? _%g239609239616%_)
                         (let ((_%hd239613239842%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g239609239616%_)))
                               (_%tl239614239845%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g239609239616%_))))
                           (let* ((_%var239848%_ _%hd239613239842%_)
                                  (_%parts239851%_ _%tl239614239845%_))
                             (_%K239612239838%_
                              _%parts239851%_
                              _%var239848%_)))
                         (_%E239611239622%_)))))
                (_%__kont277451277452%_
                 (lambda (_%g239517239556%_)
                   (cons (gx#datum->syntax '#f '%%ref)
                         (cons _%g239517239556%_ '())))))
            (let ((_%__match277467277468%_
                   (lambda (_%e239511239577%_
                            _%hd239512239581%_
                            _%tl239513239584%_
                            _%e239514239587%_
                            _%hd239515239591%_
                            _%tl239516239594%_)
                     (let ((_%g239510239597%_ _%hd239515239591%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%g239510239597%_)
                           (_%__kont277449277450%_ _%g239510239597%_)
                           (_%__kont277451277452%_ _%hd239515239591%_))))))
              (if (gx#stx-pair? _%__stx277446277447%_)
                  (let ((_%e239511239577%_
                         (gx#syntax-e _%__stx277446277447%_)))
                    (let ((_%tl239513239584%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e239511239577%_)))
                          (_%hd239512239581%_
                           (let ()
                             (declare (not safe))
                             (##car _%e239511239577%_))))
                      (if (gx#stx-pair? _%tl239513239584%_)
                          (let ((_%e239514239587%_
                                 (gx#syntax-e _%tl239513239584%_)))
                            (let ((_%tl239516239594%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e239514239587%_)))
                                  (_%hd239515239591%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e239514239587%_))))
                              (if (gx#stx-null? _%tl239516239594%_)
                                  (_%__match277467277468%_
                                   _%e239511239577%_
                                   _%hd239512239581%_
                                   _%tl239513239584%_
                                   _%e239514239587%_
                                   _%hd239515239591%_
                                   _%tl239516239594%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g239508239529%_)))))
                          (let () (declare (not safe)) (_%g239508239529%_)))))
                  (let () (declare (not safe)) (_%g239508239529%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%set-dotted!|
      (lambda (_%stx239858%_)
        (let* ((_%__stx277484277485%_ _%stx239858%_)
               (_%g239862239891%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx277484277485%_))))
          (let ((_%__kont277487277488%_
                 (lambda (_%g239864239983%_ _%g239865239985%_)
                   (let* ((_%g239999240006%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx239858%_
                            _%g239865239985%_))
                          (_%E240001240012%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g239999240006%_
                                    '([var . parts]))
                             (void)))
                          (_%K240002240242%_
                           (lambda (_%parts240016%_ _%var240018%_)
                             (let ((_%$e240020%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var240018%_))))
                               (if _%$e240020%_
                                   ((lambda (_%te240024%_)
                                      (let _%loop240027%_ ((_%parts240030%_
                                                            _%parts240016%_)
                                                           (_%type240032%_
                                                            (##direct-structure-ref
                                                             _%te240024%_
                                                             '2
                                                             gerbil/core/contract~TypeEnv#type-env::t
                                                             '#f))
                                                           (_%object240033%_
                                                            _%var240018%_)
                                                           (_%checked-mutator?240034%_
                                                            (##direct-structure-ref
                                                             _%te240024%_
                                                             '3
                                                             gerbil/core/contract~TypeEnv#type-env::t
                                                             '#f))
                                                           (_%nil-check?240035%_
                                                            '#f))
                                        (let* ((_%parts240036240043%_
                                                _%parts240030%_)
                                               (_%E240038240049%_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _%parts240036240043%_
                                                         '([part . rest]))
                                                  (void)))
                                               (_%K240039240224%_
                                                (lambda (_%rest240053%_
                                                         _%part240055%_)
                                                  (if (and (not _%nil-check?240035%_)
                                                           (let ((__tmp283076
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part240055%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp283076)))
              (let ((_%str240059%_ (symbol->string _%part240055%_)))
                (_%loop240027%_
                 (cons (let ((__tmp283077
                              (substring
                               _%str240059%_
                               '1
                               (string-length _%str240059%_))))
                         (declare (not safe))
                         (##string->symbol __tmp283077))
                       _%rest240053%_)
                 _%type240032%_
                 _%object240033%_
                 _%checked-mutator?240034%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type240032%_))
                  (if (null? _%rest240053%_)
                      (let* ((_%g240066240081%_
                              (lambda (_%g240067240077%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g240067240077%_)))
                             (_%g240065240138%_
                              (lambda (_%g240067240085%_)
                                (if (gx#stx-pair? _%g240067240085%_)
                                    (let ((_%e240070240088%_
                                           (gx#syntax-e _%g240067240085%_)))
                                      (let ((_%hd240071240092%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e240070240088%_)))
                                            (_%tl240072240095%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e240070240088%_))))
                                        (if (gx#stx-pair? _%tl240072240095%_)
                                            (let ((_%e240073240098%_
                                                   (gx#syntax-e
                                                    _%tl240072240095%_)))
                                              (let ((_%hd240074240102%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e240073240098%_)))
                                                    (_%tl240075240105%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e240073240098%_))))
                                                (if (gx#stx-null?
                                                     _%tl240075240105%_)
                                                    ((lambda (_%g240068240108%_
                                                              _%g240069240110%_)
                                                       (if _%nil-check?240035%_
                                                           (cons _%g240068240108%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                     (cons _%g240069240110%_ '()))
                               (cons _%g239864239983%_ '())))
                   (cons _%g240068240108%_
                         (cons _%g240069240110%_
                               (cons _%g239864239983%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd240074240102%_
                                                     _%hd240071240092%_)
                                                    (_%g240066240081%_
                                                     _%g240067240085%_))))
                                            (_%g240066240081%_
                                             _%g240067240085%_))))
                                    (_%g240066240081%_ _%g240067240085%_)))))
                        (_%g240065240138%_
                         (list _%object240033%_
                               (|gerbil/core/contract~Using[1]#get-slot-mutator|
                                _%stx239858%_
                                _%type240032%_
                                _%part240055%_
                                (if _%checked-mutator?240034%_
                                    (|gerbil/core/contract~Using[1]#!class-slot-contract|
                                     _%type240032%_
                                     _%part240055%_)
                                    '#f)))))
                      (let ((_%$e240142%_
                             (|gerbil/core/contract~Using[1]#!class-slot-type|
                              _%type240032%_
                              _%part240055%_)))
                        (if _%$e240142%_
                            ((lambda (_%type240146%_)
                               (let* ((_%type240149%_
                                       (let ()
                                         (declare (not safe))
                                         (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                          _%stx239858%_
                                          _%type240146%_)))
                                      (_%g240152240167%_
                                       (lambda (_%g240153240163%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g240153240163%_)))
                                      (_%g240151240214%_
                                       (lambda (_%g240153240171%_)
                                         (if (gx#stx-pair? _%g240153240171%_)
                                             (let ((_%e240156240174%_
                                                    (gx#syntax-e
                                                     _%g240153240171%_)))
                                               (let ((_%hd240157240178%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e240156240174%_)))
                                                     (_%tl240158240181%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e240156240174%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl240158240181%_)
                                                     (let ((_%e240159240184%_
                                                            (gx#syntax-e
                                                             _%tl240158240181%_)))
                                                       (let ((_%hd240160240188%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e240159240184%_)))
                     (_%tl240161240191%_
                      (let () (declare (not safe)) (##cdr _%e240159240184%_))))
                 (if (gx#stx-null? _%tl240161240191%_)
                     ((lambda (_%g240154240194%_ _%g240155240196%_)
                        (_%loop240027%_
                         _%rest240053%_
                         _%type240149%_
                         (cons _%g240154240194%_ (cons _%g240155240196%_ '()))
                         (|gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
                          _%type240149%_
                          _%part240055%_)
                         '#f))
                      _%hd240160240188%_
                      _%hd240157240178%_)
                     (_%g240152240167%_ _%g240153240171%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g240152240167%_
                                                      _%g240153240171%_))))
                                             (_%g240152240167%_
                                              _%g240153240171%_)))))
                                 (_%g240151240214%_
                                  (list (if _%nil-check?240035%_
                                            (cons 'check-nil!
                                                  (cons _%object240033%_ '()))
                                            _%object240033%_)
                                        (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                         _%stx239858%_
                                         _%type240149%_
                                         _%part240055%_)))))
                             _%$e240142%_)
                            (gx#raise-syntax-error
                             '#f
                             '"unresolved dotted reference; unknown type for slot"
                             _%stx239858%_
                             _%g239865239985%_
                             _%part240055%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type240032%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx239858%_
                       _%type240032%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (pair? _%parts240036240043%_)
                                              (let ((_%hd240040240228%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts240036240043%_)))
                                                    (_%tl240041240231%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts240036240043%_))))
                                                (let* ((_%part240234%_
                                                        _%hd240040240228%_)
                                                       (_%rest240237%_
                                                        _%tl240041240231%_))
                                                  (_%K240039240224%_
                                                   _%rest240237%_
                                                   _%part240234%_)))
                                              (_%E240038240049%_)))))
                                    _%$e240020%_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/more-sugar[1]#expand-set!|
                                      _%stx239858%_)))))))
                     (if (pair? _%g239999240006%_)
                         (let ((_%hd240003240246%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g239999240006%_)))
                               (_%tl240004240249%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g239999240006%_))))
                           (let* ((_%var240252%_ _%hd240003240246%_)
                                  (_%parts240255%_ _%tl240004240249%_))
                             (_%K240002240242%_
                              _%parts240255%_
                              _%var240252%_)))
                         (_%E240001240012%_)))))
                (_%__kont277489277490%_
                 (lambda (_%g239875239928%_ _%g239876239930%_)
                   (let ()
                     (declare (not safe))
                     (|gerbil/core/more-sugar[1]#expand-set!|
                      _%stx239858%_)))))
            (let ((_%__match277511277512%_
                   (lambda (_%e239866239953%_
                            _%hd239867239957%_
                            _%tl239868239960%_
                            _%e239869239963%_
                            _%hd239870239967%_
                            _%tl239871239970%_
                            _%e239872239973%_
                            _%hd239873239977%_
                            _%tl239874239980%_)
                     (let ((_%g239864239983%_ _%hd239873239977%_)
                           (_%g239865239985%_ _%hd239870239967%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%g239865239985%_)
                           (_%__kont277487277488%_
                            _%g239864239983%_
                            _%g239865239985%_)
                           (_%__kont277489277490%_
                            _%hd239873239977%_
                            _%hd239870239967%_))))))
              (if (gx#stx-pair? _%__stx277484277485%_)
                  (let ((_%e239866239953%_
                         (gx#syntax-e _%__stx277484277485%_)))
                    (let ((_%tl239868239960%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e239866239953%_)))
                          (_%hd239867239957%_
                           (let ()
                             (declare (not safe))
                             (##car _%e239866239953%_))))
                      (if (gx#stx-pair? _%tl239868239960%_)
                          (let ((_%e239869239963%_
                                 (gx#syntax-e _%tl239868239960%_)))
                            (let ((_%tl239871239970%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e239869239963%_)))
                                  (_%hd239870239967%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e239869239963%_))))
                              (if (gx#stx-pair? _%tl239871239970%_)
                                  (let ((_%e239872239973%_
                                         (gx#syntax-e _%tl239871239970%_)))
                                    (let ((_%tl239874239980%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e239872239973%_)))
                                          (_%hd239873239977%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e239872239973%_))))
                                      (if (gx#stx-null? _%tl239874239980%_)
                                          (_%__match277511277512%_
                                           _%e239866239953%_
                                           _%hd239867239957%_
                                           _%tl239868239960%_
                                           _%e239869239963%_
                                           _%hd239870239967%_
                                           _%tl239871239970%_
                                           _%e239872239973%_
                                           _%hd239873239977%_
                                           _%tl239874239980%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g239862239891%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g239862239891%_)))))
                          (let () (declare (not safe)) (_%g239862239891%_)))))
                  (let () (declare (not safe)) (_%g239862239891%_))))))))))
