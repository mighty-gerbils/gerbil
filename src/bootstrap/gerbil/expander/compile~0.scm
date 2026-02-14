(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1771104509)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx187366%_)
        (let* ((_%e187367187374%_ _%stx187366%_)
               (_%E187369187378%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187367187374%_)))
               (_%E187368187392%_
                (lambda ()
                  (if (gx#stx-pair? _%e187367187374%_)
                      (let ((_%e187370187382%_
                             (gx#syntax-e _%e187367187374%_)))
                        (let ((_%hd187371187385%_ (##car _%e187370187382%_))
                              (_%tl187372187387%_ (##cdr _%e187370187382%_)))
                          (let* ((_%form187390%_ _%hd187371187385%_)
                                 (__self187395
                                  (gx#syntax-local-e__0 _%form187390%_))
                                 (__method187396
                                  (__method-ref
                                   __self187395
                                   'compile-top-syntax)))
                            (if __method187396
                                (__method187396 __self187395 _%stx187366%_)
                                (begin
                                  (error '"Missing method"
                                         __self187395
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%E187369187378%_)))))
          (_%E187368187392%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self187315%_ _%stx187316%_)
        (let* ((_%self187319%_ _%self187315%_)
               (_%self187328187336%_ _%self187319%_)
               (_%E187330187339%_
                (lambda ()
                  (error '"No clause matching"
                         _%self187328187336%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K187331187352%_
                (lambda (_%K187342%_)
                  (let ((_%$e187344%_ (gx#stx-source _%stx187316%_)))
                    (if _%$e187344%_
                        ((lambda (_%g187346187348%_)
                           (gx#stx-wrap-source
                            (_%K187342%_ _%stx187316%_)
                            _%g187346187348%_))
                         _%$e187344%_)
                        (_%K187342%_ _%stx187316%_)))))
               (_%e187332187355%_
                (##unchecked-structure-ref _%self187328187336%_ '1 '#f '#f))
               (_%e187333187358%_
                (##unchecked-structure-ref _%self187328187336%_ '2 '#f '#f))
               (_%e187334187361%_
                (##unchecked-structure-ref _%self187328187336%_ '3 '#f '#f))
               (_%K187364%_ _%e187334187361%_))
          (_%K187331187352%_ _%K187364%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx187189%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx187189%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx187159%_)
        (let* ((_%e187160187167%_ _%stx187159%_)
               (_%E187162187171%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187160187167%_)))
               (_%E187161187185%_
                (lambda ()
                  (if (gx#stx-pair? _%e187160187167%_)
                      (let ((_%e187163187175%_
                             (gx#syntax-e _%e187160187167%_)))
                        (let ((_%hd187164187178%_ (##car _%e187163187175%_))
                              (_%tl187165187180%_ (##cdr _%e187163187175%_)))
                          (let ((_%body187183%_ _%tl187165187180%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body187183%_)))))
                      (_%E187162187171%_)))))
          (_%E187161187185%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx187128%_)
        (let* ((_%e187129187136%_ _%stx187128%_)
               (_%E187131187140%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187129187136%_)))
               (_%E187130187155%_
                (lambda ()
                  (if (gx#stx-pair? _%e187129187136%_)
                      (let ((_%e187132187144%_
                             (gx#syntax-e _%e187129187136%_)))
                        (let ((_%hd187133187147%_ (##car _%e187132187144%_))
                              (_%tl187134187149%_ (##cdr _%e187132187144%_)))
                          (let ((_%body187152%_ _%tl187134187149%_))
                            (cons '%#begin-syntax
                                  (call-with-parameters__1
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body187152%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%E187131187140%_)))))
          (_%E187130187155%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx187098%_)
        (let* ((_%e187099187106%_ _%stx187098%_)
               (_%E187101187110%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187099187106%_)))
               (_%E187100187124%_
                (lambda ()
                  (if (gx#stx-pair? _%e187099187106%_)
                      (let ((_%e187102187114%_
                             (gx#syntax-e _%e187099187106%_)))
                        (let ((_%hd187103187117%_ (##car _%e187102187114%_))
                              (_%tl187104187119%_ (##cdr _%e187102187114%_)))
                          (let ((_%body187122%_ _%tl187104187119%_))
                            (cons '%#begin-foreign _%body187122%_))))
                      (_%E187101187110%_)))))
          (_%E187100187124%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx187044%_)
        (let* ((_%e187045187058%_ _%stx187044%_)
               (_%E187047187062%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187045187058%_)))
               (_%E187046187094%_
                (lambda ()
                  (if (gx#stx-pair? _%e187045187058%_)
                      (let ((_%e187048187066%_
                             (gx#syntax-e _%e187045187058%_)))
                        (let ((_%hd187049187069%_ (##car _%e187048187066%_))
                              (_%tl187050187071%_ (##cdr _%e187048187066%_)))
                          (if (gx#stx-pair? _%tl187050187071%_)
                              (let ((_%e187051187074%_
                                     (gx#syntax-e _%tl187050187071%_)))
                                (let ((_%hd187052187077%_
                                       (##car _%e187051187074%_))
                                      (_%tl187053187079%_
                                       (##cdr _%e187051187074%_)))
                                  (let ((_%ann187082%_ _%hd187052187077%_))
                                    (if (gx#stx-pair? _%tl187053187079%_)
                                        (let ((_%e187054187084%_
                                               (gx#syntax-e
                                                _%tl187053187079%_)))
                                          (let ((_%hd187055187087%_
                                                 (##car _%e187054187084%_))
                                                (_%tl187056187089%_
                                                 (##cdr _%e187054187084%_)))
                                            (let ((_%expr187092%_
                                                   _%hd187055187087%_))
                                              (if (gx#stx-null?
                                                   _%tl187056187089%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr187092%_)
                                                  (_%E187047187062%_)))))
                                        (_%E187047187062%_)))))
                              (_%E187047187062%_))))
                      (_%E187047187062%_)))))
          (_%E187046187094%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx187014%_)
        (let* ((_%e187015187022%_ _%stx187014%_)
               (_%E187017187026%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187015187022%_)))
               (_%E187016187040%_
                (lambda ()
                  (if (gx#stx-pair? _%e187015187022%_)
                      (let ((_%e187018187030%_
                             (gx#syntax-e _%e187015187022%_)))
                        (let ((_%hd187019187033%_ (##car _%e187018187030%_))
                              (_%tl187020187035%_ (##cdr _%e187018187030%_)))
                          (let ((_%body187038%_ _%tl187020187035%_))
                            (cons '%#import _%body187038%_))))
                      (_%E187017187026%_)))))
          (_%E187016187040%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx186971%_)
        (let* ((_%e186972186982%_ _%stx186971%_)
               (_%E186974186986%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186972186982%_)))
               (_%E186973187010%_
                (lambda ()
                  (if (gx#stx-pair? _%e186972186982%_)
                      (let ((_%e186975186990%_
                             (gx#syntax-e _%e186972186982%_)))
                        (let ((_%hd186976186993%_ (##car _%e186975186990%_))
                              (_%tl186977186995%_ (##cdr _%e186975186990%_)))
                          (if (gx#stx-pair? _%tl186977186995%_)
                              (let ((_%e186978186998%_
                                     (gx#syntax-e _%tl186977186995%_)))
                                (let ((_%hd186979187001%_
                                       (##car _%e186978186998%_))
                                      (_%tl186980187003%_
                                       (##cdr _%e186978186998%_)))
                                  (let* ((_%hd187006%_ _%hd186979187001%_)
                                         (_%body187008%_ _%tl186980187003%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd187006%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body187008%_))))))
                              (_%E186974186986%_))))
                      (_%E186974186986%_)))))
          (_%E186973187010%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx186941%_)
        (let* ((_%e186942186949%_ _%stx186941%_)
               (_%E186944186953%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186942186949%_)))
               (_%E186943186967%_
                (lambda ()
                  (if (gx#stx-pair? _%e186942186949%_)
                      (let ((_%e186945186957%_
                             (gx#syntax-e _%e186942186949%_)))
                        (let ((_%hd186946186960%_ (##car _%e186945186957%_))
                              (_%tl186947186962%_ (##cdr _%e186945186957%_)))
                          (let ((_%body186965%_ _%tl186947186962%_))
                            (cons '%#export _%body186965%_))))
                      (_%E186944186953%_)))))
          (_%E186943186967%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx186911%_)
        (let* ((_%e186912186919%_ _%stx186911%_)
               (_%E186914186923%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186912186919%_)))
               (_%E186913186937%_
                (lambda ()
                  (if (gx#stx-pair? _%e186912186919%_)
                      (let ((_%e186915186927%_
                             (gx#syntax-e _%e186912186919%_)))
                        (let ((_%hd186916186930%_ (##car _%e186915186927%_))
                              (_%tl186917186932%_ (##cdr _%e186915186927%_)))
                          (let ((_%body186935%_ _%tl186917186932%_))
                            (cons '%#provide _%body186935%_))))
                      (_%E186914186923%_)))))
          (_%E186913186937%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx186881%_)
        (let* ((_%e186882186889%_ _%stx186881%_)
               (_%E186884186893%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186882186889%_)))
               (_%E186883186907%_
                (lambda ()
                  (if (gx#stx-pair? _%e186882186889%_)
                      (let ((_%e186885186897%_
                             (gx#syntax-e _%e186882186889%_)))
                        (let ((_%hd186886186900%_ (##car _%e186885186897%_))
                              (_%tl186887186902%_ (##cdr _%e186885186897%_)))
                          (let ((_%body186905%_ _%tl186887186902%_))
                            (cons '%#extern _%body186905%_))))
                      (_%E186884186893%_)))))
          (_%E186883186907%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx186827%_)
        (let* ((_%e186828186841%_ _%stx186827%_)
               (_%E186830186845%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186828186841%_)))
               (_%E186829186877%_
                (lambda ()
                  (if (gx#stx-pair? _%e186828186841%_)
                      (let ((_%e186831186849%_
                             (gx#syntax-e _%e186828186841%_)))
                        (let ((_%hd186832186852%_ (##car _%e186831186849%_))
                              (_%tl186833186854%_ (##cdr _%e186831186849%_)))
                          (if (gx#stx-pair? _%tl186833186854%_)
                              (let ((_%e186834186857%_
                                     (gx#syntax-e _%tl186833186854%_)))
                                (let ((_%hd186835186860%_
                                       (##car _%e186834186857%_))
                                      (_%tl186836186862%_
                                       (##cdr _%e186834186857%_)))
                                  (let ((_%hd186865%_ _%hd186835186860%_))
                                    (if (gx#stx-pair? _%tl186836186862%_)
                                        (let ((_%e186837186867%_
                                               (gx#syntax-e
                                                _%tl186836186862%_)))
                                          (let ((_%hd186838186870%_
                                                 (##car _%e186837186867%_))
                                                (_%tl186839186872%_
                                                 (##cdr _%e186837186867%_)))
                                            (let ((_%expr186875%_
                                                   _%hd186838186870%_))
                                              (if (gx#stx-null?
                                                   _%tl186839186872%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd186865%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr186875%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E186830186845%_)))))
                                        (_%E186830186845%_)))))
                              (_%E186830186845%_))))
                      (_%E186830186845%_)))))
          (_%E186829186877%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx186772%_)
        (let* ((_%e186773186786%_ _%stx186772%_)
               (_%E186775186790%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186773186786%_)))
               (_%E186774186823%_
                (lambda ()
                  (if (gx#stx-pair? _%e186773186786%_)
                      (let ((_%e186776186794%_
                             (gx#syntax-e _%e186773186786%_)))
                        (let ((_%hd186777186797%_ (##car _%e186776186794%_))
                              (_%tl186778186799%_ (##cdr _%e186776186794%_)))
                          (if (gx#stx-pair? _%tl186778186799%_)
                              (let ((_%e186779186802%_
                                     (gx#syntax-e _%tl186778186799%_)))
                                (let ((_%hd186780186805%_
                                       (##car _%e186779186802%_))
                                      (_%tl186781186807%_
                                       (##cdr _%e186779186802%_)))
                                  (let ((_%hd186810%_ _%hd186780186805%_))
                                    (if (gx#stx-pair? _%tl186781186807%_)
                                        (let ((_%e186782186812%_
                                               (gx#syntax-e
                                                _%tl186781186807%_)))
                                          (let ((_%hd186783186815%_
                                                 (##car _%e186782186812%_))
                                                (_%tl186784186817%_
                                                 (##cdr _%e186782186812%_)))
                                            (let ((_%expr186820%_
                                                   _%hd186783186815%_))
                                              (if (gx#stx-null?
                                                   _%tl186784186817%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd186810%_
                                                              (cons (call-with-parameters__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr186820%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E186775186790%_)))))
                                        (_%E186775186790%_)))))
                              (_%E186775186790%_))))
                      (_%E186775186790%_)))))
          (_%E186774186823%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx186742%_)
        (let* ((_%e186743186750%_ _%stx186742%_)
               (_%E186745186754%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186743186750%_)))
               (_%E186744186768%_
                (lambda ()
                  (if (gx#stx-pair? _%e186743186750%_)
                      (let ((_%e186746186758%_
                             (gx#syntax-e _%e186743186750%_)))
                        (let ((_%hd186747186761%_ (##car _%e186746186758%_))
                              (_%tl186748186763%_ (##cdr _%e186746186758%_)))
                          (let ((_%body186766%_ _%tl186748186763%_))
                            (cons '%#define-alias _%body186766%_))))
                      (_%E186745186754%_)))))
          (_%E186744186768%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx186712%_)
        (let* ((_%e186713186720%_ _%stx186712%_)
               (_%E186715186724%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186713186720%_)))
               (_%E186714186738%_
                (lambda ()
                  (if (gx#stx-pair? _%e186713186720%_)
                      (let ((_%e186716186728%_
                             (gx#syntax-e _%e186713186720%_)))
                        (let ((_%hd186717186731%_ (##car _%e186716186728%_))
                              (_%tl186718186733%_ (##cdr _%e186716186728%_)))
                          (let ((_%body186736%_ _%tl186718186733%_))
                            (cons '%#define-runtime _%body186736%_))))
                      (_%E186715186724%_)))))
          (_%E186714186738%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx186682%_)
        (let* ((_%e186683186690%_ _%stx186682%_)
               (_%E186685186694%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186683186690%_)))
               (_%E186684186708%_
                (lambda ()
                  (if (gx#stx-pair? _%e186683186690%_)
                      (let ((_%e186686186698%_
                             (gx#syntax-e _%e186683186690%_)))
                        (let ((_%hd186687186701%_ (##car _%e186686186698%_))
                              (_%tl186688186703%_ (##cdr _%e186686186698%_)))
                          (let ((_%decls186706%_ _%tl186688186703%_))
                            (cons '%#declare _%decls186706%_))))
                      (_%E186685186694%_)))))
          (_%E186684186708%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx186652%_)
        (let* ((_%e186653186660%_ _%stx186652%_)
               (_%E186655186664%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186653186660%_)))
               (_%E186654186678%_
                (lambda ()
                  (if (gx#stx-pair? _%e186653186660%_)
                      (let ((_%e186656186668%_
                             (gx#syntax-e _%e186653186660%_)))
                        (let ((_%hd186657186671%_ (##car _%e186656186668%_))
                              (_%tl186658186673%_ (##cdr _%e186656186668%_)))
                          (let ((_%clause186676%_ _%tl186658186673%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause186676%_)))))
                      (_%E186655186664%_)))))
          (_%E186654186678%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx186609%_)
        (let* ((_%e186610186620%_ _%stx186609%_)
               (_%E186612186624%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186610186620%_)))
               (_%E186611186648%_
                (lambda ()
                  (if (gx#stx-pair? _%e186610186620%_)
                      (let ((_%e186613186628%_
                             (gx#syntax-e _%e186610186620%_)))
                        (let ((_%hd186614186631%_ (##car _%e186613186628%_))
                              (_%tl186615186633%_ (##cdr _%e186613186628%_)))
                          (let ((_%hd186636%_ _%hd186614186631%_))
                            (if (gx#stx-pair? _%tl186615186633%_)
                                (let ((_%e186616186638%_
                                       (gx#syntax-e _%tl186615186633%_)))
                                  (let ((_%hd186617186641%_
                                         (##car _%e186616186638%_))
                                        (_%tl186618186643%_
                                         (##cdr _%e186616186638%_)))
                                    (let ((_%body186646%_ _%hd186617186641%_))
                                      (if (gx#stx-null? _%tl186618186643%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd186636%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body186646%_)
                                                      '()))
                                          (_%E186612186624%_)))))
                                (_%E186612186624%_)))))
                      (_%E186612186624%_)))))
          (_%E186611186648%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx186579%_)
        (let* ((_%e186580186587%_ _%stx186579%_)
               (_%E186582186591%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186580186587%_)))
               (_%E186581186605%_
                (lambda ()
                  (if (gx#stx-pair? _%e186580186587%_)
                      (let ((_%e186583186595%_
                             (gx#syntax-e _%e186580186587%_)))
                        (let ((_%hd186584186598%_ (##car _%e186583186595%_))
                              (_%tl186585186600%_ (##cdr _%e186583186595%_)))
                          (let ((_%clauses186603%_ _%tl186585186600%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses186603%_)))))
                      (_%E186582186591%_)))))
          (_%E186581186605%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx186514%_ _%form186515%_)
        (let* ((_%e186516186529%_ _%stx186514%_)
               (_%E186518186533%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186516186529%_)))
               (_%E186517186565%_
                (lambda ()
                  (if (gx#stx-pair? _%e186516186529%_)
                      (let ((_%e186519186537%_
                             (gx#syntax-e _%e186516186529%_)))
                        (let ((_%hd186520186540%_ (##car _%e186519186537%_))
                              (_%tl186521186542%_ (##cdr _%e186519186537%_)))
                          (if (gx#stx-pair? _%tl186521186542%_)
                              (let ((_%e186522186545%_
                                     (gx#syntax-e _%tl186521186542%_)))
                                (let ((_%hd186523186548%_
                                       (##car _%e186522186545%_))
                                      (_%tl186524186550%_
                                       (##cdr _%e186522186545%_)))
                                  (let ((_%hd186553%_ _%hd186523186548%_))
                                    (if (gx#stx-pair? _%tl186524186550%_)
                                        (let ((_%e186525186555%_
                                               (gx#syntax-e
                                                _%tl186524186550%_)))
                                          (let ((_%hd186526186558%_
                                                 (##car _%e186525186555%_))
                                                (_%tl186527186560%_
                                                 (##cdr _%e186525186555%_)))
                                            (let ((_%body186563%_
                                                   _%hd186526186558%_))
                                              (if (gx#stx-null?
                                                   _%tl186527186560%_)
                                                  (cons _%form186515%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd186553%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body186563%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E186518186533%_)))))
                                        (_%E186518186533%_)))))
                              (_%E186518186533%_))))
                      (_%E186518186533%_)))))
          (_%E186517186565%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx186572%_)
        (let ((_%form186574%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx186572%_ _%form186574%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g187397_
        (let ((_g187398_ (##length _g187397_)))
          (cond ((##fx= _g187398_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g187397_))
                ((##fx= _g187398_ 2)
                 (apply gx#core-compile-top-let-values%__% _g187397_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g187397_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx186511%_)
        (gx#core-compile-top-let-values%__% _%stx186511%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx186509%_)
        (gx#core-compile-top-let-values%__% _%stx186509%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx186468%_)
        (let* ((_%e186469186479%_ _%stx186468%_)
               (_%E186471186483%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186469186479%_)))
               (_%E186470186505%_
                (lambda ()
                  (if (gx#stx-pair? _%e186469186479%_)
                      (let ((_%e186472186487%_
                             (gx#syntax-e _%e186469186479%_)))
                        (let ((_%hd186473186490%_ (##car _%e186472186487%_))
                              (_%tl186474186492%_ (##cdr _%e186472186487%_)))
                          (if (gx#stx-pair? _%tl186474186492%_)
                              (let ((_%e186475186495%_
                                     (gx#syntax-e _%tl186474186492%_)))
                                (let ((_%hd186476186498%_
                                       (##car _%e186475186495%_))
                                      (_%tl186477186500%_
                                       (##cdr _%e186475186495%_)))
                                  (let ((_%e186503%_ _%hd186476186498%_))
                                    (if (gx#stx-null? _%tl186477186500%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e186503%_)
                                                    '()))
                                        (_%E186471186483%_)))))
                              (_%E186471186483%_))))
                      (_%E186471186483%_)))))
          (_%E186470186505%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx186427%_)
        (let* ((_%e186428186438%_ _%stx186427%_)
               (_%E186430186442%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186428186438%_)))
               (_%E186429186464%_
                (lambda ()
                  (if (gx#stx-pair? _%e186428186438%_)
                      (let ((_%e186431186446%_
                             (gx#syntax-e _%e186428186438%_)))
                        (let ((_%hd186432186449%_ (##car _%e186431186446%_))
                              (_%tl186433186451%_ (##cdr _%e186431186446%_)))
                          (if (gx#stx-pair? _%tl186433186451%_)
                              (let ((_%e186434186454%_
                                     (gx#syntax-e _%tl186433186451%_)))
                                (let ((_%hd186435186457%_
                                       (##car _%e186434186454%_))
                                      (_%tl186436186459%_
                                       (##cdr _%e186434186454%_)))
                                  (let ((_%e186462%_ _%hd186435186457%_))
                                    (if (gx#stx-null? _%tl186436186459%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e186462%_)
                                                    '()))
                                        (_%E186430186442%_)))))
                              (_%E186430186442%_))))
                      (_%E186430186442%_)))))
          (_%E186429186464%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx186384%_)
        (let* ((_%e186385186395%_ _%stx186384%_)
               (_%E186387186399%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186385186395%_)))
               (_%E186386186423%_
                (lambda ()
                  (if (gx#stx-pair? _%e186385186395%_)
                      (let ((_%e186388186403%_
                             (gx#syntax-e _%e186385186395%_)))
                        (let ((_%hd186389186406%_ (##car _%e186388186403%_))
                              (_%tl186390186408%_ (##cdr _%e186388186403%_)))
                          (if (gx#stx-pair? _%tl186390186408%_)
                              (let ((_%e186391186411%_
                                     (gx#syntax-e _%tl186390186408%_)))
                                (let ((_%hd186392186414%_
                                       (##car _%e186391186411%_))
                                      (_%tl186393186416%_
                                       (##cdr _%e186391186411%_)))
                                  (let* ((_%rator186419%_ _%hd186392186414%_)
                                         (_%args186421%_ _%tl186393186416%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator186419%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args186421%_))))))
                              (_%E186387186399%_))))
                      (_%E186387186399%_)))))
          (_%E186386186423%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx186317%_)
        (let* ((_%e186318186334%_ _%stx186317%_)
               (_%E186320186338%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186318186334%_)))
               (_%E186319186380%_
                (lambda ()
                  (if (gx#stx-pair? _%e186318186334%_)
                      (let ((_%e186321186342%_
                             (gx#syntax-e _%e186318186334%_)))
                        (let ((_%hd186322186345%_ (##car _%e186321186342%_))
                              (_%tl186323186347%_ (##cdr _%e186321186342%_)))
                          (if (gx#stx-pair? _%tl186323186347%_)
                              (let ((_%e186324186350%_
                                     (gx#syntax-e _%tl186323186347%_)))
                                (let ((_%hd186325186353%_
                                       (##car _%e186324186350%_))
                                      (_%tl186326186355%_
                                       (##cdr _%e186324186350%_)))
                                  (let ((_%test186358%_ _%hd186325186353%_))
                                    (if (gx#stx-pair? _%tl186326186355%_)
                                        (let ((_%e186327186360%_
                                               (gx#syntax-e
                                                _%tl186326186355%_)))
                                          (let ((_%hd186328186363%_
                                                 (##car _%e186327186360%_))
                                                (_%tl186329186365%_
                                                 (##cdr _%e186327186360%_)))
                                            (let ((_%K186368%_
                                                   _%hd186328186363%_))
                                              (if (gx#stx-pair?
                                                   _%tl186329186365%_)
                                                  (let ((_%e186330186370%_
                                                         (gx#syntax-e
                                                          _%tl186329186365%_)))
                                                    (let ((_%hd186331186373%_
                                                           (##car _%e186330186370%_))
                                                          (_%tl186332186375%_
                                                           (##cdr _%e186330186370%_)))
                                                      (let ((_%E186378%_
                                                             _%hd186331186373%_))
                                                        (if (gx#stx-null?
                                                             _%tl186332186375%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test186358%_)
                                (cons (gx#core-compile-top-syntax _%K186368%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E186378%_)
                                            '()))))
                    (_%E186320186338%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E186320186338%_)))))
                                        (_%E186320186338%_)))))
                              (_%E186320186338%_))))
                      (_%E186320186338%_)))))
          (_%E186319186380%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx186276%_)
        (let* ((_%e186277186287%_ _%stx186276%_)
               (_%E186279186291%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186277186287%_)))
               (_%E186278186313%_
                (lambda ()
                  (if (gx#stx-pair? _%e186277186287%_)
                      (let ((_%e186280186295%_
                             (gx#syntax-e _%e186277186287%_)))
                        (let ((_%hd186281186298%_ (##car _%e186280186295%_))
                              (_%tl186282186300%_ (##cdr _%e186280186295%_)))
                          (if (gx#stx-pair? _%tl186282186300%_)
                              (let ((_%e186283186303%_
                                     (gx#syntax-e _%tl186282186300%_)))
                                (let ((_%hd186284186306%_
                                       (##car _%e186283186303%_))
                                      (_%tl186285186308%_
                                       (##cdr _%e186283186303%_)))
                                  (let ((_%id186311%_ _%hd186284186306%_))
                                    (if (gx#stx-null? _%tl186285186308%_)
                                        (if (gx#identifier? _%id186311%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id186311%_)
                                                        '()))
                                            (_%E186279186291%_))
                                        (_%E186279186291%_)))))
                              (_%E186279186291%_))))
                      (_%E186279186291%_)))))
          (_%E186278186313%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx186222%_)
        (let* ((_%e186223186236%_ _%stx186222%_)
               (_%E186225186240%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186223186236%_)))
               (_%E186224186272%_
                (lambda ()
                  (if (gx#stx-pair? _%e186223186236%_)
                      (let ((_%e186226186244%_
                             (gx#syntax-e _%e186223186236%_)))
                        (let ((_%hd186227186247%_ (##car _%e186226186244%_))
                              (_%tl186228186249%_ (##cdr _%e186226186244%_)))
                          (if (gx#stx-pair? _%tl186228186249%_)
                              (let ((_%e186229186252%_
                                     (gx#syntax-e _%tl186228186249%_)))
                                (let ((_%hd186230186255%_
                                       (##car _%e186229186252%_))
                                      (_%tl186231186257%_
                                       (##cdr _%e186229186252%_)))
                                  (let ((_%id186260%_ _%hd186230186255%_))
                                    (if (gx#stx-pair? _%tl186231186257%_)
                                        (let ((_%e186232186262%_
                                               (gx#syntax-e
                                                _%tl186231186257%_)))
                                          (let ((_%hd186233186265%_
                                                 (##car _%e186232186262%_))
                                                (_%tl186234186267%_
                                                 (##cdr _%e186232186262%_)))
                                            (let ((_%expr186270%_
                                                   _%hd186233186265%_))
                                              (if (gx#stx-null?
                                                   _%tl186234186267%_)
                                                  (if (gx#identifier?
                                                       _%id186260%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id186260%_)
                          (cons (gx#core-compile-top-syntax _%expr186270%_)
                                '())))
              (_%E186225186240%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E186225186240%_)))))
                                        (_%E186225186240%_)))))
                              (_%E186225186240%_))))
                      (_%E186225186240%_)))))
          (_%E186224186272%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id186216%_)
        (let ((_%$e186218%_ (gx#resolve-identifier__0 _%id186216%_)))
          (if _%$e186218%_
              (##unchecked-structure-ref _%$e186218%_ '1 '#f '#f)
              _%id186216%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd186214%_)
        (if (gx#identifier? _%hd186214%_)
            (gx#core-compile-top-runtime-ref _%hd186214%_)
            '#f)))))
